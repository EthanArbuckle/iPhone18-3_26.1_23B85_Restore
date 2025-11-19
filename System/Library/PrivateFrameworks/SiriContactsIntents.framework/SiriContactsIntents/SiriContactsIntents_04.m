uint64_t closure #1 in ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(void **a1)
{
  v1 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(*a1);
  if (v2)
  {
    v1 = String.sanitizeCNLabel.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = String.sanitizeCNLabel.getter();
  v7 = String.convertToContactAttributeLabel.getter(v5, v6);
  v9 = v8;

  if (v4)
  {
    if (v1 == v7 && v4 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v1[25] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for TemplatingResult();
  v1[27] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[28] = v8;
  v10 = *(v9 + 64);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v1[30] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for OutputGenerationManifest();
  v1[31] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[32] = v15;
  v17 = *(v16 + 64);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for Locale();
  v1[34] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[35] = v19;
  v21 = *(v20 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v22 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v22);
  v24 = *(v23 + 64);
  v1[38] = OUTLINED_FUNCTION_10_0();
  v25 = type metadata accessor for ContactsSnippetPluginModel();
  v1[39] = v25;
  OUTLINED_FUNCTION_1_1(v25);
  v1[40] = v26;
  v28 = *(v27 + 64);
  v1[41] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v1[42] = ContactAttributeSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactAttributeSnippetModel);
  v1[43] = v30;
  v32 = *(v31 + 64);
  v1[44] = OUTLINED_FUNCTION_10_0();
  v33 = type metadata accessor for NLContextUpdate();
  v1[45] = v33;
  OUTLINED_FUNCTION_1_1(v33);
  v1[46] = v34;
  v36 = *(v35 + 64);
  v1[47] = OUTLINED_FUNCTION_10_0();
  v37 = type metadata accessor for Signpost.OpenSignpost();
  v1[48] = v37;
  OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v38 + 64);
  v1[49] = OUTLINED_FUNCTION_10_0();
  v40 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

{
  v148 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = static Signpost.contactsLog;
  *(v0 + 400) = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v2 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_30();
    *v8 = 0;
    _os_log_impl(&dword_26686A000, v6, v7, "#ContactAttributeDisambiguationStrategy Running makePromptForDisambiguation()", v8, 2u);
    OUTLINED_FUNCTION_6();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 184);

  v11 = *(v9 + 240);
  type metadata accessor for ParameterResolutionRecord();
  v12 = ParameterResolutionRecord.intent.getter();
  v13 = [v12 siriMatches];

  if (!v13)
  {
    goto LABEL_14;
  }

  type metadata accessor for SiriMatch();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v14 & 0xC000000000000001) == 0, v14);
  v15 = (v14 & 0xC000000000000001) != 0 ? MEMORY[0x26D5E29D0](0, v14) : *(v14 + 32);
  v16 = v15;

  v17 = [v16 identifier];

  if (!v17)
  {
LABEL_14:
    v28 = *(v0 + 392);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v29, v30);
    OUTLINED_FUNCTION_7_1();
LABEL_23:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_49_1();
    os_signpost(_:dso:log:name:signpostID:)();
    v57 = *(v0 + 392);
    v58 = *(v0 + 376);
    v59 = *(v0 + 352);
    OUTLINED_FUNCTION_55_1();
    v60 = *(v0 + 240);
    v135 = *(v0 + 232);
    v139 = *(v0 + 208);
    OUTLINED_FUNCTION_0_24();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v57, v61);

    OUTLINED_FUNCTION_3();
    goto LABEL_25;
  }

  v18 = *(v0 + 184);
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = ParameterResolutionRecord.intent.getter();
  v22 = [v21 isMe];

  if (v22 && (LOBYTE(v147[0]) = 2, MEMORY[0x26D5E2680](v22, v147), v22, (v147[0] & 1) != 0))
  {
    v23 = *(v0 + 192);
    v24 = v23[10];
    v25 = v23[11];
    __swift_project_boxed_opaque_existential_1(v23 + 7, v24);
    v26 = (*(v25 + 24))(v24, v25);
    v27 = 1;
  }

  else
  {
    v31 = *(v0 + 192);
    v32 = v31[10];
    v33 = v31[11];
    __swift_project_boxed_opaque_existential_1(v31 + 7, v32);
    v26 = (*(v33 + 8))(v142, v20, v32, v33);
    v27 = 0;
  }

  *(v0 + 408) = v26;
  *(v0 + 520) = v27;
  if (!v26)
  {
    v53 = *(v0 + 392);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v54, v55);
    OUTLINED_FUNCTION_7_1();
    *v56 = v142;
    v56[1] = v20;
    goto LABEL_23;
  }

  v34 = *(v0 + 184);

  v35 = ParameterResolutionRecord.intent.getter();
  v36 = [v35 contactAttributeToGet];
  *(v0 + 416) = v36;

  if (!v36)
  {
    v64 = *(v0 + 392);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_4_15();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v65, v66);
    OUTLINED_FUNCTION_7_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_24;
  }

  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v143 = v39;
  v138 = v27;
  if (os_log_type_enabled(v38, v39))
  {
    v134 = v0;
    v131 = v26;
    v40 = OUTLINED_FUNCTION_24();
    v41 = OUTLINED_FUNCTION_23();
    v147[0] = v41;
    *v40 = 136315138;
    v42 = v37;
    v43 = v37;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v37 = v42;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v147);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_26686A000, v38, v143, "#ContactAttributeDisambiguationStrategy Attempting to create views for %s disambiguation.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_6();
    v26 = v131;
    v0 = v134;
    OUTLINED_FUNCTION_6();
  }

  v49 = *(v0 + 184);
  v50 = ParameterResolutionRecord.intent.getter();
  v51 = [v50 contactHandleMatches];

  if (v51)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_73();
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v52 = 0;
  }

  *(v0 + 424) = v52;
  v67 = *(v0 + 184);
  v68 = ParameterResolutionRecord.intent.getter();
  v69 = [v68 contactHandleAlternatives];

  if (v69)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_73();
    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v70 = 0;
  }

  *(v0 + 432) = v70;
  v71 = *(v0 + 376);
  v72 = *(v0 + 192);
  v136 = v70;
  v73 = specialized ContactsStrategy.handles(matches:alternatives:)(v52, v70);
  *(v0 + 440) = v73;
  static ContactsContextProvider.getContactAttribute(contact:handles:contactAttributeType:needsSDA:)(v26, v73, [v37 contactAttributeType], 1, v71);
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v76);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v77, v78, "#ContactAttributeDisambiguationStrategy makeIntentHandledResponse constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v79 = *(v0 + 192);

    v80 = *(v79 + 120);
    v81 = swift_task_alloc();
    *(v0 + 448) = v81;
    *v81 = v0;
    v81[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v82 = *(v0 + 352);

    return static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(v82, v26, v37, v73, v79 + 16, v80);
  }

  v130 = v52;
  v83 = *(v0 + 184);
  v84 = ParameterResolutionRecord.intent.getter();
  isa = [v84 isMe];

  if (!isa)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v86 = *(v0 + 304);
  v87 = v37;
  static Device.current.getter();
  type metadata accessor for ContactsLabelCATs();
  static CATOption.defaultMode.getter();
  v88 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 16) = v73;
  *(v0 + 24) = v26;
  *(v0 + 32) = isa;
  *(v0 + 40) = v87;
  *(v0 + 88) = v88;
  v133 = v26;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of GetContactAttributeViewBuilder(v0 + 16);
  v89 = v87;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();

  v132 = v89;
  if (os_log_type_enabled(v90, v91))
  {
    v92 = OUTLINED_FUNCTION_24();
    v93 = OUTLINED_FUNCTION_23();
    v147[0] = v93;
    *v92 = 136315138;
    v94 = v89;
    v95 = [v94 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_10_8();

    v96 = OUTLINED_FUNCTION_26_7();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v98);

    *(v92 + 4) = v99;
    _os_log_impl(&dword_26686A000, v90, v91, "#ContactAttributeDisambiguationStrategy Attempting to create dialog for %s disambiguation.", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6();
  }

  v101 = *(v0 + 280);
  v100 = *(v0 + 288);
  v102 = v0;
  v103 = *(v0 + 272);
  v104 = *(v0 + 232);
  v105 = *(v0 + 192);
  v144 = v105[12];
  v106 = v105[6];
  __swift_project_boxed_opaque_existential_1(v105 + 2, v105[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v107 = Locale.identifier.getter();
  v109 = v108;
  (*(v101 + 8))(v100, v103);
  v110 = OUTLINED_FUNCTION_50_2();
  GetContactAttributeCATs.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)(v130, v136, v132, v133, v138, v107, v109, v110 & 1, v104);
  v111 = *(v102 + 368);
  v140 = *(v102 + 376);
  v112 = *(v102 + 360);
  v128 = *(v102 + 232);
  v129 = *(v102 + 224);
  v113 = *(v102 + 208);
  v145 = *(v102 + 216);
  v114 = *(v102 + 192);
  v115 = *(v102 + 176);

  v116 = *(v114 + 112);
  OUTLINED_FUNCTION_50_2();
  (*(v111 + 16))(v113, v140, v112);
  __swift_storeEnumTagSinglePayload(v113, 0, 1, v112);
  v117 = type metadata accessor for AceOutput();
  *(v102 + 112) = 0u;
  *(v102 + 128) = 0;
  *(v102 + 96) = 0u;
  v118 = MEMORY[0x277D5C1D8];
  v115[3] = v117;
  v115[4] = v118;
  __swift_allocate_boxed_opaque_existential_1(v115);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of ResponseMode?(v102 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v113, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v129 + 8))(v128, v145);
  v120 = *(v102 + 392);
  v119 = *(v102 + 400);
  v121 = *(v102 + 352);
  v122 = *(v102 + 328);
  v124 = *(v102 + 296);
  v123 = *(v102 + 304);
  v125 = *(v102 + 288);
  v126 = *(v102 + 264);
  v137 = *(v102 + 240);
  v141 = *(v102 + 232);
  v146 = *(v102 + 208);
  (*(*(v102 + 368) + 8))(*(v102 + 376), *(v102 + 360));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v120, v127);

  v62 = *(v102 + 8);
LABEL_25:

  return v62();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 448);
  v3 = *(v1 + 440);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 192);
  (*(*(v0 + 344) + 16))(v2, *(v0 + 352), *(v0 + 336));
  (*(v4 + 104))(v2, *MEMORY[0x277D559F0], v3);
  type metadata accessor for GetContactAttributeCATsModern();
  static CATOption.defaultMode.getter();
  *(v0 + 456) = CATWrapperSimple.__allocating_init(options:globals:)();
  v10 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v11 = Locale.identifier.getter();
  v13 = v12;
  *(v0 + 464) = v12;
  (*(v8 + 8))(v6, v7);
  v14 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  OUTLINED_FUNCTION_60_0();
  v15 = DeviceState.isVox.getter();
  v16 = swift_task_alloc();
  *(v0 + 472) = v16;
  *v16 = v0;
  v16[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 520);

  return GetContactAttributeCATsModern.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)(v18, v17, v19, v1, v20, v11, v13, v15 & 1);
}

{
  v1 = v0[61];
  v2 = v0[47];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[24];
  static DialogPhase.clarification.getter();
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v2;
  v9[4] = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v10 = type metadata accessor for ResponseFactory();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[62] = ResponseFactory.init()();
  v0[20] = v5;
  v0[21] = lazy protocol witness table accessor for type ContactsError and conformance ContactsError(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(v4 + 16))(boxed_opaque_existential_1, v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  v0[63] = v14;
  *(v14 + 16) = xmmword_266966A40;
  *(v14 + 32) = v1;
  v15 = *(MEMORY[0x277D5BD38] + 4);
  v21 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v16 = v1;
  v17 = swift_task_alloc();
  v0[64] = v17;
  *v17 = v0;
  v17[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v18 = v0[33];
  v19 = v0[22];

  return v21(v19, v0 + 17, v14, v18);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = v1[64];
  v4 = v1[63];
  v5 = v1[62];
  v6 = *v0;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 17);
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = v4[59];
  v8 = v4[54];
  v9 = v4[53];
  *v6 = *v2;
  v5[60] = v1;

  v10 = v4[58];
  v11 = v4[57];
  if (v1)
  {

    v12 = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {
    v13 = v4[58];

    v5[61] = a1;

    v12 = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v16 = *(v14 + 408);
  v15 = *(v14 + 416);
  v18 = *(v14 + 344);
  v17 = *(v14 + 352);
  v19 = *(v14 + 336);
  v20 = *(v14 + 320);
  v46 = *(v14 + 312);
  v48 = *(v14 + 328);
  v21 = *(v14 + 256);
  v22 = *(v14 + 264);
  v23 = *(v14 + 248);

  (*(v21 + 8))(v22, v23);
  v24 = *(v18 + 8);
  v25 = OUTLINED_FUNCTION_60();
  v26(v25);
  (*(v20 + 8))(v48, v46);
  v28 = *(v14 + 392);
  v27 = *(v14 + 400);
  v29 = *(v14 + 352);
  v30 = *(v14 + 328);
  v32 = *(v14 + 296);
  v31 = *(v14 + 304);
  v33 = *(v14 + 288);
  v34 = *(v14 + 264);
  v45 = *(v14 + 240);
  v47 = *(v14 + 232);
  v49 = *(v14 + 208);
  (*(*(v14 + 368) + 8))(*(v14 + 376), *(v14 + 360));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v28, v35);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v47, v49, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 408);
  v42 = *(v14 + 400);
  v44 = *(v14 + 392);
  v16 = *(v14 + 368);
  v40 = *(v14 + 376);
  v18 = *(v14 + 352);
  v17 = *(v14 + 360);
  v20 = *(v14 + 336);
  v19 = *(v14 + 344);
  v21 = *(v14 + 320);
  v22 = *(v14 + 328);
  v23 = *(v14 + 312);

  (*(v19 + 8))(v18, v20);
  (*(v21 + 8))(v22, v23);
  (*(v16 + 8))(v40, v17);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  v24 = *(v14 + 480);
  v25 = *(v14 + 392);
  v26 = *(v14 + 376);
  v27 = *(v14 + 352);
  OUTLINED_FUNCTION_55_1();
  v28 = *(v14 + 240);
  v41 = *(v14 + 232);
  v43 = *(v14 + 208);
  v45 = v29;
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v25, v30);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v41, v43, v45, a12, a13, a14);
}

uint64_t closure #1 in ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  OutputGenerationManifest.canUseServerTTS.setter();
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  DeviceState.isVox.getter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v10 = type metadata accessor for NLContextUpdate();
  (*(*(v10 - 8) + 16))(v8, a3, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactAttributeDisambiguationStrategy.extractContactAttribute(_:fromParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v26 - v4;
  USOParse.preferredUserDialogAct.getter(v26 - v4);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_20_5(v5);
  if (v7)
  {
    outlined destroy of ResponseMode?(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  }

  else
  {
    v8 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    OUTLINED_FUNCTION_9_13();
    (*(v9 + 8))(v5, v6);
    if (v8)
    {
      ContactAttributeDisambiguationStrategy.extractContactAddress(from:intendedAttribute:)();
      if (v10)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.siriContacts);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = OUTLINED_FUNCTION_24();
          v15 = OUTLINED_FUNCTION_23();
          v26[1] = v15;
          *v14 = 136315138;
          v16 = OUTLINED_FUNCTION_22_0();
          *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);
          _os_log_impl(&dword_26686A000, v12, v13, "#GCAContactAttributeDisambiguationStrategy extracted contactAddress from parse as %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v15);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        return OUTLINED_FUNCTION_22_0();
      }
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriContacts);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v21))
  {
    v22 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v22);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v23, v24, "#GCAContactAttributeDisambiguationStrategy Could not obtain contactAddress from UsoParse, returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  return OUTLINED_FUNCTION_22_0();
}

uint64_t ContactAttributeDisambiguationStrategy.extractContactAddress(from:intendedAttribute:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_3();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v38 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v40)
  {
    outlined init with copy of Any?(v39, v38);
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      if (v37)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v0)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v17, v16);

          v18 = type metadata accessor for UsoIdentifier();
          if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
          {
            v19 = v16;
LABEL_18:
            outlined destroy of ResponseMode?(v19, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
            dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
            OUTLINED_FUNCTION_10_16();

LABEL_19:

LABEL_42:
            __swift_destroy_boxed_opaque_existential_0Tm(v38);
            goto LABEL_43;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_52(v18);
          v32 = *(v26 + 8);
          v33 = v16;
LABEL_38:
          v30 = v18;
LABEL_41:
          v32(v33, v30);
          goto LABEL_42;
        }
      }

      goto LABEL_26;
    }

    type metadata accessor for UsoTask_request_common_Person();
    if (OUTLINED_FUNCTION_11_13())
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

      if (v37)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v0)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v20, v1);

          v18 = type metadata accessor for UsoIdentifier();
          if (__swift_getEnumTagSinglePayload(v1, 1, v18) == 1)
          {
            v19 = v1;
            goto LABEL_18;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_52(v18);
          v32 = *(v29 + 8);
          v33 = v1;
          goto LABEL_38;
        }
      }

      goto LABEL_26;
    }

    type metadata accessor for UsoTask_summarise_common_Person();
    if (OUTLINED_FUNCTION_11_13())
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v37)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v0)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v21, v13);

          v22 = type metadata accessor for UsoIdentifier();
          OUTLINED_FUNCTION_20_5(v13);
          if (v23)
          {
            v19 = v13;
            goto LABEL_18;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_9_13();
          v32 = *(v31 + 8);
          v33 = v13;
          goto LABEL_40;
        }
      }

LABEL_26:

LABEL_27:
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      goto LABEL_43;
    }

    type metadata accessor for UsoTask_read_common_Person();
    if (OUTLINED_FUNCTION_11_13())
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v37)
      {
        goto LABEL_26;
      }

      v24 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

      if (!v24)
      {
        goto LABEL_26;
      }

      ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
      specialized Collection.first.getter(v25, v0);

      v22 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_20_5(v0);
      if (!v23)
      {
        UsoIdentifier.value.getter();
        OUTLINED_FUNCTION_10_16();

        OUTLINED_FUNCTION_9_13();
        v32 = *(v34 + 8);
        v33 = v0;
LABEL_40:
        v30 = v22;
        goto LABEL_41;
      }

      outlined destroy of ResponseMode?(v0, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
      OUTLINED_FUNCTION_10_16();
    }

    else
    {
      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!OUTLINED_FUNCTION_11_13())
      {
        goto LABEL_27;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v37)
      {
        goto LABEL_26;
      }

      v27 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

      if (!v27)
      {
        goto LABEL_26;
      }

      ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
      specialized Collection.first.getter(v28, v8);

      v22 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_20_5(v8);
      if (!v23)
      {
        UsoIdentifier.value.getter();

        OUTLINED_FUNCTION_9_13();
        v32 = *(v35 + 8);
        v33 = v8;
        goto LABEL_40;
      }

      outlined destroy of ResponseMode?(v8, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    }

    goto LABEL_19;
  }

LABEL_43:
  outlined destroy of ResponseMode?(v39, &_sypSgMd, &_sypSgMR);
  return OUTLINED_FUNCTION_26_3();
}

void ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = type metadata accessor for UsoIdentifier();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = OUTLINED_FUNCTION_19_7();
  if (v12)
  {
    v13 = v12;
    v49 = *(v12 + 16);
    if (!v49)
    {

      goto LABEL_49;
    }

    if (v2)
    {
      v14 = [v2 contactAttributeType];
      LODWORD(v2) = 1;
      if (v14 > 3)
      {
        v15 = 9;
      }

      else
      {
        LODWORD(v2) = 1u >> (v14 & 0xF);
        v15 = 0x5030409u >> (8 * v14);
      }

      v45 = v15;
    }

    else
    {
      v45 = 9;
      LODWORD(v2) = 1;
    }

    v46 = v3;
    if (one-time initialization token for siriContacts != -1)
    {
LABEL_51:
      OUTLINED_FUNCTION_2();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriContacts);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v42 = v0;
    v47 = v2;
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_24();
      v21 = OUTLINED_FUNCTION_23();
      v52 = v21;
      *v20 = 136315138;
      if (v2)
      {
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v22 = UsoIdentifierNamespace.rawValue.getter(v45);
      }

      v50 = v22;
      v51 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v24 = String.init<A>(describing:)();
      v0 = v25;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v52);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_26686A000, v17, v18, "#GCADisambiguationStrategy extractAddressIdentifiers targetNamespace %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_17_6();
    }

    v27 = 0;
    v48 = v6 + 16;
    v43 = 0x800000026696E1A0;
    v41 = (v6 + 32);
    v44 = MEMORY[0x277D84F90];
    v28 = v46;
    while (1)
    {
      while (1)
      {
        if (v49 == v27)
        {

          goto LABEL_49;
        }

        if (v27 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v2 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v29 = *(v6 + 72);
        (*(v6 + 16))(v11, v13 + v2 + v29 * v27, v28);
        UsoIdentifier.namespace.getter();
        if (v30)
        {
          break;
        }

LABEL_39:
        (*(v6 + 8))(v11, v28);
        ++v27;
      }

      v31 = UsoIdentifier.namespace.getter();
      if ((v47 & 1) == 0)
      {
        v33 = 0x707954656E6F6870;
        v34 = 0xE900000000000065;
        switch(v45)
        {
          case 4:
            v33 = 0x7079546C69616D65;
            if (v32)
            {
              goto LABEL_34;
            }

            goto LABEL_30;
          case 5:
            v33 = 0x5473736572646461;
            goto LABEL_29;
          case 6:
            v33 = 0xD000000000000011;
            v34 = v43;
            goto LABEL_33;
          case 7:
            v33 = 0x54746361746E6F63;
LABEL_29:
            v34 = 0xEB00000000657079;
            if (!v32)
            {
              goto LABEL_30;
            }

            goto LABEL_34;
          case 8:
            v33 = 0x6369746E616D6573;
            v34 = 0xEE0065756C61765FLL;
            if (!v32)
            {
              goto LABEL_30;
            }

            goto LABEL_34;
          default:
LABEL_33:
            if (!v32)
            {
LABEL_30:
              v28 = v46;
              goto LABEL_31;
            }

LABEL_34:
            if (v31 == v33 && v32 == v34)
            {

              v28 = v46;
              goto LABEL_43;
            }

            v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v28 = v46;
            if (v0)
            {
              goto LABEL_43;
            }

            break;
        }

        goto LABEL_39;
      }

      if (v32)
      {
LABEL_31:

        goto LABEL_39;
      }

LABEL_43:
      v40 = *v41;
      v40(v42, v11, v28);
      v36 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v36 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v50;
      }

      v0 = *(v36 + 16);
      if (v0 >= *(v36 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v50;
      }

      ++v27;
      *(v36 + 16) = v0 + 1;
      v44 = v36;
      v28 = v46;
      v40(v36 + v2 + v0 * v29, v42, v46);
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactAttributeDisambiguationStrategy.deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  return v0;
}

uint64_t ContactAttributeDisambiguationStrategy.__deallocating_deinit()
{
  v0 = ContactAttributeDisambiguationStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

void protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2)
{
  v3 = a2[30];
  v2 = a2[31];
  v4 = a2[32];
  type metadata accessor for ContactAttributeDisambiguationStrategy();

  JUMPOUT(0x26D5DF6B0);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>;

  return ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

{
  OUTLINED_FUNCTION_5();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_0();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[30];
  v14 = a4[31];
  v15 = a4[32];
  v16 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v12 = v5;
  v12[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F38](a1, a2, a3, v16, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[30];
  v14 = a4[31];
  v15 = a4[32];
  v16 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v12 = v5;
  v12[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F48](a1, a2, a3, v16, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[30];
  v12 = a3[31];
  v13 = a3[32];
  v14 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v10 = v4;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F40](a1, a2, v14, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[30];
  v12 = a3[31];
  v13 = a3[32];
  v14 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v10 = v4;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F58](a1, a2, v14, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2)
{
  v3 = a2[30];
  v2 = a2[31];
  v4 = a2[32];
  type metadata accessor for ContactAttributeDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[30];
  v16 = a5[31];
  v17 = a5[32];
  v18 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v14 = v6;
  v14[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v18, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[30];
  v18 = a6[31];
  v19 = a6[32];
  v20 = type metadata accessor for ContactAttributeDisambiguationStrategy();
  *v16 = v7;
  v16[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v20, a7);
}

id specialized closure #1 in INIntentResolutionResult.typedDisambiguationItems<A>()(uint64_t a1)
{
  v2 = type metadata accessor for ContactsError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v24);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INObject, 0x277CD3E20);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v24);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INCustomObject, 0x277CD3B58);
    if (swift_dynamicCast())
    {
      v7 = v23;
      v8 = INTypedObjectWithCustomObject();
      if (v8)
      {
        v6 = v8;

        return v6;
      }

      swift_storeEnumTagMultiPayload();
      v10 = ContactsError.errorDescription.getter();
      v12 = v16;
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriContacts);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v10 = ContactsError.errorDescription.getter();
      v12 = v11;
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriContacts);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
LABEL_14:
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v24);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_26686A000, v14, v15, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x26D5E3300](v19, -1, -1);
        MEMORY[0x26D5E3300](v18, -1, -1);
        goto LABEL_16;
      }
    }

LABEL_16:

    swift_beginAccess();
    v21 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    ContactsError.errorDescription.getter();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
    v21();
  }

  return v23;
}

{
  v2 = type metadata accessor for ContactsError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v24);
  type metadata accessor for ContactAttribute();
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v24);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INCustomObject, 0x277CD3B58);
    if (swift_dynamicCast())
    {
      v7 = v23;
      v8 = INTypedObjectWithCustomObject();
      if (v8)
      {
        v6 = v8;

        return v6;
      }

      swift_storeEnumTagMultiPayload();
      v10 = ContactsError.errorDescription.getter();
      v12 = v16;
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriContacts);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v10 = ContactsError.errorDescription.getter();
      v12 = v11;
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriContacts);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
LABEL_14:
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v24);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_26686A000, v14, v15, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x26D5E3300](v19, -1, -1);
        MEMORY[0x26D5E3300](v18, -1, -1);
        goto LABEL_16;
      }
    }

LABEL_16:

    swift_beginAccess();
    v21 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    ContactsError.errorDescription.getter();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v5, type metadata accessor for ContactsError);
    v21();
  }

  return v23;
}

uint64_t lazy protocol witness table accessor for type ContactsError and conformance ContactsError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(a1) & 1;
}

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_12_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_17_6()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
}

void OUTLINED_FUNCTION_22_8(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v2, 1, v1);
}

void OUTLINED_FUNCTION_23_9()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

BOOL OUTLINED_FUNCTION_25_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_27_4()
{
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
}

void OUTLINED_FUNCTION_42_2(uint64_t a1@<X8>)
{
  v5 = v1 + a1;
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

double OUTLINED_FUNCTION_46_1()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return DeviceState.isVox.getter();
}

uint64_t OUTLINED_FUNCTION_51_0()
{
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return static UsoTask_CodegenConverter.convert(task:)();
}

void OUTLINED_FUNCTION_55_1()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
}

void OUTLINED_FUNCTION_57_0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
}

void OUTLINED_FUNCTION_65_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_68_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_69_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v2 = *(v0 - 136);
}

_BYTE *storeEnumTagSinglePayload for SiriContactsFeatures(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriContactsFeatures and conformance SiriContactsFeatures()
{
  result = lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures;
  if (!lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures;
  if (!lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures);
  }

  return result;
}

Swift::Int SiriContactsFeatures.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriContactsFeatures()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](0);
  return Hasher._finalize()();
}

uint64_t specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  outlined init with copy of DeviceState(v5 + 16, v20);
  v15 = *(v5 + 112);
  outlined init with copy of NLContextUpdate?(a5, v12);
  v16 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    }
  }

  else
  {
    (*(*(v16 - 8) + 32))(v14, v12, v16);
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t _s19SiriContactsIntents12StrategyUtilO17getActionForInput5input10intentType0A7KitFlow0ghI0VAG0I0V_xmtAA0aM13ContactIntentRzlFZAA06Modifyo9AttributeP0C_Tt1t2g5@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Parse();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = type metadata accessor for Input();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ModifyContactAttributeIntent();
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.siriContacts);
  (*(v15 + 16))(v18, a1, v14);
  v70 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73 = v62;
    *v23 = 136315138;
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v13;
    v25 = a1;
    v26 = v6;
    v28 = v27;
    (*(v15 + 8))(v18, v14);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v28, &v73);
    v6 = v26;
    a1 = v25;
    v13 = v63;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_26686A000, v21, v22, "#getActionForInput received input: %s", v23, 0xCu);
    v30 = v62;
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x26D5E3300](v30, -1, -1);
    MEMORY[0x26D5E3300](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  Input.parse.getter();
  v31 = v72;
  v32 = *(v72 + 88);
  v33 = v32(v13, v6);
  v34 = *MEMORY[0x277D5C150];
  if (v33 != *MEMORY[0x277D5C128] && v33 != v34 && v33 != *MEMORY[0x277D5C160])
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26686A000, v45, v46, "#getActionForInput: Received unsupported parse type, returning .ignore() actionForInput", v47, 2u);
      MEMORY[0x26D5E3300](v47, -1, -1);
    }

    static ActionForInput.ignore()();
    return (*(v31 + 8))(v13, v6);
  }

  v37 = *(v31 + 8);
  v37(v13, v6);
  v38 = v69;
  v63 = a1;
  Input.parse.getter();
  Parse.cancelOrContactIntent.getter();
  v40 = v39;
  v37(v38, v6);
  if (v40)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26686A000, v41, v42, "#getActionForInput: .cancel() actionForInput", v43, 2u);
      MEMORY[0x26D5E3300](v43, -1, -1);
    }

    return static ActionForInput.cancel()();
  }

  if ((v40 & 0x100) == 0)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v48, v49))
    {
LABEL_25:

      return static ActionForInput.ignore()();
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#getActionForInput: .ignore() actionForInput";
LABEL_24:
    _os_log_impl(&dword_26686A000, v48, v49, v51, v50, 2u);
    MEMORY[0x26D5E3300](v50, -1, -1);
    goto LABEL_25;
  }

  v52 = v68;
  Input.parse.getter();
  if (v32(v52, v6) == v34)
  {
    (*(v31 + 96))(v52, v6);
    v54 = v65;
    v53 = v66;
    v55 = v52;
    v56 = v67;
    (*(v66 + 32))(v65, v55, v67);
    static StrategyUtil.actionForDirectInvocation(_:)();
    return (*(v53 + 8))(v54, v56);
  }

  v37(v52, v6);
  v57 = v69;
  Input.parse.getter();
  Parse.getSiriKitIntentType()();
  v59 = v58;
  v37(v57, v6);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v60 = os_log_type_enabled(v48, v49);
  if (!v59 || v64 != v59)
  {
    if (!v60)
    {
      goto LABEL_25;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#getActionForInput: parse intent type does not match flow's intent type, returning .ignore()";
    goto LABEL_24;
  }

  if (v60)
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_26686A000, v48, v49, "#getActionForInput: .handle() actionForInput", v61, 2u);
    MEMORY[0x26D5E3300](v61, -1, -1);
  }

  return static ActionForInput.handle()();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.actionForInput(_:confirmParameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Parse();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  Input.parse.getter();
  Parse.isCancel.getter();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v21, v10);
  if (v23)
  {
    return static ActionForInput.cancel()();
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v24(v18, v10);
  v26 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v26);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload != 1)
  {
    return static ActionForInput.handle()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v28 = IntentResolutionRecord.intent.getter();
  v29 = OUTLINED_FUNCTION_55_2();
  v31 = ModifyContactAttributeConfirmIntentStrategy.isRequestForDifferentAttribute(_:intent:)(v29, v30);

  if ((v31 & 1) == 0)
  {
    return _s19SiriContactsIntents12StrategyUtilO17getActionForInput5input10intentType0A7KitFlow0ghI0VAG0I0V_xmtAA0aM13ContactIntentRzlFZAA06Modifyo9AttributeP0C_Tt1t2g5(a1, a2);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v32 = type metadata accessor for Logger();
  v33 = OUTLINED_FUNCTION_52_0(v32, static Logger.siriContacts);
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_30();
    *v35 = 0;
    _os_log_impl(&dword_26686A000, v33, v34, "[ModifyContactAttributeConfirmIntentStrategy] actionForInput encountered request to modify a different attribute or confirm a different value, ignoring", v35, 2u);
    MEMORY[0x26D5E3300](v35, -1, -1);
  }

  return static ActionForInput.ignore()();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  OUTLINED_FUNCTION_4();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v0[5] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for Parse();
  v0[6] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v0[7] = v8;
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_52_0(v2, static Logger.siriContacts);
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v5);
    _os_log_impl(&dword_26686A000, v3, v4, "[ModifyContactAttributeConfirmIntentStrategy] parseConfirmationResponse", v0, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v1[7];
  v6 = v1[8];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[2];

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_22_0();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for ModifyContactAttributeIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  OUTLINED_FUNCTION_6_4();

  return v16();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  OUTLINED_FUNCTION_4();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[24] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for TemplatingResult();
  v1[25] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[26] = v8;
  v10 = *(v9 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v1[28] = swift_task_alloc();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for OutputGenerationManifest();
  v1[30] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[31] = v15;
  v17 = *(v16 + 64);
  v1[32] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for ContactsSnippetPluginModel();
  v1[33] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[34] = v19;
  v21 = *(v20 + 64);
  v1[35] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v22);
  v24 = *(v23 + 64);
  v1[36] = OUTLINED_FUNCTION_10_0();
  v25 = type metadata accessor for ContactsSnippetFlowState();
  v1[37] = v25;
  OUTLINED_FUNCTION_1_1(v25);
  v1[38] = v26;
  v28 = *(v27 + 64);
  v1[39] = OUTLINED_FUNCTION_10_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v29);
  v31 = *(v30 + 64);
  v1[40] = OUTLINED_FUNCTION_10_0();
  v32 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[41] = v32;
  OUTLINED_FUNCTION_1_1(v32);
  v1[42] = v33;
  v35 = *(v34 + 64);
  v1[43] = OUTLINED_FUNCTION_10_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v36);
  v38 = *(v37 + 64);
  v1[44] = OUTLINED_FUNCTION_45();
  v1[45] = swift_task_alloc();
  v39 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[46] = v39;
  OUTLINED_FUNCTION_1_1(v39);
  v1[47] = v40;
  v42 = *(v41 + 64);
  v1[48] = OUTLINED_FUNCTION_45();
  v1[49] = swift_task_alloc();
  v43 = type metadata accessor for SpeakableString();
  v1[50] = v43;
  OUTLINED_FUNCTION_1_1(v43);
  v1[51] = v44;
  v46 = *(v45 + 64);
  v1[52] = OUTLINED_FUNCTION_45();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v47 = type metadata accessor for Locale();
  v1[55] = v47;
  OUTLINED_FUNCTION_18_0(v47);
  v49 = *(v48 + 64);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v50);
  v52 = *(v51 + 64);
  v1[57] = OUTLINED_FUNCTION_45();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v53 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v53, v54, v55);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
LABEL_66:
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  v0[68] = __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "[ModifyContactAttributeConfirmIntentStrategy] makePromptForConfirmation");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v0[22];
  v8 = v0[23];

  v0[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v9 = IntentResolutionRecord.intent.getter();
  v10 = [v9 contactAttributeToModify];

  outlined init with copy of DeviceState(v8 + 16, (v0 + 3));
  v11 = *(v8 + 104);
  v0[2] = v10;
  v0[8] = v11;

  v12 = MEMORY[0x277D84F90];
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v0[70] = v13;
  outlined destroy of ConfirmationViewBuilder((v0 + 2));
  v14 = IntentResolutionRecord.intent.getter();
  v15 = [v14 contactAttributeToModify];

  if (v15 == 6)
  {
    v34 = v0[22];
    v35 = IntentResolutionRecord.intent.getter();
    outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v35, &selRef_modifyNickName);
    if (!v36)
    {
      static String.EMPTY.getter();
    }

    v37 = v0[58];
    v39 = v0[51];
    v38 = v0[52];
    v40 = v0[50];
    v41 = v0[23];
    OUTLINED_FUNCTION_49_0();
    v42 = *(v41 + 96);
    v0[85] = *(v39 + 16);
    v0[86] = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    OUTLINED_FUNCTION_2_18();
    v43();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[87] = v47;
    *v47 = v48;
    v47[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    v49 = v0[58];
    v50 = v0[27];
    OUTLINED_FUNCTION_40_1();

    return ModifyContactAttributeCATs.confirmModifyNickname(requestedNickname:)();
  }

  if (v15 != 10)
  {

    type metadata accessor for ContactsError();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ContactsError and conformance ContactsError, type metadata accessor for ContactsError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v53 = v0[67];
    v54 = v0[66];
    v55 = v0[65];
    v56 = v0[63];
    v57 = v0[64];
    OUTLINED_FUNCTION_41_4();
    v58 = v0[57];
    v59 = v0[58];
    OUTLINED_FUNCTION_1_21();
    v179 = v0[32];
    v181 = v0[29];
    v183 = v0[28];
    v185 = v0[27];
    v186 = v0[24];

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_40_1();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[22];
  __swift_storeEnumTagSinglePayload(v0[67], 1, 1, v0[50]);
  v17 = IntentResolutionRecord.intent.getter();
  v18 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v17);
  v19 = &selRef_isoCountryCode;
  v184 = v8;
  if (!v18)
  {
    goto LABEL_12;
  }

  v20 = v18;
  v21 = (v18 & 0xC000000000000001);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v18 & 0xC000000000000001) == 0, v18);
  if (v21)
  {
    MEMORY[0x26D5E29D0](0, v20);
  }

  else
  {
    v22 = *(v20 + 32);
  }

  OUTLINED_FUNCTION_44_0();

  v23 = outlined bridged method (ob) of @objc INObject.identifier.getter(v21);
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v23;
  v26 = v24;
  v27 = v0[23];
  v28 = v27[10];
  v29 = v27[11];
  __swift_project_boxed_opaque_existential_1(v27 + 7, v28);
  v106 = (*(v29 + 8))(v25, v26, v28, v29);

  if (!v106)
  {
    v19 = &selRef_isoCountryCode;
LABEL_12:
    v30 = v0[22];
    v31 = IntentResolutionRecord.intentResponse.getter();
    v32 = [v31 v19[43]];

    if (!v32 || (outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v32), !v33))
    {
      static String.EMPTY.getter();
    }

    v62 = v0[67];
    v63 = v0 + 65;
    v64 = v0[65];
    v65 = v0[50];
    OUTLINED_FUNCTION_49_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v62, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
    goto LABEL_25;
  }

  v107 = v8;
  v63 = v0 + 66;
  v188 = v0[66];
  v190 = v0[67];
  v108 = v0[56];
  v109 = v0[23];
  type metadata accessor for DialogPerson();
  v110 = v109[6];
  __swift_project_boxed_opaque_existential_1((v107 + 16), v109[5]);
  v111 = v106;
  dispatch thunk of DeviceState.siriLocale.getter();
  v112 = v109[15];
  v113 = v112;
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v111, 0, v108, v112);
  dispatch thunk of DialogPerson.fullName.getter();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v190, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_25:
  v69 = *v63;
  v70 = v0[64];
  v71 = v0[54];
  v72 = v0[50];
  v73 = v0[22];
  v74 = v0[23];
  outlined init with take of SpeakableString?(v69, v0[67]);
  v75 = IntentResolutionRecord.intent.getter();
  v76 = [v75 modifyOperation];

  ModifyOperation.stringify.getter(v76);
  OUTLINED_FUNCTION_49_0();
  v77 = v74[11];
  __swift_project_boxed_opaque_existential_1(v74 + 7, v74[10]);
  v78 = *(v77 + 24);
  v79 = OUTLINED_FUNCTION_18_7();
  v81 = v80(v79, v77);
  v0[71] = v81;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v72);
  if (!v81)
  {
    goto LABEL_54;
  }

  v82 = v0[22];
  v83 = [v81 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = IntentResolutionRecord.intentResponse.getter();
  v86 = [v85 updatedRelationship];

  if (!v86 || (v87 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v86), !v88))
  {

    goto LABEL_54;
  }

  v89 = v87;
  v90 = v88;
  v191 = v12;
  v91 = specialized Array._getCount()(v84);
  v92 = 0;
  v187 = v84 & 0xFFFFFFFFFFFFFF8;
  v189 = v84 & 0xC000000000000001;
  while (v91 != v92)
  {
    if (v189)
    {
      v72 = v84;
      v93 = MEMORY[0x26D5E29D0](v92, v84);
    }

    else
    {
      if (v92 >= *(v187 + 16))
      {
        goto LABEL_65;
      }

      v72 = v84;
      v93 = *(v84 + 8 * v92 + 32);
    }

    v94 = v93;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v95 = [v93 value];
    v96 = [v95 name];

    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    if (v97 == v89 && v90 == v99)
    {
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {

        goto LABEL_42;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v102 = *(v191 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_42:
    ++v92;
    v84 = v72;
  }

  if (specialized Array._getCount()(v191))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v191 & 0xC000000000000001) == 0, v191);
    if ((v191 & 0xC000000000000001) != 0)
    {
      v103 = MEMORY[0x26D5E29D0](0, v191);
    }

    else
    {
      v103 = *(v191 + 32);
    }

    v104 = v103;

    v105 = [v104 label];

    if (v105)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v115 = v0[63];
    v114 = v0[64];
    v72 = v0[50];
    v116 = OUTLINED_FUNCTION_55_2();
    static Dictionary<>.nlSemantic(forCNLabel:)(v116, v117);

    OUTLINED_FUNCTION_49_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v114, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v72);
    outlined init with take of SpeakableString?(v115, v114);
  }

  else
  {
  }

LABEL_54:
  v121 = v0[22];
  v122 = IntentResolutionRecord.intentResponse.getter();
  v123 = [v122 updatedRelationship];

  if (!v123 || (outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v123, &selRef_relationship), !v124))
  {
    static String.EMPTY.getter();
  }

  v125 = v0[53];
  v126 = v0[23];
  OUTLINED_FUNCTION_49_0();
  v127 = SpeakableString.print.getter();
  v129 = v128;
  static Dictionary<>.cnLabel(forNLSemantic:)(v127, v128);
  v131 = v130;

  objc_opt_self();
  v132 = OUTLINED_FUNCTION_18_7();
  v133 = MEMORY[0x26D5E2470](v132, v131);

  v134 = [v129 localizedStringForLabel_];

  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;

  if (specialized ContactsStrategy.isSmartEnabled.getter(v138))
  {
    v139 = v0[55];
    v140 = v0[43];
    v141 = v0[40];
    v176 = v0[42];
    v177 = v0[41];
    v142 = v0[39];
    v178 = v0[38];
    v180 = v0[37];
    v182 = v0[36];
    v143 = v0[22];
    v144 = v0[23];
    v0[72] = IntentResolutionRecord.intent.getter();
    v0[73] = IntentResolutionRecord.intentResponse.getter();
    v0[19] = v135;
    v0[20] = v137;
    v145 = *(v144 + 40);
    v146 = *(v144 + 48);
    __swift_project_boxed_opaque_existential_1((v184 + 16), v145);
    dispatch thunk of DeviceState.siriLocale.getter();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v139);
    lazy protocol witness table accessor for type String and conformance String();
    v150 = StringProtocol.capitalized(with:)();
    v152 = v151;
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v141, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    *v140 = v150;
    v140[1] = v152;
    (*(v176 + 104))(v140, *MEMORY[0x277D55AB0], v177);
    v153 = static ContactsDirectInvocations.confirm()();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
    v154 = SAClientBoundCommand.data.getter();
    v156 = v155;

    static ContactsDirectInvocations.deny()();
    OUTLINED_FUNCTION_18_7();
    v157 = SAClientBoundCommand.data.getter();
    v159 = v158;

    *v142 = v154;
    v142[1] = v156;
    v142[2] = v157;
    v142[3] = v159;
    (*(v178 + 104))(v142, *MEMORY[0x277D55978], v180);
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v0[74] = CATWrapperSimple.__allocating_init(options:globals:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[75] = v160;
    *v160 = v161;
    v160[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    v162 = v0[45];
    v163 = v0[43];
    v164 = v0[39];
    OUTLINED_FUNCTION_40_1();

    return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
  }

  else
  {

    v166 = OUTLINED_FUNCTION_21_8();
    v137(v166);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v72);
    (v137)(v126, v135, v72);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v72);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[83] = v173;
    *v173 = v174;
    OUTLINED_FUNCTION_10_17(v173);
    OUTLINED_FUNCTION_40_1();

    return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1[75];
  v3 = v1[74];
  v4 = v1[73];
  v5 = v1[72];
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];
  v9 = v1[39];
  v10 = v1[38];
  v11 = v1[37];
  v12 = *v0;
  OUTLINED_FUNCTION_0();
  *v13 = v12;

  v14 = *(v10 + 8);
  v15 = OUTLINED_FUNCTION_43();
  v16(v15);
  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_22_0();
  v19(v18);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  v5 = v0[45];
  v4 = v0[46];
  OUTLINED_FUNCTION_43_3();
  if (v6)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
    v7 = OUTLINED_FUNCTION_21_8();
    v3(v7);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    (v3)(v5, v1, v2);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[83] = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_10_17(v14);

    return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }

  else
  {
    v17 = v0[70];
    v18 = v0[68];
    v19 = v0[49];
    v20 = v0[47];

    v21 = OUTLINED_FUNCTION_51_1();
    v22(v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v24))
    {
      v26 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v26);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v27, v28, "#ModifyContactAttributeConfirmIntentStrategy makePromptForConfirmation constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v30 = v0[61];
    v29 = v0[62];
    v32 = v0[53];
    v31 = v0[54];
    v33 = v0[50];
    v34 = v0[51];
    v35 = v0[36];

    type metadata accessor for ModifyContactAttributeCATsModern();
    static CATOption.defaultMode.getter();
    v0[76] = CATWrapperSimple.__allocating_init(options:globals:)();
    v36 = *(v34 + 16);
    (v36)(v29, v32, v33);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
    OUTLINED_FUNCTION_46_2();
    v36();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v33);
    v43 = swift_task_alloc();
    v0[77] = v43;
    *v43 = v0;
    v43[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    v44 = v0[67];
    v45 = v0[64];
    v46 = v0[61];
    v47 = v0[62];

    return ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[82];
  v6 = v4[81];
  v7 = v4[80];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 112));
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[84] = v0;

  if (v0)
  {
    v9 = v3[70];
    v12 = v3 + 59;
    v10 = v3[59];
    v11 = v12[1];

    v13 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v15 = v3[59];
    v16 = v3[60];
    OUTLINED_FUNCTION_2_18();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, v18, v19);
    OUTLINED_FUNCTION_2_18();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v20, v21, v22);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 696);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[88] = v0;

  if (v0)
  {
    v9 = v3[70];
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3[58], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3[58], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1[93];
  v3 = v1[92];
  v4 = v1[91];
  v5 = v1[90];
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];
  v9 = v1[39];
  v10 = v1[38];
  v11 = v1[37];
  v12 = *v0;
  OUTLINED_FUNCTION_0();
  *v13 = v12;

  v14 = *(v10 + 8);
  v15 = OUTLINED_FUNCTION_43();
  v16(v15);
  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_22_0();
  v19(v18);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[100];
  v6 = v4[99];
  v7 = v4[98];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 72));
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = v4[77];
  *v6 = *v2;
  v5[78] = v1;

  v8 = v4[76];
  v9 = v4[62];
  v10 = v4[61];

  if (!v1)
  {
    v5[79] = a1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_55_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = v4[95];
  *v6 = *v2;
  v5[96] = v1;

  v8 = v4[94];
  v9 = v4[57];
  if (!v1)
  {
    v5[97] = a1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v17 = v14[79];
  v18 = v14[71];
  v19 = v14[49];
  v20 = v14[46];
  v21 = OUTLINED_FUNCTION_31_3(v14[47]);
  v22(v21);
  v23 = *MEMORY[0x277D559F8];
  v24 = OUTLINED_FUNCTION_56_1();
  v25(v24);
  static DialogPhase.confirmation.getter();
  v26 = swift_task_alloc();
  v26[2] = v16;
  v26[3] = v18;
  v26[4] = v12;
  OUTLINED_FUNCTION_59_1();

  v27 = type metadata accessor for ResponseFactory();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v14[80] = ResponseFactory.init()();
  v14[17] = v13;
  OUTLINED_FUNCTION_14_11();
  v14[18] = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(v30, v31);
  __swift_allocate_boxed_opaque_existential_1(v14 + 14);
  v32 = *(v15 + 16);
  OUTLINED_FUNCTION_2_18();
  v33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  v14[81] = v34;
  *(v34 + 16) = xmmword_266966A40;
  *(v34 + 32) = v17;
  OUTLINED_FUNCTION_60_1(MEMORY[0x277D5BD38]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v14[82] = v35;
  *v35 = v36;
  v35[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  v37 = v14[32];
  v38 = v14[21];
  OUTLINED_FUNCTION_22_3();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v17 = v14[97];
  v18 = v14[89];
  v19 = v14[48];
  v20 = v14[46];
  v21 = OUTLINED_FUNCTION_31_3(v14[47]);
  v22(v21);
  v23 = *MEMORY[0x277D559F8];
  v24 = OUTLINED_FUNCTION_56_1();
  v25(v24);
  static DialogPhase.confirmation.getter();
  v26 = swift_task_alloc();
  v26[2] = v16;
  v26[3] = v18;
  v26[4] = v12;
  OUTLINED_FUNCTION_59_1();

  v27 = type metadata accessor for ResponseFactory();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v14[98] = ResponseFactory.init()();
  v14[12] = v13;
  OUTLINED_FUNCTION_14_11();
  v14[13] = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(v30, v31);
  __swift_allocate_boxed_opaque_existential_1(v14 + 9);
  v32 = *(v15 + 16);
  OUTLINED_FUNCTION_2_18();
  v33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  v14[99] = v34;
  *(v34 + 16) = xmmword_266966A40;
  *(v34 + 32) = v17;
  OUTLINED_FUNCTION_60_1(MEMORY[0x277D5BD38]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v14[100] = v35;
  *v35 = v36;
  v35[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  v37 = v14[32];
  v38 = v14[21];
  OUTLINED_FUNCTION_22_3();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = *(v30 + 568);
  v56 = *(v30 + 536);
  v52 = *(v30 + 512);
  v53 = *(v30 + 432);
  v33 = *(v30 + 400);
  v32 = *(v30 + 408);
  v50 = *(v30 + 392);
  v51 = *(v30 + 424);
  v35 = *(v30 + 368);
  v34 = *(v30 + 376);
  v36 = *(v30 + 272);
  v37 = *(v30 + 256);
  v54 = *(v30 + 264);
  v55 = *(v30 + 280);
  v39 = *(v30 + 240);
  v38 = *(v30 + 248);

  (*(v38 + 8))(v37, v39);
  (*(v34 + 8))(v50, v35);
  v40 = *(v32 + 8);
  v40(v51, v33);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v52, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v40(v53, v33);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v36 + 8))(v55, v54);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, v51, v52, v53, v54, v55, v56, a28, a29, a30);
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = v30[71];
  v32 = v30[70];
  v59 = v30[54];
  v60 = v30[67];
  v57 = v30[53];
  v58 = v30[64];
  v33 = v30[51];
  v34 = v30[28];
  v35 = v30[26];
  v55 = v30[25];
  v56 = v30[50];
  v36 = v30[24];
  v54 = v30[23];
  v37 = v30[21];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v53 = v31;
  v38.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v39 = SAPerson.init(contact:isMe:)(v31, v38.super.super.isa);
  v40 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v40);
  v41 = type metadata accessor for AceOutput();
  v42 = MEMORY[0x277D5C1D8];
  v37[3] = v41;
  v37[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v37);
  specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v34, v32, v39, 1, v36);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v35 + 8))(v34, v55);
  v43 = *(v33 + 8);
  v43(v57, v56);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v58, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v43(v59, v56);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v53, v54, v55, v56, v57, v58, v59, v60, a28, a29, a30);
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v33 = v30[23];
  v34 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  v35 = v33[11];
  __swift_project_boxed_opaque_existential_1(v33 + 7, v33[10]);
  v36 = *(v35 + 24);
  v37 = OUTLINED_FUNCTION_43();
  v39 = v38(v37);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v40.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v41 = SAPerson.init(contact:isMe:)(v39, v40.super.super.isa);
  v30[89] = v41;
  if (specialized ContactsStrategy.isSmartEnabled.getter(v41))
  {
    v42 = v30[69];
    v43 = v30[52];
    v44 = v30[42];
    v45 = v30[43];
    v46 = v30[41];
    v47 = v30[38];
    v48 = v30[39];
    v80 = v30[37];
    v81 = v30[36];
    v49 = v30[22];
    v30[90] = IntentResolutionRecord.intent.getter();
    v30[91] = IntentResolutionRecord.intentResponse.getter();
    *v45 = SpeakableString.print.getter();
    v45[1] = v50;
    (*(v44 + 104))(v45, *MEMORY[0x277D55AB8], v46);
    v51 = static ContactsDirectInvocations.confirm()();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
    v52 = SAClientBoundCommand.data.getter();
    v54 = v53;

    v55 = static ContactsDirectInvocations.deny()();
    v56 = SAClientBoundCommand.data.getter();
    v58 = v57;

    *v48 = v52;
    v48[1] = v54;
    v48[2] = v56;
    v48[3] = v58;
    (*(v47 + 104))(v48, *MEMORY[0x277D55978], v80);
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    v30[92] = CATWrapperSimple.__allocating_init(options:globals:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v30[93] = v59;
    *v59 = v60;
    v59[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    v62 = v30[43];
    v61 = v30[44];
    v63 = v30[39];
    OUTLINED_FUNCTION_19_8();

    return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
  }

  else
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_48_1();
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v70 = type metadata accessor for AceOutput();
    v71 = MEMORY[0x277D5C1D8];
    v33[3] = v70;
    v33[4] = v71;
    __swift_allocate_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_35_4();

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v35 + 8))(v39, a25);
    (*(v34 + 8))(a27, a26);
    OUTLINED_FUNCTION_0_25();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_19_8();

    return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v35 = v30[46];
  v36 = v30[44];
  OUTLINED_FUNCTION_43_3();
  if (v37)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_48_1();
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    v42 = type metadata accessor for AceOutput();
    v43 = MEMORY[0x277D5C1D8];
    v35[3] = v42;
    v35[4] = v43;
    __swift_allocate_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_35_4();

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v32 + 8))(v31, a25);
    (*(v36 + 8))(a27, a26);
    OUTLINED_FUNCTION_0_25();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_19_8();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    v53 = v30[70];
    v54 = v30[68];
    v56 = v30[47];
    v55 = v30[48];

    v57 = OUTLINED_FUNCTION_51_1();
    v58(v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v60))
    {
      v62 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v62);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v63, v64, "#ModifyContactAttributeConfirmIntentStrategy makePromptForConfirmation constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v65 = v30[86];
    v66 = v30[85];
    v67 = v30[57];
    v68 = v30[52];
    v69 = v30[50];
    v70 = v30[36];

    type metadata accessor for ModifyContactAttributeCATsModern();
    static CATOption.defaultMode.getter();
    v30[94] = CATWrapperSimple.__allocating_init(options:globals:)();
    v71 = OUTLINED_FUNCTION_22_0();
    v66(v71);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v69);
    v75 = swift_task_alloc();
    v30[95] = v75;
    *v75 = v30;
    v75[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    v76 = v30[57];
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:)();
  }
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = *(v30 + 712);
  v32 = *(v30 + 408);
  v54 = *(v30 + 416);
  v52 = *(v30 + 400);
  v33 = *(v30 + 376);
  v50 = *(v30 + 368);
  v51 = *(v30 + 384);
  v34 = *(v30 + 272);
  v55 = *(v30 + 280);
  v35 = *(v30 + 256);
  v53 = *(v30 + 264);
  v37 = *(v30 + 240);
  v36 = *(v30 + 248);
  v38 = *(v30 + 208);
  v49 = *(v30 + 216);
  v39 = *(v30 + 200);

  (*(v36 + 8))(v35, v37);
  (*(v33 + 8))(v51, v50);
  (*(v38 + 8))(v49, v39);
  (*(v32 + 8))(v54, v52);
  (*(v34 + 8))(v55, v53);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v49, v50, v51, v52, v53, v54, v55, a28, a29, a30);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_53_1();
  v34 = v33[50];
  v35 = v33[51];
  v36 = v33[49];
  v37 = v33[46];
  v38 = v33[47];

  (*(v38 + 8))(v36, v37);
  v40 = *(v35 + 8);
  v41 = OUTLINED_FUNCTION_43();
  v40(v41);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, v43, v44);
  (v40)(v32, v34);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, v46, v47);
  v64 = v33[78];
  v48 = v33[67];
  v49 = v33[66];
  v50 = v33[65];
  v52 = v33[63];
  v51 = v33[64];
  OUTLINED_FUNCTION_41_4();
  v53 = v33[57];
  v54 = v33[58];
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v64, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_53_1();
  v34 = v33[50];
  v35 = v33[51];

  v37 = *(v35 + 8);
  v38 = OUTLINED_FUNCTION_43();
  v37(v38);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v39, v40, v41);
  (v37)(v32, v34);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, v43, v44);
  v61 = v33[84];
  v45 = v33[67];
  v46 = v33[66];
  v47 = v33[65];
  v49 = v33[63];
  v48 = v33[64];
  OUTLINED_FUNCTION_41_4();
  v50 = v33[57];
  v51 = v33[58];
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v61, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  (*(v32[51] + 8))(v32[52], v32[50]);
  v49 = v32[88];
  v33 = v32[67];
  v34 = v32[66];
  v35 = v32[65];
  v37 = v32[63];
  v36 = v32[64];
  OUTLINED_FUNCTION_41_4();
  v38 = v32[57];
  v39 = v32[58];
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v49, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  v34 = *(v32 + 408);
  v33 = *(v32 + 416);
  v35 = *(v32 + 400);
  v37 = *(v32 + 376);
  v36 = *(v32 + 384);
  v38 = *(v32 + 368);
  v40 = *(v32 + 208);
  v39 = *(v32 + 216);
  v41 = *(v32 + 200);

  (*(v37 + 8))(v36, v38);
  (*(v40 + 8))(v39, v41);
  (*(v34 + 8))(v33, v35);
  v58 = *(v32 + 768);
  v42 = *(v32 + 536);
  v43 = *(v32 + 528);
  v44 = *(v32 + 520);
  v46 = *(v32 + 504);
  v45 = *(v32 + 512);
  OUTLINED_FUNCTION_41_4();
  v47 = *(v32 + 456);
  v48 = *(v32 + 464);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v58, a30, a31, a32);
}

uint64_t closure #2 in ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = a3;
  v9.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v10 = SAPerson.init(contact:isMe:)(a3, v9.super.super.isa);
  static ContactsContextProvider.confirm(person:attribute:)(v10, 0, 1);

  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t closure #3 in ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.isRequestForDifferentAttribute(_:intent:)(uint64_t a1, void *a2)
{
  v140 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v136 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v137 = &v132 - v9;
  v10 = type metadata accessor for PrimitiveStringOperators();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v138 = v12;
  v139 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = (v15 - v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v132 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v134 = &v132 - v23;
  MEMORY[0x28223BE20](v22);
  v135 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v26 = OUTLINED_FUNCTION_18_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v132 - v29;
  v31 = type metadata accessor for Parse();
  v32 = OUTLINED_FUNCTION_1_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v38 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for USOParse();
  v40 = OUTLINED_FUNCTION_1_0(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v46 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v34 + 88))(v38, v31) != *MEMORY[0x277D5C160])
  {
    (*(v34 + 8))(v38, v31);
LABEL_16:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v65 = type metadata accessor for Logger();
    v66 = OUTLINED_FUNCTION_52_0(v65, static Logger.siriContacts);
    v67 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v67))
    {
      v68 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v68);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v69, v70, "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute new input wasn't the expected task type, unable to determine difference");
      OUTLINED_FUNCTION_11_1();
    }

    goto LABEL_21;
  }

  (*(v34 + 96))(v38, v31);
  (*(v42 + 32))(v46, v38, v39);
  USOParse.preferredUserDialogAct.getter(v30);
  v47 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_43_3();
  if (v93)
  {
    v48 = OUTLINED_FUNCTION_6_16();
    v49(v48);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v30, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_14:
    v142 = 0u;
    v143 = 0u;
LABEL_15:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v142, &_sypSgMd, &_sypSgMR);
    goto LABEL_16;
  }

  v50 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  (*(*(v47 - 8) + 8))(v30, v47);
  if (!v50)
  {
    v63 = OUTLINED_FUNCTION_6_16();
    v64(v63);
    goto LABEL_14;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v143 + 1))
  {
    v73 = OUTLINED_FUNCTION_6_16();
    v74(v73);
    goto LABEL_15;
  }

  type metadata accessor for UsoTask_update_common_Person();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = OUTLINED_FUNCTION_6_16();
    v76(v75);
    goto LABEL_16;
  }

  v51 = v140;
  v133 = [v140 contactAttributeToModify];
  if (UsoTask_update_common_Person.updateTaskType.getter())
  {
    updated = UsoTask_update_common_Person.updateTaskType.getter();
    v53 = [v51 modifyOperation];
    if (updated != 1)
    {
      v62 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v54 = 0;
      v56 = 0;
      v61 = 1;
      goto LABEL_61;
    }

    v54 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v51);
    v56 = v55;
    v57 = UsoTask_update_common_Person.updateRelationshipInfoLocation.getter();
    if (v57 == 2)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 1;
      v62 = 10;
      goto LABEL_61;
    }

    if (v57)
    {

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      v84 = v142;
      if (v142)
      {
        dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
        OUTLINED_FUNCTION_18_7();

        UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
        v140 = v85;
        v136 = v86;
      }

      else
      {
        v140 = 0;
        v136 = 0;
      }

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    }

    else
    {

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      v84 = v142;
      if (v142)
      {
        dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
        OUTLINED_FUNCTION_18_7();

        UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
        v140 = v87;
        v136 = v88;
      }

      else
      {
        v140 = 0;
        v136 = 0;
      }

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
    }

    if (!v142 || (dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), OUTLINED_FUNCTION_44_0(), , !v84))
    {
      v58 = 0;
      v61 = 1;
      goto LABEL_59;
    }

    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter();
    OUTLINED_FUNCTION_18_7();

    v58 = v137;
    dispatch thunk of CodeGenExpression.operatorAsString.getter();
    if (v89)
    {
      PrimitiveStringOperators.init(rawValue:)();
      v90 = v139;
      if (__swift_getEnumTagSinglePayload(v58, 1, v139) != 1)
      {

        v124 = *(v138 + 32);
        v124(v135, v58, v90);
        v125 = v124;
        v126 = v90;
        v127 = v134;
        v125(v134, v135, v126);
        v128 = v127;
        v129 = v138;
        v130 = (*(v138 + 88))(v128, v126);
        if (v130 == *MEMORY[0x277D5E860] || v130 == *MEMORY[0x277D5E868])
        {
          v61 = 0;
          v58 = 3;
          goto LABEL_59;
        }

        (*(v129 + 8))(v128, v126);
        v58 = 0;
        goto LABEL_57;
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v58, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    }

    v91 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
    v137 = v54;
    static ModifyOperation.from(_:)(v91, v92);
    OUTLINED_FUNCTION_44_0();

    v54 = v137;

LABEL_57:
    v61 = 0;
LABEL_59:
    v62 = 10;
    v60 = v136;
    goto LABEL_60;
  }

  v135 = [v51 modifyOperation];
  v137 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v51);
  v56 = v77;

  OUTLINED_FUNCTION_26_8();
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  v58 = v142;
  if (!v142)
  {
    goto LABEL_28;
  }

  dispatch thunk of UsoEntity_common_Person.structuredNameAsExpression.getter();
  OUTLINED_FUNCTION_18_7();

  dispatch thunk of CodeGenExpression.operand.getter();

  if (!v141 || (v140 = dispatch thunk of UsoEntity_common_PersonName.nickName.getter(), v60 = v78, , !v60))
  {
LABEL_28:
    OUTLINED_FUNCTION_26_8();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    v58 = v142;
    if (v142)
    {
      dispatch thunk of UsoEntity_common_Person.structuredName.getter();
      OUTLINED_FUNCTION_18_7();

      v140 = dispatch thunk of UsoEntity_common_PersonName.nickName.getter();
      v60 = v79;
    }

    else
    {

      v140 = 0;
      v60 = 0;
    }
  }

  OUTLINED_FUNCTION_26_8();
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

  if (!v142)
  {
    v58 = 0;
    goto LABEL_39;
  }

  dispatch thunk of UsoEntity_common_Person.structuredName.getter();
  OUTLINED_FUNCTION_44_0();

  if (!v58)
  {
LABEL_39:
    v61 = 1;
    goto LABEL_40;
  }

  dispatch thunk of UsoEntity_common_PersonName.nickNameAsExpression.getter();
  OUTLINED_FUNCTION_18_7();

  v134 = v56;
  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  v81 = v80;

  if (v81)
  {
    v82 = v136;
    OUTLINED_FUNCTION_22_0();
    PrimitiveStringOperators.init(rawValue:)();
    v83 = v139;
    if (__swift_getEnumTagSinglePayload(v82, 1, v139) == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v82, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
      goto LABEL_37;
    }

    v117 = v82;
    v118 = *(v138 + 32);
    v118(v21, v117, v83);
    v119 = v21;
    v120 = v138;
    v118(v17, v119, v83);
    v121 = (*(v120 + 88))(v17, v83);
    v122 = v121 == *MEMORY[0x277D5E860] || v121 == *MEMORY[0x277D5E868];
    v123 = v83;
    v56 = v134;
    if (v122)
    {
      v61 = 0;
      v58 = 3;
    }

    else
    {
      (*(v120 + 8))(v17, v123);
      v58 = 0;
      v61 = 0;
    }

LABEL_40:
    v62 = 6;
    goto LABEL_41;
  }

LABEL_37:
  v58 = 0;
  v61 = 1;
  v62 = 6;
  v56 = v134;
LABEL_41:
  v53 = v135;
  v54 = v137;
LABEL_60:
  v59 = v140;
LABEL_61:
  if (v133 != v62)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v95 = type metadata accessor for Logger();
    v96 = OUTLINED_FUNCTION_52_0(v95, static Logger.siriContacts);
    v97 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v97))
    {
      v98 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v98);
      v101 = "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute found new attribute type different from current one, returning true";
LABEL_80:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v99, v100, v101);
      OUTLINED_FUNCTION_11_1();

LABEL_82:
      v105 = OUTLINED_FUNCTION_6_16();
      v106(v105);
      v71 = 1;
      return v71 & 1;
    }

LABEL_81:

    goto LABEL_82;
  }

  if (v53 == v58)
  {
    v61 = 1;
  }

  if ((v61 & 1) == 0)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v102 = type metadata accessor for Logger();
    v96 = OUTLINED_FUNCTION_52_0(v102, static Logger.siriContacts);
    v103 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v103))
    {
      v104 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v104);
      v101 = "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute found new operation type different from current one, returning true";
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!v56)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v107 = type metadata accessor for Logger();
    v108 = OUTLINED_FUNCTION_52_0(v107, static Logger.siriContacts);
    v109 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v109))
    {
      v110 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v110);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v111, v112, "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute there was no current attribute value, cannot evaluate difference, returning false");
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
    }

    v115 = OUTLINED_FUNCTION_6_16();
    v116(v115);
LABEL_21:
    v71 = 0;
    return v71 & 1;
  }

  if (v60)
  {
    v93 = v54 == v59 && v56 == v60;
    if (v93)
    {

      v71 = 0;
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v71 = v94 ^ 1;
    }
  }

  else
  {

    v71 = 1;
  }

  v113 = OUTLINED_FUNCTION_6_16();
  v114(v113);
  return v71 & 1;
}

uint64_t type metadata accessor for ModifyContactAttributeConfirmIntentStrategy()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ModifyContactAttributeConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B430] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D08](a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B438] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D10](a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B440] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D18](a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B420] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9CF8](a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B428] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy();
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D00](a1, a2, a3, v12, a5);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_25()
{
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[61];
  v8 = v0[62];
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[54];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[36];
  v29 = v0[35];
  v30 = v0[32];
  v13 = v0[28];
  *(v1 - 104) = v0[29];
  *(v1 - 96) = v13;
  v14 = v0[24];
  *(v1 - 88) = v0[27];
  *(v1 - 80) = v14;
}

void OUTLINED_FUNCTION_1_21()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[53];
  v4 = v0[52];
  v5 = v0[49];
  v6 = v0[48];
  v7 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
}

uint64_t OUTLINED_FUNCTION_4_16()
{
  v6 = v0[32];
  v3 = v0[28];
  *(v1 - 112) = v0[29];
  *(v1 - 104) = v3;
  v4 = v0[24];
  *(v1 - 96) = v0[27];
  *(v1 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1)
{
  *(a1 + 8) = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  v2 = v1[67];
  v3 = v1[64];
  v5 = v1[59];
  v4 = v1[60];
  return v1[28];
}

id OUTLINED_FUNCTION_20_6()
{
  v3 = v0[89];
  v4 = v0[70];
  v6 = v0[51];
  v5 = v0[52];
  *(v1 - 88) = v0[50];
  *(v1 - 80) = v5;
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  *(v1 - 96) = v0[25];
  v10 = v0[23];
  v11 = v0[21];

  return v3;
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v1 = v0[59];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[50];
  v5 = *(v0[23] + 96);
  v6 = *(v0[51] + 16);
  return v0[60];
}

uint64_t OUTLINED_FUNCTION_31_3@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[29];
  v6 = v1[23];
  v7 = *(a1 + 16);
  return v1[35];
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v0, v2, v3, 1, v1);
}

void OUTLINED_FUNCTION_41_4()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return static ContactsContextProvider.confirm(person:attribute:)(v0, 6, 0);
}

void OUTLINED_FUNCTION_53_1()
{
  v1 = v0[71];
  v2 = v0[67];
  v3 = v0[64];
  v5 = v0[53];
  v4 = v0[54];
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

id OUTLINED_FUNCTION_60_1@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

id Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  if (a2)
  {
    v28 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(v21);
  v30 = static String.EMPTY.getter();
  v31 = MEMORY[0x26D5E2470](v30);

  v32 = [v29 initWithIdentifier:v28 displayString:v31];

  v33 = v32;
  if (a4)
  {
    v34 = MEMORY[0x26D5E2470](a3, a4);
  }

  else
  {
    v34 = 0;
  }

  [v32 setGivenName_];

  if (a6)
  {
    v35 = MEMORY[0x26D5E2470](a5, a6);
  }

  else
  {
    v35 = 0;
  }

  [v32 setMiddleName_];

  if (a8)
  {
    v36 = MEMORY[0x26D5E2470](a7, a8);
  }

  else
  {
    v36 = 0;
  }

  [v32 setFamilyName_];

  if (a10)
  {
    v37 = MEMORY[0x26D5E2470](a9, a10);
  }

  else
  {
    v37 = 0;
  }

  [v32 setNickName_];

  if (a14)
  {
    v39 = MEMORY[0x26D5E2470](a13, a14);
  }

  else
  {
    v39 = 0;
  }

  OUTLINED_FUNCTION_0_26(v38, sel_setNamePrefix_);

  if (a16)
  {
    v41 = MEMORY[0x26D5E2470](a15, a16);
  }

  else
  {
    v41 = 0;
  }

  OUTLINED_FUNCTION_0_26(v40, sel_setNameSuffix_);

  if (a12)
  {
    v43 = MEMORY[0x26D5E2470](a11, a12);
  }

  else
  {
    v43 = 0;
  }

  OUTLINED_FUNCTION_0_26(v42, sel_setFullName_);

  if (a18)
  {
    v45 = MEMORY[0x26D5E2470](a17, a18);
  }

  else
  {
    v45 = 0;
  }

  OUTLINED_FUNCTION_0_26(v44, sel_setPhoneNumber_);

  if (a20)
  {
    v46 = MEMORY[0x26D5E2470](a19, a20);
  }

  else
  {
    v46 = 0;
  }

  [v32 setEmailAddress_];

  return v32;
}

id OUTLINED_FUNCTION_0_26(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t Views.buildViews(for:isMe:mockGlobals:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 1, v2[4]);
  if ((DeviceState.supportsCompactView.getter() & 1) == 0)
  {
    v26 = v2[5];
    __swift_project_boxed_opaque_existential_1(v2 + 1, v2[4]);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v27 = *v2;
      outlined init with copy of DeviceState((v3 + 1), v50);
      v50[8] = &type metadata for InstalledAppsProvider;
      v50[9] = &protocol witness table for InstalledAppsProvider;
      v49 = v27;
      v28 = v3[5];
      __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);

      dispatch thunk of DeviceState.siriLocale.getter();
      v29 = Locale.identifier.getter();
      OUTLINED_FUNCTION_2_26(v29, v30);
      v31 = OUTLINED_FUNCTION_1_22();
      v33 = v32;

      (*(v7 + 8))(v10, v6);
      v34 = WatchViews.buildGetSnippet(contact:localeString:)(a1, v31, v33);

      outlined destroy of WatchViews(&v49);
      if (v34 >> 62)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);

        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
        v19 = v34;
      }

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriContacts);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_22;
      }

      v38 = OUTLINED_FUNCTION_30();
      *v38 = 0;
      v39 = "#Views Constructed snippet for Watch.";
    }

    else
    {
      OUTLINED_FUNCTION_4_17();
      if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_17();
        if ((dispatch thunk of DeviceState.isXRDevice.getter() & 1) == 0)
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2();
          }

          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static Logger.siriContacts);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_32;
          }

          v44 = OUTLINED_FUNCTION_30();
          *v44 = 0;
          v45 = "#Views Skipping snippet for device.";
          goto LABEL_31;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_266966A40;
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
      *(v19 + 32) = SAABPersonSnippet.init(_:isMe:)(a1, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_]);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.siriContacts);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v36, v37))
      {
LABEL_22:

        return v19;
      }

      v38 = OUTLINED_FUNCTION_30();
      *v38 = 0;
      v39 = "#Views Constructed snippet for Mac or XR.";
    }

    _os_log_impl(&dword_26686A000, v36, v37, v39, v38, 2u);
    MEMORY[0x26D5E3300](v38, -1, -1);
    goto LABEL_22;
  }

  v12 = *v2;
  v50[3] = &type metadata for InstalledAppsProvider;
  v50[4] = &protocol witness table for InstalledAppsProvider;
  v49 = v12;
  v50[5] = 0;
  type metadata accessor for ContactAttribute();

  v13 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, 0, 0, 0, 0, 0, 0, 0, 0);
  v14 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = Locale.identifier.getter();
  OUTLINED_FUNCTION_2_26(v15, v16);
  OUTLINED_FUNCTION_1_22();

  (*(v7 + 8))(v10, v6);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v18 = v17;

  outlined destroy of CompactViews(&v49);
  if (!v18)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriContacts);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_32;
    }

    v44 = OUTLINED_FUNCTION_30();
    *v44 = 0;
    v45 = "#Views Skipped snippet for iOS VF/VO.";
LABEL_31:
    _os_log_impl(&dword_26686A000, v42, v43, v45, v44, 2u);
    MEMORY[0x26D5E3300](v44, -1, -1);
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266966A40;
  *(v19 + 32) = v18;
  v20 = one-time initialization token for siriContacts;
  v21 = v18;
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriContacts);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_30();
    *v25 = 0;
    _os_log_impl(&dword_26686A000, v23, v24, "#Views Constructed snippet for iOS VF/VO.", v25, 2u);
    MEMORY[0x26D5E3300](v25, -1, -1);
  }

  return v19;
}

uint64_t Views.init(deviceState:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ContactsLabelCATs();
  static CATOption.defaultMode.getter();
  *a2 = CATWrapper.__allocating_init(options:globals:)();
  return outlined init with take of DeviceState(a1, (a2 + 1));
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

uint64_t getEnumTagSinglePayload for Views(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Views(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_22()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

unint64_t OUTLINED_FUNCTION_2_26(uint64_t a1, uint64_t a2)
{
  *(v2 - 184) = a1;
  *(v2 - 176) = a2;
  *(v2 - 200) = 45;
  *(v2 - 192) = 0xE100000000000000;
  *(v2 - 216) = 95;
  *(v2 - 208) = 0xE100000000000000;

  return lazy protocol witness table accessor for type String and conformance String();
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1((v0 + 8), v1);
  return v1;
}

id SiriMatch.__allocating_init(identifier:fullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = MEMORY[0x26D5E2470](a3, a4);
  v11 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(a1, a2, v10, v9);

  outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(a3, a4, v11);
  return v11;
}

void outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470]();

  [a3 setFullName_];
}

uint64_t ModifyContactAttributeViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet with all display properties for macOS.", v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
  v7 = *v1;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = v7;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  outlined init with copy of AppUtil((v1 + 12), v11);
  *(v6 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v8, 0, isa, v11);
  return v6;
}

uint64_t ModifyContactAttributeViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CATOption();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriContacts);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26686A000, v10, v11, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet-like CardSnippet for iOS.", v12, 2u);
    MEMORY[0x26D5E3300](v12, -1, -1);
  }

  v13 = *(v1 + 8);
  if (v13 == 6)
  {
    v33 = *(v1 + 16);
    if ((v33 - 1) < 2)
    {
      v34 = *v1;
      v35 = *(v1 + 136);
      OUTLINED_FUNCTION_1_23();
      v75[0] = v35;
      v76 = 0;

      v36 = [v34 nickname];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = CNContact.formattedFullName.getter();
      v42 = v41;
      v43 = [v34 identifier];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47._countAndFlagsBits = v37;
      v47._object = v39;
      v48._countAndFlagsBits = v40;
      v48._object = v42;
      v49._countAndFlagsBits = v44;
      v49._object = v46;
      rawValue = CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(v47, v48, v49)._0._rawValue;

LABEL_13:

      goto LABEL_14;
    }

    if (v33 == 3)
    {
      OUTLINED_FUNCTION_1_23();
      type metadata accessor for ContactsLabelCATs();
      static CATOption.defaultMode.getter();
      v75[0] = CATWrapper.__allocating_init(options:globals:)();
      v76 = 0;
      v63 = *v1;
      type metadata accessor for ContactAttribute();
      v64 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, 0, 0, 0, 0, 0, 0, 0, 0);
      v65 = *(v1 + 88);
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      dispatch thunk of DeviceState.siriLocale.getter();
      v74[5] = Locale.identifier.getter();
      v74[6] = v66;
      v74[3] = 45;
      v74[4] = 0xE100000000000000;
      v74[1] = 95;
      v74[2] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      (*(v3 + 8))(v6, v2);
      CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
      v68 = v67;

      outlined destroy of CompactViews(v75);
      if (!v68)
      {
        return MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_266966A40;
      *(v69 + 32) = v68;
      return v69;
    }

LABEL_18:
    rawValue = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  if (v13 != 10)
  {
    goto LABEL_18;
  }

  v14 = *(v1 + 16);
  if ((v14 - 1) >= 2)
  {
    if (v14 == 3)
    {
      OUTLINED_FUNCTION_1_23();
      type metadata accessor for ContactsLabelCATs();
      static CATOption.defaultMode.getter();
      v75[0] = CATWrapper.__allocating_init(options:globals:)();
      v76 = 0;
      v50 = *(v1 + 24);
      v51 = *(v1 + 32);
      v52 = *v1;
      v53 = CNContact.formattedFullName.getter();
      v55 = v54;
      v56 = [v52 identifier];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60.value._countAndFlagsBits = v50;
      v60.value._object = v51;
      v61._countAndFlagsBits = v53;
      v61._object = v55;
      v62._countAndFlagsBits = v57;
      v62._object = v59;
      rawValue = CompactViews.buildCompactForgetRelationshipView(relatedContactName:meCardName:meCardContactID:)(v60, v61, v62)._0._rawValue;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v15 = *(v1 + 136);
  OUTLINED_FUNCTION_1_23();
  v75[0] = v15;
  v76 = 0;
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *v1;

  v19 = CNContact.formattedFullName.getter();
  v21 = v20;
  v22 = *(v1 + 40);
  v23 = *(v1 + 48);
  v24 = [v18 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28.value._countAndFlagsBits = v16;
  v28.value._object = v17;
  v29._countAndFlagsBits = v19;
  v29._object = v21;
  v30.value._countAndFlagsBits = v22;
  v30.value._object = v23;
  v31._countAndFlagsBits = v25;
  v31._object = v27;
  rawValue = CompactViews.buildCompactSetRelationshipView(relatedContactName:meCardName:relationship:meCardContactID:)(v28, v29, v30, v31)._0._rawValue;

LABEL_14:

  outlined destroy of CompactViews(v75);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_266966A40;
  if (rawValue >> 62)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  }

  v70 = *(v1 + 120);
  v71 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v70);
  (*(v71 + 8))(v70, v71);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SACardSnippet, 0x277D47200);
  v72 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

  *(v69 + 32) = v72;
  return v69;
}

uint64_t getEnumTagSinglePayload for ModifyContactAttributeViewBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ModifyContactAttributeViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return outlined init with copy of AppUtil(v0 + 96, v1 - 128);
}

BOOL INIntentResolutionResult.isModifyContactAttributeNeedsValue.getter()
{
  type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
  if (swift_dynamicCastClass())
  {
    if (OUTLINED_FUNCTION_0_27() == 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult();
  v0 = swift_dynamicCastClass();
  v1 = OUTLINED_FUNCTION_0_27();
  if (!v0)
  {
    if (v1 == 1 || OUTLINED_FUNCTION_0_27() == 2)
    {
      return 0;
    }

    v2 = 3;
    return OUTLINED_FUNCTION_0_27() != v2;
  }

  if (v1 != 1)
  {
LABEL_6:
    v2 = 2;
    return OUTLINED_FUNCTION_0_27() != v2;
  }

  return 0;
}

id OUTLINED_FUNCTION_0_27()
{

  return [v0 (v1 + 3324)];
}

uint64_t static ContactsLabelCATContainer.modifyConfirmationCATs(from:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = static ContactsLabelCATContainer.modifyConfirmationCATs(from:);

  return ContactsLabelCATsModern.cancelAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  if (v1)
  {

    v4[9] = MEMORY[0x277D84F98];
    v10 = swift_task_alloc();
    v4[10] = v10;
    *v10 = v8;
    OUTLINED_FUNCTION_4_18(v10);
    v11 = v4[3];

    return ContactsLabelCATsModern.saveAsLabel()();
  }

  else
  {
    v4[8] = v0;
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  (*(v3 + 104))(v2, *MEMORY[0x277D559B0], v4);
  *(v0 + 97) = 2;
  v5 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v7 = v6;
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v7, v2, isUniquelyReferenced_nonNull_native);

  (*(v3 + 8))(v2, v4);
  *(v0 + 72) = v8;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_4_18(v10);
  v11 = *(v0 + 24);

  return ContactsLabelCATsModern.saveAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    *(v4 + 88) = v0;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  (*(v4 + 104))(v3, *MEMORY[0x277D55998], v5);
  *(v0 + 96) = 12;
  v6 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v8, v3, isUniquelyReferenced_nonNull_native);

  (*(v4 + 8))(v3, v5);
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v12();
}

{
  OUTLINED_FUNCTION_41();
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)()
{
  OUTLINED_FUNCTION_4();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = static ContactsLabelCATContainer.modifyIntentHandledCATs(from:);

  return ContactsLabelCATsModern.savedAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    *(v4 + 32) = v0;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMR);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMd, &_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMR) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966D90;
  v7 = v6 + v5;
  v8 = (v7 + v3[14]);
  v9 = *MEMORY[0x277D559A0];
  v10 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v0 + 40) = 13;
  *v8 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v8[1] = v11;
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType();
  Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v12();
}

{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 16);
  type metadata accessor for ContactsLabelCATContainer.LabelType();
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType();
  Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();
  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)()
{
  OUTLINED_FUNCTION_4();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[13] = v5;
  v0[14] = v6;
  v0[12] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR) - 8) + 64);
  v0[19] = OUTLINED_FUNCTION_45();
  v0[20] = swift_task_alloc();
  v9 = *(*(type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType() - 8) + 64);
  v0[21] = OUTLINED_FUNCTION_45();
  v0[22] = swift_task_alloc();
  v10 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v0[23] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v0[24] = v11;
  v13 = *(v12 + 64);
  v0[25] = OUTLINED_FUNCTION_45();
  v0[26] = swift_task_alloc();
  v14 = type metadata accessor for ContactsSnippetFlowState();
  v0[27] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v0[28] = v15;
  v17 = *(v16 + 64);
  v0[29] = OUTLINED_FUNCTION_45();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v18 = type metadata accessor for ContactsLabelCATContainer();
  v0[32] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v0[33] = v19;
  v21 = *(v20 + 64);
  v0[34] = OUTLINED_FUNCTION_45();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 136);
  v10 = *(v8 + 16);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v7);
  v12 = *(v8 + 88);
  v11 = (v8 + 88);
  v13 = v12(v6, v7);
  if (v13 == *MEMORY[0x277D55978])
  {
    (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_26_9(v14);
    OUTLINED_FUNCTION_10_18();

    return static ContactsLabelCATContainer.modifyConfirmationCATs(from:)();
  }

  if (v13 == *MEMORY[0x277D55970])
  {
    v17 = swift_task_alloc();
    *(v0 + 320) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_26_9(v17);
    OUTLINED_FUNCTION_10_18();

    return static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)();
  }

  if (v13 == *MEMORY[0x277D55968])
  {
    v19 = *(v0 + 288);
    static ContactsLabelCATContainer.empty.getter();
    v20 = [*(v0 + 104) contactAttributeToModify];
    if (v20 == 6)
    {
      v31 = *(v0 + 120);
      v32 = v31[4];
      v33 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v34 = *(v32 + 24);
      v6 = v33;
      v35 = OUTLINED_FUNCTION_22_0();
      if (v36(v35))
      {
        OUTLINED_FUNCTION_1_24();
        *(v0 + 40) = &type metadata for InstalledAppsProvider;
        *(v0 + 48) = &protocol witness table for InstalledAppsProvider;
        v38 = [v37 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_22_0();
        AppUtil.buildPunchoutFor(contactIdentifier:)();
        v40 = v39;

        outlined destroy of AppUtil(v0 + 16);
        v41 = OUTLINED_FUNCTION_24_6();
        v42(v41);
        ModifyOperation.asSnippetModelModificationType.getter([v82 modifyOperation], v83);
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
        v43 = v4;
        CodableContact.init(wrappedValue:)();
        v85();
        v45 = *(v1 + 16);
        v44 = (v1 + 16);
        v45();
        if (v40)
        {
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
          v44 = v40;
          SAClientBoundCommand.data.getter();
          OUTLINED_FUNCTION_30_3();
        }

        else
        {
          OUTLINED_FUNCTION_27_6();
        }

        OUTLINED_FUNCTION_5_22();

        (*(v5 + 8))(v44, v2);
        v48 = type metadata accessor for ModifyContactAttributeSnippetModel();
        v49 = v3;
        goto LABEL_45;
      }
    }

    else if (v20 == 10)
    {
      v21 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v0 + 104));
      if (v21)
      {
        OUTLINED_FUNCTION_33_1(v21);
        if (v7)
        {
          v22 = MEMORY[0x26D5E29D0](0, v6);
        }

        else
        {
          v22 = v6[4];
        }

        v23 = v22;

        v24 = outlined bridged method (ob) of @objc INObject.identifier.getter(v23);
        v26 = v25;
        if (v25)
        {
          OUTLINED_FUNCTION_21_9();
          v27 = OUTLINED_FUNCTION_17_7();
          v28 = v3(v27);
          if (v11)
          {
          }

          else
          {
            v79 = v28;

            if (v79)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v51 = *(v0 + 112);
      if (v51 && (v52 = [v51 updatedRelationship]) != 0 && (v53 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v52), v54))
      {
        v55 = v53;
        v56 = v54;
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
        @nonobjc CNContact.init(displayName:handle:)(v55, v56, MEMORY[0x277D84F90]);
      }

      else
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v57 = type metadata accessor for Logger();
        __swift_project_value_buffer(v57, static Logger.siriContacts);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          OUTLINED_FUNCTION_23_1(&dword_26686A000, v61, v62, "ModifyContactAttributeSnippetModel couldn't fetch related contact for display, falling back on empty one");
          MEMORY[0x26D5E3300](v60, -1, -1);
        }

        v63 = [objc_opt_self() emptyContact];
      }

LABEL_35:
      v86 = OUTLINED_FUNCTION_25_6(*(v0 + 120), &type metadata for InstalledAppsProvider);
      v64 = OUTLINED_FUNCTION_22_0();
      v65 = v3(v64);
      if (v65)
      {
        v66 = v65;
        v67 = [v65 identifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      OUTLINED_FUNCTION_2_27();
      v69 = v68;

      OUTLINED_FUNCTION_30_6();
      v71 = v70;

      v72 = OUTLINED_FUNCTION_29_5();
      v73(v72);
      ModifyOperation.asSnippetModelModificationType.getter([v80 modifyOperation], v81);
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      CodableContact.init(wrappedValue:)();
      v84();
      v75 = *(v2 + 16);
      v74 = (v2 + 16);
      v75();
      if (v69)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v76 = v69;
        SAClientBoundCommand.data.getter();

        if (v71)
        {
LABEL_39:
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
          v74 = v71;
          SAClientBoundCommand.data.getter();
          OUTLINED_FUNCTION_30_3();

LABEL_42:
          OUTLINED_FUNCTION_6_17();

          (*(v5 + 8))(v74, v26);
          outlined destroy of AppUtil(v0 + 56);
          v48 = type metadata accessor for ModifyContactAttributeSnippetModel();
          v49 = v24;
LABEL_45:
          v50 = 0;
LABEL_46:
          __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
          OUTLINED_FUNCTION_9_14();

          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_10_18();

          __asm { BRAA            X1, X16 }
        }
      }

      else if (v71)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_27_6();
      goto LABEL_42;
    }

    v46 = OUTLINED_FUNCTION_28_5();
    v47(v46);
    v48 = type metadata accessor for ModifyContactAttributeSnippetModel();
    v49 = v6;
    v50 = 1;
    goto LABEL_46;
  }

  v29 = *(v0 + 216);
  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FDEB8]();
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 312);
  v2 = *v0;
  OUTLINED_FUNCTION_0();
  *v3 = v2;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 320);
  v2 = *v0;
  OUTLINED_FUNCTION_0();
  *v3 = v2;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)()
{
  v9 = [*(v3 + 104) contactAttributeToModify];
  if (v9 == 6)
  {
    v18 = *(v3 + 120);
    v19 = v18[4];
    v20 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v21 = *(v19 + 24);
    v1 = v20;
    v22 = OUTLINED_FUNCTION_22_0();
    if (v23(v22))
    {
      OUTLINED_FUNCTION_1_24();
      *(v3 + 40) = &type metadata for InstalledAppsProvider;
      *(v3 + 48) = &protocol witness table for InstalledAppsProvider;
      v25 = [v24 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      OUTLINED_FUNCTION_22_0();
      AppUtil.buildPunchoutFor(contactIdentifier:)();
      v27 = v26;

      outlined destroy of AppUtil(v3 + 16);
      v28 = OUTLINED_FUNCTION_24_6();
      v29(v28);
      ModifyOperation.asSnippetModelModificationType.getter([v69 modifyOperation], v70);
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      v30 = v7;
      CodableContact.init(wrappedValue:)();
      v72();
      v32 = *(v4 + 16);
      v31 = (v4 + 16);
      v32();
      if (v27)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v31 = v27;
        SAClientBoundCommand.data.getter();
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        OUTLINED_FUNCTION_27_6();
      }

      OUTLINED_FUNCTION_5_22();

      (*(v8 + 8))(v31, v5);
      v35 = type metadata accessor for ModifyContactAttributeSnippetModel();
      v36 = v6;
      goto LABEL_33;
    }
  }

  else if (v9 == 10)
  {
    v10 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v3 + 104));
    if (v10)
    {
      OUTLINED_FUNCTION_33_1(v10);
      if (v0)
      {
        v11 = MEMORY[0x26D5E29D0](0, v1);
      }

      else
      {
        v11 = v1[4];
      }

      v12 = v11;

      v13 = outlined bridged method (ob) of @objc INObject.identifier.getter(v12);
      v15 = v14;
      if (v14)
      {
        OUTLINED_FUNCTION_21_9();
        v16 = OUTLINED_FUNCTION_17_7();
        v17 = v6(v16);
        if (v2)
        {
        }

        else
        {
          v66 = v17;

          if (v66)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v38 = *(v3 + 112);
    if (v38 && (v39 = [v38 updatedRelationship]) != 0 && (v40 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v39), v41))
    {
      v42 = v40;
      v43 = v41;
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      @nonobjc CNContact.init(displayName:handle:)(v42, v43, MEMORY[0x277D84F90]);
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.siriContacts);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        OUTLINED_FUNCTION_23_1(&dword_26686A000, v48, v49, "ModifyContactAttributeSnippetModel couldn't fetch related contact for display, falling back on empty one");
        MEMORY[0x26D5E3300](v47, -1, -1);
      }

      v50 = [objc_opt_self() emptyContact];
    }

LABEL_23:
    v73 = OUTLINED_FUNCTION_25_6(*(v3 + 120), &type metadata for InstalledAppsProvider);
    v51 = OUTLINED_FUNCTION_22_0();
    v52 = v6(v51);
    if (v52)
    {
      v53 = v52;
      v54 = [v52 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_2_27();
    v56 = v55;

    OUTLINED_FUNCTION_30_6();
    v58 = v57;

    v59 = OUTLINED_FUNCTION_29_5();
    v60(v59);
    ModifyOperation.asSnippetModelModificationType.getter([v67 modifyOperation], v68);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
    CodableContact.init(wrappedValue:)();
    v71();
    v62 = *(v5 + 16);
    v61 = (v5 + 16);
    v62();
    if (v56)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
      v63 = v56;
      SAClientBoundCommand.data.getter();

      if (v58)
      {
LABEL_27:
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v61 = v58;
        SAClientBoundCommand.data.getter();
        OUTLINED_FUNCTION_30_3();

LABEL_30:
        OUTLINED_FUNCTION_6_17();

        (*(v8 + 8))(v61, v15);
        outlined destroy of AppUtil(v3 + 56);
        v35 = type metadata accessor for ModifyContactAttributeSnippetModel();
        v36 = v13;
LABEL_33:
        v37 = 0;
LABEL_34:
        __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
        OUTLINED_FUNCTION_9_14();

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_10_18();

        __asm { BRAA            X1, X16 }
      }
    }

    else if (v58)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_27_6();
    goto LABEL_30;
  }

  v33 = OUTLINED_FUNCTION_28_5();
  v34(v33);
  v35 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v36 = v1;
  v37 = 1;
  goto LABEL_34;
}

id @nonobjc CNContact.init(displayName:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x26D5E2470]();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

uint64_t ModifyOperation.asSnippetModelModificationType.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279BD3688 + a1);
    v4 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
  if (OUTLINED_FUNCTION_32_5())
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_14_12();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_32_5())
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_14_12();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_14_12();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v22);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v22, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a2;
  v9 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriContactsCommon0D17LabelCATContainerV0F4TypeOSSGMd, &_ss17_NativeDictionaryVy18SiriContactsCommon0D17LabelCATContainerV0F4TypeOSSGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v5;
  if (v21)
  {
    v26 = (v25[7] + 16 * v20);
    v27 = v26[1];
    v28 = v31;
    *v26 = a1;
    v26[1] = v28;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v20, v13, a1, v31, v25);
  }
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(void *a1)
{
  v1 = a1;
  v2 = [a1 relatedFullName];

  if (!v2)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_30_3();

  return v1;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    type metadata accessor for ContactsLabelCATContainer.LabelType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

void OUTLINED_FUNCTION_1_24()
{
  v14 = v0[37];
  v15 = v0[38];
  v2 = v0[36];
  v3 = v0[33];
  *(v1 - 96) = v0[34];
  *(v1 - 88) = v2;
  v16 = v0[32];
  v12 = v0[29];
  v13 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[21];
  v10 = v0[19];
  v8 = v0[16];
  v11 = v0[17];
  v9 = v0[13];
}

void OUTLINED_FUNCTION_2_27()
{
  v13 = v0[37];
  v14 = v0[38];
  v16 = v0[35];
  v17 = v0[36];
  v2 = v0[33];
  v15 = v0[32];
  v3 = v0[26];
  v11 = v0[30];
  v12 = v0[27];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v9 = v0[20];
  v7 = v0[16];
  v10 = v0[17];
  v8 = v0[13];

  AppUtil.buildPunchoutFor(contactIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  v5 = v2[36];
  v7 = v2[33];
  v6 = v2[34];
  v8 = v2[32];
  v9 = v2[29];
  v10 = v2[25];
  v11 = v2[21];
  v12 = v2[19];
  v13 = v2[12];

  return MEMORY[0x2821B7590](v10, v11, v12, v9, v6, v0, v1, 0, v3);
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  v6 = v3[35];
  v7 = v3[36];
  v8 = v3[32];
  v9 = v3[33];
  v10 = v3[30];
  v11 = v3[26];
  v12 = v3[22];
  v13 = v3[20];
  v14 = v3[12];

  return MEMORY[0x2821B7590](v11, v12, v13, v10, v6, v0, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  *(v1 - 96) = v0[20];
  *(v1 - 88) = v13;
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  v1 = *(v0 + 120);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
}

id OUTLINED_FUNCTION_25_6@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = *(v5 + 24);

  return v3;
}

uint64_t OUTLINED_FUNCTION_26_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 288);
  v4 = *(v2 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_5()
{
  result = v0[36];
  v2 = v0[32];
  v3 = v0[12];
  v4 = *(v0[33] + 8);
  return result;
}

void OUTLINED_FUNCTION_30_6()
{
  v2 = *(v0 - 96);

  AppUtil.buildPunchoutFor(contactIdentifier:)();
}

BOOL OUTLINED_FUNCTION_32_5()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t DeviceState.supportsCompactView.getter()
{
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isPod.getter())) && (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0) && (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isCarDNDMode.getter() & 1) == 0))
  {
    OUTLINED_FUNCTION_47_0();
    v0 = dispatch thunk of DeviceState.isXRDevice.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t DeviceState.toSiriKitDeviceState.getter()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v73 = v2;
  v74 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v72 = v6 - v5;
  v7 = type metadata accessor for Locale();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v69 = v9;
  v70 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v68 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v75 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = type metadata accessor for InputOrigin();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v66 = v25;
  v67 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  v65 = type metadata accessor for InteractionType();
  v31 = OUTLINED_FUNCTION_1_0(v65);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  v38 = v37 - v36;
  v39 = type metadata accessor for SirikitDeviceState.Builder();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  SirikitDeviceState.Builder.init()();
  OUTLINED_FUNCTION_0_29();
  v42 = dispatch thunk of DeviceState.isHomePod.getter();
  OUTLINED_FUNCTION_5_23(v42);
  dispatch thunk of SirikitDeviceState.Builder.withIsHomePod(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v43 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_6_18(v43);
  dispatch thunk of SirikitDeviceState.Builder.withIsWatch(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v44 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_5_23(v44);
  dispatch thunk of SirikitDeviceState.Builder.withIsMac(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v45 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_6_18(v45);
  dispatch thunk of SirikitDeviceState.Builder.withIsCarPlay(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v46 = dispatch thunk of DeviceState.isCarDNDMode.getter();
  OUTLINED_FUNCTION_5_23(v46);
  dispatch thunk of SirikitDeviceState.Builder.withIsCarDnD(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v47 = dispatch thunk of DeviceState.isAppleTV.getter();
  OUTLINED_FUNCTION_6_18(v47);
  dispatch thunk of SirikitDeviceState.Builder.withIsAppleTV(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v48 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  OUTLINED_FUNCTION_5_23(v48);
  dispatch thunk of SirikitDeviceState.Builder.withIsTextToSpeechEnabled(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v49 = dispatch thunk of DeviceState.isLockedWithPasscode.getter();
  OUTLINED_FUNCTION_6_18(v49);
  dispatch thunk of SirikitDeviceState.Builder.withIsLockedWithPasscode(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v50 = dispatch thunk of DeviceState.isEyesFree.getter();
  OUTLINED_FUNCTION_5_23(v50);
  dispatch thunk of SirikitDeviceState.Builder.withIsEyesFree(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v51 = dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  OUTLINED_FUNCTION_6_18(v51);
  dispatch thunk of SirikitDeviceState.Builder.withIsVoiceTriggerEnabled(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v52 = dispatch thunk of DeviceState.interactionType.getter();
  MEMORY[0x26D5E18F0](v52);
  (*(v33 + 8))(v38, v65);
  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withInteractionType(print:speak:)();

  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.inputOrigin.getter();
  InputOrigin.rawValue.getter();
  (*(v66 + 8))(v30, v67);
  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withInputOrigin(print:speak:)();

  v53 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v53);
  dispatch thunk of SirikitDeviceState.Builder.withMultiUserState(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (!v54)
  {
    static String.EMPTY.getter();
  }

  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withUserAssignedDeviceName(print:speak:)();

  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (!v55)
  {
    static String.EMPTY.getter();
  }

  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withDeviceName(print:speak:)();

  v56 = v68;
  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.siriLocale.getter();
  v57 = v72;
  Locale.language.getter();
  (*(v69 + 8))(v56, v70);
  v58 = v71;
  Locale.Language.languageCode.getter();
  (*(v73 + 8))(v57, v74);
  v59 = type metadata accessor for Locale.LanguageCode();
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v58, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v60 = 1;
    v61 = v75;
  }

  else
  {
    MEMORY[0x26D5DF380]();
    (*(*(v59 - 8) + 8))(v58, v59);
    v61 = v75;
    OUTLINED_FUNCTION_4_19();
    SpeakableString.init(print:speak:)();
    v60 = 0;
  }

  __swift_storeEnumTagSinglePayload(v61, v60, 1, v53);
  dispatch thunk of SirikitDeviceState.Builder.withSiriLocale(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v61, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v62 = dispatch thunk of SirikitDeviceState.Builder.build()();

  return v62;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_8_12()
{
}

uint64_t static Signpost.begin(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_28();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = type metadata accessor for Signpost.OpenSignpost();
  return OUTLINED_FUNCTION_3_13(v5);
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v1 = (v0 + *(type metadata accessor for Signpost.OpenSignpost() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t one-time initialization function for contactsLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Signpost.contactsLog = result;
  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  result = type metadata singleton initialization cache for Signpost.OpenSignpost;
  if (!type metadata singleton initialization cache for Signpost.OpenSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static Signpost.contactsLog.getter()
{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v1 = static Signpost.contactsLog;

  return v1;
}

uint64_t static Signpost.beginEnabled(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_28();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v5 = type metadata accessor for Signpost.OpenSignpost();
  return OUTLINED_FUNCTION_3_13(v5);
}

_BYTE *storeEnumTagSinglePayload for Signpost(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t type metadata completion function for Signpost.OpenSignpost()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

void OUTLINED_FUNCTION_0_30(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t result)
{
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t ContactsPhoneHandle.Builder.withPhoneLabel(print:speak:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;

  SpeakableString.init(print:speak:)();
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v6, v0 + v8);
  swift_endAccess();
}

uint64_t ContactsPhoneHandle.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneHandle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsPhoneHandle.init(builder:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v9, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
  v10 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneHandle;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v10, v8);

  outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  return v1;
}

uint64_t ContactsPhoneHandle.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = a1 == 0x62614C656E6F6870 && a2 == 0xEA00000000006C65;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel, v15);
    v17 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
    {
      v18 = v15;
LABEL_8:
      result = outlined destroy of SpeakableString?(v18);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, v15, v17);
  }

  else
  {
    if (a1 != 0x6E6148656E6F6870 || a2 != 0xEB00000000656C64)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle, v13);
    v22 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v22) == 1)
    {
      v18 = v13;
      goto LABEL_8;
    }

    *(a3 + 24) = v22;
    v23 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v22 - 8) + 32))(v23, v13, v22);
  }
}

uint64_t ContactsPhoneHandle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsPhoneHandle.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ContactsPhoneHandle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6148656E6F6870;
  }

  else
  {
    return 0x62614C656E6F6870;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsPhoneHandle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsPhoneHandle.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsPhoneHandle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsPhoneHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsPhoneHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsPhoneHandle.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  return v0;
}

uint64_t ContactsPhoneHandle.__deallocating_deinit()
{
  ContactsPhoneHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsPhoneHandle()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsPhoneHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_31();
  lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(v12, v13);
  OUTLINED_FUNCTION_2_29();
  if (!v1)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_2_29();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t ContactsPhoneHandle.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactsPhoneHandle.init(from:)(a1);
  return v5;
}

void type metadata completion function for ContactsPhoneHandle.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *ContactsPhoneHandle.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v27 = v26 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v28);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v1[2] = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsPhoneHandle(0);
    v21 = *(*v1 + 12);
    v22 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26[1] = v13;
    type metadata accessor for SpeakableString();
    v30 = 0;
    OUTLINED_FUNCTION_0_31();
    lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(v18, v19);
    v20 = v27;
    OUTLINED_FUNCTION_6_19();
    outlined init with take of SpeakableString?(v20, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
    v29 = 1;
    OUTLINED_FUNCTION_6_19();
    v24 = OUTLINED_FUNCTION_1_25();
    v25(v24);
    outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsPhoneHandle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsPhoneHandle.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsPhoneHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t DialogExecutionResult.responseViewIDForManifest.getter()
{
  v1 = [v0 dialog];
  type metadata accessor for DialogElement();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array._getCount()(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D5E29D0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 id];
  }

  else
  {

    v5 = [v0 catId];
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t TemplatingResult.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for BehaviorAfterSpeaking();
  v22[0] = *(v8 - 8);
  v9 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v22 - v14;
  v16 = TemplatingResult.templateIdentifier.getter();
  v22[1] = v17;
  v22[2] = v16;
  v18 = TemplatingResult.sections.getter();
  outlined init with copy of URL?(a1, v15, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v19 = type metadata accessor for TemplatingResult();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = TemplatingResult.sections.getter();
    (*(*(v19 - 8) + 8))(v15, v19);
  }

  v25 = v18;
  specialized Array.append<A>(contentsOf:)(v20);
  outlined init with copy of URL?(v23, v7, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    TemplatingResult.behaviorAfterSpeaking.getter();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
    }
  }

  else
  {
    (*(v22[0] + 32))(v11, v7, v8);
  }

  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:), 0, 0);
}

uint64_t GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26686A000, v2, v3, "#GetContactAttributeHandleIntentWithNoOutputStrategy makeIntentExecutionBehavior", v4, 2u);
    MEMORY[0x26D5E3300](v4, -1, -1);
  }

  v5 = v0[2];

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v6 = one-time initialization token for current;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  v12 = type metadata accessor for ContactResolver();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = ContactResolver.init()();
  v16 = objc_allocWithZone(type metadata accessor for GetContactAttributeIntentHandler());

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v17, v15, v16);
  type metadata accessor for GetContactAttributeIntent();
  v18 = v10;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v19 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v8 + 8))(v7, v9);

  v20 = v0[1];

  return v20(v19);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C68](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C70](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C48](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5B5F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  v8 = lazy protocol witness table accessor for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy(&lazy protocol witness table cache variable for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy);
  *v6 = v2;
  v6[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9FD8](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, v8);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C60](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C58](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v9 = v4;
  v9[1] = ContactsLabelCATs.email();

  return MEMORY[0x2821B9C38](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy;

  return GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t lazy protocol witness table accessor for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContactNLIntent.ContactPostalAddressField.rawValue.getter(char a1)
{
  result = 2037672291;
  switch(a1)
  {
    case 1:
      result = 0x726F62686769656ELL;
      break;
    case 2:
      result = 0x6F436C6174736F70;
      break;
    case 3:
      result = 0x65636E69766F7270;
      break;
    case 4:
      result = 0x746565727473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.ContactIntentAddressAttributes.rawValue.getter(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      v3 = 544829025;
      return v3 | 0x7264646100000000;
    case 2:
      v3 = 544045415;
      return v3 | 0x7264646100000000;
    case 3:
      v4 = 1701670760;
      goto LABEL_7;
    case 4:
      v4 = 1802661751;
LABEL_7:
      result = v4 | 0x6464612000000000;
      break;
    case 5:
      result = 0x61206C6F6F686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.ContactIntentDateDescription.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7961646874726962;
  }

  else
  {
    return 0x73726576696E6E61;
  }
}

unint64_t ContactNLIntent.ContactPostalAddressField.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLIntent.ContactPostalAddressField.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactNLIntent.NLContactAttributeLabel.rawValue.getter(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 1802661751;
      break;
    case 2:
      result = 0x656C69626F6DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_0_32();
      break;
    case 4:
      result = 1852399981;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    case 6:
      result = 0x6C6F6F686373;
      break;
    case 7:
      result = 0x7972616D697270;
      break;
    case 8:
      result = OUTLINED_FUNCTION_1_26();
      break;
    case 9:
      result = OUTLINED_FUNCTION_2_30();
      break;
    case 10:
      result = 0x6F69646172;
      break;
    case 11:
      result = 7174503;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.NLContactTypeValue.attributeTypeAndLabel()(unsigned __int8 a1)
{
  if (a1 > 0x23u)
  {
    return 0;
  }

  v1 = a1;
  result = qword_266969528[a1];
  v3 = *&aHome[8 * v1];
  v4 = qword_266969768[v1];
  return result;
}

uint64_t ContactNLIntent.NLContactTypeValue.rawValue.getter(char a1)
{
  result = 0x6F687020656D6F68;
  switch(a1)
  {
    case 1:
      v3 = 1802661751;
      return v3 | 0x6F68702000000000;
    case 2:
      v7 = 0x656C69626F6DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 3:
      return OUTLINED_FUNCTION_0_32();
    case 4:
      v3 = 1852399981;
      return v3 | 0x6F68702000000000;
    case 5:
      v8 = 1701670760;
      return v8 | 0x7861662000000000;
    case 6:
      v8 = 1802661751;
      return v8 | 0x7861662000000000;
    case 7:
      return 0x616620726568746FLL;
    case 8:
      v4 = 1701273968;
      goto LABEL_35;
    case 9:
      v6 = 0x20726568746FLL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    case 10:
      return 0x656E6F6870;
    case 11:
      v7 = 0x6C6F6F686373;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 12:
      return OUTLINED_FUNCTION_2_30();
    case 13:
      return 0x6E6F687020726163;
    case 14:
      v6 = 0x206F69646172;
      return v6 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    case 15:
      return 0xD000000000000012;
    case 16:
      v5 = 0x72616D697270;
      goto LABEL_27;
    case 17:
      return 0xD000000000000014;
    case 18:
      return 0xD000000000000014;
    case 19:
      return 0x6B6361626C6C6163;
    case 20:
      v3 = 1852076905;
      return v3 | 0x6F68702000000000;
    case 21:
      v5 = 0x747420646474;
LABEL_27:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x2079000000000000;
      break;
    case 22:
      result = 1870031222;
      break;
    case 23:
      result = 0x6F72616C63;
      break;
    case 24:
      result = 7170420;
      break;
    case 25:
      result = 26991;
      break;
    case 26:
      result = 0x6C657478656ELL;
      break;
    case 27:
      v4 = 1634167905;
LABEL_35:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 28:
      result = 0x65746D6F63726573;
      break;
    case 29:
      result = 1870032493;
      break;
    case 30:
      result = 0x6C69616D65;
      break;
    case 31:
      result = 0x616D65206B726F77;
      break;
    case 32:
      result = OUTLINED_FUNCTION_1_26();
      break;
    case 33:
      result = 0x6D6520726568746FLL;
      break;
    case 34:
      result = 0x65206C6F6F686373;
      break;
    case 35:
      result = 0x7264646120796E61;
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional __swiftcall ContactNLIntent.NLContactTypeValue.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ContactNLIntent.NLContactTypeValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.NLContactTypeValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue()
{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactNLIntent.NLContactTypeValue@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional *a2@<X8>)
{
  result.value = ContactNLIntent.NLContactTypeValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLIntent.NLContactTypeValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLIntent.NLContactTypeValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ContactNLIntent.NLContactTypeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();
  v5 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();
  v6 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type [ContactNLIntent.NLContactTypeValue] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriContactsIntents15ContactNLIntentO18NLContactTypeValueOGMd, &_sSay19SiriContactsIntents15ContactNLIntentO18NLContactTypeValueOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A]);
  }

  return result;
}

uint64_t ConfirmationViewBuilder.makeViewsForWatch()()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26686A000, v1, v2, "[ConfirmationViewBuilder] Constructing no views for Watch, an unsupported idiom.", v3, 2u);
    MEMORY[0x26D5E3300](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t ConfirmationViewBuilder.makeViewsForMac()(const char *a1)
{
  v3 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26686A000, v5, v6, a1, v7, 2u);
    MEMORY[0x26D5E3300](v7, -1, -1);
  }

  v8 = v3[6];
  v9 = *v3;

  return GenericViews.buildConfirmationViewForMacAndCarPlay(contactAttributeType:)(v9);
}

uint64_t ConfirmationViewBuilder.makeViewsForIOS()()
{
  v1 = v0[6];
  v6[4] = &type metadata for InstalledAppsProvider;
  v6[5] = &protocol witness table for InstalledAppsProvider;
  v6[0] = v1;
  v6[6] = 0;
  v2 = *v0;

  CompactViews.buildCompactConfirmationView(attributeType:)();
  v4 = v3;
  outlined destroy of CompactViews(v6);
  return v4;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for ContactsSnippetFlowState();
  v6[8] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v6[9] = v8;
  v10 = *(v9 + 64);
  v6[10] = OUTLINED_FUNCTION_10_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v6[11] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for UUID();
  v6[12] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v6[13] = v15;
  v17 = *(v16 + 64);
  v6[14] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippet = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
  OUTLINED_FUNCTION_18_0(ContactAttributeSnippet);
  v20 = *(v19 + 64);
  v6[15] = OUTLINED_FUNCTION_10_0();
  v21 = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute();
  v6[16] = v21;
  OUTLINED_FUNCTION_1_1(v21);
  v6[17] = v22;
  v24 = *(v23 + 64);
  v6[18] = OUTLINED_FUNCTION_45();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v25);
  v27 = *(v26 + 64);
  v6[23] = OUTLINED_FUNCTION_10_0();
  v28 = type metadata accessor for DateComponents();
  v6[24] = v28;
  OUTLINED_FUNCTION_1_1(v28);
  v6[25] = v29;
  v31 = *(v30 + 64);
  v6[26] = OUTLINED_FUNCTION_10_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_18_0(v32);
  v34 = *(v33 + 64);
  v6[27] = OUTLINED_FUNCTION_45();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v35);
  v37 = *(v36 + 64);
  v6[30] = OUTLINED_FUNCTION_10_0();
  v38 = type metadata accessor for Locale();
  v6[31] = v38;
  OUTLINED_FUNCTION_1_1(v38);
  v6[32] = v39;
  v41 = *(v40 + 64);
  v6[33] = OUTLINED_FUNCTION_10_0();
  v42 = type metadata accessor for ContactsLabelCATContainer();
  v6[34] = v42;
  OUTLINED_FUNCTION_1_1(v42);
  v6[35] = v43;
  v45 = *(v44 + 64);
  v6[36] = OUTLINED_FUNCTION_45();
  v6[37] = swift_task_alloc();
  v46 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  v6[38] = OUTLINED_FUNCTION_10_0();
  ContactDirectInvocationsModel = type metadata accessor for GetContactDirectInvocationsModel();
  v6[39] = ContactDirectInvocationsModel;
  OUTLINED_FUNCTION_1_1(ContactDirectInvocationsModel);
  v6[40] = v50;
  v52 = *(v51 + 64);
  v6[41] = OUTLINED_FUNCTION_45();
  v6[42] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v53, v54, v55);
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)()
{
  v2 = *(v0 + 336);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  GetContactDirectInvocationsModel.init(contact:)(*(v0 + 24));
  type metadata accessor for ContactsLabelCATs();
  static CATOption.defaultMode.getter();
  *(v0 + 344) = CATWrapper.__allocating_init(options:globals:)();
  static ContactsLabelCATContainer.empty.getter();
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v11 = v5;
  *(v0 + 352) = Locale.identifier.getter();
  *(v0 + 360) = v12;
  (*(v6 + 8))(v5, v7);
  if ([v9 contactAttributeType] == 4)
  {
    v13 = *(v0 + 56);
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    v16 = [v14 ageDateTime];
    *(v0 + 368) = v16;
    type metadata accessor for ContactsAgeInfo();
    v17 = v13;
    v18 = ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(v15, v14, v13);
    *(v0 + 376) = v18;
    if (v16)
    {
      v19 = [v16 dateComponents];
      if (v19)
      {
        v20 = v19;
        v21 = *(v0 + 224);
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v78 = *(v0 + 224);
      v77 = *(v0 + 232);
      v79 = *(v0 + 192);
      __swift_storeEnumTagSinglePayload(v78, v22, 1, v79);
      outlined init with take of DateComponents?(v78, v77);
      if (__swift_getEnumTagSinglePayload(v77, 1, v79))
      {
        v80 = *(v0 + 232);
        v81 = &_s10Foundation14DateComponentsVSgMd;
        v82 = &_s10Foundation14DateComponentsVSgMR;
LABEL_52:
        outlined destroy of ResponseMode?(v80, v81, v82);
        goto LABEL_53;
      }

      v83 = *(v0 + 232);
      v84 = *(v0 + 240);
      v86 = *(v0 + 200);
      v85 = *(v0 + 208);
      v87 = *(v0 + 192);
      (*(v86 + 16))(v85, v83, v87);
      outlined destroy of ResponseMode?(v83, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      DateComponents.date.getter();
      (*(v86 + 8))(v85, v87);
      v88 = type metadata accessor for Date();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v88);
      v90 = *(v0 + 240);
      if (EnumTagSinglePayload == 1)
      {
        v81 = &_s10Foundation4DateVSgMd;
        v82 = &_s10Foundation4DateVSgMR;
        v80 = *(v0 + 240);
        goto LABEL_52;
      }

      Date.timeIntervalSince1970.getter();
      OUTLINED_FUNCTION_52(v88);
      (*(v127 + 8))(v90, v88);
      if ([v16 qualifier] == 2 || objc_msgSend(v16, sel_qualifier) == 1)
      {
        if (v18)
        {
          if (*(v18 + 64))
          {
            v128 = *(v0 + 184);
            v129 = *(v18 + 64);

            dispatch thunk of DialogCalendar.dateDescriptive.getter();

            v130 = type metadata accessor for SpeakableString();
            v131 = __swift_getEnumTagSinglePayload(v128, 1, v130);
            v132 = *(v0 + 184);
            if (v131 != 1)
            {
              v91 = SpeakableString.print.getter();
              v97 = v137;
              OUTLINED_FUNCTION_52(v130);
              (*(v138 + 8))(v132, v130);
              goto LABEL_57;
            }

            outlined destroy of ResponseMode?(*(v0 + 184), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
          }

          v97 = 0;
          v91 = 0;
LABEL_57:
          if ((*(v18 + 40) & 1) == 0)
          {
            v99 = *(v18 + 32);
            type metadata accessor for DialogDuration();
            v98 = DialogDuration.init(_:mockGlobals:)();
            v100 = v98;
LABEL_80:
            *(v0 + 400) = v98;
            *(v0 + 408) = v100;
            *(v0 + 384) = v97;
            *(v0 + 392) = v91;
            v133 = *(v0 + 304);
            type metadata accessor for ContactsLabelCATsModern();

            static CATOption.defaultMode.getter();
            *(v0 + 416) = CATWrapperSimple.__allocating_init(options:globals:)();
            v134 = swift_task_alloc();
            *(v0 + 424) = v134;
            *v134 = v0;
            v134[1] = static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:);
            OUTLINED_FUNCTION_53_2();

            return ContactsLabelCATsModern.ageUnitsAsLabels(age:)(v135);
          }

          v98 = *(v18 + 56);
          if (!v98)
          {
            v98 = *(v18 + 48);
            if (!v98)
            {
              v98 = *(v18 + 24);
            }
          }

LABEL_79:
          v100 = 0;
          goto LABEL_80;
        }

        v97 = 0;
        v91 = 0;
LABEL_78:
        v98 = 0;
        goto LABEL_79;
      }
    }

LABEL_53:
    v91 = [*(v0 + 24) birthday];
    v92 = *(v0 + 216);
    v93 = *(v0 + 192);
    if (v91)
    {
      v94 = *(v0 + 24);
      v95 = *(v0 + 216);
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_storeEnumTagSinglePayload(v92, 0, 1, v93);
      outlined destroy of ResponseMode?(v92, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      v91 = CNContact.formattedBirthdateString.getter();
      v97 = v96;
      if (!v18)
      {
        goto LABEL_78;
      }

      goto LABEL_57;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 216), 1, 1, *(v0 + 192));
    outlined destroy of ResponseMode?(v92, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v97 = 0;
    if (v18)
    {
      goto LABEL_57;
    }

    goto LABEL_78;
  }

  if (OUTLINED_FUNCTION_74_0() == 5)
  {
    v23 = *(v0 + 304);
    v24 = *(v0 + 24);
    type metadata accessor for ContactsLabelCATsModern();
    static CATOption.defaultMode.getter();
    *(v0 + 440) = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 448) = CNContact.toDialogPerson(useConversationalName:)();
    type metadata accessor for ContactsBirthdayInfo(0);
    v25 = ContactsBirthdayInfo.__allocating_init(contact:shouldAccountForYearless:)(v24, 1);
    if (v25)
    {
      v26 = *(v25 + 24);
    }

    else
    {
      v26 = 0;
    }

    *(v0 + 456) = v26;
    v101 = *(v0 + 24);
    CNContact.isBirthdayToday.getter();
    v102 = swift_task_alloc();
    *(v0 + 464) = v102;
    *v102 = v0;
    v102[1] = static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:);
    OUTLINED_FUNCTION_53_2();

    return ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)(v103, v104, v105);
  }

  if (OUTLINED_FUNCTION_74_0() == 6)
  {
    v11 = [*(v0 + 24) nickname];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_92();

    v27 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v27 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v5 = *(v0 + 160);
      v11 = *(v0 + 112);
      v28 = *(v0 + 120);
      v29 = *(v0 + 96);
      v30 = *(v0 + 104);
      v31 = *(v0 + 32);
      v32 = [*(v0 + 24) nickname];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)([v31 contactAttributeType], v28);
      UUID.init()();
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_29_6();
      v33 = *(v30 + 8);
      v1 = (v30 + 8);
      v33(v11, v29);
      OUTLINED_FUNCTION_90_0();
      GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
      v34 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = *(v34 + 16);
        OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v143;
      }

      v9 = *(v34 + 16);
      v35 = *(v34 + 24);
      OUTLINED_FUNCTION_34_4();
      if (v37)
      {
        OUTLINED_FUNCTION_1_27(v36);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v144;
      }

      OUTLINED_FUNCTION_78_0();
      *(v34 + 16) = v11;
      OUTLINED_FUNCTION_5_24(v38);
      v40 = OUTLINED_FUNCTION_39_4(v39);
      v41(v40);
      goto LABEL_17;
    }
  }

  if (OUTLINED_FUNCTION_74_0() != 7 && OUTLINED_FUNCTION_74_0() != 9 && OUTLINED_FUNCTION_74_0() != 8 && OUTLINED_FUNCTION_74_0() != 6 && OUTLINED_FUNCTION_74_0() != 11)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_17:
    result = specialized Array._getCount()(*(v0 + 40));
    if (!result)
    {
      v107 = *(v0 + 360);
      v108 = *(v0 + 336);
      v109 = *(v0 + 320);
      v146 = *(v0 + 312);
      v147 = *(v0 + 328);
      v151 = *(v0 + 344);
      v152 = *(v0 + 304);
      v149 = *(v0 + 288);
      v150 = *(v0 + 296);
      v110 = *(v0 + 280);
      v148 = *(v0 + 272);
      v153 = *(v0 + 264);
      v154 = *(v0 + 240);
      v155 = *(v0 + 232);
      v156 = *(v0 + 224);
      v157 = *(v0 + 216);
      v158 = *(v0 + 208);
      v159 = *(v0 + 184);
      v161 = *(v0 + 176);
      v163 = *(v0 + 168);
      v164 = *(v0 + 160);
      v166 = *(v0 + 152);
      v168 = *(v0 + 144);
      v169 = *(v0 + 120);
      v170 = *(v0 + 112);
      v111 = *(v0 + 80);
      v112 = *(v0 + 88);
      v113 = *(v0 + 64);
      v114 = *(v0 + 72);
      v115 = *(v0 + 24);
      v145 = *(v0 + 16);

      type metadata accessor for CNContact();
      v116 = v115;
      OUTLINED_FUNCTION_48_2();
      v117 = *MEMORY[0x277D55970];
      v118 = OUTLINED_FUNCTION_21_10();
      v119(v118);
      (*(v109 + 16))(v147, v108, v146);
      v120 = *(v110 + 16);
      v121 = OUTLINED_FUNCTION_42_1();
      v122(v121);
      GetContactAttributeSnippetModel.init(attributes:contact:flowState:directInvocationsModel:labelCATs:)();

      v123 = OUTLINED_FUNCTION_31_4();
      v124(v123);
      (*(v109 + 8))(v108, v146);

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_53_2();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      v43 = *(v0 + 40);
      v165 = v43 & 0xC000000000000001;
      v160 = (*(v0 + 104) + 8);
      v162 = (v43 + 32);
      v167 = *(v0 + 136);
      while (1)
      {
        if (v165)
        {
          OUTLINED_FUNCTION_81();
        }

        else
        {
          v44 = *v162;
        }

        OUTLINED_FUNCTION_37_5(v44);
        v45 = OUTLINED_FUNCTION_41_5();
        OUTLINED_FUNCTION_19_9(v45);

        if (OUTLINED_FUNCTION_66() == 3 && (v46 = [v1 postalAddress]) != 0)
        {
          v47 = v46;
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          v11 = OUTLINED_FUNCTION_88_0(v47);
          CNLabeledValue<>.formattedString.getter();
          OUTLINED_FUNCTION_29_6();
        }

        else
        {
          outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v1);
          OUTLINED_FUNCTION_29_6();
        }

        v1 = v1;
        outlined bridged method (ob) of @objc INObject.identifier.getter(v1);
        if (v48)
        {
          OUTLINED_FUNCTION_30_3();
        }

        else
        {
          OUTLINED_FUNCTION_50_3();
          v11 = v9;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_30_3();
          v49 = *v160;
          v50 = OUTLINED_FUNCTION_55_3();
          v51(v50);
        }

        OUTLINED_FUNCTION_80();
        static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)([v1 contactAttributeType], v8);
        GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v34 + 16);
          OUTLINED_FUNCTION_27_3();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v56;
        }

        OUTLINED_FUNCTION_67_0();
        if (v37)
        {
          OUTLINED_FUNCTION_1_27(v52);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v57;
        }

        OUTLINED_FUNCTION_49_2();
        *(v34 + 16) = v11;
        v53 = OUTLINED_FUNCTION_13_9(v34 + ((*(v167 + 80) + 32) & ~*(v167 + 80)));
        v54(v53);
      }
    }

    __break(1u);
    return result;
  }

  v58 = *(v0 + 152);
  v59 = *(v0 + 112);
  v60 = *(v0 + 120);
  v61 = *(v0 + 96);
  v62 = *(v0 + 104);
  v63 = OUTLINED_FUNCTION_74_0();
  static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)(v63, v60);
  UUID.init()();
  UUID.uuidString.getter();
  OUTLINED_FUNCTION_29_6();
  (*(v62 + 8))(v59, v61);
  OUTLINED_FUNCTION_90_0();
  GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
  v64 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v139 = *(v64 + 16);
    OUTLINED_FUNCTION_27_3();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v64 = v140;
  }

  v65 = *(v64 + 16);
  if (v65 >= *(v64 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v64 = v141;
  }

  *(v0 + 480) = v64;
  OUTLINED_FUNCTION_20_7();
  *(v64 + 16) = v65 + 1;
  OUTLINED_FUNCTION_5_24(v66);
  v69(v64 + v67 + *(v68 + 40) * v65);
  type metadata accessor for ContactsLabelCATsModern();
  OUTLINED_FUNCTION_85();
  v70 = OUTLINED_FUNCTION_89_0();
  v71 = OUTLINED_FUNCTION_33_3(v70);
  OUTLINED_FUNCTION_76_0(v71);
  v72 = swift_task_alloc();
  v73 = OUTLINED_FUNCTION_77_0(v72);
  *v73 = v74;
  OUTLINED_FUNCTION_0_33(v73);
  OUTLINED_FUNCTION_53_2();

  return ContactsLabelCATsModern.quickActionButtonLabels(contact:)(v75);
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *(v4 + 424);
  *v6 = *v2;

  v8 = *(v4 + 416);
  if (v1)
  {
  }

  else
  {

    *(v5 + 432) = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = v4[58];
  v8 = v4[57];
  *v6 = *v2;

  v9 = v4[56];
  v10 = v4[55];
  if (v1)
  {
  }

  else
  {

    v5[59] = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = v4[63];
  *v6 = *v2;

  v8 = v4[62];
  v9 = v4[61];
  if (v1)
  {
  }

  else
  {

    v5[64] = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void (*static GetContactAttributeSnippetModel.ageUnitLabel(from:given:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v96[4] = v4;
  v96[5] = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v96[3] = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96[2] = v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v96 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v96 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v96 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v96 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v96 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (v96 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = v96 - v35;
  if (!a1 || !a2)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriContacts);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26686A000, v46, v47, "#GetContactAttributeSnippetModel ageUnitLabel invalid params, returning", v48, 2u);
      MEMORY[0x26D5E3300](v48, -1, -1);
    }

    goto LABEL_13;
  }

  v96[1] = a1;

  v37 = dispatch thunk of DialogDuration.valueInYears.getter();
  if ((v38 & 1) == 0)
  {
    v96[0] = a2;
    OUTLINED_FUNCTION_44_2(v37);
    if (v49 == v50)
    {
      dispatch thunk of DialogDuration.years.getter();
      v53 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_2_0(v36);
      if (v54)
      {
        outlined destroy of ResponseMode?(v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }

      else
      {
        SpeakableString.print.getter();
        OUTLINED_FUNCTION_6_20();
        (*(v58 + 8))(v36, v53);
        OUTLINED_FUNCTION_43_4();
        CharacterSet.inverted.getter();
        v59 = OUTLINED_FUNCTION_17_8();
        v34(v59);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.components(separatedBy:)();
        v60 = OUTLINED_FUNCTION_68_1();
        v34(v60);

        if (*(v53 + 16))
        {
          OUTLINED_FUNCTION_75();

LABEL_59:
          v77 = 18;
LABEL_86:
          OUTLINED_FUNCTION_83_0(v77);
LABEL_87:

          return v34;
        }
      }

      OUTLINED_FUNCTION_40_2();
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_96();
    if (v49 != v50)
    {
      goto LABEL_4;
    }

    dispatch thunk of DialogDuration.years.getter();
    v51 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v34);
    if (v54)
    {
      outlined destroy of ResponseMode?(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      (*(v69 + 8))(v34, v51);
      OUTLINED_FUNCTION_43_4();
      CharacterSet.inverted.getter();
      v70 = OUTLINED_FUNCTION_17_8();
      v34(v70);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.components(separatedBy:)();
      v71 = OUTLINED_FUNCTION_68_1();
      v34(v71);

      if (*(v51 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_71:
        v77 = 17;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_71;
  }

LABEL_4:
  v39 = dispatch thunk of DialogDuration.valueInMonths.getter();
  if (v40)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_44_2(v39);
  if (v49 == v50)
  {
    dispatch thunk of DialogDuration.months.getter();
    v56 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v31);
    if (v57)
    {
      outlined destroy of ResponseMode?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v64 = SpeakableString.print.getter();
      v34 = v65;
      OUTLINED_FUNCTION_52(v56);
      (*(v66 + 8))(v31, v56);
      v97 = v64;
      v98 = v34;
      static CharacterSet.decimalDigits.getter();
      OUTLINED_FUNCTION_86();
      v67 = OUTLINED_FUNCTION_94();
      v31(v67);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87();
      v68 = OUTLINED_FUNCTION_32_6();
      v31(v68);

      if (*(v56 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_66:
        v77 = 6;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_96();
  if (v49 == v50)
  {
    dispatch thunk of DialogDuration.months.getter();
    v52 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v28, 1, v52) == 1)
    {
      outlined destroy of ResponseMode?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v78 = SpeakableString.print.getter();
      v34 = v79;
      OUTLINED_FUNCTION_52(v52);
      v81 = *(v80 + 8);
      v82 = OUTLINED_FUNCTION_22_0();
      v83(v82);
      v97 = v78;
      v98 = v34;
      static CharacterSet.decimalDigits.getter();
      OUTLINED_FUNCTION_86();
      v84 = OUTLINED_FUNCTION_94();
      v52(v84);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87();
      v85 = OUTLINED_FUNCTION_32_6();
      v52(v85);

      if (*(v28 + 2))
      {
        OUTLINED_FUNCTION_75();

LABEL_79:
        v77 = 5;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_79;
  }

LABEL_5:
  v41 = dispatch thunk of DialogDuration.valueInWeeks.getter();
  if (v42)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_2(v41);
  if (v49 == v50)
  {
    dispatch thunk of DialogDuration.weeks.getter();
    v62 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v25);
    if (v63)
    {
      outlined destroy of ResponseMode?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      (*(v74 + 8))(v25, v62);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_86();
      v75 = OUTLINED_FUNCTION_17_8();
      v34(v75);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87();
      v76 = OUTLINED_FUNCTION_32_6();
      v34(v76);

      if (*(v62 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_74:
        v77 = 16;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_96();
  if (v49 == v50)
  {
    dispatch thunk of DialogDuration.weeks.getter();
    v55 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v22);
    if (v54)
    {
      outlined destroy of ResponseMode?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      (*(v89 + 8))(v22, v55);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_86();
      v90 = OUTLINED_FUNCTION_17_8();
      v34(v90);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87();
      v91 = OUTLINED_FUNCTION_32_6();
      v34(v91);

      if (*(v55 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_85:
        v77 = 15;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_85;
  }

LABEL_6:
  v43 = dispatch thunk of DialogDuration.valueInDays.getter();
  if ((v44 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_2(v43);
    if (v49 == v50)
    {
      dispatch thunk of DialogDuration.days.getter();
      v72 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_2_0(v19);
      if (v73)
      {
        outlined destroy of ResponseMode?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }

      else
      {
        SpeakableString.print.getter();
        OUTLINED_FUNCTION_6_20();
        (*(v86 + 8))(v19, v72);
        OUTLINED_FUNCTION_43_4();
        OUTLINED_FUNCTION_86();
        v87 = OUTLINED_FUNCTION_17_8();
        v34(v87);
        lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_87();
        v88 = OUTLINED_FUNCTION_32_6();
        v34(v88);

        if (*(v72 + 16))
        {
          OUTLINED_FUNCTION_75();

LABEL_82:
          v77 = 4;
          goto LABEL_86;
        }
      }

      OUTLINED_FUNCTION_40_2();
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_96();
    if (v49 != v50)
    {
      goto LABEL_7;
    }

    dispatch thunk of DialogDuration.days.getter();
    v61 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v16);
    if (v54)
    {
      outlined destroy of ResponseMode?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      (*(v92 + 8))(v16, v61);
      OUTLINED_FUNCTION_43_4();
      CharacterSet.inverted.getter();
      v93 = OUTLINED_FUNCTION_17_8();
      v34(v93);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.components(separatedBy:)();
      v94 = OUTLINED_FUNCTION_68_1();
      v34(v94);

      if (*(v61 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_91:
        OUTLINED_FUNCTION_83_0(3);
        goto LABEL_87;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_91;
  }

LABEL_7:

LABEL_13:
  OUTLINED_FUNCTION_40_2();
  return v34;
}

uint64_t static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xC)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279BD36A8 + a1);
    ContactAttributeSnippet = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
    OUTLINED_FUNCTION_52(ContactAttributeSnippet);
    v7 = *(v6 + 104);

    return v7(a2, v3, v5);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_31()
{
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[40];
  v18 = v0[39];
  v19 = v0[41];
  v23 = v0[43];
  v24 = v0[38];
  v21 = v0[36];
  v22 = v0[37];
  v6 = v0[35];
  v20 = v0[34];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[29];
  v28 = v0[28];
  v29 = v0[27];
  v30 = v0[26];
  v31 = v0[23];
  v32 = v0[22];
  v33 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  *(v1 - 128) = v0[20];
  *(v1 - 120) = v7;
  v9 = v0[14];
  v10 = v0[15];
  *(v1 - 112) = v8;
  *(v1 - 104) = v10;
  *(v1 - 96) = v9;
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[3];
  v17 = v0[2];
}

unint64_t OUTLINED_FUNCTION_3_14@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v2;
  v4 = *(a1 + 32);
  return v3 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t result)
{
  v3 = v1[17];
  *(v2 - 120) = v1[5] & 0xC000000000000001;
  v4 = v1[13] + 8;
  *(v2 - 112) = v3;
  *(v2 - 104) = result;
  *(v2 - 128) = v3 + 32;
  return result;
}

void OUTLINED_FUNCTION_8_13()
{
  v4 = v1[18];
  v3 = v1[19];
  *(v2 - 128) = v0;
  *(v2 - 120) = v3;
  v5 = v1[14];
  v6 = v1[15];
  *(v2 - 112) = v4;
  *(v2 - 104) = v6;
  *(v2 - 96) = v5;
}

uint64_t OUTLINED_FUNCTION_13_9@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_8()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  v2 = *(v0 - 96);

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

void *OUTLINED_FUNCTION_19_9(uint64_t a1)
{

  return LabelMapper.localizedLabel(handleLabel:localeString:type:)(v5, v1, v3, v2, a1, v4);
}

void OUTLINED_FUNCTION_20_7()
{
  v1 = v0[38];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[3];
}

uint64_t OUTLINED_FUNCTION_23_10()
{
  v2 = *(v0 - 88);

  return GetContactAttributeSnippetModel.init(attributes:contact:flowState:directInvocationsModel:labelCATs:)();
}

uint64_t OUTLINED_FUNCTION_27_7()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  return v0[4];
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{
  *(v1 + 488) = a1;

  return CNContact.toDialogPerson(useConversationalName:)();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t result)
{
  v3 = v1[17];
  *(v2 - 120) = v1[5] & 0xC000000000000001;
  v4 = v1[13] + 8;
  *(v2 - 112) = v3;
  *(v2 - 104) = result;
  *(v2 - 128) = v3 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_5(void *a1)
{
  v4 = v1[44];
  v3 = v1[45];
  v5 = v1[43];

  return outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
}

unint64_t OUTLINED_FUNCTION_38_1()
{
  *(v3 + 16) = v1;
  v4 = *(v2 + 32);
  return v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v0;
}

id OUTLINED_FUNCTION_41_5()
{

  return [v0 contactAttributeType];
}

uint64_t OUTLINED_FUNCTION_43_4()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  v4 = *(v2 - 128);

  return static CharacterSet.decimalDigits.getter();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return CodableContact.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_49_2()
{
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
}

uint64_t OUTLINED_FUNCTION_50_3()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  return UUID.init()();
}

uint64_t OUTLINED_FUNCTION_52_2@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1 + *(v1 + 72) * v3;
  v6 = *(v1 + 32);
  v7 = *(v4 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 16);
  result = a11;
  v15 = *(v12 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

id OUTLINED_FUNCTION_59_2()
{
  v2 = *(v0 + 24);

  return [v2 nickname];
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

id OUTLINED_FUNCTION_62()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{
  *(v1 - 96) = a1;
}

id OUTLINED_FUNCTION_65_1()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

id OUTLINED_FUNCTION_66()
{

  return [v1 (v0 + 1614)];
}

id OUTLINED_FUNCTION_71_1()
{
  *(v2 - 88) = v0[20];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[3];
  v9 = v0[4];

  return [v8 (v1 + 3554)];
}

id OUTLINED_FUNCTION_72_0()
{
  v4 = v0[20];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  *(v2 - 96) = v0[12];
  *(v2 - 88) = v4;
  v8 = v0[3];
  v9 = v0[4];

  return [v8 (v1 + 3554)];
}

void *OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return LabelMapper.localizedLabel(handleLabel:localeString:type:)(v4, v5, v2, v1, a1, v3);
}

id OUTLINED_FUNCTION_74_0()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

uint64_t OUTLINED_FUNCTION_75()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

void OUTLINED_FUNCTION_78_0()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
}

void OUTLINED_FUNCTION_81()
{
  v2 = *(v0 + 40);

  JUMPOUT(0x26D5E29D0);
}

id OUTLINED_FUNCTION_82_0()
{

  return [v0 contactAttributeType];
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return dispatch thunk of LabelExecutionResult.subscript.getter();
}

id OUTLINED_FUNCTION_84_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a26 + 8 * v26);

  return v28;
}

uint64_t OUTLINED_FUNCTION_85()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_86()
{
  v2 = *(v0 - 120);

  return CharacterSet.inverted.getter();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return StringProtocol.components(separatedBy:)();
}

id OUTLINED_FUNCTION_88_0(void *a1)
{

  return CNLabeledValue<>.init(address:)(a1);
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 8);
  result = v9;
  v13 = *(v10 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_94()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

void OUTLINED_FUNCTION_97()
{
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[22];
  v7 = v0[16];
  v8 = v0[17];
}

uint64_t OUTLINED_FUNCTION_98()
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

uint64_t OUTLINED_FUNCTION_99()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[3];
  v8 = v0[2];
}

void OUTLINED_FUNCTION_101()
{
}

SiriContactsIntents::SiriKitContactUnsupportedReason_optional __swiftcall SiriKitContactUnsupportedReason.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * rawValue));
  }
}

SiriContactsIntents::SiriKitContactUnsupportedReason_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SiriKitContactUnsupportedReason@<W0>(Swift::Int *a1@<X0>, SiriContactsIntents::SiriKitContactUnsupportedReason_optional *a2@<X8>)
{
  result.value = SiriKitContactUnsupportedReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriKitContactUnsupportedReason@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitContactUnsupportedReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id BaseIntentHandler.init(contactService:contactResolver:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v2;
  *(v2 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard) = 1;
  outlined init with copy of DeviceState(a1, v2 + direct field offset for BaseIntentHandler.contactService);
  outlined init with copy of DeviceState(a2, v2 + direct field offset for BaseIntentHandler.contactResolver);
  *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 0;
  v16 = *(v7 + 80);
  v17 = *(v7 + 96);
  v18 = *((v6 & v5) + 0x70);
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BaseIntentHandler();
  v8 = objc_msgSendSuper2(&v19, sel_init, v16, v17, v18);
  v9 = one-time initialization token for siriContacts;
  v10 = v8;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26686A000, v12, v13, "Constructed ContactsIntentHandler.", v14, 2u);
    MEMORY[0x26D5E3300](v14, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}