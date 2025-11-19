id PreExecutionDialogHandler.createCATContext()()
{
  v1 = *(v0 + 24);
  v2 = [v1 languageCode];
  if (!v2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to retrieve input language code";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v1 outputVoice];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 languageCode];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E699A098]) initWithInputLocale:v3 outputVoiceLocale:v6];

      return v7;
    }
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to retrieve outputVoice language code";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v10, v11, v13, v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

LABEL_14:

  return 0;
}

void partial apply for closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for UserID() - 8);
  v6 = v2 + ((*(v5 + 80) + 73) & ~*(v5 + 80));
  closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v6, *(v6 + *(v5 + 64)), *(v6 + *(v5 + 64) + 1));
}

id PreExecutionDialogHandler.generateAddViewsForCATResult(result:requestId:shouldSpeak:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v9 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v10 = v8;
  v11 = [v9 init];
  v12 = [v11 UUIDString];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x1E12A1410](v13);
  }

  [v10 setAceId_];

  v14 = v10;
  v15 = MEMORY[0x1E12A1410](a2, a3);
  [v14 setRefId_];

  v16 = [a1 print];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17[2])
  {
    v18 = v17[4];
    v19 = v17[5];

    v20 = MEMORY[0x1E12A1410](v18, v19);
  }

  else
  {

    v20 = 0;
  }

  [v14 setText_];

  v21 = [a1 dialogId];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22[2])
  {
    v23 = v22[4];
    v24 = v22[5];

    v25 = MEMORY[0x1E12A1410](v23, v24);
  }

  else
  {

    v25 = 0;
  }

  [v14 setDialogIdentifier_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v26 = v14;
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  [v26 setListenAfterSpeaking_];

  v28 = [a1 meta];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x79726F6765746163, 0xE800000000000000), (v31 & 1) != 0))
  {
    v32 = (*(v29 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];

    v35 = MEMORY[0x1E12A1410](v33, v34);
  }

  else
  {

    v35 = 0;
  }

  [v26 setDialogCategory_];

  if (a4)
  {
    v36 = [a1 print];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v37[2])
    {
      v38 = v37[4];
      v39 = v37[5];

      v40 = MEMORY[0x1E12A1410](v38, v39);
    }

    else
    {

      v40 = 0;
    }

    [v26 setSpeakableText_];
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v42 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v43 = v41;
  v44 = [v42 init];
  v45 = [v44 UUIDString];

  if (!v45)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = MEMORY[0x1E12A1410](v46);
  }

  [v43 setAceId_];

  v47 = v43;
  v48 = MEMORY[0x1E12A1410](a2, a3);
  [v47 setRefId_];

  [v47 setDialogPhase_];
  [v47 setDisplayTarget_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DCA70640;
  *(v49 + 32) = v26;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v47 setViews_];

  return v47;
}

uint64_t PreExecutionDialogHandler.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PreExecutionDialogHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in PreExecutionDialogHandler.submitAddViews(addViews:requestId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

unint64_t lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext()
{
  result = lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext;
  if (!lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext);
  }

  return result;
}

SiriKitRuntime::PreExecutionRuleType __swiftcall ExecutionOverrideType.asPreExecutionType()()
{
  result = *v0;
  v2 = 1 << *v0;
  if ((v2 & 0x53) == 0)
  {
    if ((v2 & 0xAC) != 0)
    {
      v3 = *v0;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationBridge);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        *v7 = 136315650;
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2080;
        *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA85510, &v12);
        *(v7 + 22) = 2080;
        *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001DCA85540, &v12);
        _os_log_impl(&dword_1DC659000, v5, v6, "ExecutionOverrideType value of %s not expected; mapping to .none for PreExecutionRuleType. If you added a rule recently; make sure to explicitly update it's mapping value in %s.%s", v7, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v8, -1, -1);
        MEMORY[0x1E12A2F50](v7, -1, -1);
      }
    }

    return 7;
  }

  return result;
}

unint64_t PreExecutionRuleType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v1 = 0x5253417974706D65;
    if (a1 != 6)
    {
      v1 = 1701736302;
    }

    v2 = 0xD000000000000022;
    if (a1 != 4)
    {
      v2 = 0xD000000000000017;
    }

    v3 = a1 <= 5u;
  }

  else
  {
    v1 = 0xD000000000000023;
    if (a1 != 2)
    {
      v1 = 0xD000000000000022;
    }

    v2 = 0xD000000000000021;
    if (!a1)
    {
      v2 = 0xD000000000000016;
    }

    v3 = a1 <= 1u;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreExecutionRuleType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PreExecutionRuleType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PreExecutionRuleType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PreExecutionRuleType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionRuleType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PreExecutionRuleType()
{
  PreExecutionRuleType.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PreExecutionRuleType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionRuleType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExecutionRuleType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PreExecutionRuleType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExecutionRuleType@<X0>(unint64_t *a1@<X8>)
{
  result = PreExecutionRuleType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized PreExecutionRuleType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExecutionRuleType.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PreExecutionRuleType and conformance PreExecutionRuleType()
{
  result = lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType;
  if (!lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType);
  }

  return result;
}

uint64_t RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v120 = a2;
  v121 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v134 = v114 - v8;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v133 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for CamUSOParse();
  v138 = *(v132 - 8);
  v12 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13NLRouterParseVSgMd, &_s11SiriKitFlow13NLRouterParseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = v114 - v16;
  v17 = type metadata accessor for NLRouterParse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v144 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v119 = v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v118 = v114 - v26;
  v27 = type metadata accessor for Input();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v117 = v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CamParse();
  v123 = *(v30 - 8);
  v31 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v145 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v135 = v114 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v122 = v114 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v114 - v39;
  v148 = type metadata accessor for Parse();
  v146 = *(v148 - 8);
  v41 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v149 = (v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v116 = (v114 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v47 = v114 - v46;
  if (RankedAction.flowHandlerId.getter() == 0xD000000000000021 && 0x80000001DCA7CC80 == v48)
  {
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v49 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v50 = RankedAction.userData.getter();
  if (v50)
  {
    v51 = v50;
    v52 = v122;
    RankedAction.parse.getter();
    CamParse.asLinkParse(userData:)(v51, v40);

    (*(v123 + 8))(v52, v30);
    v53 = v146;
    v54 = v148;
    if ((*(v146 + 48))(v40, 1, v148) != 1)
    {
      (*(v53 + 32))(v47, v40, v54);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v115 = a1;
      v105 = type metadata accessor for Logger();
      __swift_project_value_buffer(v105, static Logger.executor);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_1DC659000, v106, v107, "Converting RankedAction to PluginAction with LinkParse", v108, 2u);
        MEMORY[0x1E12A2F50](v108, -1, -1);
      }

      v149 = RankedAction.flowHandlerId.getter();
      v109 = v148;
      (*(v53 + 16))(v116, v47, v148);
      v110 = v53;
      Input.init(parse:)();
      outlined init with copy of ActionParaphrase?(v120, v118);
      v111 = v115;
      v112 = v119;
      RankedAction.loggingId.getter();
      v113 = type metadata accessor for UUID();
      (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
      PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
      return (*(v110 + 8))(v47, v109);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

LABEL_8:
  v55 = RankedAction.userData.getter();
  if (v55)
  {
    v56 = v55;
    if (*(v55 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574756F526C6ELL, 0xE800000000000000), (v58 & 1) != 0))
    {
      outlined init with copy of Any(*(v56 + 56) + 32 * v57, &v150);

      v59 = v147;
      v60 = swift_dynamicCast();
      (*(v18 + 56))(v59, v60 ^ 1u, 1, v17);
      if ((*(v18 + 48))(v59, 1, v17) != 1)
      {
        (*(v18 + 32))(v144, v59, v17);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.executor);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v146;
        if (v64)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_1DC659000, v62, v63, "Converting RankedAction to PluginAction with NLRouterParse", v66, 2u);
          MEMORY[0x1E12A2F50](v66, -1, -1);
        }

        v149 = RankedAction.flowHandlerId.getter();
        v67 = v116;
        v68 = v144;
        (*(v18 + 16))(v116, v144, v17);
        (*(v65 + 104))(v67, *MEMORY[0x1E69D0180], v148);
        Input.init(parse:)();
        outlined init with copy of ActionParaphrase?(v120, v118);
        v69 = a1;
        v70 = v119;
        RankedAction.loggingId.getter();
        v71 = type metadata accessor for UUID();
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
        return (*(v18 + 8))(v68, v17);
      }
    }

    else
    {

      v59 = v147;
      (*(v18 + 56))(v147, 1, 1, v17);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s11SiriKitFlow13NLRouterParseVSgMd, &_s11SiriKitFlow13NLRouterParseVSgMR);
  }

  v73 = RankedAction.alternatives.getter();
  v74 = *(v73 + 16);
  if (v74)
  {
    v114[2] = v4;
    v115 = a1;
    v150 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
    v75 = v150;
    v143 = *(v123 + 16);
    v76 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v114[1] = v73;
    v77 = v73 + v76;
    v78 = *(v123 + 72);
    v141 = (v123 + 88);
    v142 = v78;
    v140 = *MEMORY[0x1E69CE300];
    v130 = *MEMORY[0x1E69CE2F8];
    v126 = *MEMORY[0x1E69CE308];
    v125 = *MEMORY[0x1E69D0178];
    v139 = (v146 + 104);
    v147 = (v123 + 8);
    v144 = (v123 + 16);
    v136 = (v123 + 96);
    v124 = *MEMORY[0x1E69D0138];
    v129 = (v138 + 32);
    v128 = (v138 + 8);
    v127 = *MEMORY[0x1E69D0168];
    v138 = v146 + 32;
    v79 = v145;
    v80 = v135;
    while (1)
    {
      v81 = v143;
      v143(v80, v77, v30);
      v81(v79, v80, v30);
      v82 = (*v141)(v79, v30);
      if (v82 == v140)
      {
        (*v136)(v79, v30);
        v83 = *v129;
        v84 = v131;
        v137 = v77;
        v85 = v132;
        v83(v131, v79, v132);
        CamUSOParse.userParse.getter();
        CamUSOParse.parserIdentifier.getter();
        CamUSOParse.appBundleId.getter();
        CamUSOParse.groupIndex.getter();
        v86 = v74;
        v87 = v75;
        v88 = v30;
        v89 = v149;
        v80 = v135;
        USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
        v90 = v85;
        v77 = v137;
        (*v128)(v84, v90);
        v91 = *v139;
        v92 = v89;
        v30 = v88;
        v75 = v87;
        v74 = v86;
        v93 = &v152 + 4;
      }

      else
      {
        if (v82 != v130)
        {
          v94 = v148;
          if (v82 == v126)
          {
            (*v139)(v149, v125, v148);
          }

          else
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v97 = type metadata accessor for Logger();
            __swift_project_value_buffer(v97, static Logger.executor);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              _os_log_impl(&dword_1DC659000, v98, v99, "Unknown CamParse type, defaulting to Parse.empty!", v100, 2u);
              MEMORY[0x1E12A2F50](v100, -1, -1);
            }

            v94 = v148;
            (*v139)(v149, v125, v148);
            (*v147)(v79, v30);
          }

          goto LABEL_26;
        }

        (*v136)(v79, v30);
        v92 = v149;
        *v149 = *v79;
        v91 = *v139;
        v93 = &v151;
      }

      v94 = v148;
      v91(v92, *(v93 - 64), v148);
LABEL_26:
      (*v147)(v80, v30);
      v150 = v75;
      v96 = *(v75 + 16);
      v95 = *(v75 + 24);
      if (v96 >= v95 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1);
        v94 = v148;
        v75 = v150;
      }

      *(v75 + 16) = v96 + 1;
      (*(v146 + 32))(v75 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v96, v149, v94);
      v77 += v142;
      --v74;
      v79 = v145;
      if (!v74)
      {

        a1 = v115;
        goto LABEL_38;
      }
    }
  }

LABEL_38:
  RankedAction.flowHandlerId.getter();
  v101 = v122;
  RankedAction.parse.getter();
  CamParse.asSKEParse()(v116);
  (*(v123 + 8))(v101, v30);
  Input.init(parse:alternatives:)();
  outlined init with copy of ActionParaphrase?(v120, v118);
  v102 = a1;
  v103 = v119;
  RankedAction.loggingId.getter();
  v104 = type metadata accessor for UUID();
  (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
  return PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
}

uint64_t static ReactiveUIEventActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void ReactiveUIEventActor.deliver(event:)(void *a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = *(v1 + 120);
    v5 = one-time initialization token for executor;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1DC659000, v8, v9, "[ReactiveEventActor] Dispatching  Event %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v2(v7);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v2);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v14, "[ReactiveEventActor] No registered handler", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }
}

uint64_t ReactiveUIEventActor.setHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "[ReactiveEventActor] setting new handler", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v10 = *(v3 + 112);
  v11 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v10);
}

uint64_t ReactiveUIEventActor.deinit()
{
  v1 = *(v0 + 120);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ReactiveUIEventActor.__deallocating_deinit()
{
  v1 = *(v0 + 120);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance ReactiveUIEventActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance ReactiveUIEventActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReactiveUIEventActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

SiriKitRuntime::ReaderAffinityScorer __swiftcall ReaderAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD50;
  v1 = 0xD00000000000001FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *ReaderAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static ReaderAffinityScorer.kAppBundleIdMatches;
}

uint64_t static ReaderAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }
}

uint64_t specialized ReaderAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v71 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v56 - v7;
  v66 = type metadata accessor for RREntity();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RRCandidate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 16);
  if (!v64)
  {
    return 0;
  }

  v63 = type metadata accessor for UsoEntity_common_App();
  v17 = 0;
  v19 = *(v13 + 16);
  v18 = v13 + 16;
  v62 = v19;
  v61 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v60 = *(v18 + 56);
  v59 = (v9 + 8);
  v72 = v3 + 16;
  v69 = (v3 + 8);
  v70 = (v3 + 32);
  v58 = (v18 - 8);
  v73 = v3;
  v57 = v12;
  v56[1] = v18;
  v56[0] = v16;
  v19(v16, v61, v12);
  while (1)
  {
    v20 = v65;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v59)(v20, v66);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v21 = v78;
    if (!v78)
    {
      (*v58)(v16, v12);
      goto LABEL_4;
    }

    v68 = v17;

    v22 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v67 = v21;

    v75 = *(v22 + 16);
    if (v75)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v16 = v56[0];
    v12 = v57;
    (*v58)(v56[0], v57);

    v55 = *(v25 + 16);

    v17 = v68;
    if (v55)
    {
      return 1;
    }

LABEL_4:
    if (++v17 == v64)
    {
      return 0;
    }

    v62(v16, v61 + v60 * v17, v12);
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v74 = v22;
  while (v24 < *(v22 + 16))
  {
    v77 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v76 = *(v3 + 72);
    v26 = v2;
    (*(v3 + 16))(v8, v22 + v77 + v76 * v24, v2);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v27 = static ReaderAffinityScorer.kAppBundleIdMatches;
    v28 = v8;
    v29 = UsoIdentifier.appBundleId.getter();
    v31 = v30;
    if (*(v27 + 16))
    {
      v32 = v29;
      v33 = *(v27 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = -1 << *(v27 + 32);
      v36 = v34 & ~v35;
      if ((*(v27 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        do
        {
          v38 = (*(v27 + 48) + 16 * v36);
          v39 = *v38 == v32 && v38[1] == v31;
          if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_33;
          }

          v36 = (v36 + 1) & v37;
        }

        while (((*(v27 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0);
      }
    }

    v40 = UsoIdentifier.value.getter();
    v42 = v41;
    if (*(v27 + 16))
    {
      v43 = v40;
      v44 = *(v27 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v45 = Hasher._finalize()();
      v46 = -1 << *(v27 + 32);
      v47 = v45 & ~v46;
      if ((*(v27 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        v48 = ~v46;
        while (1)
        {
          v49 = (*(v27 + 48) + 16 * v47);
          v50 = *v49 == v43 && v49[1] == v42;
          if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v47 = (v47 + 1) & v48;
          if (((*(v27 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

LABEL_33:

        v51 = *v70;
        v8 = v28;
        v2 = v26;
        (*v70)(v71, v28, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
          v25 = v79;
        }

        v22 = v74;
        v54 = *(v25 + 16);
        v53 = *(v25 + 24);
        if (v54 >= v53 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1);
          v25 = v79;
        }

        *(v25 + 16) = v54 + 1;
        result = v51((v25 + v77 + v54 * v76), v71, v26);
        goto LABEL_10;
      }
    }

LABEL_9:

    v8 = v28;
    v2 = v26;
    result = (*v69)(v28, v26);
    v22 = v74;
LABEL_10:
    ++v24;
    v3 = v73;
    if (v24 == v75)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized ReaderAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v143 = type metadata accessor for RREntity();
  v127 = *(v143 - 8);
  v2 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  v146 = v4;
  v147 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v125 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v144 = v121 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v126 = v121 - v11;
  v145 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v141 = *(v145 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v140 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v130 = *(v131 - 8);
  v14 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nlu_External_UserParse();
  v137 = *(v21 - 8);
  v138 = v21;
  v22 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v136 = v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v135 = v121 - v26;
  v134 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v133 = *(v134 - 8);
  v27 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v128 = v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = v121 - v30;
  v31 = type metadata accessor for USOParse();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Parse();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v37 + 88))(v40, v36) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor == -1)
    {
LABEL_10:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.executor);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1DC659000, v56, v57, "ReaderAffinityScorer received an unexpected parse", v58, 2u);
        MEMORY[0x1E12A2F50](v58, -1, -1);
      }

      (*(v37 + 8))(v40, v36);
      return 2;
    }

LABEL_85:
    swift_once();
    goto LABEL_10;
  }

  (*(v37 + 96))(v40, v36);
  (*(v32 + 32))(v35, v40, v31);
  v41 = specialized static AffinityScorerUtils.getTask(_:)();
  if (v41)
  {
    v42 = v41;
    v123 = v35;
    v148 = UsoTask.verbString.getter();
    v149 = v43;
    MEMORY[0x1E12A1580](14906, 0xE200000000000000);
    v121[1] = v42;
    v44 = UsoTask.baseEntityAsString.getter();
    MEMORY[0x1E12A1580](v44);

    v40 = v148;
    v45 = v149;
    if (v148 == 0xD000000000000012 && 0x80000001DCA855B0 == v149 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v46 = v31;
      if (one-time initialization token for executor != -1)
      {
LABEL_88:
        swift_once();
      }

      v122 = v32;
      v47 = type metadata accessor for Logger();
      v48 = __swift_project_value_buffer(v47, static Logger.executor);

      v121[0] = v48;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      v51 = os_log_type_enabled(v49, v50);
      v124 = v46;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v148 = v53;
        *v52 = 136315138;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v45, &v148);

        *(v52 + 4) = v40;
        _os_log_impl(&dword_1DC659000, v49, v50, "ReaderAffinityScorer found %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1E12A2F50](v53, -1, -1);
        v54 = v52;
        v46 = v124;
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      else
      {
      }

      v64 = v136;
      v65 = USOParse.userParse.getter();
      v36 = MEMORY[0x1E129C0F0](v65);
      (*(v137 + 8))(v64, v138);
      v32 = *(v36 + 16);
      if (v32)
      {
        v37 = 0;
        v40 = v17 + 8;
        while (v37 < *(v36 + 16))
        {
          (*(v17 + 16))(v20, v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37, v16);
          if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
          {

            v67 = v135;
            (*(v17 + 32))(v135, v20, v16);
            v66 = 0;
            goto LABEL_29;
          }

          ++v37;
          (*v40)(v20, v16);
          if (v32 == v37)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

LABEL_24:

      v66 = 1;
      v67 = v135;
LABEL_29:
      (*(v17 + 56))(v67, v66, 1, v16);
      if ((*(v17 + 48))(v67, 1, v16) == 1)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v67);
      }

      else
      {
        v45 = v129;
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        v68 = *(v17 + 8);
        v17 += 8;
        v68(v67, v16);
        v69 = v128;
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*(v130 + 8))(v45, v131);
        (*(v133 + 32))(v132, v69, v134);
        v70 = Siri_Nlu_External_UsoGraph.identifiers.getter();
        v16 = v70;
        v71 = *(v70 + 16);
        if (v71)
        {
          v17 = 0;
          v72 = v140;
          v138 = v70 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v137 = v141 + 16;
          v20 = v141 + 8;
          while (1)
          {
            if (v17 >= *(v16 + 16))
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            (*(v141 + 16))(v72, v138 + *(v141 + 72) * v17, v145);
            if (one-time initialization token for kAppBundleIdMatches != -1)
            {
              swift_once();
            }

            v45 = static ReaderAffinityScorer.kAppBundleIdMatches;
            v73 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
            v32 = v74;
            if (*(v45 + 16))
            {
              v75 = v73;
              v76 = *(v45 + 40);
              Hasher.init(_seed:)();
              String.hash(into:)();
              v77 = Hasher._finalize()();
              v78 = -1 << *(v45 + 32);
              v40 = v77 & ~v78;
              if ((*(v45 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
              {
                break;
              }
            }

LABEL_33:
            ++v17;
            v72 = v140;
            (*v20)(v140, v145);

            v46 = v124;
            if (v17 == v71)
            {
              goto LABEL_50;
            }
          }

          v79 = ~v78;
          while (1)
          {
            v80 = (*(v45 + 48) + 16 * v40);
            v81 = *v80 == v75 && v80[1] == v32;
            if (v81 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v40 = (v40 + 1) & v79;
            if (((*(v45 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          (*v20)(v140, v145);

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_1DC659000, v82, v83, "ReaderAffinityScorer found matching identifier", v84, 2u);
            MEMORY[0x1E12A2F50](v84, -1, -1);
          }

          (*(v133 + 8))(v132, v134);
          goto LABEL_74;
        }

LABEL_50:

        (*(v133 + 8))(v132, v134);
      }

      v32 = v122;
      v85 = v146;
      SiriEnvironment.salientEntitiesProvider.getter();
      v45 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v138 = *(v45 + 16);
      if (v138)
      {
        v40 = 0;
        v140 = (v45 + ((*(v147 + 80) + 32) & ~*(v147 + 80)));
        v145 = v147 + 16;
        v16 = v127 + 8;
        v141 = v147 + 8;
        v86 = v144;
        while (1)
        {
          if (v40 >= *(v45 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v87 = *(v147 + 16);
          v87(v86, &v140[*(v147 + 72) * v40], v85);
          if (one-time initialization token for kAppBundleIdMatches != -1)
          {
            swift_once();
          }

          v88 = static ReaderAffinityScorer.kAppBundleIdMatches;
          v17 = v142;
          RRCandidate.entity.getter();
          v89 = RREntity.appBundleId.getter();
          v91 = v90;
          (*v16)(v17, v143);
          if (*(v88 + 16))
          {
            v92 = *(v88 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v93 = Hasher._finalize()();
            v94 = -1 << *(v88 + 32);
            v17 = v93 & ~v94;
            if ((*(v88 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              break;
            }
          }

LABEL_53:
          ++v40;
          v86 = v144;
          v85 = v146;
          (*v141)(v144, v146);

          v32 = v122;
          v46 = v124;
          if (v40 == v138)
          {
            goto LABEL_69;
          }
        }

        v20 = ~v94;
        while (1)
        {
          v95 = (*(v88 + 48) + 16 * v17);
          v96 = *v95 == v89 && v95[1] == v91;
          if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v20;
          if (((*(v88 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v97 = v146;
        v98 = v126;
        (*(v147 + 32))(v126, v144, v146);
        v99 = v125;
        v87(v125, v98, v97);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v148 = v103;
          *v102 = 136315138;
          lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate();
          v104 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v99;
          v107 = v106;
          v108 = *v141;
          (*v141)(v105, v97);
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v107, &v148);

          *(v102 + 4) = v109;
          _os_log_impl(&dword_1DC659000, v100, v101, "ReaderAffinityScorer found salient reader entity %s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          MEMORY[0x1E12A2F50](v103, -1, -1);
          MEMORY[0x1E12A2F50](v102, -1, -1);

          v108(v98, v97);
        }

        else
        {

          v115 = *v141;
          (*v141)(v99, v97);
          v115(v98, v97);
        }

LABEL_74:
        (*(v122 + 8))(v123, v124);
        return 3;
      }

LABEL_69:

      SiriEnvironment.salientEntitiesProvider.getter();
      v110 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v111 = specialized ReaderAffinityScorer.supportedAppIsOnScreen(with:)(v110);

      if (v111)
      {
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_1DC659000, v112, v113, "ReaderAffinityScorer found commonApp entity with Safari bundle ID", v114, 2u);
          MEMORY[0x1E12A2F50](v114, -1, -1);
        }

        (*(v32 + 8))(v123, v46);
        return 3;
      }

      (*(v32 + 8))(v123, v46);

      return 1;
    }

    if (v40 == 0xD000000000000016 && 0x80000001DCA855D0 == v45)
    {
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        __swift_project_value_buffer(v117, static Logger.executor);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1DC659000, v118, v119, "ReaderAffinityScorer could not find a supported parse or identifiers", v120, 2u);
          MEMORY[0x1E12A2F50](v120, -1, -1);
        }

        (*(v32 + 8))(v123, v31);
        return 1;
      }
    }

    (*(v32 + 8))(v123, v31);

    return 3;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.executor);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1DC659000, v61, v62, "ReaderAffinityScorer could not extract usoTask from parse", v63, 2u);
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  (*(v32 + 8))(v35, v31);
  return 0;
}

unint64_t lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate()
{
  result = lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate;
  if (!lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate)
  {
    type metadata accessor for RRCandidate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate);
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1E12A1FE0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t SiriEnvironment.recentDialogs.getter()
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider, v0, type metadata accessor for RecentDialogsEnvironmentProvider);

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t RecentDialogTracker.__allocating_init(timeProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  RecentDialogTracker.init(timeProvider:)(a1, a2);
  return v7;
}

uint64_t RecentDialogTracker.init(timeProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 0;
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs) = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DC659000, v10, v11, "RecentDialogTracker initalized", v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v13 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider);
  *v13 = a1;
  v13[1] = a2;
  return v3;
}

void RecentDialogTracker.maybeMemorizeDialog(command:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DialogPhase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - v16;
  RecentDialogTracker.filterExpired()();
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v66 = v4;
  v20 = a1;
  v67 = v19;
  v68 = v20;
  v21 = [v19 dialogPhase];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  DialogPhase.init(aceValue:)();
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
LABEL_8:
    if (one-time initialization token for conversationBridge != -1)
    {
LABEL_48:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.conversationBridge);
    v26 = v68;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v70 = v30;
      *v29 = 136315138;
      v31 = [v67 dialogPhase];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v35 = 0xE300000000000000;
        v33 = 7104878;
      }

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v70);

      *(v29 + 4) = v59;
      _os_log_impl(&dword_1DC659000, v27, v28, "RecentDialogTracker: ignoring dialog in phase %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E12A2F50](v30, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    else
    {
    }

    return;
  }

  static DialogPhase.reflection.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v13, v9);
  v24(v17, v9);
  if (v23)
  {
    goto LABEL_8;
  }

  if (!*(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.conversationBridge);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1DC659000, v61, v62, "RecentDialogTracker: currentRequestId is not set when maybeMemorizeDialog is called", v63, 2u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    return;
  }

  v36 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
  v37 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  v38 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);

  swift_beginAccess();
  while (1)
  {
    v39 = *(v2 + v37);
    if (v39 >> 62)
    {
      if (v39 < 0)
      {
        v45 = *(v2 + v37);
      }

      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_32;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v40 = *(v2 + v37);
    if (v40 >> 62)
    {
      break;
    }

    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_19:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + v37) = v40;
    if (v40 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    }

    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      __break(1u);
      goto LABEL_48;
    }

    v43 = v42 - 1;
    v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v43 + 0x20);
    *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) = v43;
    *(v2 + v37) = v40;
    swift_endAccess();
  }

  if (v40 < 0)
  {
    v46 = *(v2 + v37);
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v48 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider);
  v47 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider + 8);
  v49 = v68;
  v48();
  static Date.+ infix(_:_:)();
  (*(v69 + 8))(v7, v66);
  v50 = objc_allocWithZone(type metadata accessor for RecentDialog());
  v51 = RecentDialog.init(addViews:expiresAt:requestId:)();
  swift_beginAccess();
  v52 = *(v2 + v37);
  if (!(v52 >> 62))
  {
    goto LABEL_33;
  }

  if (v52 < 0)
  {
    v64 = *(v2 + v37);
  }

  if (__CocoaSet.count.getter() < 0)
  {
    __break(1u);
LABEL_53:
    swift_once();
  }

  else
  {
LABEL_33:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v51);
    swift_endAccess();

    *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 1;
    RecentDialogTracker.updateSiriEnvironment()();
    if (one-time initialization token for conversationBridge != -1)
    {
      goto LABEL_53;
    }
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.conversationBridge);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    v57 = *(v2 + v37);
    if (v57 >> 62)
    {
      if (v57 < 0)
      {
        v65 = *(v2 + v37);
      }

      v58 = __CocoaSet.count.getter();
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 4) = v58;

    _os_log_impl(&dword_1DC659000, v54, v55, "RecentDialogTracker: memorized the last dialog, got %ld in total.", v56, 0xCu);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall DialogPhase.shouldTrack()()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DialogPhase.reflection.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40]);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t RecentDialogTracker.getRecentDialogs()()
{
  v1 = v0;
  RecentDialogTracker.filterExpired()();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v12 = *(v1 + v6);
      }

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_1DC659000, v3, v4, "RecentDialogTracker: returning %ld recent dialogs.", v5, 0xCu);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v10 = *(v1 + v9);
}

uint64_t RecentDialogTracker.filterExpired()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider);
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider + 8);
  v8(v5);
  v10 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v30 = v7;

  v12 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in RecentDialogTracker.filterExpired(), v29, v11);
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = *(v1 + v10);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v25 = *(v1 + v10);
    }

    if (v15 >= __CocoaSet.count.getter())
    {
      goto LABEL_23;
    }
  }

  else if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v28 = *(v1 + v10);
    *(v1 + v10) = v13;

    RecentDialogTracker.updateSiriEnvironment()();
    return (*(v3 + 8))(v7, v2);
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_23;
  }

  v20 = swift_slowAlloc();
  *v20 = 134217984;
  v21 = *(v1 + v10);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v26 = *(v1 + v10);
    }

    v22 = __CocoaSet.count.getter();
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
LABEL_10:
      result = *(v23 + 16);
      goto LABEL_21;
    }
  }

  v27 = v22;
  result = __CocoaSet.count.getter();
  v22 = v27;
LABEL_21:
  if (!__OFSUB__(v22, result))
  {
    *(v20 + 4) = v22 - result;

    _os_log_impl(&dword_1DC659000, v18, v19, "RecentDialogTracker: removed %ld expired dialog(s)", v20, 0xCu);
    MEMORY[0x1E12A2F50](v20, -1, -1);

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RecentDialogTracker.filterExpired()(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  RecentDialog.expiresAt.getter();
  LOBYTE(v7) = static Date.> infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

Swift::Bool __swiftcall DialogPhase.canBeReplayed()()
{
  v1 = v0;
  v2 = type metadata accessor for DialogPhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v3 + 16))(&v14 - v8, v1, v2);
  static DialogPhase.summary.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    static DialogPhase.completion.getter();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, v2);
  }

  v11(v9, v2);
  return v12 & 1;
}

uint64_t RecentDialogTracker.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider + 8);

  return v0;
}

uint64_t RecentDialogTracker.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RecentDialogsEnvironmentProvider.__allocating_init(storage:)()
{

  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.init(storage:)()
{

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RecentDialogsEnvironmentProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for RecentDialogTracker()
{
  result = type metadata singleton initialization cache for RecentDialogTracker;
  if (!type metadata singleton initialization cache for RecentDialogTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RecentDialogTracker()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = specialized RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(a1, a2, v13, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

uint64_t RemoteConversationClient.identifier.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t key path setter for RemoteConversationClient.currentRcId : RemoteConversationClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 176);
  *(v4 + 168) = v3;
  *(v4 + 176) = v2;
}

uint64_t RemoteConversationClient.currentRcId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t RemoteConversationClient.currentRcId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 176);
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t RemoteConversationClient.init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  outlined init with take of NSExtensionProtocol(a3, v3 + 128);
  return v3;
}

uint64_t RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.warmup(refId:), v2, 0);
}

uint64_t RemoteConversationClient.warmup(refId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)();
  v5 = v2[19];
  v6 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v5);
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(v6 + 16);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = specialized FlowExtensionConversationHandler.warmup(refId:);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return (v13)(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v11, v5, v6);
}

uint64_t closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.warmup(refId:)()
{
  v17 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 48);
    v15 = *(v0 + 32);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v15;
    *(v3 + 40) = v2;
    v4 = *(MEMORY[0x1E69E88D0] + 4);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.warmup(refId:);
    v6 = *(v0 + 16);
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x722870756D726177, 0xEE00293A64496665, partial apply for closure #1 in closure #1 in RemoteConversationClient.warmup(refId:), v3, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x722870756D726177, 0xEE00293A64496665, &v16);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = aBlock - v13;
  v15 = MEMORY[0x1E12A1410](a4, a5, v12);
  (*(v10 + 16))(v14, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.reset();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_214;
  v18 = _Block_copy(aBlock);

  [a2 warmupWithRefId:v15 reply:v18];
  _Block_release(v18);
}

uint64_t RemoteConversationClient.cancel(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.cancel(_:), v1, 0);
}

uint64_t RemoteConversationClient.cancel(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)();
  v4 = v1[19];
  v5 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v4);
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = v2;
  v7 = *(v5 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = RemoteConversationClient.cancel(_:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return (v12)(v0 + 6, &async function pointer to partial apply for closure #1 in RemoteConversationClient.cancel(_:), v6, v10, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {

    v7 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.cancel(_:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.cancel(_:)()
{
  v17 = v0;
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_task_alloc();
    v0[6] = v4;
    v4[2] = v1;
    v4[3] = v3;
    v4[4] = v2;
    v5 = *(MEMORY[0x1E69E88D0] + 4);
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = closure #1 in RemoteConversationClient.cancel(_:);
    v7 = v0[2];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0x5F286C65636E6163, 0xEA0000000000293ALL, partial apply for closure #1 in closure #1 in RemoteConversationClient.cancel(_:), v4, v8);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5F286C65636E6163, 0xEA0000000000293ALL, &v16);
      _os_log_impl(&dword_1DC659000, v10, v11, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.reset();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_207;
  v15 = _Block_copy(aBlock);

  [a2 cancelWithCancellationReason:a4 reply:v15];
  _Block_release(v15);
}

uint64_t RemoteConversationClient.ensureReady()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.ensureReady(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = RemoteConversationClient.ensureReady();
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 40, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = RemoteConversationClient.ensureReady();
  }

  else
  {
    v6 = RemoteConversationClient.ensureReady();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1DC659000, v5, v6, "Error calling startTurn: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for UserInputResult();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Input();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.accept(input:speechData:), v3, 0);
}

uint64_t RemoteConversationClient.accept(input:speechData:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v7, static Logger.executor);
  Logger.debugF(file:function:)();
  v9 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v8 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8];
  swift_beginAccess();
  v10 = v5[22];
  v5[21] = v9;
  v5[22] = v8;

  v11 = v5[19];
  v12 = v5[20];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v11);
  (*(v3 + 16))(v1, v6, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v0[16] = v14;
  (*(v3 + 32))(v14 + v13, v1, v2);
  *(v14 + ((v23 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v15 = *(v12 + 8);
  v16 = v4;
  v22 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = RemoteConversationClient.accept(input:speechData:);
  v19 = v0[9];
  v20 = v0[5];

  return v22(v20, &async function pointer to partial apply for closure #1 in RemoteConversationClient.accept(input:speechData:), v14, v19, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = RemoteConversationClient.accept(input:speechData:);
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 64);

    v5 = RemoteConversationClient.accept(input:speechData:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Input();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.accept(input:speechData:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.accept(input:speechData:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v16 = *(v0 + 24);
  (*(v4 + 16))(v1, *(v0 + 40), v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v16;
  *(v8 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)) = v5;
  swift_unknownObjectRetain();
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:);
  *(v10 + 24) = v8;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  v13 = type metadata accessor for UserInputResult();
  *v12 = v0;
  v12[1] = closure #1 in RemoteConversationClient.accept(input:speechData:);
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v10, v13);
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.accept(input:speechData:), 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[12];
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }
}

uint64_t RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.prepare(bridge:), v2, 0);
}

uint64_t RemoteConversationClient.prepare(bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  v9 = *(v0 + 16);
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v9;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = RemoteConversationClient.prepare(bridge:);

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);

    v5 = RemoteConversationClient.ensureReady();
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t RemoteConversationClient.paraphrase()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.paraphrase(), v1, 0);
}

uint64_t RemoteConversationClient.paraphrase()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 8);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  v8 = type metadata accessor for ConversationParaphraseResult(0);
  *v7 = v0;
  v7[1] = UndoCommand.execute();
  v9 = v0[2];

  return (v11)(v9, &async function pointer to closure #1 in RemoteConversationClient.paraphrase(), 0, v8, v3, v4);
}

uint64_t closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.paraphrase(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.paraphrase()()
{
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.paraphrase();
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ConversationParaphraseResult(0);
  *v4 = v0;
  v4[1] = closure #1 in RemoteConversationClient.paraphrase();
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v2, v5);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.paraphrase(), 0, 0);
  }

  else
  {
    v4 = v3[5];
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

void closure #1 in closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMd, &_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.paraphrase();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_127;
  v12 = _Block_copy(aBlock);

  [a2 paraphraseWithReply_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for ConversationParaphraseResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8);
  if (v10)
  {
    *v9 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg);
    v9[1] = v10;
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v5, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v11 = type metadata accessor for ActionParaphrase();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v5, 1, v11) == 1)
    {
      static ActionParaphrase.noParaphrase()();
      if (v13(v5, 1, v11) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      }
    }

    else
    {
      (*(v12 + 32))(v9, v5, v11);
    }
  }

  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMd, &_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.commit(bridge:), v3, 0);
}

uint64_t RemoteConversationClient.commit(bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  v12 = *(v0 + 24);
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = v12;
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = type metadata accessor for ConversationCommitResult();
  *v8 = v0;
  v8[1] = RemoteConversationClient.commit(bridge:);
  v10 = *(v0 + 16);

  return v13(v10, &async function pointer to partial apply for closure #1 in RemoteConversationClient.commit(bridge:), v5, v9, v3, v4);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t closure #1 in RemoteConversationClient.drainAsyncWork()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.drainAsyncWork(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.drainAsyncWork()()
{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x1E69E88D0] + 4);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.reset();
    v6 = v0[2];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000010, 0x80000001DCA81470, partial apply for closure #1 in closure #1 in RemoteConversationClient.drainAsyncWork(), v3, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA81470, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.flexibleExecutionSupportOptions(), v1, 0);
}

uint64_t RemoteConversationClient.flexibleExecutionSupportOptions()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = type metadata accessor for FlexibleExecutionSupportOptions();
  v0[8] = v8;
  *v7 = v0;
  v7[1] = RemoteConversationClient.flexibleExecutionSupportOptions();
  v9 = v0[5];

  return (v11)(v9, &async function pointer to closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  else
  {
    v6 = RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[4];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[5], v2, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 48))(v2, 1, v1);
  v5 = v0[4];
  if (v4 == 1)
  {
    v6 = v0[6];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[4], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v21);
      _os_log_impl(&dword_1DC659000, v7, v8, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[5];
    v13 = v0[2];
    v14 = __swift_project_value_buffer(v11, static FlexibleExecutionSupportOptions.none);
    (*(v3 + 16))(v13, v14, v11);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  else
  {
    v15 = v0[8];
    v16 = v0[2];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[5], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    (*(v3 + 32))(v16, v5, v15);
  }

  v18 = v0[4];
  v17 = v0[5];

  v19 = v0[1];

  return v19();
}

{
  v22 = v0;
  (*(*(v0[8] - 8) + 56))(v0[5], 1, 1);
  v1 = v0[8];
  v2 = v0[4];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[5], v2, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 48))(v2, 1, v1);
  v5 = v0[4];
  if (v4 == 1)
  {
    v6 = v0[6];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[4], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v21);
      _os_log_impl(&dword_1DC659000, v7, v8, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[5];
    v13 = v0[2];
    v14 = __swift_project_value_buffer(v11, static FlexibleExecutionSupportOptions.none);
    (*(v3 + 16))(v13, v14, v11);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  else
  {
    v15 = v0[8];
    v16 = v0[2];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[5], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    (*(v3 + 32))(v16, v5, v15);
  }

  v18 = v0[4];
  v17 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()()
{
  v20 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain_n();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *(v4 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    v7 = type metadata accessor for FlexibleExecutionSupportOptions();
    *v6 = v0;
    v6[1] = closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
    v8 = v0[2];

    return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v4, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v19);
      _os_log_impl(&dword_1DC659000, v10, v11, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v14 = v0[2];
    v15 = type metadata accessor for FlexibleExecutionSupportOptions();
    v16 = __swift_project_value_buffer(v15, static FlexibleExecutionSupportOptions.none);
    (*(*(v15 - 8) + 16))(v14, v16, v15);
    v17 = v0[1];

    return v17();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = closure #1 in RemoteConversationClient.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMd, &_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_91;
  v12 = _Block_copy(aBlock);

  [a2 flexibleExecutionSupportOptionsWithReply_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(void *a1)
{
  v2 = type metadata accessor for FlexibleExecutionSupportOptions();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMd, &_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RemoteConversationClient.isCorrectable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.isCorrectable(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = RemoteConversationClient.isCorrectable();
  v8 = MEMORY[0x1E69E6370];

  return (v10)(v0 + 5, &async function pointer to closure #1 in RemoteConversationClient.isCorrectable(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = RemoteConversationClient.isCorrectable();
  }

  else
  {
    v6 = RemoteConversationClient.isCorrectable();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v10 = v0;
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v9);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    LOBYTE(v1) = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1 & 1);
}

{
  v9 = v0;
  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t closure #1 in RemoteConversationClient.isCorrectable()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.isCorrectable(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.isCorrectable()()
{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x1E69E88D0] + 4);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.reset();
    v6 = v0[2];
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x636572726F437369, 0xEF2928656C626174, partial apply for closure #1 in closure #1 in RemoteConversationClient.isCorrectable(), v3, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    *v0[2] = 0;
    v13 = v0[1];

    return v13();
  }
}

uint64_t RemoteConversationClient.invalidate()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.invalidate(), v0, 0);
}

{
  v1 = v0[5];
  v2 = v1[19];
  v0[6] = v2;
  v3 = v1[20];
  v0[7] = v3;
  v0[8] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v5 = *(v3 + 24);
  v4 = v3 + 24;
  v0[9] = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[10] = v4 & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.invalidate(), v6, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = (*(v0 + 72))(*(v0 + 48), *(v0 + 56));
  v4 = *(v0 + 8);
  v5 = v3 & 1;

  return v4(v5);
}

uint64_t RemoteConversationClient.description.getter()
{
  _StringGuts.grow(_:)(17);

  strcpy(v2, "FlowExtension(");
  HIBYTE(v2[1]) = -18;
  MEMORY[0x1E12A1580](*(v0 + 112), *(v0 + 120));
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v2[0];
}

uint64_t static RemoteConversationClient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t RemoteConversationClient.hash(into:)()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return String.hash(into:)();
}

void RemoteConversationClient.hashValue.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  JUMPOUT(0x1E12A15C0);
}

void *RemoteConversationClient.deinit()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = v0[22];

  swift_defaultActor_destroy();
  return v0;
}

void protocol witness for Hashable.hashValue.getter in conformance RemoteConversationClient()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  JUMPOUT(0x1E12A15C0);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RemoteConversationClient()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteConversationClient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteConversationClient()
{
  v1 = *v0;
  _StringGuts.grow(_:)(17);

  strcpy(v3, "FlowExtension(");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1E12A1580](*(v1 + 112), *(v1 + 120));
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v3[0];
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RemoteConversationClient(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 112) == *(*a2 + 112) && *(*a1 + 120) == *(*a2 + 120))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  type metadata accessor for RemoteConversationClient();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 2;
  *(v11 + 112) = a1;
  *(v11 + 120) = a2;
  outlined init with take of NSExtensionProtocol(v13, v11 + 128);
  return v11;
}

uint64_t partial apply for closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for Input() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.accept(input:speechData:)(a1, a2, a3, v3 + v9, v10);
}

uint64_t dispatch thunk of RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of RemoteConversationClient.cancel(_:)(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.reset()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.ensureReady()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 240);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of RemoteConversationClient.paraphrase()(uint64_t a1)
{
  v4 = *(*v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 264);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.isEmpty()()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.drainAsyncWork()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1)
{
  v4 = *(*v1 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.isCorrectable()()
{
  v2 = *(*v0 + 296);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.invalidate()()
{
  v2 = *(*v0 + 304);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of RemoteConversationClient.invalidate();

  return v6();
}

uint64_t dispatch thunk of RemoteConversationClient.invalidate()(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1 & 1);
}

uint64_t objectdestroy_107Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

Swift::Int RemoteConversationConnectionInvalidationResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult()
{
  result = lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult;
  if (!lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult);
  }

  return result;
}

uint64_t dispatch thunk of RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF14SiriKitRuntime24RemoteConversationClientCSg_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v22 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

void *RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[3];
  v13 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v15, a2, a3, v18, a5, a6, a7, a8, a9, v23, v14, v17, v13, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t RemoteConversationService.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  Logger.debugF(file:function:)();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = static ConversationActor.shared;
  v19 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v17, type metadata accessor for ConversationActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v5;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:), v20);
}

uint64_t RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  outlined copy of Data._Representation(a1, a2);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static ConversationActor.shared;
  v22 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v20, type metadata accessor for ConversationActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a5;
  v23[7] = a6;
  v24 = v27;
  v23[8] = v7;
  v23[9] = v24;
  v23[10] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v23);
}

uint64_t RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  Logger.debugF(file:function:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;
  v18 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v16, type metadata accessor for ConversationActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v4;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a1;
  v19[8] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v19);
}

uint64_t RemoteConversationService.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = one-time initialization token for shared;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static ConversationActor.shared;
  v20 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v18, type metadata accessor for ConversationActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v8;
  v21[5] = a1;
  v21[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, a6, v21);
}

uint64_t RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  outlined copy of Data._Representation(a1, a2);
  v18 = one-time initialization token for shared;

  v20 = a3;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = static ConversationActor.shared;
  v22 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = v6;
  v23[9] = v20;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v23);
}

uint64_t RemoteConversationService.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v9;
  v22[5] = a2;
  v22[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a7, v22);
}

uint64_t RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = one-time initialization token for shared;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v11, type metadata accessor for ConversationActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:), v14);
}

uint64_t ConversationActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static ConversationActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ConversationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance ConversationActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance ConversationActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConversationActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t one-time initialization function for ensureReadyTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static RemoteConversationService.ensureReadyTimeout);
  *__swift_project_value_buffer(v0, static RemoteConversationService.ensureReadyTimeout) = 500;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t RemoteConversationService.turnDataProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider + 8);

  return v1;
}

void *RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a6;
  v33 = a2;
  v34 = a3;
  v14 = a1[3];
  v31 = a1[4];
  v32 = a9;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = a4[3];
  v22 = a4[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v24 = *(*(v21 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v19, v33, v34, v27, a5, v36, a7, a8, v32, v35, v14, v21, v31, v22);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v29;
}

uint64_t closure #1 in RemoteConversationService.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.warmup(refId:reply:), v9, 0);
}

uint64_t closure #1 in RemoteConversationService.warmup(refId:reply:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v7 = dispatch thunk of FlowPlugin.warmup(refId:)();
  v2(v7);
  v8 = v0[1];

  return v8();
}

uint64_t RemoteConversationService.FlowAndInputRegistry.register(flow:input:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v13 + 16))(v16, a4, v12);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  v20 = type metadata accessor for Input();
  (*(*(v20 - 8) + 16))(v11, a2, v20);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v11[v18]);
  *&v11[v19] = a3;
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v11, v16);
  return swift_endAccess();
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v13 + 16))(v16, a4, v12);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  v20 = type metadata accessor for Input();
  (*(*(v20 - 8) + 16))(v11, a2, v20);
  *&v11[v18] = a1;
  *&v11[v19] = a3;
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v11, v16);
  return swift_endAccess();
}

uint64_t closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v9 = type metadata accessor for RemoteConversationService.State(0);
  v7[20] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v11, 0);
}

uint64_t closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)()
{
  v30 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 120);
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 168) + 40), v0 + 16);
      v7 = v6[9];
      SiriKitRuntimeState.invalidateCurrentTurn()();
      v8 = *(v0 + 144);
      v9 = v6[7] == 0xD000000000000016 && 0x80000001DCA86060 == v6[8];
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v8 == 4)
      {
        v10 = *(v0 + 152);
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
        outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v12 + 32);
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v12);

        outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
      }

      v13 = *(v0 + 168);
      v15 = *(v0 + 128);
      v14 = *(v0 + 136);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      v15();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      outlined destroy of RemoteConversationService.State(v13 + v16, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      goto LABEL_17;
    }
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = v17[10];

    outlined destroy of ReferenceResolutionClientProtocol?((v17 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA85980, &v29);
    _os_log_impl(&dword_1DC659000, v20, v21, "No conversation is active, ignoring %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v24 = *(v0 + 136);
  (*(v0 + 128))();
LABEL_17:
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = one-time initialization token for shared;

  swift_unknownObjectRetain();

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v6;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v22);
}

uint64_t RemoteConversationService.FlowAndInputRegistry.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = v1;
  return result;
}

uint64_t closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[127] = v44;
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  v9 = type metadata accessor for DispatchTimeInterval();
  v8[128] = v9;
  v10 = *(v9 - 8);
  v8[129] = v10;
  v11 = *(v10 + 64) + 15;
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  v8[133] = v12;
  v13 = *(v12 - 8);
  v8[134] = v13;
  v14 = *(v13 + 64) + 15;
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = swift_task_alloc();
  v8[138] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
  v8[139] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[140] = swift_task_alloc();
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR) - 8) + 64) + 15;
  v8[143] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR) - 8) + 64) + 15;
  v8[144] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMR);
  v8[145] = v19;
  v20 = *(v19 - 8);
  v8[146] = v20;
  v21 = *(v20 + 64) + 15;
  v8[147] = swift_task_alloc();
  v22 = type metadata accessor for FlowTraceEvent();
  v8[148] = v22;
  v23 = *(v22 - 8);
  v8[149] = v23;
  v24 = *(v23 + 64) + 15;
  v8[150] = swift_task_alloc();
  v25 = type metadata accessor for UUID();
  v8[151] = v25;
  v26 = *(v25 - 8);
  v8[152] = v26;
  v27 = *(v26 + 64) + 15;
  v8[153] = swift_task_alloc();
  v28 = type metadata accessor for FlowSearchResult();
  v8[154] = v28;
  v29 = *(v28 - 8);
  v8[155] = v29;
  v30 = *(v29 + 64) + 15;
  v8[156] = swift_task_alloc();
  v31 = type metadata accessor for FlexibleExecutionSupportOptions();
  v8[157] = v31;
  v32 = *(v31 - 8);
  v8[158] = v32;
  v33 = *(v32 + 64) + 15;
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  v8[161] = swift_task_alloc();
  v34 = type metadata accessor for SiriRequest(0);
  v8[162] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v8[163] = swift_task_alloc();
  v8[164] = swift_task_alloc();
  v36 = type metadata accessor for RemoteConversationService.State(0);
  v8[165] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v8[166] = swift_task_alloc();
  v38 = type metadata accessor for Input();
  v8[167] = v38;
  v39 = *(v38 - 8);
  v8[168] = v39;
  v40 = *(v39 + 64) + 15;
  v8[169] = swift_task_alloc();
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v41 = static ConversationActor.shared;
  v8[173] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v41, 0);
}

uint64_t closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)()
{
  v291 = v0;
  v1 = v0;
  v2 = v0[171];
  v3 = v1[167];
  v4 = v1[123];
  v5 = v1[122];
  v6 = type metadata accessor for PropertyListDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v22 = v1[172];
  v23 = v1[171];
  v24 = v1[168];
  v25 = v1[167];
  v26 = v1[166];
  v27 = v1[165];
  v28 = v1[126];

  (*(v24 + 32))(v22, v23, v25);
  v29 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v28 + v29, v26, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v1[166];
      v32 = v1[164];
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol(v31, (v1 + 92));
      outlined init with take of ReferenceResolutionClientProtocol((v31 + 40), (v1 + 97));
      outlined init with take of SiriRequest(v31 + v33, v32, type metadata accessor for SiriRequest);
      v34 = v1[100];
      v35 = v1[101];
      __swift_project_boxed_opaque_existential_1(v1 + 97, v34);
      v36 = *(v35 + 72);
      v288 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      v1[174] = v38;
      *v38 = v1;
      v38[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
      v39 = v1[160];

      return v288(v39, v34, v35);
    }

    v49 = v1[172];
    v50 = v1[168];
    v51 = v1[167];
    v52 = v1[125];
    v53 = v1[124];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v54 = swift_allocError();
    *v55 = 0xD000000000000035;
    v55[1] = 0x80000001DCA85DE0;
    v56 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

    v53(v56);
    (*(v50 + 8))(v49, v51);
    goto LABEL_2;
  }

  v40 = v1[166];
  v41 = *(v40 + 80);

  outlined init with take of ReferenceResolutionClientProtocol(v40, (v1 + 7));
  v42 = *(v40 + 72);
  v43 = *(v40 + 56);
  *(v1 + 6) = *(v40 + 40);
  *(v1 + 7) = v43;
  v1[16] = v42;
  outlined init with copy of ReferenceResolutionClientProtocol?((v1 + 12), (v1 + 27), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  v44 = v1[30];
  if (v44)
  {
    outlined init with take of ReferenceResolutionClientProtocol((v1 + 27), (v1 + 22));
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v47, "accept() sending input to active conversation", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

    outlined init with take of ReferenceResolutionClientProtocol(v1 + 11, (v1 + 17));
    goto LABEL_45;
  }

  v57 = v1[172];
  v270 = v1[156];
  v276 = v1[154];
  v58 = v1[153];
  v59 = v1[152];
  v281 = v1[151];
  v60 = v1[127];
  v265 = v1[126];
  outlined destroy of ReferenceResolutionClientProtocol?((v1 + 27), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  v61 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v249 = v61;
  swift_allocObject();
  v64 = SiriEnvironment.init(parent:)();
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v66 = *(v60 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v65 = *(v60 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8);
  Input.identifier.getter();
  v67 = swift_task_alloc();
  v289 = v64;
  v67[2] = v64;
  v67[3] = v265;
  v67[4] = v57;
  dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginFindFlowTime<A>(rcId:hypothesisId:_:)();

  (*(v59 + 8))(v58, v281);
  v68 = FlowSearchResult.flow.getter();
  if (v68)
  {
    v69 = v1[150];
    v70 = v1[149];
    v71 = v1[148];
    *v69 = v68;
    (*(v70 + 104))(v69, *MEMORY[0x1E69CFAF0], v71);
    static FlowTrace.trace(event:)();
    (*(v70 + 8))(v69, v71);
  }

  else
  {
    v72 = v1[156];
    FlowSearchResult.actingFlow.getter();
    if (v1[40])
    {
      v73 = v1[150];
      v74 = v1[149];
      v75 = v1[148];
      outlined init with take of ReferenceResolutionClientProtocol((v1 + 37), (v1 + 32));
      outlined init with copy of ReferenceResolutionClientProtocol((v1 + 32), v73);
      (*(v74 + 104))(v73, *MEMORY[0x1E69CFAB8], v75);
      static FlowTrace.trace(event:)();
      (*(v74 + 8))(v73, v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?((v1 + 37), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    }
  }

  v76 = v1[156];
  v77 = v1[143];
  FlowSearchResult.transformer.getter();
  v78 = type metadata accessor for NamedParseTransformer();
  v79 = *(v78 - 8);
  v80 = (*(v79 + 48))(v77, 1, v78);
  v81 = v1[146];
  v82 = v1[145];
  v83 = v1[144];
  v84 = v1[143];
  if (v80 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1[143], &_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
    (*(v81 + 56))(v83, 1, 1, v82);
  }

  else
  {
    v85 = v1[144];
    NamedParseTransformer.resolve()();
    (*(v79 + 8))(v84, v78);
    if ((*(v81 + 48))(v83, 1, v82) != 1)
    {
      (*(v1[146] + 32))(v1[147], v1[144], v1[145]);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v155 = type metadata accessor for Logger();
      __swift_project_value_buffer(v155, static Logger.executor);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_1DC659000, v156, v157, "Conversation wants to reform input", v158, 2u);
        MEMORY[0x1E12A2F50](v158, -1, -1);
      }

      v159 = v1[172];
      v160 = v1[147];
      v161 = v1[145];
      v162 = v1[140];
      v163 = v1[138];

      v164 = Transformer.transform.getter();
      Input.parse.getter();
      v164(v163);
      v165 = v1[141];
      v200 = v1[140];
      v201 = v1[139];
      v202 = *(v1[134] + 8);
      v202(v1[138], v1[133]);

      swift_storeEnumTagMultiPayload();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v200, v165, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      v203 = v1[139];
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v1[141], v1[142], &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      v204 = swift_getEnumCaseMultiPayload();
      if (v204 == 1)
      {
        v205 = *v1[142];
        v206 = v205;
        v207 = Logger.logObject.getter();
        v208 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v290[0] = v210;
          *v209 = 136315138;
          v1[121] = v205;
          v211 = v205;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v212 = String.init<A>(describing:)();
          v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v213, v290);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_1DC659000, v207, v208, "Conversation wants to reform input, but got an error in transformation: %s", v209, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v210);
          MEMORY[0x1E12A2F50](v210, -1, -1);
          MEMORY[0x1E12A2F50](v209, -1, -1);
        }

        v215 = v1[168];
        v278 = v1[167];
        v285 = v1[172];
        v216 = v1[155];
        v267 = v1[154];
        v273 = v1[156];
        v217 = v1[147];
        v218 = v1[146];
        v219 = v1[145];
        v220 = v1[125];
        v221 = v1[124];
        v222 = specialized static FlowExtensionUserInputResultXPC.error(_:)();
        v221();

        (*(v218 + 8))(v217, v219);
        (*(v216 + 8))(v273, v267);
        outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
        (*(v215 + 8))(v285, v278);
      }

      else
      {
        v286 = v1[172];
        v223 = v1[169];
        v224 = v1[168];
        v258 = v1[167];
        v274 = v1[154];
        v279 = v1[156];
        v263 = v1[147];
        v268 = v1[155];
        v225 = v1[146];
        v261 = v1[145];
        v226 = v1[137];
        v227 = v1[136];
        v228 = v1[134];
        v229 = v1[133];
        v253 = v1[124];
        v255 = v1[125];
        (*(v228 + 32))(v226, v1[142], v229);
        (*(v228 + 16))(v227, v226, v229);
        Input.init(parse:)();
        v230 = specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)();
        v253();

        v231 = *(v224 + 8);
        v231(v223, v258);
        v202(v226, v229);
        (*(v225 + 8))(v263, v261);
        (*(v268 + 8))(v279, v274);
        outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
        v231(v286, v258);
      }

      goto LABEL_2;
    }
  }

  v86 = v1[156];
  outlined destroy of ReferenceResolutionClientProtocol?(v1[144], &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  FlowSearchResult.actingFlow.getter();
  if (!v1[50])
  {
    outlined destroy of ReferenceResolutionClientProtocol?((v1 + 47), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    goto LABEL_29;
  }

  v87 = v1[156];
  outlined init with take of ReferenceResolutionClientProtocol((v1 + 47), (v1 + 42));
  if (FlowSearchResult.flow.getter())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 42);
LABEL_29:
    v88 = v1[156];
    v89 = FlowSearchResult.flow.getter();
    if (v89)
    {
      v238 = v1 + 67;
      v90 = v1[172];
      v91 = v1[135];
      v92 = v1[134];
      v93 = v1[133];
      v94 = v1[126];
      v95 = v89;

      Input.parse.getter();
      v96 = Parse.usoTasks.getter();
      (*(v92 + 8))(v91, v93);
      type metadata accessor for FlowPluginInfo();
      outlined init with copy of ReferenceResolutionClientProtocol((v94 + 10), (v1 + 52));
      v97 = FlowPluginInfo.__allocating_init(pluginBundle:)(v1 + 52);
      type metadata accessor for FlowAgent();
      v98 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v98 + 130) = 0;
      *(v98 + 136) = 0;
      *(v98 + 144) = 0;
      *(v98 + 112) = v95;
      *(v98 + 120) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

      dispatch thunk of AnyFlow.unbox<A>(as:)();

      LOBYTE(v90) = v1[60] != 0;
      outlined destroy of ReferenceResolutionClientProtocol?((v1 + 57), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
      *(v98 + 128) = v90;
      *(v98 + 129) = v90;
      *(v98 + 152) = v96;
      *(v98 + 160) = v97;
      v99 = v94[9];
      v241 = SiriKitRuntimeState.taskService.getter();
      v100 = v94[8];
      v236 = v94[7];
      v101 = one-time initialization token for defaultTimeout;

      v237 = v100;

      if (v101 != -1)
      {
        swift_once();
      }

      v243 = v1[155];
      v245 = v1[154];
      v247 = v1[156];
      v232 = v1[152];
      v233 = v1[151];
      v102 = v1[132];
      v282 = v1[131];
      v234 = v1[130];
      v103 = v1[129];
      v104 = v1[128];
      v235 = v1[126];
      v105 = __swift_project_value_buffer(v104, static JetsamHelper.defaultTimeout);
      v106 = *(v103 + 16);
      v240 = v102;
      v271 = v104;
      v106(v102, v105, v104);
      v107 = type metadata accessor for ServerFallbackDisablingUtils();
      v108 = swift_allocObject();
      v108[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
      v108[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
      v108[4] = 0;
      v1[65] = v107;
      v1[66] = &protocol witness table for ServerFallbackDisablingUtils;
      v1[62] = v108;
      v109 = type metadata accessor for CorrectionsUndoManager();
      v110 = swift_allocObject();
      *(v110 + 40) = 0u;
      *(v110 + 56) = 0;
      *(v110 + 24) = 0u;
      *(v110 + 16) = MEMORY[0x1E69E7CC0];
      *v238 = 0u;
      *(v1 + 69) = 0u;
      v1[71] = 0;
      swift_beginAccess();
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v238, v110 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
      swift_endAccess();
      v106(v282, v102, v104);
      outlined init with copy of ReferenceResolutionClientProtocol((v1 + 62), (v1 + 72));
      v1[80] = v109;
      v1[81] = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, 255, type metadata accessor for CorrectionsUndoManager);
      v1[77] = v110;
      v239 = type metadata accessor for Conversation(0);
      v111 = *(v239 + 48);
      v112 = *(v239 + 52);
      v113 = swift_allocObject();
      swift_defaultActor_initialize();
      type metadata accessor for Conversation.State(0);
      swift_storeEnumTagMultiPayload();
      v114 = v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
      v115 = (v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
      *v115 = 12589;
      v115[1] = 0xE200000000000000;
      (*(v232 + 56))(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId, 1, 1, v233);
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
      type metadata accessor for InstrumentedStack(0);
      v116 = swift_allocObject();
      v116[5] = MEMORY[0x1E69E7CC8];
      v116[3] = 0;
      v116[4] = 0;
      v116[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
      swift_allocObject();
      swift_retain_n();

      v117 = v1;
      v118 = specialized Node.init(value:parent:)(v98);
      specialized OrderedForest._push(_:)(v118);
      v119 = v118[2];
      v120 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();

      v124 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v123, 0);

      swift_beginAccess();
      v125 = v116[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v290[0] = v116[5];
      v116[5] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v119, isUniquelyReferenced_nonNull_native);
      v116[5] = v290[0];
      swift_endAccess();

      v1 = v117;

      *(v113 + 112) = v116;
      v106(v234, v282, v271);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v127 = static OS_dispatch_queue.main.getter();
      v128 = type metadata accessor for JetsamHelper();
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      v131 = swift_allocObject();
      v132 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
      *v132 = 0;
      v132[1] = 0;
      v131[2] = 0xD000000000000023;
      v131[3] = 0x80000001DCA7E400;
      v131[4] = dispatch_semaphore_create(1);
      v131[5] = v127;
      (*(v103 + 32))(v131 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v234, v271);
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v131;
      swift_beginAccess();
      *(v114 + 8) = &protocol witness table for RemoteConversationService;
      swift_unknownObjectWeakAssign();
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v241;
      v133 = (v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
      *v133 = v236;
      v133[1] = v237;
      v134 = *(v98 + 160);
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v134;
      outlined init with copy of ReferenceResolutionClientProtocol((v117 + 77), v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
      outlined init with copy of ReferenceResolutionClientProtocol((v117 + 72), v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
      v135 = *(v249 + 48);
      v136 = *(v249 + 52);
      swift_allocObject();

      v137 = v134;
      *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
      v138 = type metadata accessor for SiriCorrectionsClientProvider();
      v139 = *(v138 + 48);
      v140 = *(v138 + 52);
      swift_allocObject();

      SiriCorrectionsClientProvider.init()();
      SiriEnvironment.correctionsClientProvider.setter();

      v141 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment;
      v142 = *(v113 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
      SiriEnvironment.correctionsClientProvider.getter();
      v143 = v117[80];
      v144 = v117[81];
      v145 = __swift_project_boxed_opaque_existential_1(v1 + 77, v1[80]);
      v117[85] = v143;
      v117[86] = *(v144 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v117 + 82);
      (*(*(v143 - 8) + 16))(boxed_opaque_existential_0, v145, v143);
      dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

      v147 = *(v113 + v141);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      v148 = *(v113 + v141);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      v149 = *(v113 + v141);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      v150 = *(v113 + v141);
      type metadata accessor for ScopedReferenceResolutionDataProvider();
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, 255, MEMORY[0x1E69D27E0]);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      v151 = *(v113 + v141);
      type metadata accessor for AceServiceContextProvider();
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, 255, MEMORY[0x1E69D0068]);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      v152 = *(v98 + 112);
      v153 = *(v113 + v141);

      dispatch thunk of AnyFlow.siriEnvironment.setter();

      __swift_destroy_boxed_opaque_existential_1Tm(v117 + 72);
      v154 = *(v103 + 8);
      v154(v282, v271);
      v154(v240, v271);
      __swift_destroy_boxed_opaque_existential_1Tm(v117 + 62);

      __swift_destroy_boxed_opaque_existential_1Tm(v117 + 77);
      v117[20] = v239;
      v117[21] = &protocol witness table for Conversation;

      v117[17] = v113;
      (*(v243 + 8))(v247, v245);
      goto LABEL_44;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static Logger.executor);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_1DC659000, v167, v168, "FlowExtension did not find a flow to handle the input", v169, 2u);
      MEMORY[0x1E12A2F50](v169, -1, -1);
    }

    v283 = v1[172];
    v170 = v1[168];
    v171 = v1[167];
    v172 = v1[156];
    v173 = v1[155];
    v174 = v1[154];
    v175 = v1[125];
    v176 = v1[124];

    v177 = FlowSearchResult.exclude.getter();
    v178 = type metadata accessor for FlowExtensionUserInputResultXPC();
    v179 = objc_allocWithZone(v178);
    *&v179[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
    *&v179[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
    *&v179[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
    v179[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v177 & 1;
    v1[119] = v179;
    v1[120] = v178;
    v180 = objc_msgSendSuper2((v1 + 119), sel_init);
    v176();

    (*(v173 + 8))(v172, v174);
    outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    (*(v170 + 8))(v283, v171);
LABEL_2:
    v9 = v1[172];
    v10 = v1[171];
    v11 = v1[170];
    v12 = v1[169];
    v13 = v1;
    v14 = v1[166];
    v15 = v13[164];
    v16 = v13[163];
    v17 = v13[161];
    v18 = v13[160];
    v19 = v13[159];
    v242 = v13[156];
    v244 = v13[153];
    v246 = v13[150];
    v248 = v13[147];
    v250 = v13[144];
    v251 = v13[143];
    v252 = v13[142];
    v254 = v13[141];
    v256 = v13[140];
    v259 = v13[138];
    v262 = v13[137];
    v264 = v13[136];
    v269 = v13[135];
    v275 = v13[132];
    v280 = v13[131];
    v287 = v13[130];

    v20 = v13[1];

    return v20();
  }

  v272 = v1[155];
  v277 = v1[154];
  v284 = v1[156];
  v181 = v1[126];
  v183 = v1[45];
  v182 = v1[46];
  v260 = __swift_project_boxed_opaque_existential_1(v1 + 42, v183);
  v266 = type metadata accessor for EncoreConversation(0);
  v184 = v181[8];
  v257 = v181[7];
  type metadata accessor for FlowPluginInfo();
  outlined init with copy of ReferenceResolutionClientProtocol((v181 + 10), (v1 + 87));

  v185 = FlowPluginInfo.__allocating_init(pluginBundle:)(v1 + 87);
  v186 = v181[9];
  v187 = SiriKitRuntimeState.taskService.getter();
  v188 = v181[20];

  default argument 7 of EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v290);

  v189 = specialized EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v260, v257, v184, v185, v187, v181, &protocol witness table for RemoteConversationService, v188, v289, v290, v183, v182);

  v1[20] = v266;
  v1[21] = &protocol witness table for EncoreConversation;

  v1[17] = v189;
  (*(v272 + 8))(v284, v277);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 42);
LABEL_44:
  v44 = 0;
LABEL_45:
  v190 = v44 != 0;
  v192 = v1[20];
  v191 = v1[21];
  v193 = __swift_project_boxed_opaque_existential_1(v1 + 17, v192);
  v194 = swift_task_alloc();
  v1[177] = v194;
  *v194 = v1;
  v194[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  v195 = v1[172];
  v196 = v1[127];
  v197 = v1[126];
  v198 = v1[125];
  v199 = v1[124];
  v293 = v192;
  v294 = v191;

  return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)((v1 + 7), v193, v195, v196, v190, v199, v198, v197);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v4 = *v1;
  *(*v1 + 1400) = v0;

  v5 = *(v2 + 1384);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v87 = v0;
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  (*(v2 + 32))(v0[161], v0[160], v3);
  static FlexibleExecutionSupportOptions.inputContinuation.getter();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0]);
  v4 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = v0[172];
    v6 = v0[170];
    v7 = v0[168];
    v8 = v0[167];
    v9 = v0[164];
    v10 = v0[163];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 97), (v0 + 102));
    outlined init with copy of RemoteConversationService.State(v9, v10, type metadata accessor for SiriRequest);
    (*(v7 + 16))(v6, v5, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[170];
    v16 = v0[168];
    v17 = v0[167];
    v18 = v0[163];
    if (v14)
    {
      v19 = v0[159];
      v80 = v0[157];
      v82 = v13;
      v20 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86 = v84;
      *v20 = 136315906;
      outlined init with copy of ReferenceResolutionClientProtocol((v0 + 102), (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14Conversational_pMd, &_s14SiriKitRuntime14Conversational_pMR);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = *v18;
      v26 = v18[1];

      outlined destroy of RemoteConversationService.State(v18, type metadata accessor for SiriRequest);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v86);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2080;
      static FlexibleExecutionSupportOptions.inputContinuation.getter();
      v28 = String.init<A>(describing:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v86);

      *(v20 + 24) = v30;
      *(v20 + 32) = 2080;
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v16 + 8))(v15, v17);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v86);

      *(v20 + 34) = v34;
      _os_log_impl(&dword_1DC659000, v12, v82, "Conversation %s for rcId: %s supports %s on %s. Running accept()", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      outlined destroy of RemoteConversationService.State(v18, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
    }

    v57 = v0[164];
    v58 = *(v0[162] + 20);
    v59 = v0[100];
    v60 = v0[101];
    v61 = __swift_project_boxed_opaque_existential_1(v0 + 97, v59);
    v62 = swift_task_alloc();
    v0[176] = v62;
    *v62 = v0;
    v62[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
    v63 = v0[127];
    v64 = v0[126];
    v65 = v0[125];
    v66 = v0[124];
    v89 = v59;
    v90 = v60;

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)((v0 + 92), v61, v57 + v58, v63, 1, v66, v65, v64);
  }

  else
  {
    v35 = v0[175];
    v36 = v0[164];
    v37 = v0[125];
    v38 = v0[124];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v39 = swift_allocError();
    *v40 = 0xD000000000000024;
    v40[1] = 0x80000001DCA85DB0;
    v41 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

    v38(v41);
    outlined destroy of RemoteConversationService.State(v36, type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
    if (!v35)
    {
      (*(v0[158] + 8))(v0[161], v0[157]);
    }

    v42 = v0[172];
    v43 = v0[168];
    v44 = v0[167];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
    (*(v43 + 8))(v42, v44);
    v45 = v0[172];
    v46 = v0[171];
    v47 = v0[170];
    v48 = v0[169];
    v49 = v0[166];
    v50 = v0[164];
    v51 = v0[163];
    v52 = v0[161];
    v53 = v0[160];
    v54 = v0[159];
    v67 = v0[156];
    v68 = v0[153];
    v69 = v0[150];
    v70 = v0[147];
    v71 = v0[144];
    v72 = v0[143];
    v73 = v0[142];
    v74 = v0[141];
    v75 = v0[140];
    v76 = v0[138];
    v77 = v0[137];
    v78 = v0[136];
    v79 = v0[135];
    v81 = v0[132];
    v83 = v0[131];
    v85 = v0[130];

    v55 = v0[1];

    return v55();
  }
}

{
  v1 = *(*v0 + 1408);
  v2 = *(*v0 + 1384);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v2, 0);
}

{
  v1 = v0[175];
  v2 = v0[164];
  v3 = v0[125];
  v4 = v0[124];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v5 = swift_allocError();
  *v6 = 0xD000000000000024;
  v6[1] = 0x80000001DCA85DB0;
  v7 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

  v4(v7);
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
  if (!v1)
  {
    (*(v0[158] + 8))(v0[161], v0[157]);
  }

  v8 = v0[172];
  v9 = v0[168];
  v10 = v0[167];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  (*(v9 + 8))(v8, v10);
  v11 = v0[172];
  v12 = v0[171];
  v13 = v0[170];
  v14 = v0[169];
  v15 = v0[166];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v23 = v0[156];
  v24 = v0[153];
  v25 = v0[150];
  v26 = v0[147];
  v27 = v0[144];
  v28 = v0[143];
  v29 = v0[142];
  v30 = v0[141];
  v31 = v0[140];
  v32 = v0[138];
  v33 = v0[137];
  v34 = v0[136];
  v35 = v0[135];
  v36 = v0[132];
  v37 = v0[131];
  v38 = v0[130];

  v21 = v0[1];

  return v21();
}

{
  v1 = *(*v0 + 1416);
  v2 = *(*v0 + 1384);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v2, 0);
}

{
  v1 = v0[172];
  v2 = v0[168];
  v3 = v0[167];
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  (*(v2 + 8))(v1, v3);
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[166];
  v9 = v0[164];
  v10 = v0[163];
  v11 = v0[161];
  v12 = v0[160];
  v13 = v0[159];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[150];
  v19 = v0[147];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v28 = v0[135];
  v29 = v0[132];
  v30 = v0[131];
  v31 = v0[130];

  v14 = v0[1];

  return v14();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[175];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[175];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error %@ while checking if conversation supports flexible execution. Presuming it doesn't support flexible execution", v8, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[175];
  v13 = v0[164];
  v14 = v0[125];
  v15 = v0[124];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v16 = swift_allocError();
  *v17 = 0xD000000000000024;
  v17[1] = 0x80000001DCA85DB0;
  v18 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

  v15(v18);
  outlined destroy of RemoteConversationService.State(v13, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
  if (!v12)
  {
    (*(v0[158] + 8))(v0[161], v0[157]);
  }

  v19 = v0[172];
  v20 = v0[168];
  v21 = v0[167];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  (*(v20 + 8))(v19, v21);
  v22 = v0[172];
  v23 = v0[171];
  v24 = v0[170];
  v25 = v0[169];
  v26 = v0[166];
  v27 = v0[164];
  v28 = v0[163];
  v29 = v0[161];
  v30 = v0[160];
  v31 = v0[159];
  v34 = v0[156];
  v35 = v0[153];
  v36 = v0[150];
  v37 = v0[147];
  v38 = v0[144];
  v39 = v0[143];
  v40 = v0[142];
  v41 = v0[141];
  v42 = v0[140];
  v43 = v0[138];
  v44 = v0[137];
  v45 = v0[136];
  v46 = v0[135];
  v47 = v0[132];
  v48 = v0[131];
  v49 = v0[130];

  v32 = v0[1];

  return v32();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)()
{
  type metadata accessor for SiriEnvironment();
  type metadata accessor for FlowSearchResult();
  return static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(void *a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol((a1 + 2), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C6Plugin_pMd, &_s11SiriKitFlow0C6Plugin_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C14PluginExtended_pMd, &_s11SiriKitFlow0C14PluginExtended_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v9, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    Input.parse.getter();
    dispatch thunk of FlowPluginExtended.findFlowForX(parse:)();
    (*(v3 + 8))(v6, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow0C14PluginExtended_pSgMd, &_s11SiriKitFlow0C14PluginExtended_pSgMR);
    v8 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    Input.parse.getter();
    dispatch thunk of FlowPlugin.makeFlowFor(parse:)();
    (*(v3 + 8))(v6, v2);
    static FlowSearchResult.flow(_:)();
  }
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for RemoteConversationService.State(0);
  v6[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v6[27] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.paraphrase(reply:), v11, 0);
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)()
{
  v40 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v1, type metadata accessor for RemoteConversationService.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), v0 + 16);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
    v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v12, type metadata accessor for ConversationActor);
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = v13;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), (v14 + 4));
    v14[9] = v9;
    v14[10] = v8;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:), v14);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    outlined destroy of RemoteConversationService.State(v5 + v10, type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA835A0);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA85D90);
    outlined init with copy of RemoteConversationService.State(v3 + v4, v15, type metadata accessor for RemoteConversationService.State);
    _print_unlocked<A, B>(_:_:)();
    outlined destroy of RemoteConversationService.State(v15, type metadata accessor for RemoteConversationService.State);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v39);
      _os_log_impl(&dword_1DC659000, v20, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v38 = *(v0 + 208);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v26 = *(v0 + 160);
    v27 = type metadata accessor for ActionParaphrase();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v29 = objc_allocWithZone(v28);
    outlined init with copy of ReferenceResolutionClientProtocol?(v25, &v29[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v30 = &v29[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v30 = v17;
    v30[1] = v18;
    *(v0 + 136) = v29;
    *(v0 + 144) = v28;
    v31 = objc_msgSendSuper2((v0 + 136), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v26(v31);

    outlined destroy of RemoteConversationService.State(v38, type metadata accessor for RemoteConversationService.State);
  }

  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v35 = *(v0 + 176);
  v34 = *(v0 + 184);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for ConversationParaphraseResult(0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;
  v6[13] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:), v9, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  v7 = v0[12];

  return v9(v7, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  }

  else
  {
    v6 = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = ConversationParaphraseResult.xpcRepresentation.getter();
  v3();

  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for ConversationParaphraseResult);
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v19 = *(v0 + 72);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = Error.localizedDescription.getter();
  v9 = v8;
  v10 = type metadata accessor for ActionParaphrase();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = type metadata accessor for ConversationParaphraseResultXPC(0);
  v12 = objc_allocWithZone(v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(v3, &v12[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v13 = &v12[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v13 = v7;
  v13[1] = v9;
  *(v0 + 40) = v12;
  *(v0 + 48) = v11;
  v14 = objc_msgSendSuper2((v0 + 40), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v19(v14);

  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.drainAsyncWork(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.drainAsyncWork(reply:)()
{
  v1 = *(**(*(v0 + 16) + 168) + 216);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = closure #1 in RemoteConversationService.drainAsyncWork(reply:);

  return v5();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.drainAsyncWork(reply:), v2, 0);
}

{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a4;
  v7 = type metadata accessor for FlexibleExecutionSupportOptions();
  v6[40] = v7;
  v8 = *(v7 - 8);
  v6[41] = v8;
  v9 = *(v8 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v10 = type metadata accessor for RemoteConversationService.State(0);
  v6[44] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v6[46] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:), v12, 0);
}

uint64_t closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 360) + 40), v0 + 136);
      v6 = *(v0 + 160);
      v7 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v6);
      v8 = *(v7 + 72);
      v40 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v0 + 376) = v10;
      *v10 = v0;
      v10[1] = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
      v11 = *(v0 + 344);
LABEL_6:

      return v40(v11, v6, v7);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "No conversation while idle", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v25 = *(v0 + 304);
    v24 = *(v0 + 312);

    v26 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
    *(v0 + 200) = v27;
    *(v0 + 208) = v26;
    v28 = objc_msgSendSuper2((v0 + 200), sel_init);
    v25();
  }

  else
  {
    v12 = *(v0 + 360);
    v13 = *(v12 + 80);

    v14 = *(v12 + 40);
    v15 = *(v12 + 56);
    *(v0 + 48) = *(v12 + 72);
    *(v0 + 16) = v14;
    *(v0 + 32) = v15;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (*(v0 + 120))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
      v6 = *(v0 + 80);
      v7 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
      v16 = *(v7 + 72);
      v40 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      *(v0 + 392) = v18;
      *v18 = v0;
      v18[1] = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
      v11 = *(v0 + 336);
      goto LABEL_6;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 360);
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    specialized Logger.debugF(_:_:_:_:)();
    v33 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
    *(v0 + 216) = v34;
    *(v0 + 224) = v33;
    v35 = objc_msgSendSuper2((v0 + 216), sel_init);
    v31();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v36 = *(v0 + 360);
  v37 = *(v0 + 336);
  v38 = *(v0 + 344);

  v39 = *(v0 + 8);

  return v39();
}

{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = FlexibleExecutionSupportOptions.rawValue.getter();
  v7 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v6;
  *(v0 + 280) = v8;
  *(v0 + 288) = v7;
  v9 = objc_msgSendSuper2((v0 + 280), sel_init);
  v5();

  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 360);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  outlined destroy of RemoteConversationService.State(v10 + v11, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v12 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);

  v15 = *(v0 + 8);

  return v15();
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = FlexibleExecutionSupportOptions.rawValue.getter();
  v7 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v6;
  *(v0 + 248) = v8;
  *(v0 + 256) = v7;
  v9 = objc_msgSendSuper2((v0 + 248), sel_init);
  v5();

  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 360);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v11 = *(v0 + 360);
  v12 = *(v0 + 336);
  v13 = *(v0 + 344);

  v14 = *(v0 + 8);

  return v14();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)();
  v5 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  *(v0 + 264) = v6;
  *(v0 + 272) = v5;
  v7 = objc_msgSendSuper2((v0 + 264), sel_init);
  v3();

  v8 = *(v0 + 360);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  outlined destroy of RemoteConversationService.State(v8 + v9, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v10 = *(v0 + 360);
  v11 = *(v0 + 336);
  v12 = *(v0 + 344);

  v13 = *(v0 + 8);

  return v13();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Error in whil querying remote conversation for flexible execution support", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 400);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);

  v8 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  *(v0 + 232) = v9;
  *(v0 + 240) = v8;
  v10 = objc_msgSendSuper2((v0 + 232), sel_init);
  v7();

  v11 = *(v0 + 360);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v12 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for RemoteConversationService.State(0);
  v6[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v6[21] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.isCorrectable(reply:), v10, 0);
}

uint64_t closure #1 in RemoteConversationService.isCorrectable(reply:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v6 + 40), v0 + 16);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
      v14 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v13, type metadata accessor for ConversationActor);
      v15 = swift_allocObject();
      v15[2] = v7;
      v15[3] = v14;
      v15[4] = v10;
      v15[5] = v9;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), (v15 + 6));

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v15);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      outlined destroy of RemoteConversationService.State(v6 + v11, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      v20 = *(v0 + 136);
      (*(v0 + 128))(0);
    }
  }

  else
  {
    v16 = *(v0 + 160);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = v16[10];

    v18(0);
    outlined destroy of ReferenceResolutionClientProtocol?((v16 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 144);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v7, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v3, 0);
}

uint64_t RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.activeTasksDidChange(activeTasks:rcId:), v5, 0);
}

uint64_t RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v2 + 168);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v7 = *(*v5 + 208);

  v7(0xD000000000000027, 0x80000001DCA85A70, &async function pointer to partial apply for closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:), v6);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteConversationService.sendActiveTasks(_:rcId:)(a2, a3, a4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t RemoteConversationService.FlowAndInputRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RemoteConversationService.FlowAndInputRegistry.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v2;
  return result;
}

uint64_t protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService, v5, 0);
}

uint64_t protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v2 + 168);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v7 = *(*v5 + 208);

  v7(0xD000000000000027, 0x80000001DCA85A70, &closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)partial apply, v6);

  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.warmup(refId:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(v2, v3, v5, v4);
}

uint64_t type metadata completion function for RemoteConversationService()
{
  result = type metadata accessor for RemoteConversationService.State(319);
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

char *initializeBufferWithCopyOfBuffer for RemoteConversationService.State(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a2 + 24);
    *(a1 + 24) = v12;
    (**(v12 - 8))(a1, a2);
    v13 = *(a2 + 4);
    *(a1 + 4) = v13;
    (**(v13 - 8))((a1 + 40), (a2 + 40));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v15 = &a1[v14];
    v16 = &a2[v14];
    v17 = *&a2[v14 + 8];
    *v15 = *&a2[v14];
    *(v15 + 1) = v17;
    v18 = type metadata accessor for SiriRequest(0);
    v19 = v18[5];
    v20 = type metadata accessor for Input();
    v21 = *(*(v20 - 8) + 16);

    v21(&v15[v19], &v16[v19], v20);
    *&v15[v18[6]] = *&v16[v18[6]];
    *&v15[v18[7]] = *&v16[v18[7]];
    v22 = v18[8];
    v23 = &v15[v22];
    v24 = &v16[v22];
    v25 = *&v16[v22 + 8];

    if (v25 >> 60 == 15)
    {
      *v23 = *v24;
    }

    else
    {
      v28 = *v24;
      outlined copy of Data._Representation(*v24, v25);
      *v23 = v28;
      *(v23 + 1) = v25;
    }

    *&v15[v18[9]] = *&v16[v18[9]];
    *&v15[v18[10]] = *&v16[v18[10]];
    *&v15[v18[11]] = *&v16[v18[11]];
    v29 = v18[12];
    __dst = &v15[v29];
    v30 = &v16[v29];
    v31 = type metadata accessor for SiriRequestIdentities(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);

    v34 = v30;

    if (v33(v30, 1, v31))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v30, *(*(v35 - 8) + 64));
    }

    else
    {
      v45 = v32;
      v46 = v31;
      v36 = type metadata accessor for IdentifiedUser();
      v37 = *(v36 - 8);
      v38 = *(v37 + 48);
      if (v38(v34, 1, v36))
      {
        v39 = v37;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v41 = v34;
        memcpy(__dst, v34, *(*(v40 - 8) + 64));
      }

      else
      {
        v41 = v34;
        (*(v37 + 16))(__dst, v34, v36);
        v39 = v37;
        (*(v37 + 56))(__dst, 0, 1, v36);
      }

      v42 = *(v46 + 20);
      if (v38(&v41[v42], 1, v36))
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v42], &v41[v42], *(*(v43 - 8) + 64));
      }

      else
      {
        (*(v39 + 16))(&__dst[v42], &v41[v42], v36);
        (*(v39 + 56))(&__dst[v42], 0, 1, v36);
      }

      *&__dst[*(v46 + 24)] = *&v41[*(v46 + 24)];
      v44 = *(v45 + 56);

      v44(__dst, 0, 1, v46);
    }

    goto LABEL_24;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(a2 + 24);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1, a2);
    v9 = *(a2 + 8);
    if (v9)
    {
      v10 = *(a2 + 9);
      *(a1 + 8) = v9;
      *(a1 + 9) = v10;
      (**(v9 - 8))((a1 + 40), (a2 + 40));
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 9) = *(a2 + 9);
    }

    *(a1 + 10) = *(a2 + 10);

LABEL_24:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v26 = *(v6 + 64);

  return memcpy(a1, a2, v26);
}

void *assignWithCopy for RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationService.State(a1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(a2 + 24);
    *(a1 + 24) = v9;
    *(a1 + 32) = *(a2 + 32);
    (**(v9 - 8))(a1, a2);
    v10 = *(a2 + 64);
    *(a1 + 64) = v10;
    *(a1 + 72) = *(a2 + 72);
    (**(v10 - 8))(a1 + 40, a2 + 40);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v12 = (a1 + v11);
    v13 = a2 + v11;
    *v12 = *(a2 + v11);
    *(v12 + 1) = *(a2 + v11 + 8);
    v14 = type metadata accessor for SiriRequest(0);
    v15 = v14[5];
    v16 = type metadata accessor for Input();
    v17 = *(*(v16 - 8) + 16);

    v17(&v12[v15], v13 + v15, v16);
    *&v12[v14[6]] = *(v13 + v14[6]);
    *&v12[v14[7]] = *(v13 + v14[7]);
    v18 = v14[8];
    v19 = &v12[v18];
    v20 = (v13 + v18);
    v21 = *(v13 + v18 + 8);

    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v24 = *v20;
      outlined copy of Data._Representation(*v20, v21);
      *v19 = v24;
      *(v19 + 1) = v21;
    }

    *&v12[v14[9]] = *(v13 + v14[9]);
    *&v12[v14[10]] = *(v13 + v14[10]);
    *&v12[v14[11]] = *(v13 + v14[11]);
    v25 = v14[12];
    __dst = &v12[v25];
    v26 = (v13 + v25);
    v27 = type metadata accessor for SiriRequestIdentities(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);

    v30 = v26;

    if (v29(v26, 1, v27))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v26, *(*(v31 - 8) + 64));
    }

    else
    {
      v43 = v28;
      v44 = v27;
      v34 = type metadata accessor for IdentifiedUser();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      if (v36(v30, 1, v34))
      {
        v37 = v35;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v39 = v30;
        memcpy(__dst, v30, *(*(v38 - 8) + 64));
      }

      else
      {
        v39 = v30;
        (*(v35 + 16))(__dst, v30, v34);
        v37 = v35;
        (*(v35 + 56))(__dst, 0, 1, v34);
      }

      v40 = *(v44 + 20);
      if (v36(&v39[v40], 1, v34))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v40], &v39[v40], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v37 + 16))(&__dst[v40], &v39[v40], v34);
        (*(v37 + 56))(&__dst[v40], 0, 1, v34);
      }

      *&__dst[*(v44 + 24)] = *&v39[*(v44 + 24)];
      v42 = *(v43 + 56);

      v42(__dst, 0, 1, v44);
    }

    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    *(a1 + 32) = *(a2 + 32);
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 64);
    if (v8)
    {
      *(a1 + 64) = v8;
      *(a1 + 72) = *(a2 + 72);
      (**(v8 - 8))(a1 + 40, a2 + 40);
    }

    else
    {
      v32 = *(a2 + 40);
      v33 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v33;
      *(a1 + 40) = v32;
    }

    *(a1 + 80) = *(a2 + 80);

LABEL_23:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

_OWORD *initializeWithTake for RemoteConversationService.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 9) = *(a2 + 9);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for SiriRequest(0);
    v11 = v10[5];
    v12 = type metadata accessor for Input();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    *&v8[v10[9]] = *&v9[v10[9]];
    *&v8[v10[10]] = *&v9[v10[10]];
    *&v8[v10[11]] = *&v9[v10[11]];
    v13 = v10[12];
    v14 = &v8[v13];
    v15 = &v9[v13];
    v16 = type metadata accessor for SiriRequestIdentities(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      v21 = type metadata accessor for IdentifiedUser();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v27 = v22;
      if (v23(v15, 1, v21))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v14, v15, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v22 + 32))(v14, v15, v21);
        (*(v22 + 56))(v14, 0, 1, v21);
      }

      v25 = *(v16 + 20);
      if (v23(&v15[v25], 1, v21))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v14[v25], &v15[v25], v21);
        (*(v27 + 56))(&v14[v25], 0, 1, v21);
      }

      *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v19 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v19);
  }
}

uint64_t type metadata completion function for RemoteConversationService.State()
{
  v3[4] = "X";
  result = type metadata accessor for SiriRequest(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout3();
    v3[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_63Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_232Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t partial apply for closure #2 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)();
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_301Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v1 + 32);
}

id RemoteConversationSpeechData.__allocating_init(rcId:asrOnDevice:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:speechPackage:utterance:responseLanguageVariant:requestLanguageVariant:genAIFallbackSuppressReason:flowRedirectContext:asrLocation:nlLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v25 = objc_allocWithZone(v18);
  v26 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v26 = a1;
  v26[1] = a2;
  v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = a3;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = a4;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = a5;
  v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = a6;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = a7;
  v27 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v27 = a8;
  v27[1] = a9;
  v28 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v28 = a10;
  v28[1] = a11;
  v29 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v29 = a12;
  v29[1] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a15, &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v30 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v31 = type metadata accessor for ExecutionLocation();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(&v25[v30], a16, v31);
  v33(&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], a17, v31);
  v40.receiver = v25;
  v40.super_class = v39;
  v34 = objc_msgSendSuper2(&v40, sel_init);
  v35 = *(v32 + 8);
  v35(a17, v31);
  v35(a16, v31);
  outlined destroy of ReferenceResolutionClientProtocol?(a15, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v34;
}

uint64_t RemoteConversationSpeechData.rcId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8);

  return v1;
}

void *RemoteConversationSpeechData.userSpecificInfoForRecognizedUser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v2 = v1;
  return v1;
}

void *RemoteConversationSpeechData.userSpecificInfoForUserMeetingSessionThreshold.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v2 = v1;
  return v1;
}

void *RemoteConversationSpeechData.speechPackage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v2 = v1;
  return v1;
}

uint64_t RemoteConversationSpeechData.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance + 8);

  return v1;
}

uint64_t RemoteConversationSpeechData.responseLanguageVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant + 8);

  return v1;
}

uint64_t RemoteConversationSpeechData.requestLanguageVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant + 8);

  return v1;
}

uint64_t RemoteConversationSpeechData.asrLocation.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for ExecutionLocation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id RemoteConversationSpeechData.init(rcId:asrOnDevice:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:speechPackage:utterance:responseLanguageVariant:requestLanguageVariant:genAIFallbackSuppressReason:flowRedirectContext:asrLocation:nlLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  ObjectType = swift_getObjectType();
  v25 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v25 = a1;
  v25[1] = a2;
  v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = a3;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = a4;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = a5;
  v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = a6;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = a7;
  v26 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v26 = a8;
  v26[1] = a9;
  v27 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v27 = a10;
  v27[1] = a11;
  v28 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v28 = a12;
  v28[1] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a15, &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v29 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v30 = type metadata accessor for ExecutionLocation();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v32(&v18[v29], a16, v30);
  v32(&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], a17, v30);
  v39.receiver = v18;
  v39.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  v34 = *(v31 + 8);
  v34(a17, v30);
  v34(a16, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(a15, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v33;
}

uint64_t static RemoteConversationSpeechData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static RemoteConversationSpeechData.supportsSecureCoding = a1;
  return result;
}

id RemoteConversationSpeechData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteConversationSpeechData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for RemoteConversationSpeechData()
{
  type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(319, &lazy cache variable for type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?, MEMORY[0x1E69D0390]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(319, &lazy cache variable for type metadata for FlowRedirectContext?, MEMORY[0x1E69CFB38]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ExecutionLocation();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t RemoteConversationTurnData.init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:requestContextData:conversationLoggingId:flowTask:scopedRRData:invokedByPeerToPeerEORR:proxiedRequestContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, a9 + v18[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a6, a9 + v18[7], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(a9 + v18[8]) = a7;
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, a9 + v18[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a9 + v18[10]) = a10;
  v20 = (a9 + v18[13]);
  *v20 = a11;
  v20[1] = a12;
  *(a9 + v18[11]) = a13;
  *(a9 + v18[12]) = a14;
  return result;
}

uint64_t RemoteConversationTurnData.executionRequestId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RemoteConversationTurnData.rootRequestId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id RemoteConversationTurnData.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 32));

  return v1;
}

uint64_t RemoteConversationTurnData.flowTask.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 40));
}

void *RemoteConversationTurnData.proxiedRequestContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 48));
  v2 = v1;
  return v1;
}

uint64_t RemoteConversationTurnData.scopedRRData.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 52);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t RemoteConversationTurnData.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(255);
  MEMORY[0x1E12A1580](0xD000000000000034, 0x80000001DCA861F0);
  MEMORY[0x1E12A1580](*v1, v1[1]);
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86230);
  if (v0[3])
  {
    v6 = v0[2];
    v7 = v0[3];
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v6, v7);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA86250);
  v8 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + v8[6], v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v9);

  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86270);
  v10 = [*(v0 + v8[8]) debugDescription];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x1E12A1580](v11, v13);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA86290);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v8[9], v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v14);

  MEMORY[0x1E12A1580](0x6C6620202020202CLL, 0xEF3D6B736154776FLL);
  v23 = *(v1 + v8[10]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime8FlowTaskCSgMd, &_s14SiriKitRuntime8FlowTaskCSgMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v15);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA862B0);
  if (*(v1 + v8[13] + 8) >> 60 == 15)
  {
    v16 = 28526;
  }

  else
  {
    v16 = 7562617;
  }

  if (*(v1 + v8[13] + 8) >> 60 == 15)
  {
    v17 = 0xE200000000000000;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  MEMORY[0x1E12A1580](v16, v17);

  MEMORY[0x1E12A1580](0xD00000000000001ELL, 0x80000001DCA862D0);
  if (*(v1 + v8[11]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v8[11]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v18, v19);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA862F0);
  v23 = *(v1 + v8[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ProxiedRequestContextCSgMd, &_s14SiriKitRuntime21ProxiedRequestContextCSgMR);
  v20 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v20);

  MEMORY[0x1E12A1580](32010, 0xE200000000000000);
  return v24;
}

uint64_t ConversationTurnDataXPC.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId);
  v2 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8);

  return v1;
}

uint64_t ConversationTurnDataXPC.rootRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId);
  v2 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId + 8);

  return v1;
}

void *ConversationTurnDataXPC.sessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.sessionConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.conversationLoggingId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.flowTask.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.scopedRRData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.proxiedRequestContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v2 = v1;
  return v1;
}

unint64_t ConversationTurnDataXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0x496E6F6973736573;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000017;
    if (a1 == 5)
    {
      v7 = 0x52526465706F6373;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x75716552746F6F72;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000015;
    if (a1 != 3)
    {
      v3 = 0x6B736154776F6C66;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationTurnDataXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationTurnDataXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationTurnDataXPC.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationTurnDataXPC.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id ConversationTurnDataXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationTurnDataXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ProxiedRequestContext.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ProxiedRequestContext.supportsSecureCoding = a1;
  return result;
}

uint64_t ProxiedRequestContext.aceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId + 8);

  return v1;
}

uint64_t ProxiedRequestContext.refId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8);

  return v1;
}

uint64_t ProxiedRequestContext.interactionType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *ProxiedRequestContext.aceMeCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.sessionHandoffContinuityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8);

  return v1;
}

void *ProxiedRequestContext.userSessionState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.interactionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8);

  return v1;
}

void *ProxiedRequestContext.aceRemoteExecution.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.resultCandidateId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId + 8);

  return v1;
}

id ProxiedRequestContext.__allocating_init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v30 = objc_allocWithZone(v23);
  v31 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v31 = a1;
  v31[1] = a2;
  v32 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v32 = a3;
  v32[1] = a4;
  v33 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v34 = type metadata accessor for InteractionType();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&v30[v33], a5, v34);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v37 = type metadata accessor for InputOrigin();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v30[v36], a6, v37);
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = a7;
  v39 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v39 = a8;
  v39[1] = a9;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = a10;
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = a11;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = a12;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = a13;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = a14;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = a15;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = a16;
  v40 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v40 = a17;
  v40[1] = a18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a19, &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = a20;
  v41 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v41 = a21;
  v41[1] = a22;
  v49.receiver = v30;
  v49.super_class = v48;
  v42 = objc_msgSendSuper2(&v49, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v38 + 8))(a6, v37);
  (*(v35 + 8))(a5, v34);
  return v42;
}

id ProxiedRequestContext.init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  ObjectType = swift_getObjectType();
  v30 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v30 = a1;
  v30[1] = a2;
  v31 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v31 = a3;
  v31[1] = a4;
  v32 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v33 = type metadata accessor for InteractionType();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v23[v32], a5, v33);
  v35 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v36 = type metadata accessor for InputOrigin();
  v37 = *(v36 - 8);
  (*(v37 + 16))(&v23[v35], a6, v36);
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = a7;
  v38 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v38 = a8;
  v38[1] = a9;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = a10;
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = a11;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = a12;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = a13;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = a14;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = a15;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = a16;
  v39 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v39 = a17;
  v39[1] = a18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a19, &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = a20;
  v40 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v40 = a21;
  v40[1] = a22;
  v48.receiver = v23;
  v48.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v48, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v37 + 8))(a6, v36);
  (*(v34 + 8))(a5, v33);
  return v41;
}

unint64_t ProxiedRequestContext.CodingKeys.rawValue.getter(char a1)
{
  result = 0x6449656361;
  switch(a1)
  {
    case 1:
      result = 0x6449666572;
      break;
    case 2:
    case 13:
      result = 0x7463617265746E69;
      break;
    case 3:
      result = 0x69724F7475706E69;
      break;
    case 4:
      result = 0x726143654D656361;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0x7246736579457369;
      break;
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x7463657269447369;
      break;
    case 14:
      result = 0x4D6E496567726162;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationTurnDataXPC.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ProxiedRequestContext.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized ProxiedRequestContext.CodingKeys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ProxiedRequestContext.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ProxiedRequestContext.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProxiedRequestContext.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized ProxiedRequestContext.CodingKeys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProxiedRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProxiedRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ProxiedRequestContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProxiedRequestContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DefaultMeCardProxy and conformance DefaultMeCardProxy()
{
  result = lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy;
  if (!lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy)
  {
    type metadata accessor for DefaultMeCardProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy);
  }

  return result;
}

unint64_t specialized ConversationTurnDataXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationTurnDataXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ProxiedRequestContext.CodingKeys.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    v15 = a3[7];
    v16 = type metadata accessor for SessionConfiguration();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(&a2[v15], 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      memcpy(&v4[v15], &a2[v15], *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(&v4[v15], &a2[v15], v16);
      (*(v17 + 56))(&v4[v15], 0, 1, v16);
    }

    v19 = a3[8];
    v20 = a3[9];
    v21 = *&a2[v19];
    *&v4[v19] = v21;
    v22 = v21;
    if (v12(&a2[v20], 1, v10))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v4[v20], &a2[v20], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v20], &a2[v20], v10);
      (*(v11 + 56))(&v4[v20], 0, 1, v10);
    }

    v24 = a3[11];
    *&v4[a3[10]] = *&a2[a3[10]];
    v4[v24] = a2[v24];
    v25 = a3[12];
    v26 = a3[13];
    v27 = *&a2[v25];
    *&v4[v25] = v27;
    v28 = &v4[v26];
    v29 = &a2[v26];
    v30 = *&a2[v26 + 8];

    v31 = v27;
    if (v30 >> 60 == 15)
    {
      *v28 = *v29;
    }

    else
    {
      v32 = *v29;
      outlined copy of Data._Representation(v32, v30);
      *v28 = v32;
      *(v28 + 1) = v30;
    }
  }

  return v4;
}

char *assignWithCopy for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);

  v8 = a3[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v46 = v11;
  v13 = v11(&a2[v8], 1, v9);
  v45 = v10;
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(&a1[v8], v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 24))(&a1[v8], &a2[v8], v9);
LABEL_7:
  v47 = a3;
  v15 = a3[7];
  v16 = type metadata accessor for SessionConfiguration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 16))(&a1[v15], &a2[v15], v16);
      (*(v17 + 56))(&a1[v15], 0, 1, v16);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v20)
  {
    (*(v17 + 8))(&a1[v15], v16);
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v17 + 24))(&a1[v15], &a2[v15], v16);
LABEL_13:
  v22 = a3[8];
  v23 = *&a2[v22];
  v24 = *&a1[v22];
  *&a1[v22] = v23;
  v25 = v23;

  v26 = v47[9];
  v27 = v46(&a1[v26], 1, v9);
  v28 = v46(&a2[v26], 1, v9);
  if (v27)
  {
    if (!v28)
    {
      (*(v45 + 16))(&a1[v26], &a2[v26], v9);
      (*(v45 + 56))(&a1[v26], 0, 1, v9);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v28)
  {
    (*(v45 + 8))(&a1[v26], v9);
LABEL_18:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v26], &a2[v26], *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  (*(v45 + 24))(&a1[v26], &a2[v26], v9);
LABEL_19:
  v30 = v47[10];
  v31 = *&a1[v30];
  *&a1[v30] = *&a2[v30];

  a1[v47[11]] = a2[v47[11]];
  v32 = v47[12];
  v33 = *&a1[v32];
  v34 = *&a2[v32];
  *&a1[v32] = v34;
  v35 = v34;

  v36 = v47[13];
  v37 = &a1[v36];
  v38 = &a2[v36];
  v39 = *&a2[v36 + 8];
  if (*&a1[v36 + 8] >> 60 != 15)
  {
    if (v39 >> 60 != 15)
    {
      v41 = *v38;
      outlined copy of Data._Representation(v41, v39);
      v42 = *v37;
      v43 = v37[1];
      *v37 = v41;
      v37[1] = v39;
      outlined consume of Data._Representation(v42, v43);
      return a1;
    }

    outlined destroy of Data(v37);
    goto LABEL_24;
  }

  if (v39 >> 60 == 15)
  {
LABEL_24:
    *v37 = *v38;
    return a1;
  }

  v40 = *v38;
  outlined copy of Data._Representation(v40, v39);
  *v37 = v40;
  v37[1] = v39;
  return a1;
}

char *initializeWithTake for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(&a2[v7], 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[7];
  v13 = type metadata accessor for SessionConfiguration();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&a2[v12], 1, v13))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 1, v13);
  }

  v16 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  if (v10(&a2[v16], 1, v8))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v16], &a2[v16], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v16], &a2[v16], v8);
    (*(v9 + 56))(&a1[v16], 0, 1, v8);
  }

  v18 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v18] = a2[v18];
  v19 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  *&a1[v19] = *&a2[v19];
  return a1;
}

char *assignWithTake for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = a3[6];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&a1[v10], 1, v11);
  v41 = v13;
  v15 = v13(&a2[v10], 1, v11);
  v42 = v12;
  if (v14)
  {
    if (!v15)
    {
      (*(v12 + 32))(&a1[v10], &a2[v10], v11);
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v15)
  {
    (*(v12 + 8))(&a1[v10], v11);
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 40))(&a1[v10], &a2[v10], v11);
LABEL_7:
  v17 = a3[7];
  v18 = type metadata accessor for SessionConfiguration();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(&a1[v17], 1, v18);
  v22 = v20(&a2[v17], 1, v18);
  if (v21)
  {
    if (!v22)
    {
      (*(v19 + 32))(&a1[v17], &a2[v17], v18);
      (*(v19 + 56))(&a1[v17], 0, 1, v18);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v22)
  {
    (*(v19 + 8))(&a1[v17], v18);
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v17], &a2[v17], *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v19 + 40))(&a1[v17], &a2[v17], v18);
LABEL_13:
  v24 = a3[8];
  v25 = *&a1[v24];
  *&a1[v24] = *&a2[v24];

  v26 = a3[9];
  v27 = v41(&a1[v26], 1, v11);
  v28 = v41(&a2[v26], 1, v11);
  if (v27)
  {
    if (!v28)
    {
      (*(v42 + 32))(&a1[v26], &a2[v26], v11);
      (*(v42 + 56))(&a1[v26], 0, 1, v11);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v28)
  {
    (*(v42 + 8))(&a1[v26], v11);
LABEL_18:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v26], &a2[v26], *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  (*(v42 + 40))(&a1[v26], &a2[v26], v11);
LABEL_19:
  v30 = a3[10];
  v31 = *&a1[v30];
  *&a1[v30] = *&a2[v30];

  v32 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v33 = *&a1[v32];
  *&a1[v32] = *&a2[v32];

  v34 = a3[13];
  v35 = &a1[v34];
  v36 = &a2[v34];
  v37 = *&a1[v34 + 8];
  if (v37 >> 60 != 15)
  {
    v38 = v36[1];
    if (v38 >> 60 != 15)
    {
      v39 = *v35;
      *v35 = *v36;
      v35[1] = v38;
      outlined consume of Data._Representation(v39, v37);
      return a1;
    }

    outlined destroy of Data(v35);
  }

  *v35 = *v36;
  return a1;
}

void type metadata completion function for RemoteConversationTurnData()
{
  _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for ProxiedRequestContext()
{
  v0 = type metadata accessor for InteractionType();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for InputOrigin();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ProxiedRequestContext.__allocating_init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)()
{
  v2 = *(v0 + 216);

  return v2();
}

void _s10Foundation4UUIDVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t SendableRemoteConversationXPCWrapper.__allocating_init(wrapping:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void SendableRemoteConversationXPCWrapper.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = MEMORY[0x1E12A1410]();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_20;
  v9 = _Block_copy(v10);

  [v7 warmupWithRefId:v8 reply:v9];
  _Block_release(v9);
}

void SendableRemoteConversationXPCWrapper.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = MEMORY[0x1E12A1410](a3, a4);
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v15[3] = &block_descriptor_3_2;
  v14 = _Block_copy(v15);

  [v11 canHandleWithInputData:isa rcId:v13 reply:v14];
  _Block_release(v14);
}

void SendableRemoteConversationXPCWrapper.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v7[3] = &block_descriptor_6_1;
  v6 = _Block_copy(v7);

  [v5 cancelWithCancellationReason:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.ensureReady(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v5[3] = &block_descriptor_12_0;
  v4 = _Block_copy(v5);

  [v3 ensureReadyWithReply_];
  _Block_release(v4);
}

void SendableRemoteConversationXPCWrapper.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v9[3] = &block_descriptor_15;
  v8 = _Block_copy(v9);

  [v7 startTurnWithTurnData:a1 bridge:a2 reply:v8];
  _Block_release(v8);
}

void SendableRemoteConversationXPCWrapper.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = MEMORY[0x1E12A1410]();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_18;
  v11 = _Block_copy(v12);

  [v9 startTurnFromCacheWithExecutionRequestId:v10 bridge:a3 reply:v11];
  _Block_release(v11);
}

void SendableRemoteConversationXPCWrapper.accept(inputData:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v12[3] = &block_descriptor_21;
  v11 = _Block_copy(v12);

  [v9 acceptWithInputData:isa speechData:a3 reply:v11];
  _Block_release(v11);
}

void SendableRemoteConversationXPCWrapper.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v11[3] = &block_descriptor_24;
  v10 = _Block_copy(v11);

  [v8 acceptInitialInputWithInputIdentifier:isa speechData:a2 reply:v10];
  _Block_release(v10);
}

void SendableRemoteConversationXPCWrapper.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v7[3] = &block_descriptor_27;
  v6 = _Block_copy(v7);

  [v5 prepareWithBridge:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.paraphrase(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v5[3] = &block_descriptor_30;
  v4 = _Block_copy(v5);

  [v3 paraphraseWithReply_];
  _Block_release(v4);
}

void SendableRemoteConversationXPCWrapper.commit(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [v5 commitWithBridge:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v8[3] = a3;
  v7 = _Block_copy(v8);

  [v6 *a4];
  _Block_release(v7);
}

void SendableRemoteConversationXPCWrapper.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v8[3] = a3;
  v7 = _Block_copy(v8);

  [v6 *a4];
  _Block_release(v7);
}

void SendableRemoteConversationXPCWrapper.flexibleExecutionSupportOptions(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v5[3] = &block_descriptor_45;
  v4 = _Block_copy(v5);

  [v3 flexibleExecutionSupportOptionsWithReply_];
  _Block_release(v4);
}

uint64_t SendableRemoteConversationXPCWrapper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

id one-time initialization function for remoteConversationXPCInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584AA48;
  v2 = [v0 interfaceWithProtocol_];

  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  v3 = static ServiceBridgeHelper.executionBridgeXPCInterface;
  [v2 setInterface:static ServiceBridgeHelper.executionBridgeXPCInterface forSelector:sel_startTurnWithTurnData_bridge_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_startTurnFromCacheWithExecutionRequestId_bridge_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_prepareWithBridge_reply_ argumentIndex:0 ofReply:0];
  result = [v2 setInterface:v3 forSelector:sel_commitWithBridge_reply_ argumentIndex:0 ofReply:0];
  static RemoteConversationXPCHelper.remoteConversationXPCInterface = v2;
  return result;
}

void one-time initialization function for remoteConversationHostXPCInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584AC38;
  v2 = [v0 interfaceWithProtocol_];

  static RemoteConversationXPCHelper.remoteConversationHostXPCInterface = v2;
}

uint64_t RemoteFlowPluginBundleConversationHandler.bundlePath.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.remoteConversationClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t RemoteFlowPluginBundleConversationHandler.remoteConversationClient.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.loadRemoteConversationTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t RemoteFlowPluginBundleConversationHandler.loadRemoteConversationTask.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

void RemoteFlowPluginBundleConversationHandler.init()()
{
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000065, 0x80000001DCA86480, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/RemoteFlowPluginBundleConversationHandler.swift", 136, 2, 26);
  __break(1u);
}

void *RemoteFlowPluginBundleConversationHandler.__allocating_init(bundleId:bundlePath:affinityScorer:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[12] = 0;
  v12[13] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  outlined init with take of NSExtensionProtocol(a5, v12 + 7);
  v12[6] = a6;
  return v12;
}

void *RemoteFlowPluginBundleConversationHandler.init(bundleId:bundlePath:affinityScorer:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = 0;
  v6[13] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  outlined init with take of NSExtensionProtocol(a5, v6 + 7);
  v6[6] = a6;
  return v6;
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v3[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), v5, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)()
{
  v1 = v0[8];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  v5 = v0[7];
  v4 = v0[8];

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(0, 0, v4);
}

{
  v14 = v0;
  v1 = v0[11];
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), v1, 0);
  }

  else
  {
    v2 = v0[9];

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[7];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 16), *(v7 + 24), &v13);
      _os_log_impl(&dword_1DC659000, v5, v6, "Error warming up %s: Could not connect to remote conversation", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = v0[8];

    v11 = v0[1];

    return v11();
  }
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)();
  v5 = v1[19];
  v6 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v5);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = *(v6 + 16);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return (v13)(v0 + 14, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v11, v5, v6);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = *(v2 + 96);
  if (v0)
  {

    v7 = *(v3 + 88);
    v8 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  else
  {

    v7 = *(v3 + 88);
    v8 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), *(v0 + 72), 0);
}

{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

{
  v13 = v0;
  v1 = v0[9];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v12);
    _os_log_impl(&dword_1DC659000, v4, v5, "Error warming up %s: Could not connect to remote conversation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  v6 = *(v3 + 72);
  v7 = *(v3 + 64);
  if (v1)
  {

    outlined destroy of UUID?(v7);
    v8 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  else
  {
    outlined destroy of UUID?(v7);
    v8 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, 0);
}

void *RemoteFlowPluginBundleConversationHandler.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[12];

  v5 = v0[13];

  return v0;
}

uint64_t protocol witness for ConversationHandler.warmup(refId:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteFlowPluginBundleConversationHandler.warmup(refId:)(a1, a2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance RemoteFlowPluginBundleConversationHandler@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t instantiation function for generic protocol witness table for RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2)
{
  result = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, a2, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
  *(a1 + 8) = result;
  return result;
}

void *RemoteFlowPluginPackage.__allocating_init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[4] = a6;
  v14[5] = a5;
  outlined init with copy of AffinityScorer?(a7, &v17);
  if (v18)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v17, v19);
  }

  else
  {
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](a1, a2);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v15 = v19[0];

    specialized logAction<A>(label:_:)(v15, *(&v15 + 1), a1, a2, v19);

    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v18)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v19, (v14 + 8));
  return v14;
}

void *RemoteFlowPluginPackage.loadRemoteConversationHandler()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)();
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[6];
  v4 = v0[7];
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 8), v9);
  v6 = v0[4];
  type metadata accessor for RemoteFlowPluginBundleConversationHandler();
  v7 = swift_allocObject();
  v7[12] = 0;
  v7[13] = 0;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;
  v7[5] = v4;
  outlined init with take of ReferenceResolutionClientProtocol(v9, (v7 + 7));
  v7[6] = v6;

  return v7;
}

uint64_t FlowPluginPackageFinder.__allocating_init(wrapping:sharedFlowPluginServiceClient:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t RemoteFlowPluginPackage.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RemoteFlowPluginPackage.bundlePath.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *RemoteFlowPluginPackage.__allocating_init(path:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v7 = MEMORY[0x1E12A1410](a1, a2);

  v8 = [v6 initWithPath_];

  if (v8)
  {
    return specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v8, a3);
  }

  return 0;
}

void *RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a6;
  v7[5] = a5;
  outlined init with copy of AffinityScorer?(a7, &v13);
  if (v14)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v13, v15);
  }

  else
  {
    *&v15[0] = 0;
    *(&v15[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](a1, a2);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v11 = v15[0];

    specialized logAction<A>(label:_:)(v11, *(&v11 + 1), a1, a2, v15);

    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v14)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v13, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v15, (v7 + 8));
  return v7;
}

uint64_t closure #1 in implicit closure #1 in RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AmbiguityFeatureFlags.forceEnabled;
  if (!*(static AmbiguityFeatureFlags.forceEnabled + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v8 & 1) == 0))
  {
    v23[3] = &type metadata for AmbiguityFeatureFlags;
    v23[4] = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
    LOBYTE(v23[0]) = 0;
    v20 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    static AffinityScorerManager.affinityScorer(for:)(a1, a2, v23);
    v21 = type metadata accessor for AffinityScoringAdapter();
    a3[3] = v21;
    a3[4] = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, 255, type metadata accessor for AffinityScoringAdapter);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    outlined init with copy of ReferenceResolutionClientProtocol(v23, boxed_opaque_existential_0 + *(v21 + 20));
    UUID.init()();
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  if (*(*(v6 + 56) + v7) == 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v23);
    _os_log_impl(&dword_1DC659000, v10, v11, "loadAffinityScorer Error loading affinity scorer for plugin %s, affinity scoring v2 is not enabled", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v14 = type metadata accessor for FixedAffinityScorer(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  UUID.init()();
  v18 = v17 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v18 = 0;
  *(v18 + 8) = 0;
  a3[3] = v14;
  result = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, 255, type metadata accessor for FixedAffinityScorer);
  a3[4] = result;
  *a3 = v17;
  return result;
}