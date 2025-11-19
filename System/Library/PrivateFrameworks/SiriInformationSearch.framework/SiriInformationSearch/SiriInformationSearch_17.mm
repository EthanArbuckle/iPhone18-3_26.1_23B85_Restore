uint64_t closure #1 in closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v18;
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant();
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #9 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v4, a2);
  swift_endAccess();
}

uint64_t PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v474 = a3;
  v495 = a1;
  v470 = a4;
  v443 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  v5 = *(*(v443 - 8) + 64);
  MEMORY[0x28223BE20](v443, v6);
  v442 = &v436 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v465 = &v436 - v11;
  v12 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v476 = *(v12 - 8);
  v477 = v12;
  v13 = *(v476 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v475 = &v436 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v462 = (&v436 - v19);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v463 = *(v20 - 8);
  v464 = v20;
  v21 = *(v463 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v447 = &v436 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v24 = *(*(v460 - 8) + 64);
  MEMORY[0x28223BE20](v460, v25);
  v461 = (&v436 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for UUID();
  v479 = *(v27 - 8);
  v480 = v27;
  v28 = *(v479 + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v446 = &v436 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v458 = &v436 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v478 = &v436 - v36;
  v37 = type metadata accessor for JSONEncodingOptions();
  v456 = *(v37 - 8);
  v457 = v37;
  v38 = *(v456 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v455 = &v436 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v471 = *(v41 - 8);
  v472 = v41;
  v42 = v471[8];
  v44 = MEMORY[0x28223BE20](v41, v43);
  v454 = &v436 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v453 = &v436 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v459 = &v436 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v445 = &v436 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v444 = &v436 - v57;
  v491 = type metadata accessor for PommesSearchRequest(0);
  v58 = *(*(v491 - 1) + 64);
  v60 = MEMORY[0x28223BE20](v491, v59);
  v473 = &v436 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v62);
  v452 = (&v436 - v63);
  v487 = type metadata accessor for PerformanceUtil.Ticket(0);
  v64 = *(*(v487 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v487, v65);
  v68 = &v436 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v66, v69);
  v450 = &v436 - v71;
  MEMORY[0x28223BE20](v70, v72);
  v74 = &v436 - v73;
  v496 = type metadata accessor for Date();
  v505 = *(v496 - 8);
  v75 = *(v505 + 64);
  MEMORY[0x28223BE20](v496, v76);
  v492 = &v436 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v490 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v78 = *(v490 - 8);
  v79 = *(v78 + 64);
  v81 = MEMORY[0x28223BE20](v490, v80);
  v83 = &v436 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v81, v84);
  v87 = &v436 - v86;
  v89 = MEMORY[0x28223BE20](v85, v88);
  v448 = &v436 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v485 = &v436 - v93;
  v95 = MEMORY[0x28223BE20](v92, v94);
  v489 = &v436 - v96;
  MEMORY[0x28223BE20](v95, v97);
  v99 = &v436 - v98;
  v100 = type metadata accessor for SignpostToken();
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100 - 8, v102);
  v104 = &v436 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v466 = v83;
  v467 = v87;
  v468 = v68;
  v488 = v78;
  v486 = v74;
  v105 = type metadata accessor for OSSignposter();
  v481 = __swift_project_value_buffer(v105, static Signposter.pommes);
  v482 = v104;
  v106 = OSSignposter.begin(name:context:)("proxy.constructSearchRequest", 28, 2u, 0, v104);
  if (one-time initialization token for shared != -1)
  {
    v106 = swift_once();
  }

  v108 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v106, v107);
  v109 = v495;
  v433[0] = v500;
  v433[1] = v495;
  v469 = a2;
  v434 = a2;
  v110 = v492;
  Date.init()();
  v111 = *(*v108 + 200);
  v112 = *v108 + 200;
  v434 = &v432;
  v435 = v490;
  LOBYTE(v433[0]) = 2;
  v499 = v108;
  v113 = v493;
  v497 = v111;
  v494 = v112;
  v111(0xD000000000000039, 0x80000002234E08A0, 0, v110, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 614, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #1 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v493 = *(v505 + 8);
  v505 += 8;
  (v493)(v110, v496);
  v114 = *&v109[*(v491 + 13)];
  if (v114)
  {
    v115 = *(v114 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest);
  }

  v116 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.setter();
  v116(v504, 0);
  v117 = v492;
  Date.init()();
  v118 = v500;
  LOBYTE(v433[0]) = 2;
  v497(v504, 0xD000000000000016, 0x80000002234E0930, 0, v117, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 618, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #2 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:), v500, MEMORY[0x277D839B0]);
  (v493)(v117, v496);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.setter();
  AFIsHorseman();
  v498 = v99;
  v119 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.setter();
  v120 = v118;
  v121 = (*(*v118 + 368))(v119);
  v122 = v495;
  if (v121)
  {
    (*(*v121 + 144))(*&v495[*(v491 + 8)], *&v495[*(v491 + 8) + 8], 1);
  }

  v123 = v498;
  v124 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPhoneCallActive.setter();
  v124(v504, 0);
  v125 = v486;
  Date.init()();
  v126 = v487;
  v127 = v125 + *(v487 + 20);
  *v127 = "SiriInformationSearch/PegasusProxy.swift";
  *(v127 + 8) = 40;
  *(v127 + 16) = 2;
  *(v125 + v126[6]) = 626;
  v128 = v125 + v126[7];
  *v128 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
  *(v128 + 8) = 72;
  *(v128 + 16) = 2;
  v129 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000031);
  v130 = (v125 + v126[8]);
  *v130 = v129;
  v130[1] = v131;
  v132 = *(v120 + 184);
  v133 = v489;
  (*(*v132 + 344))(v123, v122);
  if (v113)
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v125, type metadata accessor for PerformanceUtil.Ticket);
    (*(v488 + 8))(v123, v490);
    goto LABEL_104;
  }

  v134 = v122;
  v449 = v132;
  v135 = *(v488 + 40);
  v483 = v488 + 40;
  v484 = v135;
  v135(v123, v133, v490);
  v136 = *(*v499 + 184);
  v438 = *v499 + 184;
  v439 = v136;
  v137 = (v136)(v125, 0);
  MEMORY[0x28223BE20](v137, v138);
  v139 = v492;
  Date.init()();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v434 = v433;
  v435 = v140;
  LOBYTE(v433[0]) = 2;
  (v497)(v504, 0xD000000000000045, 0x80000002234E0990, 0, v139, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 630, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #3 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v440 = 0;
  (v493)(v139, v496);
  v141 = v504[0];
  v142 = v504[1];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v143 = type metadata accessor for Logger();
  v144 = __swift_project_value_buffer(v143, static Logger.pommes);
  v145 = v452;
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v134, v452, type metadata accessor for PommesSearchRequest);
  outlined copy of Data?(v141, v142);
  v146 = v500;

  v489 = v144;
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();
  v149 = os_log_type_enabled(v147, v148);
  v150 = v142 >> 60;
  v441 = v141;
  v451 = v142;
  if (v149)
  {
    v151 = swift_slowAlloc();
    v437 = v142 >> 60;
    v152 = v145;
    v153 = v151;
    *v151 = 67109632;
    v154 = v444;
    outlined init with copy of MediaUserStateCenter?(v152 + *(v491 + 10), v444, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v155 = type metadata accessor for PommesContext();
    v156 = (*(*(v155 - 8) + 48))(v154, 1, v155) != 1;
    v157 = v154;
    v141 = v441;
    v142 = v451;
    outlined destroy of MediaUserStateCenter?(v157, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v158 = v152;
    v150 = v437;
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v158, type metadata accessor for PommesSearchRequest);
    v153[1] = v156;
    *(v153 + 4) = 1024;
    *(v153 + 10) = v150 < 0xF;
    outlined consume of Data?(v141, v142);
    *(v153 + 7) = 1024;
    v153[4] = *(v146 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8) >> 60 != 15;

    _os_log_impl(&dword_2232BB000, v147, v148, "Considering adding Pegasus conversation context.\nPSR has PommesContext: %{BOOL}d\nPSR has explicit context bytes: %{BOOL}d\nPegasusProxy has persisted bytes: %{BOOL}d", v153, 0x14u);
    MEMORY[0x223DE0F80](v153, -1, -1);
  }

  else
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v145, type metadata accessor for PommesSearchRequest);

    outlined consume of Data?(v141, v142);
  }

  v159 = v458;
  if (v150 <= 0xE)
  {
    outlined copy of Data?(v141, v142);
    outlined copy of Data._Representation(v141, v142);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.setter();
    outlined copy of Data._Representation(v141, v142);
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.debug.getter();
    outlined consume of Data?(v141, v142);
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v504[0] = v171;
      *v170 = 136315138;
      outlined copy of Data._Representation(v141, v451);
      v172 = v141;
      v173 = Data.description.getter();
      v175 = v174;
      outlined consume of Data?(v172, v451);
      v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v175, v504);

      *(v170 + 4) = v176;
      _os_log_impl(&dword_2232BB000, v168, v169, "Adding Pegasus conversation context from explicit PommesContext value: %s", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v171);
      MEMORY[0x223DE0F80](v171, -1, -1);
      MEMORY[0x223DE0F80](v170, -1, -1);
      outlined consume of Data?(v172, v451);
    }

    else
    {

      outlined consume of Data?(v141, v142);
    }

    v164 = v471;
    v163 = v472;
  }

  else
  {
    v160 = v445;
    outlined init with copy of MediaUserStateCenter?(&v495[*(v491 + 10)], v445, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v161 = type metadata accessor for PommesContext();
    v162 = (*(*(v161 - 8) + 48))(v160, 1, v161);
    outlined destroy of MediaUserStateCenter?(v160, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v164 = v471;
    v163 = v472;
    if (v162 != 1)
    {
      v165 = *(v500 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
      if (v165 >> 60 != 15)
      {
        v166 = *(v500 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
        v167 = v165 >> 62;
        if ((v165 >> 62) > 1)
        {
          if (v167 != 2)
          {
LABEL_113:
            outlined consume of Data?(v166, v165);
            goto LABEL_27;
          }

          v421 = *(v166 + 16);
          v422 = *(v166 + 24);
        }

        else
        {
          if (!v167)
          {
            if ((v165 & 0xFF000000000000) == 0)
            {
              goto LABEL_113;
            }

LABEL_110:
            outlined copy of Data._Representation(v166, v165);
            Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.setter();
            outlined copy of Data._Representation(v166, v165);
            v423 = Logger.logObject.getter();
            v424 = static os_log_type_t.debug.getter();
            outlined consume of Data?(v166, v165);
            if (os_log_type_enabled(v423, v424))
            {
              v425 = swift_slowAlloc();
              v452 = swift_slowAlloc();
              v504[0] = v452;
              *v425 = 136315138;
              outlined copy of Data._Representation(v166, v165);
              v426 = Data.description.getter();
              v428 = v427;
              outlined consume of Data?(v166, v165);
              v429 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v426, v428, v504);
              v163 = v472;

              *(v425 + 4) = v429;
              _os_log_impl(&dword_2232BB000, v423, v424, "Adding Pegasus conversation context from implicit previous turn value: %s", v425, 0xCu);
              v430 = v452;
              __swift_destroy_boxed_opaque_existential_1(v452);
              MEMORY[0x223DE0F80](v430, -1, -1);
              v431 = v425;
              v164 = v471;
              MEMORY[0x223DE0F80](v431, -1, -1);
              outlined consume of Data?(v166, v165);

              goto LABEL_27;
            }

            goto LABEL_113;
          }

          v421 = v166;
          v422 = v166 >> 32;
        }

        if (v421 == v422)
        {
          goto LABEL_27;
        }

        outlined copy of Data?(v166, v165);
        goto LABEL_110;
      }
    }
  }

LABEL_27:
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_2232BB000, v177, v178, "Adding SearchConversationContext to Pegasus request", v179, 2u);
    MEMORY[0x223DE0F80](v179, -1, -1);
  }

  v180 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v181 = v500;
  swift_beginAccess();
  v182 = v164[2];
  v182(v453, v181 + v180, v163);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.setter();
  v183 = v454;
  v182(v454, v181 + v180, v163);
  v184 = v455;
  JSONEncodingOptions.init()();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Search_SearchConversationContext and conformance Apple_Parsec_Search_SearchConversationContext, MEMORY[0x277D38C60]);
  v185 = v440;
  v186 = Message.jsonString(options:)();
  if (v185)
  {
    (*(v456 + 8))(v184, v457);
    (v164[1])(v183, v163);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&dword_2232BB000, v188, v189, "Could not convert SearchConversationContext to JSON before Pegasus request", v190, 2u);
      MEMORY[0x223DE0F80](v190, -1, -1);
    }
  }

  else
  {
    v193 = v187;
    v472 = v186;
    (*(v456 + 8))(v184, v457);
    (v164[1])(v183, v163);

    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v504[0] = v197;
      *v196 = 136315138;
      v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v472, v193, v504);

      *(v196 + 4) = v198;
      _os_log_impl(&dword_2232BB000, v194, v195, "SearchConversationContext JSON before Pegasus request: %s", v196, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v197);
      MEMORY[0x223DE0F80](v197, -1, -1);
      MEMORY[0x223DE0F80](v196, -1, -1);
    }

    else
    {
    }
  }

  MEMORY[0x28223BE20](v191, v192);
  v199 = v492;
  Date.init()();
  v200 = v480;
  v434 = v433;
  v435 = v480;
  LOBYTE(v433[0]) = 2;
  v201 = v478;
  (v497)(0xD000000000000040, 0x80000002234E07E0, 0, v199, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 661, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #4 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v457 = 0;
  (v493)(v199, v496);
  v202 = UUID.uuidString.getter();
  v204 = v203;
  v205 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify();
  v206 = v202;
  v207 = v200;
  MEMORY[0x223DDB6E0](v206, v204);
  v205(v504, 0);
  v208 = v479;
  (*(v479 + 16))(v159, v201, v200);
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v504[0] = v212;
    *v211 = 136315138;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v213 = dispatch thunk of CustomStringConvertible.description.getter();
    v214 = v207;
    v216 = v215;
    v458 = *(v208 + 8);
    (v458)(v159, v214);
    v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v216, v504);

    *(v211 + 4) = v217;
    _os_log_impl(&dword_2232BB000, v209, v210, "Adding pegasusId (%s) to request", v211, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v212);
    MEMORY[0x223DE0F80](v212, -1, -1);
    MEMORY[0x223DE0F80](v211, -1, -1);
  }

  else
  {

    v458 = *(v208 + 8);
    (v458)(v159, v200);
  }

  v218 = v473;
  v219 = v495;
  v220 = v459;
  outlined init with copy of MediaUserStateCenter?(&v495[*(v491 + 10)], v459, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v221 = type metadata accessor for PommesContext();
  v222 = *(v221 - 8);
  if ((*(v222 + 48))(v220, 1, v221) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v220, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v223 = PommesContext.domain.getter();
    v225 = v224;
    (*(v222 + 8))(v220, v221);
    if (v225)
    {
      if (*(v219 + *(v491 + 20)) == 1)
      {

        v226 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify();
        MEMORY[0x223DDB6C0](v223, v225);
        v226(v504, 0);

        v227 = Logger.logObject.getter();
        v228 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v227, v228))
        {
          v229 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          v504[0] = v230;
          *v229 = 136315138;
          v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v223, v225, v504);

          *(v229 + 4) = v231;
          _os_log_impl(&dword_2232BB000, v227, v228, "Adding personalDomainFallback (%s) to request", v229, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v230);
          v232 = v230;
          v218 = v473;
          MEMORY[0x223DE0F80](v232, -1, -1);
          MEMORY[0x223DE0F80](v229, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v219, v218, type metadata accessor for PommesSearchRequest);
  v233 = *(v218 + *(v491 + 13));
  if (v233)
  {
    v235 = *(v233 + 16);
    v234 = *(v233 + 24);
  }

  v236 = specialized PommesAssistantIDManager.init(realAssistantID:)();
  v238 = v237;
  v240 = v239;
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v218, type metadata accessor for PommesSearchRequest);
  v241 = [objc_opt_self() sharedPreferences];
  v242 = [v241 longLivedIdentifierUploadingEnabled];

  v471 = v236;
  v472 = v240;
  if (v242)
  {
    if (!v240)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v243 = v446;
    PommesAssistantIDManager.replacementAssistantID()(v236, v238, v240, v446);
    v238 = UUID.uuidString.getter();
    v240 = v244;
    (v458)(v243, v480);
  }

  v245 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.assistantID.setter();
  v245(v504, 0);

  v246 = Logger.logObject.getter();
  v247 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v246, v247))
  {
    v248 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v504[0] = v249;
    *v248 = 136315138;
    v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v240, v504);

    *(v248 + 4) = v250;
    _os_log_impl(&dword_2232BB000, v246, v247, "Adding assistantId (%s) to request", v248, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v249);
    MEMORY[0x223DE0F80](v249, -1, -1);
    MEMORY[0x223DE0F80](v248, -1, -1);
  }

  else
  {
  }

LABEL_59:
  v251 = (v219 + *(v491 + 8));
  v252 = v251[1];
  if (v252)
  {
    v253 = *v251;
    v254 = v251[1];

    v255 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.interactionID.setter();
    v255(v504, 0);

    v256 = Logger.logObject.getter();
    v257 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v256, v257))
    {
      v258 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      v504[0] = v259;
      *v258 = 136315138;
      v260 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v252, v504);

      *(v258 + 4) = v260;
      _os_log_impl(&dword_2232BB000, v256, v257, "Adding interactionId (%s) to request", v258, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v259);
      MEMORY[0x223DE0F80](v259, -1, -1);
      MEMORY[0x223DE0F80](v258, -1, -1);
    }

    else
    {
    }
  }

  v261 = v461;
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v219, v461, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v264 = *v261;
    v263 = v261[1];
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v261 + *(v267 + 48), type metadata accessor for NLXResultCandidate);
    goto LABEL_68;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v264 = *v261;
    v263 = v261[1];
    v265 = v261[3];

    v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
    outlined destroy of MediaUserStateCenter?(v261 + *(v266 + 64), &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_68:

    v268 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.resultCandidateID.setter();
    v268(v504, 0);

    v269 = Logger.logObject.getter();
    v270 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v504[0] = v272;
      *v271 = 136315138;
      v273 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v263, v504);

      *(v271 + 4) = v273;
      _os_log_impl(&dword_2232BB000, v269, v270, "Adding resultCandidateId (%s) to request", v271, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v272);
      MEMORY[0x223DE0F80](v272, -1, -1);
      MEMORY[0x223DE0F80](v271, -1, -1);
    }

    else
    {
    }

    goto LABEL_73;
  }

  v274 = _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v261, type metadata accessor for PommesSearchRequest.ParseState);
LABEL_73:
  MEMORY[0x28223BE20](v274, v275);
  LODWORD(v433[0]) = v500;
  v276 = v492;
  Date.init()();
  v435 = MEMORY[0x277D84F78] + 8;
  v277 = MEMORY[0x277D84F78] + 8;
  v473 = (MEMORY[0x277D84F78] + 8);
  v434 = &v432;
  LOBYTE(v433[0]) = 2;
  v278 = v457;
  v279 = v497;
  (v497)(0xD000000000000026, 0x80000002234E09E0, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 704, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #6 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v460 = v278;
  v280 = v496;
  v281 = v493(v276);
  v461 = &v436;
  MEMORY[0x28223BE20](v281, v282);
  Date.init()();
  v434 = v433;
  v435 = v277;
  LOBYTE(v433[0]) = 2;
  v283 = v460;
  v279(0xD000000000000019, 0x80000002234E0A10, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 708, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #7 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v460 = v283;
  v284 = v493;
  v285 = (v493)(v276, v280);
  v461 = &v436;
  MEMORY[0x28223BE20](v285, v286);
  LODWORD(v433[0]) = v500;
  Date.init()();
  v434 = &v432;
  v435 = v473;
  LOBYTE(v433[0]) = 2;
  v287 = v460;
  (v497)(0xD00000000000002CLL, 0x80000002234E0A30, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 712, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #8 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v460 = v287;
  v288 = v284(v276, v280);
  v289 = v284;
  v461 = &v436;
  MEMORY[0x28223BE20](v288, v290);
  v291 = v500;
  LODWORD(v433[0]) = v500;
  Date.init()();
  v434 = &v432;
  v435 = v473;
  LOBYTE(v433[0]) = 2;
  v292 = v460;
  v293 = v497;
  (v497)(0xD00000000000002ELL, 0x80000002234E0A60, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 716, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #9 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v460 = v292;
  v294 = v496;
  v295 = v289(v276, v496);
  v461 = &v436;
  MEMORY[0x28223BE20](v295, v296);
  LODWORD(v433[0]) = v291;
  Date.init()();
  v434 = &v432;
  v435 = v473;
  LOBYTE(v433[0]) = 2;
  v297 = v460;
  v293(0xD000000000000026, 0x80000002234E0A90, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 720, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #10 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v289(v276, v294);
  v298 = v462;
  outlined init with copy of MediaUserStateCenter?(&v495[*(v491 + 6)], v462, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v299 = v463;
  v300 = v464;
  LODWORD(v461) = (*(v463 + 48))(v298, 1, v464);
  if (v461 == 1)
  {
    v473 = v297;
    outlined destroy of MediaUserStateCenter?(v298, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  }

  else
  {
    v301 = v447;
    v302 = (*(v299 + 32))(v447, v298, v300);
    v462 = &v436;
    MEMORY[0x28223BE20](v302, v303);
    LODWORD(v433[0]) = v500;
    Date.init()();
    v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMd, &_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMR);
    v434 = &v432;
    v435 = v304;
    LOBYTE(v433[0]) = 2;
    (v497)(v504, 0xD00000000000002ALL, 0x80000002234E0C80, 0, v276, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 726, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #11 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
    v473 = v297;
    (v493)(v276, v496);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    (*(v299 + 8))(v301, v300);
  }

  v306 = v476;
  v305 = v477;
  v307 = v465;
  outlined init with copy of MediaUserStateCenter?(&v495[*(v491 + 11)], v465, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if ((*(v306 + 48))(v307, 1, v305) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v307, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {
    v308 = (*(v306 + 32))(v475, v307, v305);
    if (v461 == 1)
    {
      v491 = &v436;
      MEMORY[0x28223BE20](v308, v309);
      v310 = v500;
      LODWORD(v433[0]) = v500;
      v311 = v492;
      Date.init()();
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMd, &_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMR);
      v434 = &v432;
      v435 = v312;
      LOBYTE(v433[0]) = 2;
      v313 = v473;
      (v497)(v504, 0xD000000000000028, 0x80000002234E0C00, 0, v311, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 734, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #12 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
      v473 = v313;
      v314 = v493;
      (v493)(v311, v496);
      v308 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    }

    else
    {
      v311 = v492;
      v314 = v493;
      v310 = v500;
    }

    v491 = &v436;
    MEMORY[0x28223BE20](v308, v309);
    Date.init()();
    v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtGMR);
    v434 = v433;
    v435 = v315;
    LOBYTE(v433[0]) = 2;
    v316 = v473;
    (v497)(v504, 0xD00000000000002FLL, 0x80000002234E0C30, 0, v311, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 740, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #13 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
    v314(v311, v496);
    if (*(v504[0] + 16))
    {
      v317 = v485;
      v318 = v498;
      PegasusProxy.addResolvedEntities(_:to:)(v504[0], v498, v485);

      v319 = v484;
      v484(v318, v317, v490);
    }

    else
    {

      v318 = v498;
      v319 = v484;
    }

    v320 = v450;
    Date.init()();
    v321 = v487;
    v322 = v320 + *(v487 + 20);
    *v322 = "SiriInformationSearch/PegasusProxy.swift";
    *(v322 + 8) = 40;
    *(v322 + 16) = 2;
    *(v320 + *(v321 + 24)) = 772;
    v323 = v320 + *(v321 + 28);
    *v323 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
    *(v323 + 8) = 72;
    *(v323 + 16) = 2;
    v324 = v321;
    v325 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL);
    v326 = (v320 + *(v324 + 32));
    *v326 = v325;
    v326[1] = v327;
    v328 = v448;
    (*(*v310 + 680))(v475, v318, v474);
    if (v316)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v320, type metadata accessor for PerformanceUtil.Ticket);
      v329 = v316;
      v330 = Logger.logObject.getter();
      v331 = static os_log_type_t.error.getter();

      v332 = os_log_type_enabled(v330, v331);
      v333 = v476;
      if (v332)
      {
        v334 = swift_slowAlloc();
        v335 = swift_slowAlloc();
        v504[0] = v335;
        *v334 = 136315138;
        v503 = v316;
        v336 = v316;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v337 = String.init<A>(describing:)();
        v339 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v337, v338, v504);

        *(v334 + 4) = v339;
        _os_log_impl(&dword_2232BB000, v330, v331, "Unable to add user spans to search request: %s. Continuing request without spans.", v334, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v335);
        MEMORY[0x223DE0F80](v335, -1, -1);
        MEMORY[0x223DE0F80](v334, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v319(v318, v328, v490);
      v439(v320, 0);
      v340 = Logger.logObject.getter();
      v341 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v340, v341))
      {
        v342 = swift_slowAlloc();
        v491 = swift_slowAlloc();
        v503 = v491;
        *v342 = 136315138;
        swift_beginAccess();
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        swift_endAccess();
        v343 = String.init<A>(describing:)();
        v345 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v343, v344, &v503);

        *(v342 + 4) = v345;
        _os_log_impl(&dword_2232BB000, v340, v341, "Adding user spans to request. Generated client conversation context info: %s", v342, 0xCu);
        v346 = v491;
        __swift_destroy_boxed_opaque_existential_1(v491);
        MEMORY[0x223DE0F80](v346, -1, -1);
        MEMORY[0x223DE0F80](v342, -1, -1);
      }

      swift_beginAccess();
      v347 = v449;
      v348 = v485;
      v349 = v495;
      (*(*v449 + 360))(v318, v495);
      swift_beginAccess();
      v350 = v490;
      v351 = v484;
      v484(v318, v348, v490);
      (*(*v347 + 368))(v318, v349);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v450, type metadata accessor for PerformanceUtil.Ticket);
      swift_beginAccess();
      v351(v318, v348, v350);
      v333 = v476;
    }

    v473 = 0;
    (*(v333 + 8))(v475, v477);
  }

  v352 = v498;
  swift_beginAccess();
  v353 = v485;
  (*(*v449 + 376))(v352, v495);
  swift_beginAccess();
  v354 = v490;
  v355 = v484;
  v356 = (v484)(v352, v353, v490);
  v477 = &v436;
  MEMORY[0x28223BE20](v356, v357);
  LODWORD(v433[0]) = v500;
  v358 = v492;
  Date.init()();
  v434 = &v432;
  v435 = v354;
  LOBYTE(v433[0]) = 2;
  v359 = v473;
  (v497)(0xD000000000000043, 0x80000002234E0AC0, 0, v358, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 786, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #14 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v491 = v359;
  (v493)(v358, v496);
  swift_beginAccess();
  v360 = v355(v352, v353, v354);
  v477 = &v436;
  MEMORY[0x28223BE20](v360, v361);
  LODWORD(v433[0]) = v500;
  Date.init()();
  v434 = &v432;
  v435 = v354;
  LOBYTE(v433[0]) = 2;
  v362 = v491;
  (v497)(0xD00000000000002DLL, 0x80000002234E0B10, 0, v358, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 793, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #15 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v491 = v362;
  v363 = v493;
  (v493)(v358, v496);
  swift_beginAccess();
  v364 = v490;
  v365 = (v484)(v352, v353, v490);
  v477 = &v436;
  v476 = "ger.addRestrictions(to:with:)";
  MEMORY[0x28223BE20](v365, v366);
  v367 = v500;
  Date.init()();
  v434 = v433;
  v435 = v364;
  LOBYTE(v433[0]) = 2;
  v368 = v485;
  v369 = v491;
  (v497)(0xD00000000000002BLL, v476 | 0x8000000000000000, 0, v358, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 800, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #16 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v491 = v369;
  v370 = v496;
  v363(v358, v496);
  swift_beginAccess();
  v371 = v490;
  v372 = (v484)(v352, v368, v490);
  MEMORY[0x28223BE20](v372, v373);
  LODWORD(v433[0]) = v367;
  Date.init()();
  v434 = &v432;
  v435 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v433[0]) = 2;
  v374 = v491;
  (v497)(0xD000000000000019, 0x80000002234E0B70, 0, v358, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 805, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #17 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v477 = v374;
  (v493)(v358, v370);
  v375 = v468;
  Date.init()();
  v376 = v487;
  v377 = v375 + *(v487 + 20);
  *v377 = "SiriInformationSearch/PegasusProxy.swift";
  *(v377 + 8) = 40;
  *(v377 + 16) = 2;
  *(v375 + v376[6]) = 810;
  v378 = v375 + v376[7];
  *v378 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
  *(v378 + 8) = 72;
  *(v378 + 16) = 2;
  v379 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL);
  v380 = (v375 + v376[8]);
  *v380 = v379;
  v380[1] = v381;
  v382 = v488;
  v383 = *(v488 + 16);
  v384 = v466;
  v491 = (v488 + 16);
  v487 = v383;
  v383(v466, v352, v371);
  v385 = v467;
  v386 = v477;
  (*(*v500 + 664))(v384, v495);
  if (v386)
  {
    v495 = *(v382 + 8);
    (v495)(v384, v371);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v375, type metadata accessor for PerformanceUtil.Ticket);
    v387 = v386;
    v388 = Logger.logObject.getter();
    v389 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v388, v389))
    {
      v390 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      v502[0] = v391;
      *v390 = 136315138;
      v501 = v386;
      v392 = v386;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v393 = String.init<A>(describing:)();
      v395 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v393, v394, v502);

      *(v390 + 4) = v395;
      _os_log_impl(&dword_2232BB000, v388, v389, "Unable to add resolved references for SmartPlay request: %s", v390, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v391);
      MEMORY[0x223DE0F80](v391, -1, -1);
      MEMORY[0x223DE0F80](v390, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v495 = *(v382 + 8);
    (v495)(v384, v371);
    swift_beginAccess();
    v484(v352, v385, v371);
    v439(v375, 0);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v375, type metadata accessor for PerformanceUtil.Ticket);
  }

  v396 = specialized static PegasusOverrideUtil.requestFeatureFlag.getter();
  v477 = 0;
  if (v397)
  {
    v398 = v396;
    v399 = v397;

    v400 = Logger.logObject.getter();
    v401 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v400, v401))
    {
      v402 = swift_slowAlloc();
      v403 = swift_slowAlloc();
      v502[0] = v403;
      *v402 = 136315138;
      *(v402 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v398, v399, v502);
      _os_log_impl(&dword_2232BB000, v400, v401, "Using Pegasus request feature flag “%s”", v402, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v403);
      MEMORY[0x223DE0F80](v403, -1, -1);
      MEMORY[0x223DE0F80](v402, -1, -1);
    }
  }

  else
  {
    v400 = Logger.logObject.getter();
    v404 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v400, v404))
    {
      v405 = swift_slowAlloc();
      *v405 = 0;
      _os_log_impl(&dword_2232BB000, v400, v404, "Clearing Pegasus request feature flag (production)", v405, 2u);
      MEMORY[0x223DE0F80](v405, -1, -1);
    }
  }

  v406 = v498;
  swift_beginAccess();
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.setter();
  v407 = swift_endAccess();
  v476 = &v436;
  MEMORY[0x28223BE20](v407, v408);
  v409 = v500;
  v410 = v492;
  Date.init()();
  v489 = (MEMORY[0x277D84F78] + 8);
  v434 = v433;
  v435 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v433[0]) = 2;
  v411 = v477;
  (v497)(0xD000000000000020, 0x80000002234E0BB0, 0, v410, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 836, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #18 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v477 = v411;
  v412 = v496;
  v413 = v493;
  (v493)(v410, v496);
  swift_beginAccess();
  (*(*v409 + 80))(v406);
  v414 = swift_endAccess();
  v476 = &v436;
  MEMORY[0x28223BE20](v414, v415);
  Date.init()();
  v434 = v433;
  v435 = v489;
  LOBYTE(v433[0]) = 2;
  (v497)(0xD000000000000018, 0x80000002234E0BE0, 0, v410, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 844, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v433[0], partial apply for closure #19 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v413(v410, v412);
  swift_beginAccess();
  (*(*v409 + 96))(v406, v449);
  swift_endAccess();
  v416 = v485;
  PegasusProxy.addCurareFlags(to:)(v406, v485);

  outlined consume of Data?(v441, v451);
  (*(v479 + 8))(v478, v480);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v486, type metadata accessor for PerformanceUtil.Ticket);
  swift_beginAccess();
  v417 = v416;
  v418 = v490;
  v484(v406, v417, v490);
  (v487)(v470, v406, v418);
  (v495)(v406, v418);
LABEL_104:
  v419 = v482;
  OSSignposter.end(token:message:)(v482, 0, 0xE000000000000000);
  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v419, type metadata accessor for SignpostToken);
}

uint64_t closure #1 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 344))(v9);
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = (a2 + *(type metadata accessor for PommesSearchRequest(0) + 20));
  v17 = *v15;
  v16 = v15[1];
  (*(v6 + 104))(v11, *MEMORY[0x277D39350], v5);
  (*(v13 + 40))(v17, v16, v20, v11, ObjectType, v13);
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v11, v5);
}

uint64_t closure #3 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v9 + 40), v8, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v10 = type metadata accessor for PommesContext();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v13 = MEMORY[0x223DDE3F0]();
    v14 = v15;
    result = (*(v11 + 8))(v8, v10);
  }

  *a2 = v13;
  a2[1] = v14;
  return result;
}

uint64_t closure #11 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a2, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v14 = (*(*a1 + 608))(v11, v10);

  result = outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  *a3 = v14;
  return result;
}

uint64_t closure #13 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of AppDataProviding(a1 + 24, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  *a3 = RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t closure #14 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v18 + 16))(v22, a2, v17);
  v23 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a3 + *(v23 + 40), v11, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v24 = type metadata accessor for PommesContext();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  }

  else
  {
    PommesContext.exportPromptContext()();
    (*(v25 + 8))(v11, v24);
  }

  (*(*a1 + 704))(v22, v16);
  outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return (*(v18 + 8))(v22, v17);
}

uint64_t closure #15 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 184);
  swift_beginAccess();
  (*(v9 + 16))(v13, a2, v8);
  (*(*v14 + 432))(v13, a3, a4);
  return (*(v9 + 8))(v13, v8);
}

uint64_t closure #16 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v9, a2, v4);
  (*(*v10 + 384))(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t closure #17 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  PegasusProxy.addGroundingInfo(to:for:)(a2, a3);
  return swift_endAccess();
}

uint64_t closure #18 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  PegasusProxy.appendMusicRankingInfluence(to:)(a2);
  return swift_endAccess();
}

uint64_t closure #19 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(void *a1, uint64_t a2)
{
  v4 = a1[23];
  swift_beginAccess();
  (*(*a1 + 104))(a2, v4);
  return swift_endAccess();
}

uint64_t PegasusProxy.addRewrittenUtterances(to:delegatedUDA:)(uint64_t a1)
{
  v41 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v35 - v23;
  Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
  v25 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
  v27 = v26;
  v28 = *(v16 + 8);
  v28(v24, v15);

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()();
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    v30 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
    v32 = v31;
    v28(v21, v15);
    MEMORY[0x223DDB2E0](v30, v32);
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    Siri_Nlu_External_RewriteMessage.rewriteType.getter();
    v28(v21, v15);
    (*(*v40 + 648))(v5);
    (*(v38 + 8))(v5, v39);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n(v41, v14);
    (*(v36 + 8))(v14, v37);
  }

  else
  {
    VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n = v41;
  }

  return VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n;
}

uint64_t PegasusProxy.addRewrittenUtterances(to:rewriteMessage:)(uint64_t VG_AHs5NeverOTg5, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of MediaUserStateCenter?(a2, v8, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  }

  else
  {
    v15 = (*(v10 + 32))(v14, v8, v9);
    MEMORY[0x28223BE20](v15, v16);
    *&v18[-16] = v14;
    VG_AHs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg5(partial apply for closure #1 in PegasusProxy.addRewrittenUtterances(to:rewriteMessage:), &v18[-32], VG_AHs5NeverOTg5);
    (*(v10 + 8))(v14, v9);
  }

  return VG_AHs5NeverOTg5;
}

uint64_t closure #1 in PegasusProxy.addRewrittenUtterances(to:rewriteMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMR);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2234CF920;
  (*(v8 + 16))(v11 + v10, a2, v7);
  return Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter();
}

uint64_t PegasusProxy.addInteractionType(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for InteractionType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v51 = &v46 - v26;
  v27 = type metadata accessor for PommesSearchRequest(0);
  v28 = *(v27 + 52);
  v49 = a2;
  v29 = *(a2 + v28);
  if (v29)
  {
    v30 = v27;
    v46 = v4;
    v47 = v3;
    v48 = v8;
    v31 = *(*v29 + 240);

    v31(v32);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v17, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
      v33 = *(v30 + 56);
      v34 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
      v35 = v50;
      swift_beginAccess();
      outlined init with copy of MediaUserStateCenter?(v35 + v34, v14, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
      v36 = v51;
      (*(*v29 + 248))(v49 + v33, v14);
      outlined destroy of MediaUserStateCenter?(v14, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }

    else
    {
      v36 = v51;
      (*(v19 + 32))(v51, v17, v18);
      v35 = v50;
    }

    v39 = *(v19 + 16);
    v39(v14, v36, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    v40 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v14, v35 + v40, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    swift_endAccess();
    v39(v24, v36, v18);
    v41 = (*(v19 + 88))(v24, v18);
    LODWORD(v39) = *MEMORY[0x277D61D90];
    v42 = v36;
    v43 = *(v19 + 8);
    v43(v24, v18);
    if (v41 == v39)
    {
      v44 = MEMORY[0x277D38D58];
    }

    else
    {
      v44 = MEMORY[0x277D38D60];
    }

    (*(v46 + 104))(v48, *v44, v47);
    v45 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.setter();
    v45(v53, 0);

    return (v43)(v42, v18);
  }

  else
  {
    (*(v4 + 104))(v8, *MEMORY[0x277D38D60], v3);
    v37 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.setter();
    return v37(v53, 0);
  }
}

uint64_t PegasusProxy.addMultiUserContext(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  result = type metadata accessor for PommesSearchRequest(0);
  if (*(a2 + *(result + 60)) == 1)
  {
    static PegasusProxy.multiUserContext(for:)(a2);
    (*(v4 + 16))(v9, v12, v3);
    v14 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.setter();
    v14(v15, 0);
    return (*(v4 + 8))(v12, v3);
  }

  return result;
}

uint64_t static PegasusProxy.pegausUserIdClassification(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 4)
  {
    v6 = MEMORY[0x277D39690];
  }

  else
  {
    v6 = qword_2784DAE00[a1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v119 = v111 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v111 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v111 - v19;
  v117 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v129 = *(v117 - 8);
  v21 = *(v129 + 8);
  v23 = MEMORY[0x28223BE20](v117, v22);
  v126 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v116 = v111 - v26;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation();
  v127 = *(v27 - 8);
  v28 = *(v127 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + *(type metadata accessor for PommesSearchRequest(0) + 72));
  if (v32)
  {
    v113 = v17;
    v114 = v5;
    v112 = v32;
    v120 = v32;
    v33 = [v120 rawRecognition];
    if (v33 && (v34 = v33, v35 = [v33 nBestTokenListsLossless], v34, v35))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13AFSpeechTokenCGMd, &_sSaySo13AFSpeechTokenCGMR);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v37 = [v120 recognition];
    v130 = v36;
    v115 = v4;
    v121 = a1;
    if (v37)
    {
      v38 = v37;
      v39 = [v37 nBestTokenListsLossless];

      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13AFSpeechTokenCGMd, &_sSaySo13AFSpeechTokenCGMR);
        v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      v36 = v130;
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v45 = *(v36 + 16);
    v46 = *(v40 + 16);
    v128 = v40;
    if (v45 != v46)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.pommes);

      v48 = Logger.logObject.getter();
      v49 = v36;
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        *(v51 + 4) = *(v49 + 16);

        *(v51 + 12) = 2048;
        *(v51 + 14) = *(v128 + 16);

        _os_log_impl(&dword_2232BB000, v48, v50, "Found ASR interpretation with mismatched token counts: %ld pre-ITN and %ld post-ITN. POMMES will send corresponding mismatched counts in Pegasus request.", v51, 0x16u);
        MEMORY[0x223DE0F80](v51, -1, -1);
      }

      else
      {
      }

      v36 = v49;
    }

    if (v46 > v45)
    {
      v45 = v46;
    }

    v52 = MEMORY[0x277D84F90];
    v122 = v20;
    v118 = v10;
    if (v45)
    {
      v132[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
      v53 = v132[0];
      v54 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ASRInterpretation and conformance Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x277D396C0]);
      v56 = 0;
      v131 = 0;
      do
      {
        MEMORY[0x28223BE20](v54, v55);
        v111[-4] = v56;
        v111[-3] = v36;
        v57 = v128;
        v111[-2] = v125;
        v111[-1] = v57;
        v58 = v131;
        static Message.with(_:)();
        v131 = v58;
        v132[0] = v53;
        v60 = *(v53 + 16);
        v59 = *(v53 + 24);
        v61 = v53;
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1);
          v61 = v132[0];
        }

        ++v56;
        *(v61 + 16) = v60 + 1;
        v54 = (*(v127 + 32))(v61 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v60, v31, v27);
        v36 = v130;
        v53 = v61;
      }

      while (v45 != v56);
      v127 = v61;
      v20 = v122;
      v10 = v118;
      v52 = MEMORY[0x277D84F90];
    }

    else
    {
      v131 = 0;
      v127 = MEMORY[0x277D84F90];
    }

    v62 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
    v63 = *(v62 + 16);
    if (v63)
    {
      v132[0] = v52;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
      v64 = v132[0];
      v125 = *(v129 + 2);
      v65 = (v129[80] + 32) & ~v129[80];
      v111[1] = v62;
      v124 = v65;
      v66 = v62 + v65;
      v123 = *(v129 + 9);
      v67 = (v129 + 8);
      v129 += 16;
      v68 = (v129 + 16);
      v70 = v116;
      v69 = v117;
      do
      {
        v72 = v125;
        v71 = v126;
        (v125)(v126, v66, v69);
        (v72)(v70, v71, v69);

        Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter();
        (*v67)(v71, v69);
        v132[0] = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1);
          v64 = v132[0];
        }

        *(v64 + 16) = v74 + 1;
        v75 = v123;
        (*v68)(v124 + v64 + v74 * v123, v70, v69);
        v66 += v75;
        --v63;
      }

      while (v63);

      v20 = v122;
      v10 = v118;
    }

    else
    {
    }

    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    v76 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQuery.getter();
    v78 = v115;
    v79 = v119;
    if (v76)
    {

      v80 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.modify();
      Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter();
      v76 = v80(v132, 0);
    }

    MEMORY[0x28223BE20](v76, v77);
    v81 = v120;
    v111[-2] = v120;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ASRContext and conformance Apple_Parsec_Siri_V2alpha_ASRContext, MEMORY[0x277D39290]);
    static Message.with(_:)();
    v82 = v114;
    v83 = *(v114 + 16);
    v83(v113, v20, v78);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.setter();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.pommes);
    v83(v79, v20, v78);
    v83(v10, v20, v78);
    v85 = v81;

    v86 = v128;

    v87 = v10;
    v88 = v127;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      LODWORD(v126) = v90;
      v92 = v91;
      v93 = swift_slowAlloc();
      v124 = v93;
      v131 = swift_slowAlloc();
      v132[0] = v131;
      *v92 = 134350338;
      v125 = v89;
      v94 = *(v88 + 16);

      *(v92 + 4) = v94;

      *(v92 + 12) = 2112;
      *(v92 + 14) = v85;
      *v93 = v112;
      *(v92 + 22) = 2080;
      v129 = v85;
      v95 = MEMORY[0x223DDA560]();
      v97 = v96;
      v98 = *(v82 + 8);
      v98(v79, v78);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v132);

      *(v92 + 24) = v99;
      *(v92 + 32) = 2080;
      v101 = MEMORY[0x223DDA580](v100);
      v103 = v102;
      v98(v87, v78);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v132);

      *(v92 + 34) = v104;
      *(v92 + 42) = 2050;
      v105 = *(v130 + 16);

      *(v92 + 44) = v105;

      *(v92 + 52) = 2050;
      v106 = *(v86 + 16);

      *(v92 + 54) = v106;

      v107 = v125;
      _os_log_impl(&dword_2232BB000, v125, v126, "Added %{public}ld ASR interpretations to Pegasus request\n    speechPackage: %@\n    modelVersion: %s\n    acousticModelVersion: %s\n    nBestRawTokens.count: %{public}ld\n    nBestTokens.count: %{public}ld", v92, 0x3Eu);
      v108 = v124;
      outlined destroy of MediaUserStateCenter?(v124, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v108, -1, -1);
      v109 = v131;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v109, -1, -1);
      MEMORY[0x223DE0F80](v92, -1, -1);

      v98(v122, v78);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v110 = *(v82 + 8);
      v110(v87, v78);
      v110(v79, v78);
      v110(v122, v78);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pommes);
    v131 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v131, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2232BB000, v131, v42, "Search request contained no ASR speech package. Skipping interpretations in Pegasus request.", v43, 2u);
      MEMORY[0x223DE0F80](v43, -1, -1);
    }

    v44 = v131;
  }
}

uint64_t closure #1 in closure #1 in PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 16) > a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v7 = *(a3 + 8 * a2 + 32);

    specialized PegasusProxy.createASRInterpretationTokens(with:)();

    result = Apple_Parsec_Siri_V2alpha_ASRInterpretation.preItnToken.setter();
  }

  if (*(a5 + 16) > a2)
  {
    v9 = *(a5 + 8 * a2 + 32);

    specialized PegasusProxy.createASRInterpretationTokens(with:)();

    return Apple_Parsec_Siri_V2alpha_ASRInterpretation.postItnToken.setter();
  }

  return result;
}

id closure #3 in PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(int a1, id a2)
{
  v3 = [a2 modelVersion];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223DDA570](v5, v7);
  }

  result = [a2 acousticModelVersion];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    return MEMORY[0x223DDA590](v10, v12);
  }

  return result;
}

void closure #1 in closure #1 in PegasusProxy.createASRInterpretationTokens(with:)(int a1, id a2)
{
  v3 = [a2 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223DDB570](v5, v7);
  }

  v8 = [a2 phoneSequence];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_InterpretationToken.phoneSequence.setter();
  }

  v10 = [a2 ipaPhoneSequence];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_InterpretationToken.ipaPhoneSequence.setter();
  }

  [a2 removeSpaceBefore];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceRemovedBefore.setter();
  [a2 removeSpaceAfter];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceRemovedAfter.setter();
  [a2 removeSpaceAfter];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceAddedAfter.setter();
  [a2 startTime];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.startTime.setter();
  [a2 endTime];
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.endTime.setter();
  [a2 silenceStartTime];
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.silenceStartTime.setter();
  [a2 confidenceScore];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.confidenceScore.setter();
  v15 = [a2 acousticCost];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    Apple_Parsec_Siri_V2alpha_InterpretationToken.acousticCost.setter();
  }

  v17 = [a2 graphCost];
  if (v17)
  {
    v18 = v17;
    [v17 doubleValue];
    Apple_Parsec_Siri_V2alpha_InterpretationToken.graphCost.setter();
  }
}

uint64_t PegasusProxy.pegasusRewriteType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D5DBE8])
  {
    v11 = MEMORY[0x277D39388];
LABEL_7:
    v12 = *v11;
    v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
    v14 = *(*(v13 - 8) + 104);
    v15 = a2;
    v16 = v12;
    return v14(v15, v16, v13);
  }

  if (v10 == *MEMORY[0x277D5DBD0])
  {
    v11 = MEMORY[0x277D39370];
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x277D5DBD8])
  {
    v11 = MEMORY[0x277D39378];
    goto LABEL_7;
  }

  v18 = *MEMORY[0x277D5DBE0];
  v19 = v10;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  v14 = *(*(v13 - 8) + 104);
  if (v19 != v18)
  {
    v14(a2, *MEMORY[0x277D39388], v13);
    return (*(v5 + 8))(v9, v4);
  }

  v16 = *MEMORY[0x277D39380];
  v15 = a2;
  return v14(v15, v16, v13);
}

uint64_t PegasusProxy.addOnScreenContext(to:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[2] = a2;
  v22[3] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static PerformanceUtil.shared;
  Date.init()();
  v11 = *(*v10 + 200);
  v22[0] = *v10 + 200;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_sSDy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
  LOBYTE(v19) = 2;
  v11(&v23, 0xD000000000000021, 0x80000002234E0CB0, 0, v9, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 1061, "addOnScreenContext(to:onDeviceLabels:)", 38, v19, partial apply for closure #1 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:), v3, v12);
  v13 = *(v5 + 8);
  v14 = v13(v9, v4);
  v22[1] = v22;
  v15 = v23;
  MEMORY[0x28223BE20](v14, v16);
  v19 = v15;
  Date.init()();
  v20 = &v18;
  v21 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v19) = 2;
  (v11)(0xD00000000000005BLL, 0x80000002234E0CE0, 0, v9, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 1065, "addOnScreenContext(to:onDeviceLabels:)", 38, v19, partial apply for closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:));

  return v13(v9, v4);
}

uint64_t closure #1 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of AppDataProviding(a1 + 24, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = RRReferenceResolverProtocol.extractOnScreenContext()(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v86 = a2;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v82, v7);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v80 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMd, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v69 - v15;
  v17 = type metadata accessor for OnScreenContextType.GeneratedClientEntity();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v85 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v24 = (v23 + 48);
  v75 = (v5 + 8);
  v76 = (v5 + 16);
  v74 = (v5 + 40);
  v73 = xmmword_2234CF920;
  v70 = a1;
  v78 = v20;
  v79 = v16;
  v77 = (v23 + 48);
  while (1)
  {
    v26 = *(&outlined read-only object #0 of closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:) + v22 + 32);
    v27 = *(a1 + 16);
    v71 = v22;
    if (v27 && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v29 & 1) != 0))
    {
      v30 = *(*(a1 + 56) + 8 * v28);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v72 = v31;
    v32 = *(v31 + 16);
    if (v32)
    {
      break;
    }

LABEL_2:
    v22 = v71 + 1;

    a1 = v70;
    if (v22 == 3)
    {
      return result;
    }
  }

  v33 = (v72 + 40);
  v87 = v26;
  while (1)
  {
    v35 = *(v33 - 1);
    v34 = *v33;

    OnScreenContextType.generateClientEntity(context:)(v35, v34, v26, v16);

    if ((*v24)(v16, 1, v17) != 1)
    {
      break;
    }

    outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMd, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMR);
LABEL_10:
    v33 += 2;
    if (!--v32)
    {
      goto LABEL_2;
    }
  }

  v36 = v85;
  outlined init with take of PommesSearchRequest(v16, v85, type metadata accessor for OnScreenContextType.GeneratedClientEntity);
  v37 = (v36 + *(v17 + 24));
  v39 = *v37;
  v38 = v37[1];

  v40 = v86;
  v41 = *(v86 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = *(v40 + 8);
  v43 = v88;
  *(v40 + 8) = 0x8000000000000000;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
  v46 = v43[2];
  v47 = (v44 & 1) == 0;
  v48 = v46 + v47;
  if (!__OFADD__(v46, v47))
  {
    v49 = v44;
    if (v43[3] < v48)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_27;
      }

      v45 = v50;
      v52 = v88;
      if ((v49 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v57 = (v52[7] + 16 * v45);
      v58 = v57[1];
      *v57 = v39;
      v57[1] = v38;

LABEL_21:
      *(v86 + 8) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR);
      v59 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
      v60 = *(v59 - 8);
      v61 = *(v60 + 72);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v73;
      v64 = v85;
      (*(v60 + 16))(v63 + v62, v85, v59);
      v66 = v81;
      v65 = v82;
      v67 = v83;
      (*v76)(v81, v83, v82);
      v68 = v80;
      (*(*v84 + 88))(v63, v66);

      (*v75)(v66, v65);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v64, type metadata accessor for OnScreenContextType.GeneratedClientEntity);
      (*v74)(v67, v68, v65);
      v17 = v78;
      v16 = v79;
      v24 = v77;
      v26 = v87;
      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v52 = v88;
      if (v44)
      {
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v52 = v88;
      if (v49)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v52[(v45 >> 6) + 8] |= 1 << v45;
    *(v52[6] + v45) = v87;
    v53 = (v52[7] + 16 * v45);
    *v53 = v39;
    v53[1] = v38;
    v54 = v52[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_26;
    }

    v52[2] = v56;
    goto LABEL_21;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PegasusProxy.addPlaySRREntities(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v144 = a1;
  v149 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v145 = *(v149 - 8);
  v4 = *(v145 + 64);
  MEMORY[0x28223BE20](v149, v5);
  v148 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RRCandidate();
  v8 = *(v7 - 8);
  v146 = v7;
  v147 = v8;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v130 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v131 = &v129 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v132 = &v129 - v17;
  v18 = type metadata accessor for RRQuery();
  v140 = *(v18 - 1);
  v141 = v18;
  v19 = *(v140 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v139 = (&v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v22 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137, v23);
  v138 = (&v129 - v24);
  v135 = type metadata accessor for RRResult();
  v134 = *(v135 - 8);
  v25 = *(v134 + 64);
  v27 = MEMORY[0x28223BE20](v135, v26);
  v133 = (&v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v29);
  v136 = &v129 - v30;
  v31 = type metadata accessor for Siri_Nlu_External_UserParse();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = *(a2 + *(type metadata accessor for PommesSearchRequest(0) + 76));
  v39 = *(v38 + 16);
  v40 = (v32 + 8);
  do
  {
    if (v39 == v37)
    {
      if (one-time initialization token for pommes != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }

    v41 = *(v38 + 16);
    if (v37 >= v41)
    {
      __break(1u);
      goto LABEL_63;
    }

    (*(v32 + 16))(v36, v38 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v37, v31);
    v42 = v150;
    v43 = Siri_Nlu_External_UserParse.firstSmartPlayTask()();
    v150 = v42;
    if (v42)
    {
      return (*v40)(v36, v31);
    }

    v44 = v43;
    ++v37;
    (*v40)(v36, v31);
  }

  while (!v44);

  v45 = type metadata accessor for UsoEntityBuilder_common_MediaItem();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = UsoEntityBuilder_common_MediaItem.init()();
  v49 = MEMORY[0x223DDCA80]();
  if (!v49)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.pommes);
    v57 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2232BB000, v57, v61, "Unable to generate empty media item USO entity for reference resolution", v62, 2u);
      MEMORY[0x223DE0F80](v62, -1, -1);
    }

    goto LABEL_18;
  }

  v50 = v49;
  outlined init with copy of AppDataProviding(v142 + 24, v151);
  __swift_project_boxed_opaque_existential_1(v151, v151[3]);
  v52 = v139;
  v51 = v140;
  *v139 = v50;
  v53 = v141;
  (*(v51 + 104))(v52, *MEMORY[0x277D5FEA8], v141);

  v54 = v138;
  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v51 + 8))(v52, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v151[7] = *v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  v31 = v134;
  v64 = v136;
  v65 = v54;
  v40 = v135;
  (*(v134 + 32))(v136, v65, v135);
  __swift_destroy_boxed_opaque_existential_1(v151);
  v66 = v133;
  (*(v31 + 16))(v133, v64, v40);
  v67 = (*(v31 + 88))(v66, v40);
  if (v67 == *MEMORY[0x277D5FEC0])
  {
    v137 = v50;
    v138 = v48;
    (*(v31 + 96))(v66, v40);
    v68 = v146;
    v69 = v147;
    v70 = *(v147 + 32);
    v71 = v132;
    v70(v132, v66, v146);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = v131;
    (*(v69 + 16))(v131, v71, v68);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v73;
      v141 = swift_slowAlloc();
      v151[0] = v141;
      *v76 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08]);
      v78 = v70;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v147 + 8))(v77, v68);
      v82 = v79;
      v70 = v78;
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v151);
      v69 = v147;

      *(v76 + 4) = v83;
      _os_log_impl(&dword_2232BB000, v74, v75, "Found single SRR match candidate for SmartPlay: %s", v76, 0xCu);
      v84 = v141;
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x223DE0F80](v84, -1, -1);
      v85 = v76;
      v71 = v132;
      MEMORY[0x223DE0F80](v85, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v73, v68);
    }

    v98 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v99 = *(v69 + 72);
    v100 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2234CF920;
    v70((v87 + v100), v71, v98);
    v86 = v98;
    goto LABEL_32;
  }

  v86 = v146;
  if (v67 != *MEMORY[0x277D5FED0])
  {
    if (v67 == *MEMORY[0x277D5FEC8])
    {
      v111 = *(v31 + 8);
      v111(v66, v40);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      __swift_project_value_buffer(v112, static Logger.pommes);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = "No support for plural match in reference resolution for SmartPlay";
LABEL_53:
        _os_log_impl(&dword_2232BB000, v113, v114, v116, v115, 2u);
        MEMORY[0x223DE0F80](v115, -1, -1);

LABEL_55:
        v111(v136, v40);
LABEL_56:
        v118 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
        return (*(*(v118 - 8) + 16))(v143, v144, v118);
      }

      goto LABEL_54;
    }

    if (v67 == *MEMORY[0x277D5FED8])
    {
      v111 = *(v31 + 8);
      v111(v66, v40);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      __swift_project_value_buffer(v117, static Logger.pommes);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = "No support for plural disambiguation in reference resolution for SmartPlay";
        goto LABEL_53;
      }

LABEL_54:

      goto LABEL_55;
    }

    v41 = one-time initialization token for pommes;
    if (v67 == *MEMORY[0x277D5FEE0])
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      __swift_project_value_buffer(v119, static Logger.pommes);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_2232BB000, v120, v121, "No matching entities for SmartPlay task", v122, 2u);
        MEMORY[0x223DE0F80](v122, -1, -1);
      }

      else
      {
      }

      (*(v31 + 8))(v136, v40);
      goto LABEL_56;
    }

LABEL_63:
    if (v41 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, static Logger.pommes);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_2232BB000, v124, v125, "Unknown (future?) reference resolution result case for SmartPlay", v126, 2u);
      MEMORY[0x223DE0F80](v126, -1, -1);
    }

    else
    {
    }

    v127 = *(v31 + 8);
    v127(v136, v40);
    v128 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    (*(*(v128 - 8) + 16))(v143, v144, v128);
    return v127(v133, v40);
  }

  (*(v31 + 96))(v66, v40);
  v87 = *v66;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v137 = v50;
  v138 = v48;
  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.pommes);

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = v87;
    v93 = swift_slowAlloc();
    v151[0] = v93;
    *v91 = 136315138;
    v94 = MEMORY[0x223DDF850](v92, v86);
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v151);

    *(v91 + 4) = v96;
    _os_log_impl(&dword_2232BB000, v89, v90, "Found multiple SRR match candidates for SmartPlay: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v97 = v93;
    v87 = v92;
    MEMORY[0x223DE0F80](v97, -1, -1);
    MEMORY[0x223DE0F80](v91, -1, -1);
  }

  v69 = v147;
LABEL_32:
  v101 = *(v87 + 16);
  if (v101)
  {
    v151[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v101, 0);
    v102 = 0;
    v103 = v151[0];
    v140 = v87 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v141 = v87;
    v104 = (v69 + 8);
    v139 = (v145 + 32);
    v105 = v130;
    while (v102 < v141[2])
    {
      v106 = (*(v69 + 16))(v105, v140 + *(v69 + 72) * v102, v86);
      MEMORY[0x28223BE20](v106, v107);
      *(&v129 - 2) = v105;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438]);
      v108 = v150;
      static Message.with(_:)();
      v150 = v108;
      if (v108)
      {
        (*(v134 + 8))(v136, v135);

        (*v104)(v105, v86);
      }

      (*v104)(v105, v86);
      v151[0] = v103;
      v110 = *(v103 + 16);
      v109 = *(v103 + 24);
      if (v110 >= v109 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109 > 1, v110 + 1, 1);
        v105 = v130;
        v103 = v151[0];
      }

      ++v102;
      *(v103 + 16) = v110 + 1;
      (*(v145 + 32))(v103 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v110, v148, v149);
      v86 = v146;
      v69 = v147;
      if (v101 == v102)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_72:
    swift_once();
LABEL_10:
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.pommes);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2232BB000, v57, v58, "User parses do not have a SmartPlay USO task", v59, 2u);
      MEMORY[0x223DE0F80](v59, -1, -1);
    }

LABEL_18:

    v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    return (*(*(v63 - 8) + 16))(v143, v144, v63);
  }

  v103 = MEMORY[0x277D84F90];
LABEL_47:
  (*(*v142 + 88))(v103, v144);

  return (*(v134 + 8))(v136, v135);
}

uint64_t RRCandidate.equivalentClientEntity()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438]);
  return static Message.with(_:)();
}

uint64_t PegasusProxy.addResolvedEntities(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v103 = *(v5 - 8);
  v6 = v103[8];
  MEMORY[0x28223BE20](v5, v7);
  v104 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v83 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v93 = *(v14 - 8);
  v15 = *(v93 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v100 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v83 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v92 = v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v26 = *(v25 - 8);
  v101 = v25;
  v102 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v83 - v29;
  v31 = type metadata accessor for PerformanceUtil.Ticket(0);
  v32 = *(*(v31 - 1) + 64);
  MEMORY[0x28223BE20](v31, v33);
  v84 = v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Logger.pommes);

  v96 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v89 = v5;
  v94 = v30;
  v83[1] = a3;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v105 = v22;
    v42 = v41;
    v107[0] = v41;
    *v40 = 134218242;
    *(v40 + 4) = *(a1 + 16);

    *(v40 + 12) = 2080;
    v43 = MEMORY[0x223DDF850](a1, v101);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v107);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_2232BB000, v37, v38, "Adding %ld resolvedSpanEntities to request: %s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v46 = v42;
    v30 = v94;
    v22 = v105;
    MEMORY[0x223DE0F80](v46, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }

  else
  {
  }

  v47 = v84;
  Date.init()();
  v48 = &v47[v31[5]];
  *v48 = "SiriInformationSearch/PegasusProxy.swift";
  *(v48 + 1) = 40;
  v48[16] = 2;
  *&v47[v31[6]] = 1128;
  v49 = &v47[v31[7]];
  *v49 = "addResolvedEntities(_:to:)";
  *(v49 + 1) = 26;
  v49[16] = 2;
  v50 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000029);
  v52 = &v47[v31[8]];
  *v52 = v50;
  v52[1] = v53;
  v54 = *(a1 + 16);
  if (v54)
  {
    v105 = 0;
    v55 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v85 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore;
    v56 = a1 + v55;
    v88 = (v103 + 1);
    v57 = *(v102 + 72);
    v98 = (v93 + 56);
    v99 = v57;
    v102 = v93 + 32;
    v97 = (v93 + 48);
    v103 = MEMORY[0x277D84F90];
    *&v51 = 136315138;
    v90 = v51;
    v91 = v13;
    do
    {
      outlined init with copy of MediaUserStateCenter?(v56, v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      v58 = &v30[*(v101 + 48)];
      RREntity.usoEntity.getter();
      static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

      v59 = v105;
      static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
      if (v59)
      {

        v105 = 0;
        v62 = v59;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v95 = v54;
          v66 = v65;
          v67 = swift_slowAlloc();
          v106 = v59;
          v107[0] = v67;
          *v66 = v90;
          v68 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v69 = String.init<A>(describing:)();
          v71 = v14;
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v107);

          *(v66 + 4) = v72;
          v14 = v71;
          _os_log_impl(&dword_2232BB000, v63, v64, "Error converting entity: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          v73 = v67;
          v13 = v91;
          MEMORY[0x223DE0F80](v73, -1, -1);
          v74 = v66;
          v30 = v94;
          v54 = v95;
          MEMORY[0x223DE0F80](v74, -1, -1);
        }

        else
        {
        }

        v80 = 1;
      }

      else
      {
        v60 = v54;

        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
        v61 = v89;
        Message.serializedData(partial:)();
        (*v88)(v104, v61);
        Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)((v87 + v85), v86, v22);
        v105 = 0;
        Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
        (*v102)(v13, v22, v14);
        v80 = 0;
        v30 = v94;
        v54 = v60;
      }

      (*v98)(v13, v80, 1, v14);
      outlined destroy of MediaUserStateCenter?(v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      if ((*v97)(v13, 1, v14) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v13, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
      }

      else
      {
        v75 = *v102;
        v76 = v92;
        (*v102)(v92, v13, v14);
        v75(v100, v76, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
        }

        v78 = v103[2];
        v77 = v103[3];
        if (v78 >= v77 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v103);
        }

        v79 = v103;
        v103[2] = v78 + 1;
        v75(&v79[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v78], v100, v14);
      }

      v56 += v99;
      --v54;
    }

    while (v54);
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v81 = v84;
  (*(*static PerformanceUtil.shared + 184))(v84, 0);
  (*(*v87 + 88))(v103, v86);

  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v81, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v66 = a2;
  v73 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v71 = *(v73 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v73, v6);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v68 = *(v70 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v70, v9);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v74 = *(v78 - 8);
  v11 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v78, v12);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v67 = &v61 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v76 = &v61 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v77 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v61 - v27;
  v29 = type metadata accessor for PerformanceUtil.Ticket(0);
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ClientEntity.init()();
  Siri_Nlu_External_Span.score.getter();
  v34 = a3;
  Apple_Parsec_Siri_Context_ClientEntity.score.setter();
  if (Siri_Nlu_External_Span.hasLabel.getter())
  {
    Siri_Nlu_External_Span.label.getter();
    Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.setter();
  }

  Date.init()();
  v35 = &v33[v29[5]];
  *v35 = "SiriInformationSearch/PegasusProxy.swift";
  *(v35 + 1) = 40;
  v35[16] = 2;
  *&v33[v29[6]] = 1297;
  v36 = &v33[v29[7]];
  *v36 = "equivalentClientEntity(contactStore:request:)";
  *(v36 + 1) = 45;
  v36[16] = 2;
  v37 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000012);
  v38 = &v33[v29[8]];
  *v38 = v37;
  v38[1] = v39;
  Siri_Nlu_External_Span.usoGraph.getter();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
  v40 = v20;
  v41 = v79;
  Message.serializedData(partial:)();
  if (v41)
  {
    (*(v21 + 8))(v28, v20);
    v42 = v34;
LABEL_5:
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v33, type metadata accessor for PerformanceUtil.Ticket);
    v43 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    return (*(*(v43 - 8) + 8))(v42, v43);
  }

  v79 = v3;
  v45 = *(v21 + 8);
  v63 = v21 + 8;
  v64 = 0;
  v62 = v45;
  v45(v28, v20);
  Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v33, 0);
  v46 = Siri_Nlu_External_Span.matcherNames.getter();
  v47 = v78;
  if (!*(v46 + 16))
  {

    goto LABEL_12;
  }

  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v67;
  v49(v67, v46 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v78);

  v51 = v76;
  (*(v48 + 32))(v76, v50, v47);
  v52 = v75;
  v49(v75, v51, v47);
  v42 = v34;
  v53 = (*(v48 + 88))(v52, v47);
  if (v53 == *MEMORY[0x277D5DA28])
  {
    goto LABEL_10;
  }

  if (v53 != *MEMORY[0x277D5DA08])
  {
    if (v53 == *MEMORY[0x277D5DA20] || v53 == *MEMORY[0x277D5DA10])
    {
      (*(v68 + 104))(v69, *MEMORY[0x277D39420], v70);
      Apple_Parsec_Siri_Context_ClientEntity.source.setter();
      (*(v71 + 104))(v72, *MEMORY[0x277D39408], v73);
      Apple_Parsec_Siri_Context_ClientEntity.type.setter();
      (*(v48 + 8))(v51, v47);
      goto LABEL_12;
    }

    if (v53 != *MEMORY[0x277D5DA18])
    {
      (*(v68 + 104))(v69, *MEMORY[0x277D39428], v70);
      Apple_Parsec_Siri_Context_ClientEntity.source.setter();
      (*(v71 + 104))(v72, *MEMORY[0x277D39400], v73);
      Apple_Parsec_Siri_Context_ClientEntity.type.setter();
      v60 = *(v48 + 8);
      v60(v51, v47);
      v60(v75, v47);
      goto LABEL_12;
    }

LABEL_10:
    (*(v68 + 104))(v69, *MEMORY[0x277D39428], v70);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v71 + 104))(v72, *MEMORY[0x277D39400], v73);
    Apple_Parsec_Siri_Context_ClientEntity.type.setter();
    (*(v48 + 8))(v51, v47);
    goto LABEL_12;
  }

  (*(v68 + 104))(v69, *MEMORY[0x277D39410], v70);
  Apple_Parsec_Siri_Context_ClientEntity.source.setter();
  (*(v71 + 104))(v72, *MEMORY[0x277D393F8], v73);
  Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  v59 = v64;
  Siri_Nlu_External_Span.contactFlags(contactStore:request:)(v65);
  if (v59)
  {
    (*(v48 + 8))(v76, v47);
    goto LABEL_5;
  }

  Apple_Parsec_Siri_Context_ClientEntity.hasAddress_p.setter();
  Apple_Parsec_Siri_Context_ClientEntity.hasPhoneNumber_p.setter();
  (*(v48 + 8))(v76, v47);
LABEL_12:
  v54 = v77;
  v55 = v79;
  Siri_Nlu_External_Span.usoGraph.getter();
  v56 = Siri_Nlu_External_UsoGraph.alignments.getter();
  v57 = v62(v54, v40);
  MEMORY[0x28223BE20](v57, v58);
  *(&v61 - 2) = v55;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(partial apply for closure #1 in Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:), (&v61 - 4), v56, MEMORY[0x277D399F8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5DD20]);

  Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v33, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v57 = a4;
  v6 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_Span();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v72 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v63 = &v57 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v71 = &v57 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v77 = &v57 - v24;
  v25 = type metadata accessor for SignpostToken();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v60 = a2;
    v30 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v30, static Signposter.pommes);
    v58 = v29;
    OSSignposter.begin(name:context:)("proxy.userVocabSpans", 20, 2u, 0, v29);
    a2 = a1;
    v31 = Siri_Nlu_External_Span.matcherNames.getter();
    v73 = *(v31 + 16);
    if (v73)
    {
      v32 = 0;
      v69 = v78 + 16;
      v68 = *MEMORY[0x277D5DA08];
      v66 = (v7 + 8);
      v67 = (v7 + 104);
      v65 = (v78 + 32);
      v62 = (v78 + 8);
      v76 = MEMORY[0x277D84F90];
      a1 = &lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName;
      v70 = v31;
      while (v32 < *(v31 + 16))
      {
        a2 = v77;
        v75 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v74 = *(v78 + 72);
        (*(v78 + 16))(v77, v31 + v75 + v74 * v32++, v79);
        v29 = Siri_Nlu_External_Span.matcherNames.getter();
        (*v67)(v11, v68, v6);
        v33 = 0;
        v34 = *(v29 + 16);
        do
        {
          if (v34 == v33)
          {

            (*v66)(v11, v6);
            (*v62)(v77, v79);
            goto LABEL_5;
          }

          v35 = v33 + 1;
          v36 = v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33;
          _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
          a2 = v6;
          v37 = dispatch thunk of static Equatable.== infix(_:_:)();
          v33 = v35;
        }

        while ((v37 & 1) == 0);

        (*v66)(v11, v6);
        v38 = *v65;
        (*v65)(v71, v77, v79);
        a2 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1);
          a2 = v80;
        }

        v41 = a2[2];
        v40 = a2[3];
        v29 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
          a2 = v80;
        }

        a2[2] = v29;
        v76 = a2;
        v38(a2 + v75 + v41 * v74, v71, v79);
LABEL_5:
        v31 = v70;
        if (v32 == v73)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v76 = MEMORY[0x277D84F90];
LABEL_16:

    v7 = v76;
    v77 = v76[2];
    if (!v77)
    {
      break;
    }

    v29 = 0;
    v11 = v79;
    v74 = (v78 + 8);
    v75 = v78 + 16;
    v44 = (v78 + 32);
    a1 = MEMORY[0x277D84F90];
    v6 = v63;
    a2 = v64;
    while (v29 < *(v7 + 16))
    {
      v45 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v46 = *(v78 + 72);
      (*(v78 + 16))(v6, v7 + v45 + v46 * v29, v11);
      if (PegasusProxy.shouldAddUserVocabSpan(_:)(v6))
      {
        v47 = *v44;
        (*v44)(v72, v6, v11);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v80 = a1;
        if ((v48 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1);
          a1 = v80;
        }

        v50 = a1[2];
        v49 = a1[3];
        if (v50 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
          a1 = v80;
        }

        a1[2] = v50 + 1;
        v11 = v79;
        v42 = (v47)(a1 + v45 + v50 * v46, v72, v79);
        v6 = v63;
        a2 = v64;
        v7 = v76;
      }

      else
      {
        v42 = (*v74)(v6, v11);
      }

      if (v77 == ++v29)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
  a2 = v64;
LABEL_28:
  MEMORY[0x28223BE20](v42, v43);
  v51 = v59;
  v52 = v60;
  *(&v57 - 2) = a2;
  *(&v57 - 1) = v52;
  v53 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriNLUTypes0D18_Nlu_External_SpanVG_10PegasusAPI013Apple_Parsec_D21_Context_ClientEntityVsAE_pTg5(partial apply for closure #3 in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:), (&v57 - 4), a1);
  if (v51)
  {
  }

  else
  {
    v54 = v53;

    (*(*a2 + 88))(v54, v52);
  }

  v55 = v58;
  $defer #1 () in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)(v61, v7, v58);

  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v55, type metadata accessor for SignpostToken);
}

uint64_t $defer #1 () in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = type metadata accessor for Siri_Nlu_External_Span();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v26[1] = a1;
    v27 = a3;
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v32;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v29 = *(v13 + 56);
    v30 = v14;
    v28 = (v13 - 8);
    do
    {
      v16 = v31;
      v17 = v13;
      v30(v10, v15, v31);
      v18 = Siri_Nlu_External_Span.label.getter();
      v20 = v19;
      (*v28)(v10, v16);
      v32 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v29;
      --v11;
      v13 = v17;
    }

    while (v11);
    a3 = v27;
  }

  specialized Array.append<A>(contentsOf:)(v12);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static Signposter.pommes);
  return OSSignposter.end(token:message:)(a3, 0, 0xE000000000000000);
}

uint64_t PegasusProxy.shouldAddUserVocabSpan(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v70 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v62 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v62 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v62 - v31;
  v71 = a1;
  v33 = Siri_Nlu_External_Span.matcherNames.getter();
  if (*(v33 + 16))
  {
    (*(v11 + 16))(v32, v33 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    v34 = *(v11 + 56);
    v34(v32, 0, 1, v10);
  }

  else
  {

    v34 = *(v11 + 56);
    v34(v32, 1, 1, v10);
  }

  (*(v11 + 104))(v29, *MEMORY[0x277D5DA08], v10);
  v34(v29, 0, 1, v10);
  v35 = *(v15 + 48);
  outlined init with copy of MediaUserStateCenter?(v32, v19, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined init with copy of MediaUserStateCenter?(v29, v19 + v35, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v36 = *(v11 + 48);
  if (v36(v19, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v32, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    if (v36(v19 + v35, 1, v10) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v19, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
      goto LABEL_12;
    }

LABEL_9:
    v37 = &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd;
    v38 = &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR;
    v39 = v19;
LABEL_10:
    outlined destroy of MediaUserStateCenter?(v39, v37, v38);
LABEL_25:
    v47 = 1;
    return v47 & 1;
  }

  outlined init with copy of MediaUserStateCenter?(v19, v25, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if (v36(v19 + v35, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v32, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    (*(v11 + 8))(v25, v10);
    goto LABEL_9;
  }

  v40 = v70;
  (*(v11 + 32))(v70, v19 + v35, v10);
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v11 + 8);
  v42(v40, v10);
  outlined destroy of MediaUserStateCenter?(v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined destroy of MediaUserStateCenter?(v32, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v42(v25, v10);
  outlined destroy of MediaUserStateCenter?(v19, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((Siri_Nlu_External_Span.hasLabel.getter() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (one-time initialization token for allowedClientEntityLabels != -1)
  {
    swift_once();
  }

  v43 = static PegasusProxy.allowedClientEntityLabels;
  v44 = Siri_Nlu_External_Span.label.getter();
  LOBYTE(v43) = specialized Set.contains(_:)(v44, v45, v43);

  if (v43)
  {
    if (Siri_Nlu_External_Span.label.getter() == 0x656D614E707061 && v46 == 0xE700000000000000)
    {
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v49 = v67;
    Siri_Nlu_External_Span.usoGraph.getter();
    v50 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v68 + 8))(v49, v69);
    if (!*(v50 + 16))
    {

      goto LABEL_25;
    }

    v51 = v63;
    v52 = v64;
    v53 = v65;
    (*(v64 + 16))(v63, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v65);

    v54 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v56 = v55;
    v57 = (*(v52 + 8))(v51, v53);
    (*(**(v66 + 184) + 264))(v74, v57);
    v58 = v75;
    if (v75)
    {
      v59 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      (*(v59 + 8))(&v72, v54, v56, v58, v59);

      v60 = v73;
      __swift_destroy_boxed_opaque_existential_1(v74);

      v47 = v60 ^ 1;
      return v47 & 1;
    }

    v37 = &_s21SiriInformationSearch17PommesAppChecking_pSgMd;
    v38 = &_s21SiriInformationSearch17PommesAppChecking_pSgMR;
    v39 = v74;
    goto LABEL_10;
  }

  v47 = 0;
  return v47 & 1;
}

uint64_t PegasusProxy.appendMusicRankingInfluence(to:)(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider + 24);
  v16 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider), v15);
  (*(v16 + 8))(v15, v16);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v29 = v3[2];
  v29(v11, v14, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v2;
    v21 = v20;
    *v20 = 134217984;
    v22 = MEMORY[0x223DDB7C0]();
    v23 = v3[1];
    v23(v11, v28);
    *(v21 + 1) = v22;
    _os_log_impl(&dword_2232BB000, v18, v19, "Adding MusicRankingInfluence to request: %ld", v21, 0xCu);
    v24 = v21;
    v2 = v28;
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  else
  {
    v23 = v3[1];
    v23(v11, v2);
  }

  v29(v30, v14, v2);
  v25 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
  v26 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.modify();
  Apple_Parsec_Siri_Context_OnDeviceContext.musicRankingInfluence.setter();
  v26(v32, 0);
  v25(v33, 0);
  return (v23)(v14, v2);
}

uint64_t PegasusProxy.addPromptContext(to:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v93 = a1;
  v94 = a3;
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v87 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints();
  v86 = *(v92 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v92, v9);
  v91 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_PromptContext();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v74 - v25;
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v34 = v33;
  v36 = v35;
  outlined init with copy of MediaUserStateCenter?(v32, v26, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  if ((*(v36 + 48))(v26, 1, v34) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    return (*(v17 + 16))(v94, v93, v16);
  }

  else
  {
    (*(v36 + 32))(v31, v26, v34);
    v38 = v16;
    v83 = *(v17 + 16);
    v84 = v17 + 16;
    v39 = v83(v21, v93, v16);
    v40 = v36;
    MEMORY[0x28223BE20](v39, v41);
    *(&v74 - 2) = v31;
    v79 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext, MEMORY[0x277D38DB0]);
    v82 = v11;
    v93 = v34;
    static Message.with(_:)();
    v42 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
    v81 = v15;
    Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.setter();
    v43 = v42(v96, 0);
    MEMORY[0x28223BE20](v43, v44);
    *(&v74 - 2) = v31;
    v80 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientDisplayHints and conformance Apple_Parsec_Siri_Context_ClientDisplayHints, MEMORY[0x277D397B8]);
    static Message.with(_:)();
    v45 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
    Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.setter();
    v46 = v45(v96, 0);
    if ((*(*v90 + 272))(v46))
    {
      v76 = v40;
      v90 = v21;
      v78 = v17;
      v77 = v16;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.pommes);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      v50 = os_log_type_enabled(v48, v49);
      v75 = v31;
      v52 = v81;
      v51 = v82;
      if (v50)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v95 = v54;
        *v53 = 136315138;
        swift_beginAccess();
        v55 = v87;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.getter();
        (*(v88 + 8))(v55, v89);
        swift_endAccess();
        v56 = Message.debugDescription.getter();
        v58 = v57;
        (*(v85 + 8))(v52, v51);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v95);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_2232BB000, v48, v49, "request.clientConversationContextInfo.promptContext = %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x223DE0F80](v54, -1, -1);
        MEMORY[0x223DE0F80](v53, -1, -1);
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v95 = v63;
        *v62 = 136315138;
        v64 = v90;
        swift_beginAccess();
        v65 = v87;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        v66 = v91;
        Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.getter();
        (*(v88 + 8))(v65, v89);
        swift_endAccess();
        v67 = v92;
        v68 = Message.debugDescription.getter();
        v70 = v69;
        (*(v86 + 8))(v66, v67);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v95);

        *(v62 + 4) = v71;
        _os_log_impl(&dword_2232BB000, v60, v61, "request.clientConversationContextInfo.clientDisplayHints = %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x223DE0F80](v63, -1, -1);
        v72 = v62;
        v21 = v64;
        MEMORY[0x223DE0F80](v72, -1, -1);

        (*(v76 + 8))(v75, v93);
        v73 = v94;
        v38 = v77;
        v17 = v78;
      }

      else
      {

        (*(v76 + 8))(v75, v93);
        v73 = v94;
        v38 = v77;
        v17 = v78;
        v21 = v90;
      }
    }

    else
    {
      (*(v40 + 8))(v31, v93);
      v73 = v94;
    }

    swift_beginAccess();
    v83(v73, v21, v38);
    return (*(v17 + 8))(v21, v38);
  }
}

uint64_t PegasusProxy.clientExperienceSignals(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ClientExperienceSignals();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:)();
  (*(*v2[23] + 496))(a2, a1);
  (*(v11 + 8))(a2, v10);
  v16 = (*(v11 + 32))(a2, v15, v10);
  v17 = ((*v2)[46])(v16);
  if (v17)
  {
    v18 = v17;
    v19 = type metadata accessor for PommesSearchRequest(0);
    (*(*v18 + 144))(*(a1 + *(v19 + 32)), *(a1 + *(v19 + 32) + 8), 1);
  }

  ClientExperienceSignals.isPhoneCallActive.setter();
  v20 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v20 + 44), v9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v21 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {
    Siri_Nlu_External_Span.matcherNames.getter();
    (*(v22 + 8))(v9, v21);
  }

  return ClientExperienceSignals.matchingSpans.setter();
}

void PegasusProxy.addCurareFlags(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = MEMORY[0x223DDF550](0xD000000000000020, 0x80000002234E0FD0);
    v9 = [v7 BOOLForKey_];

    if (v9)
    {
      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.overrides);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2232BB000, v11, v12, "POMMES override enabled for treatRandomAsFirst! Setting value to true", v13, 2u);
        MEMORY[0x223DE0F80](v13, -1, -1);
      }

      v14 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
      Apple_Parsec_Siri_V2alpha_SiriPegasusContext.treatRandomAsFirst.setter();
      v14(&v15, 0);
    }
  }
}

void PegasusProxy.addGroundingInfo(to:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for PommesSearchRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PegasusProxy.isGroundingNeeded(for:)(a2);
  v11 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.userGroundingNeeded.setter();
  v11(v27, 0);
  if (v10)
  {
    v12 = (a2 + *(v5 + 84));
    v13 = v12[1];
    v14 = *(v2 + 72);
    *(v3 + 64) = *v12;
    *(v3 + 72) = v13;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(a2, v9, type metadata accessor for PommesSearchRequest);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315394;
    v20 = &v9[*(v5 + 32)];
    if (v20[1])
    {
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      v22 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E55;
    }

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PommesSearchRequest);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v27);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    if (v10)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v10)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v27);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_2232BB000, v16, v17, "POMMES add grounding need for request: %s, Grounded: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v19, -1, -1);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

  else
  {

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PommesSearchRequest);
  }
}

uint64_t PegasusProxy.isGroundingNeeded(for:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesSearchRequest(0);
  v4 = (a1 + v3[21]);
  v5 = v4[1];
  if (v5)
  {
    v6 = *(v1 + 72);
    if (v6)
    {
      if (*(v1 + 64) == *v4 && v6 == v5)
      {
        if ((*(a1 + v3[16]) & 1) == 0)
        {
          if (*(a1 + v3[15]))
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v8 = v3;
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (*(a1 + v8[16]) != 1)
        {
          if (*(a1 + v8[15]))
          {
            if (v9)
            {
LABEL_24:
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v18 = type metadata accessor for Logger();
              __swift_project_value_buffer(v18, static Logger.pommes);
              v12 = Logger.logObject.getter();
              v16 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v12, v16))
              {
                v14 = swift_slowAlloc();
                *v14 = 0;
                v17 = "Grounding: false, Same user grounded recently";
                goto LABEL_32;
              }

              goto LABEL_34;
            }

LABEL_14:
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v11 = type metadata accessor for Logger();
            __swift_project_value_buffer(v11, static Logger.pommes);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v12, v13))
            {
              v10 = 1;
              goto LABEL_35;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_2232BB000, v12, v13, "Grounding: true, Not grounded recently", v14, 2u);
            v10 = 1;
            goto LABEL_33;
          }

LABEL_28:
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.pommes);
          v12 = Logger.logObject.getter();
          v16 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v12, v16))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            v17 = "Grounding: false, not a multiUser env";
            goto LABEL_32;
          }

          goto LABEL_34;
        }
      }
    }

    else if ((*(a1 + v3[16]) & 1) == 0)
    {
      if (*(a1 + v3[15]))
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v16))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v17 = "Grounding: false, singleton user";
LABEL_32:
      _os_log_impl(&dword_2232BB000, v12, v16, v17, v14, 2u);
      v10 = 0;
LABEL_33:
      MEMORY[0x223DE0F80](v14, -1, -1);
LABEL_35:

      return v10;
    }

LABEL_34:
    v10 = 0;
    goto LABEL_35;
  }

  return 0;
}

uint64_t PegasusProxy.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  v8 = *(v0 + 184);

  v9 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v10 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext), *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8));
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore));
  v11 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager);

  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider));
}

uint64_t PegasusProxy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  v8 = *(v0 + 184);

  v9 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v10 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext), *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8));
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore));
  v11 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider));
  return v0;
}

uint64_t PegasusProxy.__deallocating_deinit()
{
  PegasusProxy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Siri_Nlu_External_Span.itemId(for:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v43 = type metadata accessor for Google_Protobuf_StringValue();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43, v4);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v38 = &v37 - v21;
  Siri_Nlu_External_Span.usoGraph.getter();
  v22 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v13 + 8))(v17, v12);
  v46 = *(v22 + 16);
  if (v46)
  {
    v24 = 0;
    v45 = v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v44 = v7 + 16;
    v25 = (v2 + 8);
    v41 = *MEMORY[0x277D5F538];
    do
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v7 + 16))(v11, v45 + *(v7 + 72) * v24, v6);
      if (Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter())
      {
        v27 = v42;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v28 = Google_Protobuf_StringValue.value.getter();
        v30 = v29;
        (*v25)(v27, v43);
        if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
        {
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v32 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (Siri_Nlu_External_UsoEntityIdentifier.hasBackingAppBundleID.getter())
        {
          if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == v40 && v33 == v39)
          {

LABEL_20:

            v35 = v38;
            (*(v7 + 32))(v38, v11, v6);
            v34 = 0;
            goto LABEL_16;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_4:
      ++v24;
      result = (*(v7 + 8))(v11, v6);
    }

    while (v46 != v24);
  }

  v34 = 1;
  v35 = v38;
LABEL_16:
  (*(v7 + 56))(v35, v34, 1, v6);
  if ((*(v7 + 48))(v35, 1, v6) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v36 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v7 + 8))(v35, v6);
    return v36;
  }
}

uint64_t Siri_Nlu_External_Span.contactFlags(contactStore:request:)(void *a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PerformanceUtil.Ticket(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((AFIsATVOnly() & 1) == 0)
  {
    v47 = v1;
    v16 = *MEMORY[0x277D5F4C8];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = Siri_Nlu_External_Span.itemId(for:)(v17, v18);
    v20 = v19;

    v46 = v20;
    if (!v20)
    {
      v14 = 0;
      LOBYTE(v15) = 0;
      return v14 | v15 & 1u;
    }

    Date.init()();
    v21 = &v13[v9[5]];
    *v21 = "SiriInformationSearch/PegasusProxy.swift";
    *(v21 + 1) = 40;
    v21[16] = 2;
    *&v13[v9[6]] = 1359;
    v22 = &v13[v9[7]];
    *v22 = "contactFlags(contactStore:request:)";
    *(v22 + 1) = 35;
    v22[16] = 2;
    v23 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000023);
    v24 = &v13[v9[8]];
    *v24 = v23;
    v24[1] = v25;
    if (!AFIsHorseman())
    {
      v31 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v31);
      v33 = v47;
      v34 = (*(v32 + 8))(v45, v46, v31, v32);
      if (v33)
      {
        _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v13, type metadata accessor for PerformanceUtil.Ticket);
      }

      v15 = v34;
LABEL_21:

      v14 = v15 & 0x100;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static PerformanceUtil.shared + 184))(v13, 0);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v13, type metadata accessor for PerformanceUtil.Ticket);
      return v14 | v15 & 1u;
    }

    v48 = MEMORY[0x277D84F90];
    v26 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
    v27 = MEMORY[0x223DDB6B0](v26);
    v29 = v28;
    (*(v4 + 8))(v8, v3);
    if (v27 == 0x656E6F6870 && v29 == 0xE500000000000000)
    {

      v30 = v46;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v46;
      if ((v35 & 1) == 0)
      {
        v37 = MEMORY[0x277D84F90];
LABEL_17:
        v38 = a1[3];
        v39 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v38);
        v40 = v47;
        v41 = (*(v39 + 16))(v45, v30, v37, v38, v39);
        if (v40)
        {
          _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v13, type metadata accessor for PerformanceUtil.Ticket);
        }

        v15 = v41;

        goto LABEL_21;
      }
    }

    v36 = *MEMORY[0x277CBD098];
    MEMORY[0x223DDF820]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v37 = v48;
    goto LABEL_17;
  }

  v14 = 0;
  LOBYTE(v15) = 0;
  return v14 | v15 & 1u;
}

uint64_t closure #1 in Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UtteranceSpan();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  Apple_Parsec_Siri_Context_ClientEntityAlignment.init()();
  Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.getter();
  Apple_Parsec_Siri_Context_ClientEntityAlignment.asrHypothesisIndex.setter();
  Siri_Nlu_External_Span.input.getter();
  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v10 = Siri_Nlu_External_UtteranceAlignment.spans.getter();
  if (*(v10 + 16))
  {
    (*(v1 + 16))(v9, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UtteranceSpan.startIndex.getter();
    (*(v1 + 8))(v9, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.startTokenIndex.setter();
  v11 = Siri_Nlu_External_UtteranceAlignment.spans.getter();
  if (*(v11 + 16))
  {
    (*(v1 + 16))(v6, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UtteranceSpan.endIndex.getter();
    (*(v1 + 8))(v6, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.endTokenIndex.setter();
  Siri_Nlu_External_Span.score.getter();
  return Apple_Parsec_Siri_Context_ClientEntityAlignment.score.setter();
}

uint64_t closure #1 in RRCandidate.equivalentClientEntity()(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RREntity();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v22 = *(v17 + 8);
  v22(v21, v16);
  v23 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  RRCandidate.score.getter();
  Apple_Parsec_Siri_Context_ClientEntity.score.setter();
  v24 = v40;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (!v24)
  {
    v30 = v22;
    v31 = v16;
    v40 = v23;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
    v25 = v39;
    Message.serializedData(partial:)();
    (*(v38 + 8))(v15, v25);
    Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
    (*(v33 + 104))(v32, *MEMORY[0x277D39428], v34);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v36 + 104))(v35, *MEMORY[0x277D39408], v37);
    Apple_Parsec_Siri_Context_ClientEntity.type.setter();
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v30(v21, v31);
    v27 = dispatch thunk of UsoEntity.utteranceAlignments.getter();

    MEMORY[0x28223BE20](v28, v29);
    *(&v30 - 2) = a2;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(partial apply for closure #1 in closure #1 in RRCandidate.equivalentClientEntity(), (&v30 - 4), v27, MEMORY[0x277D399F8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5E688]);

    Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  }
}

uint64_t closure #1 in closure #1 in RRCandidate.equivalentClientEntity()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntityAlignment and conformance Apple_Parsec_Siri_Context_ClientEntityAlignment, MEMORY[0x277D399F8]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in RRCandidate.equivalentClientEntity()()
{
  v0 = type metadata accessor for UtteranceSpan();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  UtteranceAlignment.asrHypothesisIndex.getter();
  Apple_Parsec_Siri_Context_ClientEntityAlignment.asrHypothesisIndex.setter();
  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v10 = UtteranceAlignment.spans.getter();
  if (*(v10 + 16))
  {
    (*(v1 + 16))(v9, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    UtteranceSpan.startIndex.getter();
    (*(v1 + 8))(v9, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.startTokenIndex.setter();
  v11 = UtteranceAlignment.spans.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    (*(v1 + 16))(v6, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v12 - 1), v0);

    UtteranceSpan.endIndex.getter();
    (*(v1 + 8))(v6, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.endTokenIndex.setter();
  RRCandidate.score.getter();
  return Apple_Parsec_Siri_Context_ClientEntityAlignment.score.setter();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v49 = a6;
  v50 = a8;
  v48 = a4;
  v46[1] = a2;
  v47 = a1;
  v51 = a10;
  v46[0] = a9;
  v20 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v52 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = a13;
  v57[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a3, a13);
  v56[3] = a14;
  v56[4] = a17;
  v25 = __swift_allocate_boxed_opaque_existential_1(v56);
  v26 = a5;
  v27 = a7;
  (*(*(a14 - 8) + 32))(v25, v26, a14);
  v55[3] = a12;
  v55[4] = a15;
  v28 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a12 - 8) + 32))(v28, v46[0], a12);
  *(a11 + 16) = 1;
  *(a11 + 144) = 0;
  *(a11 + 64) = 0;
  *(a11 + 72) = 0;
  v29 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v30 = MEMORY[0x277D84FA0];
  *(a11 + 152) = v29;
  *(a11 + 160) = v30;
  *(a11 + 168) = v30;
  *(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v31 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v32 = type metadata accessor for InteractionType();
  v33 = (*(*(v32 - 8) + 56))(a11 + v31, 1, 1, v32);
  *(a11 + 80) = v47(v33);
  *(a11 + 88) = v34;
  outlined init with copy of AppDataProviding(v57, a11 + 96);
  *(a11 + 136) = v48;
  outlined init with copy of AppDataProviding(v56, a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  v35 = v50;
  *(a11 + 176) = v49;
  *(a11 + 184) = v35;
  outlined init with copy of AppDataProviding(a7, a11 + 24);
  outlined init with copy of AppDataProviding(v55, a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v51;
  v36 = byte_2836954D0;

  if (!v36)
  {
    v38 = 0xD000000000000013;
    v39 = 0x80000002234D9320;
    v41 = 0xEB00000000495255;
    v37 = 0x6E65657263536E6FLL;
    goto LABEL_5;
  }

  v37 = 0x6E65657263536E6FLL;
  v38 = 0x6E65657263536E6FLL;
  v39 = 0xEB00000000495255;
  v40 = v36 == 1;
  v41 = 0xEB00000000495255;
  if (v40)
  {
LABEL_5:
    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v38, v39);
  }

  if (byte_2836954D1 != 2)
  {
    v42 = 0x6E65657263536E6FLL;
    v43 = 0xEB00000000495255;
    if (byte_2836954D1 != 1)
    {
      v42 = 0xD000000000000013;
      v43 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v42, v43);
  }

  if (byte_2836954D2 != 2)
  {
    if (byte_2836954D2 != 1)
    {
      v37 = 0xD000000000000013;
      v41 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v37, v41);
  }

  v44 = v52;
  Apple_Parsec_Search_SearchConversationContext.init()();
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  (*(v53 + 32))(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext, v44, v54);
  return a11;
}

uint64_t partial apply for closure #2 in PegasusProxy.search(pommesSearchRequest:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1[2] + 176);
  return specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:)(21, v2, v3, a1);
}

uint64_t _s21SiriInformationSearch14CurareDonationO06donateD4Info3for4intoy10PegasusAPI013Apple_Parsec_a9_V2alpha_aJ7RequestV_AA0D17InteractionStream_pSgtFZyyYacfU_TA_0(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static CurareDonation.donateCurareInfo(for:into:)(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for PommesCandidateId() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(a1, v11, v1 + v4, v1 + v7, v1 + v10, v12);
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for PommesCandidateId() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for SignpostToken() - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), v1 + v14, v1 + v17, *(v1 + v18), *(v1 + v18 + 8));
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #2 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 592))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for closure #4 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + 176);
  v5 = type metadata accessor for PommesSearchRequest(0);
  return specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:)(24, *(v3 + *(v5 + 32)), *(v3 + *(v5 + 32) + 8), a1);
}

uint64_t partial apply for closure #12 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[3];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v6 = (*(*v3 + 600))();

  *a1 = v6;
  return result;
}

uint64_t partial apply for closure #3 in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)((*(v2 + 16) + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore), *(v2 + 24), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t type metadata completion function for PegasusSearchResponse()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PegasusError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceLabels(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for OnDeviceLabels(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata completion function for PegasusProxy()
{
  v0 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for InteractionType?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for InteractionType?()
{
  if (!lazy cache variable for type metadata for InteractionType?)
  {
    type metadata accessor for InteractionType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InteractionType?);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RRCandidate.equivalentClientEntity()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in closure #1 in RRCandidate.equivalentClientEntity()();
}

uint64_t outlined init with take of PommesSearchRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t specialized PegasusProxy.createASRInterpretationTokens(with:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken();
  v32 = *(v0 - 8);
  v1 = *(v32 + 64);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - v8;
  if (v7 >> 62)
  {
    v29 = v7;
    v30 = __CocoaSet.count.getter();
    v7 = v29;
    v10 = v30;
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v12 = v7;
  v33 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = v33;
    v14 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v31 = v32 + 32;
      do
      {
        v16 = v14;
        v17 = MEMORY[0x223DDFF80](v15);
        *(&v31 - 2) = MEMORY[0x28223BE20](v17, v18);
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_InterpretationToken and conformance Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x277D39918]);
        static Message.with(_:)();
        swift_unknownObjectRelease();
        v33 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
          v11 = v33;
        }

        ++v15;
        *(v11 + 16) = v20 + 1;
        (*(v32 + 32))(v11 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, v9, v0);
        v14 = v16;
      }

      while (v10 != v15);
    }

    else
    {
      v21 = (v12 + 32);
      v22 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_InterpretationToken and conformance Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x277D39918]);
      v31 = v22;
      do
      {
        v24 = *v21;
        MEMORY[0x28223BE20](v22, v23);
        *(&v31 - 2) = v25;
        v26 = v25;
        static Message.with(_:)();

        v33 = v11;
        v28 = *(v11 + 16);
        v27 = *(v11 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
          v11 = v33;
        }

        *(v11 + 16) = v28 + 1;
        v22 = (*(v32 + 32))(v11 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v5, v0);
        ++v21;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for PommesCandidateId() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload() - 8);
  v11 = *(v0 + 16);
  v12 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(v11, v0 + v2, v0 + v5, v0 + v8);
}

uint64_t partial apply for closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for PommesCandidateId() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v0 + 16);
  v13 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(v12, v0 + v2, v0 + v5, v0 + v8, v0 + v11, v13);
}

uint64_t _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static GMAvailabilityPolicyDataProvider.make(gmAvailability:)(uint64_t a1)
{
  outlined init with copy of MediaUserStateCenter?(a1, v6, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v1 = type metadata accessor for GMAvailabilityPolicyDataProvider();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v4);
}

void (*protocol witness for GMAvailabilityProtocol.availability.modify in conformance GenerativeModelsAvailability(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = GenerativeModelsAvailability.availability.modify();
  return protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant;
}

uint64_t key path setter for GMAvailabilityPolicyDataProvider.availabilityState : GMAvailabilityPolicyDataProvider(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  outlined init with copy of MediaUserStateCenter?(a1, &v12 - v7, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v8, v9 + v10, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  return swift_endAccess();
}

uint64_t GMAvailabilityPolicyDataProvider.availabilityState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
}

uint64_t GMAvailabilityPolicyDataProvider.hasChinaPolicy.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GMAvailabilityPolicyDataProvider.__allocating_init(gmAvailability:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  GMAvailabilityPolicyDataProvider.init(gmAvailability:)(a1);
  return v5;
}

uint64_t type metadata accessor for GMAvailabilityPolicyDataProvider()
{
  result = type metadata singleton initialization cache for GMAvailabilityPolicyDataProvider;
  if (!type metadata singleton initialization cache for GMAvailabilityPolicyDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GMAvailabilityPolicyDataProvider.init(gmAvailability:)(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v13 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  v14 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification) = 0;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy) = 2;
  v18 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue;
  v15 = type metadata accessor for OS_dispatch_queue();
  v17[1] = "Search.requestCancellables";
  v17[2] = v15;
  static DispatchQoS.userInitiated.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v19 + 104))(v6, *MEMORY[0x277D85260], v20);
  *(v1 + v18) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v21, v1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  swift_endAccess();
  return v1;
}

uint64_t GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_18;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for GenerativeModelsAvailability();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(a1 + 16, v48, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v23 = v49;
  outlined destroy of MediaUserStateCenter?(v48, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  if (!v23)
  {
    GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
    v49 = v8;
    v50 = &protocol witness table for GenerativeModelsAvailability;
    __swift_allocate_boxed_opaque_existential_1(v48);
    static GenerativeModelsAvailability.current(parameters:)();
    (*(v18 + 8))(v22, v17);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v48, a1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    swift_endAccess();
  }

  outlined init with copy of MediaUserStateCenter?(a1 + 16, &v46, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  if (v47)
  {
    outlined init with take of DomainWarmupHandling(&v46, v48);
    v24 = v49;
    v25 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (v25[1])(v24, v25);
    v26 = type metadata accessor for GenerativeModelsAvailability.Availability();
    (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
    v27 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v16, a1 + v27, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    swift_endAccess();
    v28 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
    swift_beginAccess();
    *(a1 + v28) = 0;
    v29 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification;
    if (!*(a1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification))
    {
      outlined init with copy of AppDataProviding(v48, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch22GMAvailabilityProtocol_pMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pMR);
      v30 = swift_dynamicCast();
      v31 = v45;
      v32 = *(v45 + 56);
      if (v30)
      {
        v32(v7, 0, 1, v8);
        v33 = v43;
        (*(v31 + 32))(v43, v7, v8);
        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        v36 = v44;
        *(v35 + 16) = v34;
        *(v35 + 24) = v36;

        v37 = GenerativeModelsAvailability.didChange(_:)();

        (*(v31 + 8))(v33, v8);

        v38 = *(a1 + v29);
        *(a1 + v29) = v37;
      }

      else
      {
        v32(v7, 1, 1, v8);
        outlined destroy of MediaUserStateCenter?(v7, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(&v46, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2232BB000, v40, v41, "Unable to prepare GMAvailabilityPolicyDataProvider: gmAvailability is nil.", v42, 2u);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v47, v9);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for GenerativeModelsAvailability();
  v17 = *(v43 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v43, v19);
  v21 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v48 = v39 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v41 = v3;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = v4;
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v27, v28, "GenerativeModelsAvailability: didChange", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
    v30 = v48;
    static GenerativeModelsAvailability.current(parameters:)();
    (*(v12 + 8))(v16, v11);
    v39[1] = *(v25 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
    v31 = v43;
    (*(v17 + 16))(v21, v30, v43);
    v32 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v33 = (v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v17 + 32))(v34 + v32, v21, v31);
    *(v34 + v33) = v25;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_36;
    v35 = _Block_copy(aBlock);

    v36 = v44;
    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v37 = v46;
    v38 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v36, v37, v35);
    _Block_release(v35);
    (*(v40 + 8))(v37, v38);
    (*(v45 + 8))(v36, v47);
    (*(v17 + 8))(v48, v31);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for GenerativeModelsAvailability();
  v84 = *(v89 - 8);
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v89, v5);
  v88 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v81 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v76[-v16];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v18 = *(*(v80 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v80, v19);
  v86 = &v76[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20, v22);
  v90 = &v76[-v24];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v76[-v27];
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v76[-v30];
  v85 = a1;
  GenerativeModelsAvailability.availability.getter();
  v82 = v8[7];
  v83 = v8 + 7;
  v32 = v82(v31, 0, 1, v7);
  v33 = *(*a2 + 144);
  v34 = *a2 + 144;
  v91 = a2;
  v78 = v34;
  v79 = v33;
  (v33)(v32);
  v35 = *(v13 + 56);
  outlined init with copy of MediaUserStateCenter?(v31, v17, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  outlined init with copy of MediaUserStateCenter?(v28, &v17[v35], &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v87 = v8;
  v36 = v8[6];
  v37 = v7;
  if (v36(v17, 1, v7) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v28, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    outlined destroy of MediaUserStateCenter?(v31, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    if (v36(&v17[v35], 1, v7) == 1)
    {
      v38 = outlined destroy of MediaUserStateCenter?(v17, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v39 = v91;
      goto LABEL_13;
    }
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v17, v90, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    if (v36(&v17[v35], 1, v7) != 1)
    {
      v72 = v87;
      v73 = v81;
      (v87[4])(v81, &v17[v35], v7);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability and conformance GenerativeModelsAvailability.Availability, MEMORY[0x277D0E280]);
      v74 = v90;
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = v72[1];
      v75(v73, v37);
      outlined destroy of MediaUserStateCenter?(v28, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      outlined destroy of MediaUserStateCenter?(v31, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v75(v74, v37);
      v38 = outlined destroy of MediaUserStateCenter?(v17, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v40 = v86;
      v39 = v91;
      if (v77)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v28, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    outlined destroy of MediaUserStateCenter?(v31, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    (v87[1])(v90, v7);
  }

  outlined destroy of MediaUserStateCenter?(v17, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMR);
  v40 = v86;
  v39 = v91;
LABEL_7:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.pommes);
  v42 = v84;
  v44 = v88;
  v43 = v89;
  (*(v84 + 16))(v88, v85, v89);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v42;
    v48 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93[0] = v91;
    *v48 = 136315394;
    v90 = v45;
    v79();
    v49 = String.init<A>(describing:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v93);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    LODWORD(v86) = v46;
    v52 = v81;
    GenerativeModelsAvailability.availability.getter();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability and conformance GenerativeModelsAvailability.Availability, MEMORY[0x277D0E280]);
    v53 = v37;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (v87[1])(v52, v37);
    (*(v47 + 8))(v88, v89);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v93);

    *(v48 + 14) = v57;
    v58 = v90;
    _os_log_impl(&dword_2232BB000, v90, v86, "GenerativeModelsAvailability changed from: %s, to: %s", v48, 0x16u);
    v59 = v91;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v59, -1, -1);
    MEMORY[0x223DE0F80](v48, -1, -1);
  }

  else
  {

    (*(v42 + 8))(v44, v43);
    v53 = v37;
  }

  GenerativeModelsAvailability.availability.getter();
  v82(v40, 0, 1, v53);
  v60 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v40, v39 + v60, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v38 = swift_endAccess();
LABEL_13:
  v61 = *(*v39 + 192);
  result = (v61)(v38);
  if (result == 2 || (result & 1) != 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.pommes);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v93[0] = v67;
      *v66 = 136315394;
      v92 = v61();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      v68 = String.init<A>(describing:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v93);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736C6166, 0xE500000000000000, v93);
      _os_log_impl(&dword_2232BB000, v64, v65, "GenerativeModelsAvailability device policy changed from: %s, to: %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v66, -1, -1);
    }

    v71 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
    result = swift_beginAccess();
    *(v39 + v71) = 0;
  }

  return result;
}

uint64_t GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t partial apply for closure #1 in GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 192))();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall GMAvailabilityPolicyDataProvider.cancelNotifications()()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification))
  {
    v1 = one-time initialization token for pommes;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "GenerativeModelsAvailability: canceling notifications!", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    GenerativeModelsAvailability.Notifications.cancel()();
  }
}

Swift::Void __swiftcall GMAvailabilityPolicyDataProvider.reset()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in GMAvailabilityPolicyDataProvider.reset();
  *(v2 + 24) = v0;
  v4[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_10_1;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in GMAvailabilityPolicyDataProvider.reset()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = v14 - v6 + 16;
  (*(*a1 + 248))(v5);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v14, a1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  swift_endAccess();
  v8 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v7, a1 + v9, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  swift_endAccess();
  v10 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification);
  *(a1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification) = 0;

  v11 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  result = swift_beginAccess();
  *(a1 + v11) = 2;
  return result;
}

uint64_t GMAvailabilityPolicyDataProvider.deinit()
{
  (*(*v0 + 248))();
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification);

  return v0;
}

uint64_t GMAvailabilityPolicyDataProvider.__deallocating_deinit()
{
  (*(*v0 + 248))();
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance GMAvailabilityPolicyDataProvider@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 240))();
  *a1 = result;
  return result;
}

void type metadata completion function for GMAvailabilityPolicyDataProvider()
{
  type metadata accessor for GenerativeModelsAvailability.Availability?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 240);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void type metadata accessor for GenerativeModelsAvailability.Availability?()
{
  if (!lazy cache variable for type metadata for GenerativeModelsAvailability.Availability?)
  {
    type metadata accessor for GenerativeModelsAvailability.Availability();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GenerativeModelsAvailability.Availability?);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(type metadata accessor for GenerativeModelsAvailability() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(v0 + v2, v4);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t QTreeFeaturiser.__allocating_init(query:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  QTreeFeaturiser.init(query:locale:)(a1, a2);
  return v7;
}

uint64_t specialized Sequence.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 64;
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
  result = swift_beginAccess();
  v7 = 0;
  v8 = (v3 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  v28 = v8;
LABEL_5:
  v32 = v9;
  while (v5)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a1 + 48) + ((v7 << 10) | (16 * v11)));
    v13 = v12[1];
    v14 = *a2;
    v30 = *v12;
    v15 = String.lowercased()();
    if (!*(v14 + 16))
    {

      goto LABEL_22;
    }

    v16 = v2;
    v17 = *(v14 + 40);
    Hasher.init(_seed:)();
    v33 = v13;

    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v14 + 32);
    v20 = v18 & ~v19;
    if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_21:

      v2 = v16;
      v8 = v28;
      v9 = v32;
      v13 = v33;
LABEL_22:
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
      }

      v26 = *(v9 + 16);
      v25 = *(v9 + 24);
      if (v26 >= v25 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      }

      *(v9 + 16) = v26 + 1;
      v27 = v9 + 16 * v26;
      *(v27 + 32) = v30;
      *(v27 + 40) = v24;
      goto LABEL_5;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = *(v14 + 48) + 16 * v20;
      v23 = *v22 == v15._countAndFlagsBits && *(v22 + 8) == v15._object;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v2 = v16;
    v8 = v28;
    v9 = v32;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemType.name.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D39490])
  {
    (*(v3 + 96))(v7, v2);
    v9 = *v7;
    strcpy(v14, "UNRECOGNIZED_");
    HIWORD(v14[1]) = -4864;
    v13[1] = v9;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223DDF6D0](v10);

    return v14[0];
  }

  else if (v8 == *MEMORY[0x277D39518])
  {
    return 0x4E574F4E4B4E55;
  }

  else if (v8 == *MEMORY[0x277D394D8])
  {
    return 1196314451;
  }

  else if (v8 == *MEMORY[0x277D394E0])
  {
    return 0x4D55424C41;
  }

  else if (v8 == *MEMORY[0x277D39500])
  {
    return 0x545349545241;
  }

  else if (v8 == *MEMORY[0x277D394E8])
  {
    return 0x45524E4547;
  }

  else if (v8 == *MEMORY[0x277D39520])
  {
    return 0x5453494C59414C50;
  }

  else
  {
    v12 = v8;
    result = 0x5F54534143444F50;
    if (v12 != *MEMORY[0x277D39488] && v12 != *MEMORY[0x277D394B0])
    {
      if (v12 == *MEMORY[0x277D394C0])
      {
        return 0xD000000000000010;
      }

      else if (v12 == *MEMORY[0x277D39498])
      {
        return 0x54535F434953554DLL;
      }

      else if (v12 == *MEMORY[0x277D39528])
      {
        return 0x4F425F4F49445541;
      }

      else if (v12 == *MEMORY[0x277D394F0])
      {
        return 0x4549564F4DLL;
      }

      else if (v12 == *MEMORY[0x277D39508])
      {
        return 0x574F48535F5654;
      }

      else if (v12 == *MEMORY[0x277D394A8])
      {
        return 0x5F574F48535F5654;
      }

      else if (v12 == *MEMORY[0x277D39480])
      {
        return 0x49565F434953554DLL;
      }

      else if (v12 != *MEMORY[0x277D394B8])
      {
        if (v12 == *MEMORY[0x277D394A0])
        {
          return 0x54535F4F49444152;
        }

        else if (v12 == *MEMORY[0x277D39510])
        {
          return 0x4E4F4954415453;
        }

        else if (v12 == *MEMORY[0x277D394F8])
        {
          return 0x434953554DLL;
        }

        else if (v12 == *MEMORY[0x277D394C8])
        {
          return 0xD000000000000019;
        }

        else if (v12 == *MEMORY[0x277D394D0])
        {
          return 1398228302;
        }

        else
        {
          (*(v3 + 8))(v7, v2);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestedMediaType.name.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D397F0])
  {
    (*(v3 + 96))(v7, v2);
    v9 = *v7;
    strcpy(v13, "UNRECOGNIZED_");
    HIWORD(v13[1]) = -4864;
    v12[1] = v9;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223DDF6D0](v10);

    return v13[0];
  }

  else if (v8 == *MEMORY[0x277D39890])
  {
    return 0x4E574F4E4B4E55;
  }

  else if (v8 == *MEMORY[0x277D39898])
  {
    return 0x5453494C59414C50;
  }

  else if (v8 == *MEMORY[0x277D39880])
  {
    return 0x54534143444F50;
  }

  else if (v8 == *MEMORY[0x277D39848])
  {
    return 0x434953554DLL;
  }

  else if (v8 == *MEMORY[0x277D397E0])
  {
    return 0x49565F434953554DLL;
  }

  else if (v8 == *MEMORY[0x277D398A0])
  {
    return 0x4F425F4F49445541;
  }

  else if (v8 == *MEMORY[0x277D39850])
  {
    return 0x4F45444956;
  }

  else if (v8 == *MEMORY[0x277D39878])
  {
    return 0x555F53454E555449;
  }

  else if (v8 == *MEMORY[0x277D397E8])
  {
    return 0x54414C49504D4F43;
  }

  else if (v8 == *MEMORY[0x277D39838])
  {
    return 0x4D55424C41;
  }

  else if (v8 == *MEMORY[0x277D39858])
  {
    return 0x545349545241;
  }

  else if (v8 == *MEMORY[0x277D39868])
  {
    return 0x574F48535F5654;
  }

  else if (v8 == *MEMORY[0x277D398A8])
  {
    return 0x48535F4F49444152;
  }

  else if (v8 == *MEMORY[0x277D39828])
  {
    return 1464813651;
  }

  else if (v8 == *MEMORY[0x277D397F8])
  {
    return 0x54535F4F49444152;
  }

  else if (v8 == *MEMORY[0x277D39808])
  {
    return 0x5F54534143444F50;
  }

  else if (v8 == *MEMORY[0x277D39888])
  {
    return 0x4E4F4954415453;
  }

  else if (v8 == *MEMORY[0x277D39800])
  {
    return 0x4C505F434953554DLL;
  }

  else if (v8 == *MEMORY[0x277D39870])
  {
    return 0x45444F53495045;
  }

  else if (v8 == *MEMORY[0x277D39860])
  {
    return 0x454C474E4953;
  }

  else if (v8 == *MEMORY[0x277D39810])
  {
    return 20549;
  }

  else if (v8 == *MEMORY[0x277D39818])
  {
    return 20556;
  }

  else if (v8 == *MEMORY[0x277D39830])
  {
    return 1196314451;
  }

  else if (v8 == *MEMORY[0x277D39840])
  {
    return 0x45524E4547;
  }

  else if (v8 == *MEMORY[0x277D39820])
  {
    return 1398228302;
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

void __swiftcall QTreeFeaturiser.ScoringConfig.init()(SiriInformationSearch::QTreeFeaturiser::ScoringConfig *__return_ptr retstr)
{
  *&retstr->titleWeight = xmmword_2234D7670;
  *&retstr->typeWeight = vdupq_n_s64(0x3FC999999999999AuLL);
  *&retstr->minScoreThreshold = xmmword_2234D7680;
  *&retstr->tokenOnlyMatchScore = xmmword_2234D7690;
  *&retstr->documentExcessTokenPenalty = xmmword_2234D76A0;
  retstr->optionalTokenAbsensePenalty = 0.0;
}

uint64_t QTreeFeaturiser.init(query:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v114 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  outlined init with copy of Locale?(a2, v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);
  v16 = v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  *v16 = xmmword_2234D7670;
  *(v16 + 16) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v16 + 32) = xmmword_2234D7680;
  *(v16 + 48) = xmmword_2234D7690;
  *(v16 + 64) = xmmword_2234D76A0;
  *(v16 + 80) = 0;
  v17 = *(a1 + 16);
  (*(v11 + 16))(v15, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v10);
  outlined init with copy of Locale?(a2, v9);

  v19 = specialized TokenContainer.init(queryFields:requestedType:locale:)(v18, v15, v9);
  v118 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens;
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens) = v19;
  v20 = v10;
  v21 = v2;
  (*(v11 + 104))(v15, *MEMORY[0x277D39890], v20);
  v115 = a2;
  outlined init with copy of Locale?(a2, v9);
  v22 = specialized TokenContainer.init(queryFields:requestedType:locale:)(MEMORY[0x277D84F90], v15, v9);
  v119 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens;
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens) = v22;
  v114[1] = a1;
  v23 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance + 8);
  v117 = v21;
  if (!v23)
  {
LABEL_29:
    v59 = *&v118[v21];
    v60 = v59 + 64;
    v61 = 1 << *(v59 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v59 + 64);
    v64 = (v61 + 63) >> 6;
    v116 = v59;

    v65 = 0;
    v66 = MEMORY[0x277D84F98];
    if (v63)
    {
      goto LABEL_34;
    }

LABEL_35:
    while (1)
    {
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v69 >= v64)
      {

        v85 = v117;
        *(v117 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms) = v66;
        v86 = v119;
        swift_beginAccess();
        v87 = *&v86[v85];
        v88 = v87 + 64;
        v89 = 1 << *(v87 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & *(v87 + 64);
        v92 = (v89 + 63) >> 6;
        v118 = v87;

        v93 = 0;
        v94 = MEMORY[0x277D84F98];
        if (v91)
        {
          goto LABEL_53;
        }

LABEL_54:
        while (1)
        {
          v97 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_69;
          }

          if (v97 >= v92)
          {

            outlined destroy of Locale?(v115);
            result = v117;
            *(v117 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms) = v94;
            return result;
          }

          v91 = *(v88 + 8 * v97);
          ++v93;
          if (v91)
          {
            while (1)
            {
              v98 = *(v118 + 6) + ((v97 << 10) | (16 * __clz(__rbit64(v91))));
              v99 = *v98;
              v100 = *(v98 + 8);
              v101 = String.lowercased()();

              v119 = specialized static SynonymGenerator.generateSynonyms(for:)(v99, v100);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v121 = v94;
              v103 = specialized __RawDictionaryStorage.find<A>(_:)(v101._countAndFlagsBits, v101._object);
              v105 = v94[2];
              v106 = (v104 & 1) == 0;
              v57 = __OFADD__(v105, v106);
              v107 = v105 + v106;
              if (v57)
              {
                goto LABEL_72;
              }

              v108 = v104;
              if (v94[3] >= v107)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v112 = v103;
                  specialized _NativeDictionary.copy()();
                  v103 = v112;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, isUniquelyReferenced_nonNull_native);
                v103 = specialized __RawDictionaryStorage.find<A>(_:)(v101._countAndFlagsBits, v101._object);
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_76;
                }
              }

              v91 &= v91 - 1;
              v94 = v121;
              if (v108)
              {
                v95 = v121[7];
                v96 = *(v95 + 8 * v103);
                *(v95 + 8 * v103) = v119;

                v93 = v97;
                if (!v91)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v121[(v103 >> 6) + 8] |= 1 << v103;
                *(v94[6] + 16 * v103) = v101;
                *(v94[7] + 8 * v103) = v119;
                v110 = v94[2];
                v57 = __OFADD__(v110, 1);
                v111 = v110 + 1;
                if (v57)
                {
                  goto LABEL_75;
                }

                v94[2] = v111;
                v93 = v97;
                if (!v91)
                {
                  goto LABEL_54;
                }
              }

LABEL_53:
              v97 = v93;
            }
          }
        }
      }

      v63 = *(v60 + 8 * v69);
      ++v65;
      if (v63)
      {
        while (1)
        {
          v70 = *(v116 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v63))));
          v71 = *v70;
          v72 = *(v70 + 8);
          v73 = String.lowercased()();

          v118 = specialized static SynonymGenerator.generateSynonyms(for:)(v71, v72);

          v74 = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = v66;
          v75 = specialized __RawDictionaryStorage.find<A>(_:)(v73._countAndFlagsBits, v73._object);
          v77 = v66[2];
          v78 = (v76 & 1) == 0;
          v57 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v57)
          {
            goto LABEL_71;
          }

          v80 = v76;
          if (v66[3] >= v79)
          {
            if ((v74 & 1) == 0)
            {
              v84 = v75;
              specialized _NativeDictionary.copy()();
              v75 = v84;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, v74);
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v73._countAndFlagsBits, v73._object);
            if ((v80 & 1) != (v81 & 1))
            {
              goto LABEL_76;
            }
          }

          v63 &= v63 - 1;
          v66 = v120[0];
          if (v80)
          {
            v67 = v120[0][7];
            v68 = *(v67 + 8 * v75);
            *(v67 + 8 * v75) = v118;

            v65 = v69;
            if (!v63)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v120[0][(v75 >> 6) + 8] |= 1 << v75;
            *(v66[6] + 16 * v75) = v73;
            *(v66[7] + 8 * v75) = v118;
            v82 = v66[2];
            v57 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v57)
            {
              goto LABEL_74;
            }

            v66[2] = v83;
            v65 = v69;
            if (!v63)
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          v69 = v65;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v24 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);

  v25 = tokenizeString(_:unit:locale:)(v24, v23, 0, v115);

  v116 = v25;
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = (v116 + 40);
  while (1)
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    v30 = *&v118[v21];
    v31 = String.lowercased()();
    if (!*(v30 + 16))
    {
      break;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v31._countAndFlagsBits, v31._object);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_5:

    v27 += 2;
    if (!--v26)
    {
      goto LABEL_28;
    }
  }

LABEL_10:

  v34 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of QTreeFeaturiser.init(query:locale:));
  outlined destroy of String(&unk_2836997C8);
  v35 = v119;
  swift_beginAccess();
  v36 = String.lowercased()();
  if (*(*&v35[v21] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v36._countAndFlagsBits, v36._object);
    if (v37)
    {
      v38 = specialized Dictionary.subscript.modify(v120, v36._countAndFlagsBits, v36._object);
      if (*v39)
      {

        specialized Set.formUnion<A>(_:)(v40);
      }

      (v38)(v120, 0);

      goto LABEL_27;
    }
  }

  v41 = v119;
  v42 = *&v119[v21];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v120[0] = *&v41[v21];
  v44 = v120[0];
  *&v41[v21] = 0x8000000000000000;
  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v36._countAndFlagsBits, v36._object);
  v47 = v44[2];
  v48 = (v45 & 1) == 0;
  v49 = v47 + v48;
  if (!__OFADD__(v47, v48))
  {
    v50 = v45;
    if (v44[3] < v49)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v43);
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v36._countAndFlagsBits, v36._object);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_76;
      }

      v46 = v51;
      v53 = v120[0];
      if ((v50 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      v54 = v53[7];
      v55 = *(v54 + 8 * v46);
      *(v54 + 8 * v46) = v34;

LABEL_26:
      v21 = v117;
      *&v119[v117] = v53;
LABEL_27:
      swift_endAccess();

      goto LABEL_5;
    }

    if (v43)
    {
      v53 = v120[0];
      if (v45)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v53 = v120[0];
      if (v50)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v53[(v46 >> 6) + 8] |= 1 << v46;
    *(v53[6] + 16 * v46) = v36;
    *(v53[7] + 8 * v46) = v34;
    v56 = v53[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_73;
    }

    v53[2] = v58;
    goto LABEL_26;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t tokenizeString(_:unit:locale:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v20 = MEMORY[0x223DDF550](a1, a2);
  [v19 setString_];

  outlined init with copy of Locale?(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v21 = outlined destroy of Locale?(v12);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = Locale.languageCode.getter();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v22 = 28261;
      v24 = 0xE200000000000000;
    }

    v25 = MEMORY[0x223DDF550](v22, v24);

    [v19 setLanguage_];

    v21 = (*(v14 + 8))(v18, v13);
  }

  v30 = MEMORY[0x277D84F90];
  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1;
  }

  v27 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v27 = 11;
  }

  MEMORY[0x28223BE20](v21, v27 | (v26 << 16));
  *(&v29 - 4) = a1;
  *(&v29 - 3) = a2;
  *(&v29 - 2) = &v30;
  NLTokenizer.enumerateTokens(in:using:)();

  return v30;
}

Swift::Bool __swiftcall TokenContainer.hasToken(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = String.lowercased()();
  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v3._countAndFlagsBits, v3._object);
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TokenContainer.addToken(_:fields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String.lowercased()();
  if (*v3)[2] && (specialized __RawDictionaryStorage.find<A>(_:)(v5._countAndFlagsBits, v5._object), (v6))
  {
    v7 = specialized Dictionary.subscript.modify(v13, v5._countAndFlagsBits, v5._object);
    if (*v8)
    {

      specialized Set.formUnion<A>(_:)(v9);
    }

    (v7)(v13, 0);
  }

  else
  {

    v11 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v5._countAndFlagsBits, v5._object, isUniquelyReferenced_nonNull_native);

    *v3 = v13[0];
  }

  return result;
}

void QTreeFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v100 = &v95 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v97 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *a1;
  v15 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);
  v14 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8);

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v102 = v14;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = (v22 << 10) | (16 * v23);
      v25 = (*(v16 + 48) + v24);
      v26 = *v25;
      v1 = v25[1];
      v27 = (*(v16 + 56) + v24);
      v28 = *v27;
      v29 = v27[1];
      v110 = v15;
      v111 = v14;
      v108 = v26;
      v109 = v1;
      v106 = v28;
      v107 = v29;
      v2 = v14;
      lazy protocol witness table accessor for type String and conformance String();

      v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v14 = v30;

      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 64 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  v31 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  v104 = v14;
  v96 = v15;
  if (v31)
  {
    v32 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  swift_arrayDestroy();
  v34 = 1 << *(v19 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v1 = v35 & *(v19 + 64);
  v36 = (v34 + 63) >> 6;

  v37 = 0;
  v103 = v33;
  v38 = v33;
  while (v1)
  {
    v39 = v37;
LABEL_22:
    v40 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v41 = (v39 << 10) | (16 * v40);
    v42 = (*(v19 + 48) + v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = (*(v19 + 56) + v41);
    v46 = *v45;
    v47 = v45[1];
    v110 = v32;
    v111 = v38;
    v108 = v43;
    v109 = v44;
    v106 = v46;
    v107 = v47;
    v2 = v38;
    lazy protocol witness table accessor for type String and conformance String();

    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v38 = v48;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      (*(v98 + 16))(v97, v105 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v99);
      v49 = String.init<A>(describing:)();
      v110 = v96;
      v111 = v104;
      v112 = v32;
      v113 = v38;
      v114 = v49;
      v115 = v50;
      v51 = v100;
      v1 = v101;
      outlined init with copy of Locale?(v101 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale, v100);

      v19 = specialized TokenContainer.init(document:locale:)(&v110, v51);
      v52 = (*(*v1 + 200))();
      v53 = 0;
      v54 = 1 << *(v52 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(v52 + 64);
      v57 = (v54 + 63) >> 6;
      for (i = 0.0; v56; i = i + *(*(v52 + 56) + ((v58 << 9) | (8 * v59))))
      {
        v58 = v53;
LABEL_32:
        v59 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
      }

      while (1)
      {
        v58 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_47;
        }

        if (v58 >= v57)
        {
          v60 = (*(*v1 + 184))(&v110);
          v62 = *(*(v1 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens) + 16);
          if (!v62)
          {

            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            __swift_project_value_buffer(v91, static Logger.pommes);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&dword_2232BB000, v92, v93, "Cannot calculate score ratio as query token count is zero", v94, 2u);
              MEMORY[0x223DE0F80](v94, -1, -1);
            }

            return;
          }

          i = i + v61;
          v4 = i / v62;
          v63 = v105;
          v64 = MEMORY[0x277D85000];
          v65 = (*((*MEMORY[0x277D85000] & *v105) + 0xB8))(v60);
          v66.n128_f32[0] = v4;
          (*((*v64 & *v65) + 0x100))(v66);

          v67 = [v63 description];
          v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v2 = v68;

          if (one-time initialization token for pommes != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_36;
        }

        v56 = *(v52 + 64 + 8 * v58);
        ++v53;
        if (v56)
        {
          v53 = v58;
          goto LABEL_32;
        }
      }
    }

    v1 = *(v19 + 64 + 8 * v39);
    ++v37;
    if (v1)
    {
      v37 = v39;
      goto LABEL_22;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_36:
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.pommes);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v108 = v103;
    *v72 = 136316674;
    v73 = *(*v1 + 192);
    LODWORD(v102) = v71;
    v74 = v73();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v108);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2080;
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v2, &v108);

    *(v72 + 14) = v77;
    *(v72 + 22) = 2080;
    v78 = Document.debugDescription.getter();
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v108);

    *(v72 + 24) = v81;
    *(v72 + 32) = 2048;
    *(v72 + 34) = v4;
    *(v72 + 42) = 2048;
    *(v72 + 44) = i;
    *(v72 + 52) = 2080;
    v82 = TokenContainer.debugDescription.getter(v19);
    v84 = v83;

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v108);

    *(v72 + 54) = v85;
    *(v72 + 62) = 2080;
    v86 = Dictionary.description.getter();
    v88 = v87;

    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v108);

    *(v72 + 64) = v89;
    _os_log_impl(&dword_2232BB000, v70, v102, "%s AudioItemCandidate %s document %s, final QTree score: %f before-normalization score:%f documentTokens %s tokenScores %s", v72, 0x48u);
    v90 = v103;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v90, -1, -1);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  else
  {
  }
}

void __swiftcall Document.init(title:artist:type:)(SiriInformationSearch::Document *__return_ptr retstr, Swift::String title, Swift::String artist, Swift::String type)
{
  retstr->title = title;
  retstr->artist = artist;
  retstr->type = type;
}

unint64_t Document.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(47);

  MEMORY[0x223DDF6D0](*v1, v1[1]);
  MEMORY[0x223DDF6D0](0x7369747261202C27, 0xEC00000027203A74);
  MEMORY[0x223DDF6D0](v1[2], v1[3]);
  MEMORY[0x223DDF6D0](0x3A65707974202C27, 0xEA00000000002720);
  MEMORY[0x223DDF6D0](v1[4], v1[5]);
  MEMORY[0x223DDF6D0](10535, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t TokenContainer.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  v30 = 0xD000000000000010;
  v31 = 0x80000002234E11E0;
  v32 = *(a1 + 16);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v2);

  MEMORY[0x223DDF6D0](0x29736E656B6F7420, 0xEA00000000000A3ALL);
  v3 = 0xD000000000000010;
  v32 = 0xD000000000000010;
  v33 = 0x80000002234E11E0;
  v4 = *(a1 + 16);
  v24 = a1;
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v4, 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v30, v5 + 4, v4, a1);

    outlined consume of Set<String>.Iterator._Variant();
    if (v6 != v4)
    {
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v30 = v5;
  v5 = 0;
  specialized MutableCollection<>.sort(by:)(&v30);
  v7 = v30;
  v25 = *(v30 + 16);
  if (v25)
  {
    v8 = 0;
    v9 = (v30 + 40);
    while (v8 < *(v7 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v29 = v9;
      v12 = *(a1 + 16);

      v28 = v10;
      if (v12 && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10), (v14 & 1) != 0))
      {
        v15 = *(*(a1 + 56) + 8 * v13);
      }

      else
      {
        v15 = MEMORY[0x277D84FA0];
      }

      v27 = v11;
      v16 = *(v15 + 16);
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 17;
        }

        v17[2] = v16;
        v17[3] = 2 * (v19 >> 4);
        v26 = specialized Sequence._copySequenceContents(initializing:)(&v30, v17 + 4, v16, v15);

        outlined consume of Set<String>.Iterator._Variant();
        if (v26 != v16)
        {
          goto LABEL_23;
        }

        a1 = v24;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      v30 = v17;
      specialized MutableCollection<>.sort(by:)(&v30);
      ++v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v20 = BidirectionalCollection<>.joined(separator:)();
      v22 = v21;

      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v30 = 2564128;
      v31 = 0xE300000000000000;
      MEMORY[0x223DDF6D0](v27, v28);

      MEMORY[0x223DDF6D0](0x656966206E692027, 0xEE005B203A73646CLL);
      MEMORY[0x223DDF6D0](v20, v22);

      MEMORY[0x223DDF6D0](2653, 0xE200000000000000);
      MEMORY[0x223DDF6D0](v30, v31);

      v9 = v29 + 2;
      if (v25 == v8)
      {

        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return v3;
}

Swift::Double __swiftcall QTreeFeaturiser.exactMatchBoost(document:)(SiriInformationSearch::Document *document)
{
  v59 = document;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v58 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v50 - v20;
  v22 = *(v1 + 16);
  v23 = *(v22 + 16);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D39500];
  v61 = v13;
  v57 = v24;
  if (v24)
  {
    v50 = v22;
    v51 = v3;
    v60 = v19;
    v55 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v54 = v13 + 16;
    LODWORD(v53) = *MEMORY[0x277D39500];
    v52 = (v3 + 104);
    v26 = (v3 + 8);
    v56 = (v13 + 8);

    v28 = 0;
    v29 = 0.1;
    v30 = v60;
    while (v28 < *(v23 + 16))
    {
      v31 = (*(v13 + 16))(v21, v55 + *(v13 + 72) * v28, v30);
      MEMORY[0x223DDAEA0](v31);
      (*v52)(v8, v53, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *v26;
      (*v26)(v8, v2);
      v34 = (v33)(v11, v2);
      if (v32)
      {
        (*v56)(v21, v30);
      }

      else
      {
        v35 = MEMORY[0x223DDAEC0](v34);
        if (v35 == v59->title._countAndFlagsBits && v36 == v59->title._object)
        {

          v39 = v21;
          v38 = v60;
          (*v56)(v39, v60);
LABEL_14:
          v13 = v61;
LABEL_15:

          v22 = v50;
          v3 = v51;
          v25 = MEMORY[0x277D39500];
          goto LABEL_16;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v56)(v21, v60);
        if (v37)
        {
          v38 = v60;
          goto LABEL_14;
        }
      }

      ++v28;
      v13 = v61;
      if (v57 == v28)
      {
        v29 = 0.0;
        v38 = v60;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = 0.0;
    v38 = v19;
LABEL_16:
    v40 = *(v22 + 16);
    v60 = *(v40 + 16);
    if (!v60)
    {
      return v29;
    }

    v56 = (v40 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
    v55 = v13 + 16;
    LODWORD(v54) = *v25;
    v53 = (v3 + 104);
    v41 = (v3 + 8);
    v57 = (v13 + 8);

    v42 = 0;
    while (v42 < *(v40 + 16))
    {
      v43 = v58;
      v44 = (*(v13 + 16))(v58, v56 + *(v13 + 72) * v42, v38);
      MEMORY[0x223DDAEA0](v44);
      (*v53)(v8, v54, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v45 = *v41;
      (*v41)(v8, v2);
      v46 = (v45)(v11, v2);
      if (v63 == v62)
      {
        v47 = MEMORY[0x223DDAEC0](v46);
        if (v47 == v59->artist._countAndFlagsBits && v48 == v59->artist._object)
        {

          (*v57)(v43, v38);
LABEL_28:

          return v29 + 0.1;
        }

        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v57)(v43, v38);
        if (v49)
        {
          goto LABEL_28;
        }
      }

      else
      {
        (*v57)(v43, v38);
      }

      ++v42;
      v13 = v61;
      if (v60 == v42)
      {

        return v29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t QTreeFeaturiser.debugDescription.getter()
{
  v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v72 = *(v69 - 8);
  v1 = *(v72 + 64);
  MEMORY[0x28223BE20](v69, v2);
  v68 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v74 = *(v66 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v66, v5);
  v67 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v65 - v15;
  v78 = 0xD00000000000001FLL;
  v79 = 0x80000002234E1200;
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v76 = 0xD000000000000013;
  v77 = 0x80000002234E1220;
  v70 = v0;
  v17 = *(v0 + 16);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v19 = *(v8 + 16);
  v19(v16, v17 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v7);
  v20 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.name.getter();
  v22 = v21;
  (*(v8 + 8))(v16, v7);
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v19(v13, v17 + v18, v7);
    v23 = String.init<A>(describing:)();
    v22 = v24;
  }

  MEMORY[0x223DDF6D0](v23, v22);

  MEMORY[0x223DDF6D0](10, 0xE100000000000000);
  MEMORY[0x223DDF6D0](v76, v77);

  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E1240);
  v25 = *(v17 + 16);
  v26 = *(v25 + 16);
  if (v26)
  {
    v28 = *(v74 + 16);
    v27 = v74 + 16;
    v29 = v25 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v73 = *(v74 + 72);
    v74 = v28;
    v71 = (v27 - 8);
    v72 += 8;
    v65[1] = v25;

    v31 = v68;
    v30 = v69;
    v32 = v66;
    v33 = v67;
    do
    {
      (v74)(v33, v29, v32);
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v34 = MEMORY[0x223DDF6D0](0x6946202020202020, 0xED0000203A646C65);
      MEMORY[0x223DDAEA0](v34);
      _print_unlocked<A, B>(_:_:)();
      (*v72)(v31, v30);
      v35 = MEMORY[0x223DDF6D0](0x3A65756C6156202CLL, 0xEA00000000002720);
      v36 = MEMORY[0x223DDAEC0](v35);
      v38 = v37;
      (*v71)(v33, v32);
      MEMORY[0x223DDF6D0](v36, v38);

      MEMORY[0x223DDF6D0](2599, 0xE200000000000000);
      MEMORY[0x223DDF6D0](v76, v77);

      v29 += v73;
      --v26;
    }

    while (v26);
  }

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1260);
  v39 = *(v70 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v72 = 0x80000002234E1280;
  v73 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms;
  v74 = v39;

  v46 = 0;
  while (v43)
  {
LABEL_19:
    v52 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v53 = v52 | (v46 << 6);
    v54 = (*(v74 + 48) + 16 * v53);
    v56 = *v54;
    v55 = v54[1];
    v76 = *(*(v74 + 56) + 8 * v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type String and conformance String();
    v57 = Sequence<>.joined(separator:)();
    v59 = v58;

    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v76 = 0x2720202020;
    v77 = 0xE500000000000000;
    MEMORY[0x223DDF6D0](v56, v55);
    MEMORY[0x223DDF6D0](0x656966206E692027, 0xEE005B203A73646CLL);
    MEMORY[0x223DDF6D0](v57, v59);

    MEMORY[0x223DDF6D0](2653, 0xE200000000000000);
    MEMORY[0x223DDF6D0](v76, v77);

    v60 = *(v70 + v73);
    v61 = String.lowercased()();

    if (*(v60 + 16))
    {
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v61._countAndFlagsBits, v61._object);
      v64 = v63;

      if (v64)
      {
        v47 = *(*(v60 + 56) + 8 * v62);
        if (*(v47 + 16))
        {
          v76 = 0;
          v77 = 0xE000000000000000;

          _StringGuts.grow(_:)(19);

          v75 = v47;
          v76 = 0xD000000000000010;
          v77 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
          v48 = BidirectionalCollection<>.joined(separator:)();
          v50 = v49;

          MEMORY[0x223DDF6D0](v48, v50);

          MEMORY[0x223DDF6D0](10, 0xE100000000000000);
          MEMORY[0x223DDF6D0](v76, v77);
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
    }
  }

  while (1)
  {
    v51 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v51 >= v44)
    {

      return v78;
    }

    v43 = *(v40 + 8 * v51);
    ++v46;
    if (v43)
    {
      v46 = v51;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t a1)
{
  v2 = v1;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);
  v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms);
  v6 = v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v7 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config + 72);

  specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v4, v5, v2, &v35, a1, v2, v7);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms);
  v11 = *(v6 + 80);

  specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v12, v10, v2, &v35, a1, v2, v11);

  v34 = MEMORY[0x277D84FA0];
  specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v4, v5, a1);
  v13 = *(v2 + v8);

  specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v14, v10, a1);

  v16 = specialized Sequence.filter(_:)(v15, &v34);
  v17 = *(v16 + 16);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315394;
    v23 = MEMORY[0x223DDF850](v16, MEMORY[0x277D837D0]);
    v31 = v17;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v33);
    v17 = v31;

    *(v21 + 4) = v26;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v31;
    _os_log_impl(&dword_2232BB000, v19, v20, "penaltyTokens: %s, excessTokenCount: %ld", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);

    if (!v31)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v17)
  {
LABEL_7:
    v27 = -(v17 * *(v6 + 64));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xD000000000000014, 0x80000002234E12A0, isUniquelyReferenced_nonNull_native, v27);
    v35 = v32;
    swift_endAccess();
  }

LABEL_8:

  swift_beginAccess();
  v29 = v35;

  return v29;
}

uint64_t TokenContainer.sourceFieldsForToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.lowercased()();
  if (*(a3 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4._countAndFlagsBits, v4._object);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(a3 + 56) + 8 * v5);
    }
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v37 = a2;
  v34 = v9;
  v35 = v5;
  while (v8)
  {
LABEL_10:
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = *v13;
    v14 = v13[1];
    String.lowercased()();
    v16 = String.lowercased()();
    if (*(a3 + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v16._countAndFlagsBits, v16._object);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      v19 = String.lowercased()();
      swift_beginAccess();
      a2 = v37;
      specialized Set._Variant.insert(_:)(&v38, v19._countAndFlagsBits, v19._object);
      swift_endAccess();
    }

    else
    {
    }

LABEL_15:
    v20 = String.lowercased()();

    if (*(a2 + 16))
    {
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20._countAndFlagsBits, v20._object);
      v23 = v22;

      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v25 = *(*(a2 + 56) + 8 * v21);
      }
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = (v24 + 40);
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        String.lowercased()();
        v30 = String.lowercased()();

        if (*(a3 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v30._countAndFlagsBits, v30._object);
          v32 = v31;

          if (v32)
          {
            v33 = String.lowercased()();

            swift_beginAccess();
            specialized Set._Variant.insert(_:)(&v38, v33._countAndFlagsBits, v33._object);
            swift_endAccess();
          }
        }

        else
        {
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v8 &= v8 - 1;

    a2 = v37;
    v9 = v34;
    v5 = v35;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t QTreeFeaturiser.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Locale?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);

  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms);

  return v0;
}

uint64_t QTreeFeaturiser.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of Locale?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);

  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Document.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Document.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Document.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t closure #1 in tokenizeString(_:unit:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = String.subscript.getter();
  v8 = MEMORY[0x223DDF600](v7);
  v10 = v9;

  v11 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *a6 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    *a6 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v8;
  *(v15 + 5) = v10;
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for PommesDialogStateManager.DialogValue() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCandidateId();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(type metadata accessor for PommesBridgeResultCandidateState(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PommesDialogStateManager.DialogValue();
  result = outlined init with take of PommesBridgeResultCandidateState(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for PommesDialogStateManager.DialogValue);
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4 & 1;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PommesCandidateId();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
  result = outlined init with take of PommesBridgeResultCandidateState(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for PommesBridgeResultCandidateState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      outlined destroy of String(*(v13 + 48) + 16 * v12);
      specialized _NativeDictionary._delete(at:)(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = specialized closure #1 in _NativeSet.intersection(_:)(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v13, v6, a2, a1);

    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized TokenContainer.init(document:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v4);
  v63 = a2;
  v5 = tokenizeString(_:unit:locale:)(*a1, *(a1 + 8), 0, a2);
  v6 = v5;
  v64 = *(v5 + 16);
  if (!v64)
  {

LABEL_25:
    v33 = tokenizeString(_:unit:locale:)(*(a1 + 16), *(a1 + 24), 0, v63);

    v68 = *(a1 + 32);
    outlined destroy of String(&v68);
    v34 = *(v33 + 16);
    if (!v34)
    {
LABEL_46:

      outlined destroy of Locale?(v63);
      return v67;
    }

    v35 = 0;
    v36 = (v33 + 40);
    while (1)
    {
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_48;
      }

      v41 = *(v36 - 1);
      v42 = *v36;
      v43 = String.lowercased()();
      v44 = v67;
      if (*(v67 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v43._countAndFlagsBits, v43._object);
        if (v45)
        {
          v46 = specialized Dictionary.subscript.modify(v65, v43._countAndFlagsBits, v43._object);
          if (*v47)
          {
            specialized Set._Variant.insert(_:)(&v66, 0x747369747261, 0xE600000000000000);
          }

          (v46)(v65, 0);

          goto LABEL_28;
        }

        v44 = v67;
      }

      v48 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of TokenContainer.init(document:locale:));
      outlined destroy of String(&unk_283695450);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v44;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v43._countAndFlagsBits, v43._object);
      v52 = v44[2];
      v53 = (v51 & 1) == 0;
      v31 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v31)
      {
        goto LABEL_50;
      }

      v55 = v51;
      if (v44[3] < v54)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }

      v60 = v50;
      specialized _NativeDictionary.copy()();
      v50 = v60;
      if (v55)
      {
LABEL_27:
        v37 = v50;

        v38 = v65[0];
        v39 = v65[0][7];
        v40 = *(v39 + 8 * v37);
        *(v39 + 8 * v37) = v48;

        v67 = v38;
        goto LABEL_28;
      }

LABEL_42:
      v57 = v65[0];
      v65[0][(v50 >> 6) + 8] |= 1 << v50;
      *(v57[6] + 16 * v50) = v43;
      *(v57[7] + 8 * v50) = v48;
      v58 = v57[2];
      v31 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v31)
      {
        goto LABEL_52;
      }

      v57[2] = v59;
      v67 = v57;
LABEL_28:
      ++v35;
      v36 += 2;
      if (v34 == v35)
      {
        goto LABEL_46;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v43._countAndFlagsBits, v43._object);
    if ((v55 & 1) != (v56 & 1))
    {
      goto LABEL_53;
    }

LABEL_41:
    if (v55)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  v62 = a1;
  v7 = 0;
  v8 = (v5 + 40);
  while (v7 < *(v6 + 16))
  {
    v12 = *(v8 - 1);
    v13 = *v8;
    v14 = String.lowercased()();
    v15 = v67;
    if (*(v67 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v14._countAndFlagsBits, v14._object);
      if (v16)
      {
        v17 = specialized Dictionary.subscript.modify(v65, v14._countAndFlagsBits, v14._object);
        if (*v18)
        {
          specialized Set._Variant.insert(_:)(&v68, 0x656C746974, 0xE500000000000000);
        }

        (v17)(v65, 0);

        goto LABEL_4;
      }

      v15 = v67;
    }

    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of TokenContainer.init(document:locale:));
    outlined destroy of String(&unk_283695420);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v15;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14._countAndFlagsBits, v14._object);
    v23 = v15[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_49;
    }

    v26 = v21;
    if (v15[3] >= v25)
    {
      if (v20)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v20);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v14._countAndFlagsBits, v14._object);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_53;
      }

      v22 = v27;
      if ((v26 & 1) == 0)
      {
LABEL_19:
        v29 = v65[0];
        v65[0][(v22 >> 6) + 8] |= 1 << v22;
        *(v29[6] + 16 * v22) = v14;
        *(v29[7] + 8 * v22) = v19;
        v30 = v29[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_51;
        }

        v29[2] = v32;
        v67 = v29;
        goto LABEL_4;
      }
    }

    v9 = v65[0];
    v10 = v65[0][7];
    v11 = *(v10 + 8 * v22);
    *(v10 + 8 * v22) = v19;

    v67 = v9;
LABEL_4:
    ++v7;
    v8 += 2;
    if (v64 == v7)
    {

      a1 = v62;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_48:
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}