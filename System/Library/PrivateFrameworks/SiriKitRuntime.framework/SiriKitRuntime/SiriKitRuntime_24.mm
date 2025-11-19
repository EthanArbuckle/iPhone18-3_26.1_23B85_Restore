uint64_t NLResponse.requestLanguageVariant.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_MultilingualVariant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v4, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v10 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  }

  else
  {
    v12 = Siri_Nlu_External_LanguageVariantResult.multilingualVariant.getter();
    (*(v11 + 8))(v4, v10);
    if (*(v12 + 16))
    {
      (*(v6 + 16))(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      v13 = Siri_Nlu_External_MultilingualVariant.languageVariantName.getter();
      (*(v6 + 8))(v9, v5);
      return v13;
    }
  }

  return 0;
}

uint64_t NLResponse.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v3 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v0;
}

uint64_t ConversationUserInput.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConversationUserInput.conversationUserInputId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *ConversationUserInput.speechPackage.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *ConversationUserInput.userSpecificInfoForRecognizedUser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  v2 = v1;
  return v1;
}

void *ConversationUserInput.userSpecificInfoForUserMeetingSessionThreshold.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  v2 = v1;
  return v1;
}

uint64_t ConversationUserInput.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);

  return v1;
}

uint64_t NLResponse.nlResponseStatusCode.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *ConversationUserInput.init(resultCandidateId:speechPackage:nlResponse:mitigationDecision:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:utterance:asrLocation:nlLocation:flowRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v42 = a8;
  v40 = a12;
  v41 = a13;
  v38 = a7;
  v39 = a11;
  v36 = a9;
  v37 = a10;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v22 + 8))(v25, v21);
  *(v14 + 4) = v26;
  *(v14 + 5) = v28;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = a6;
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v38;
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
  v29 = &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v30 = v37;
  *v29 = v36;
  *(v29 + 1) = v30;
  v31 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v32 = type metadata accessor for ExecutionLocation();
  v33 = *(*(v32 - 8) + 32);
  v33(&v14[v31], v39, v32);
  v33(&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v40, v32);
  v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v42;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41, &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v14;
}

uint64_t PommesInfo.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v23 = *(v0 + 16);
  v10 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  v11 = String.init<A>(describing:)();
  v23 = 123;
  v24 = 0xE100000000000000;
  MEMORY[0x1E12A1580](v11);

  v12 = v23;
  v13 = v24;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, v9, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v23 = v12;
  v24 = v13;

  MEMORY[0x1E12A1580](v14, v16);

  v17 = v23;
  v18 = v24;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, v5, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  v23 = v17;
  v24 = v18;

  MEMORY[0x1E12A1580](v19, v21);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v23;
}

uint64_t static PommesInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static PommesInfo.supportsSecureCoding = a1;
  return result;
}

void *PommesInfo.pommesResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PommesInfo.init(pommesResponse:pommesError:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v3 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v3;
}

uint64_t PommesInfo.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v0;
}

void type metadata completion function for NLResponse()
{
  v0 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for Siri_Nlu_External_LanguageVariantResult?, MEMORY[0x1E69D0BD8]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for ServerFallbackReason?, MEMORY[0x1E69D0790]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for NLRoutingDecisionMessage.RoutingDecision?, MEMORY[0x1E69D0300]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for ConversationUserInput()
{
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for TTResponseMessage.MitigationDecision?, MEMORY[0x1E69D0280]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ExecutionLocation();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for FlowRedirectContext?, MEMORY[0x1E69CFB38]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for PommesInfo()
{
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for PommesError?, MEMORY[0x1E69D04F8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for PommesSearchReason?, MEMORY[0x1E69CE650]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NLResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NLResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys);
  }

  return result;
}

unint64_t specialized NLResponse.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NLResponse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t CorrectionsEngine.getCorrectionFlow(pluginId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for SiriCorrectionsFlow();
  v11 = type metadata accessor for ResponseFactory();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = ResponseFactory.init()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static SiriKitEventSender.current.getter();
  *&v17 = specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, v14, &v17, v5, &v16, v10, a3, a4);
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow();
  Flow.toActingFlow()();
}

unint64_t lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow()
{
  result = lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow;
  if (!lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow)
  {
    type metadata accessor for SiriCorrectionsFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow);
  }

  return result;
}

uint64_t get_witness_table_14SiriKitRuntime17CorrectionsEngineRzlqd__0aB4Flow06ActingF0HD2_AC0F0PACE02togF0QryFQOyAA0adF0C_Qo_HOTm()
{
  type metadata accessor for SiriCorrectionsFlow();
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow();
  return swift_getOpaqueTypeConformance2();
}

void *SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, __int128 *a6)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  v16 = specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v15, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v16;
}

uint64_t static SiriCorrectionsFlow.State.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  outlined init with copy of SiriCorrectionsFlow.State(a1, v4);
  outlined init with copy of SiriCorrectionsFlow.State(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMd, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMR);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  outlined destroy of SiriCorrectionsFlow.State(v5);
LABEL_6:
  outlined destroy of SiriCorrectionsFlow.State(v4);
  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriCorrectionsFlow.State(__int128 *a1, __int128 *a2)
{
  outlined init with copy of SiriCorrectionsFlow.State(a1, v4);
  outlined init with copy of SiriCorrectionsFlow.State(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMd, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMR);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  outlined destroy of SiriCorrectionsFlow.State(v5);
LABEL_6:
  outlined destroy of SiriCorrectionsFlow.State(v4);
  return 1;
}

uint64_t SiriCorrectionsFlow.hostPluginId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriCorrectionsFlow.hostPluginId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriCorrectionsFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state;
  swift_beginAccess();
  return outlined init with copy of SiriCorrectionsFlow.State((v1 + v3), a1);
}

uint64_t SiriCorrectionsFlow.state.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state;
  swift_beginAccess();
  outlined assign with take of SiriCorrectionsFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

void *SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, __int128 *a6)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v19, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v21;
}

uint64_t SiriCorrectionsFlow.execute(completion:)()
{
  type metadata accessor for SiriCorrectionsFlow();
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SiriCorrectionsFlow.execute()(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  v3 = type metadata accessor for PluginAction();
  v2[43] = v3;
  v4 = *(v3 - 8);
  v2[44] = v4;
  v5 = *(v4 + 64) + 15;
  v2[45] = swift_task_alloc();
  v6 = type metadata accessor for CorrectionsExitValue();
  v2[46] = v6;
  v7 = *(v6 - 8);
  v2[47] = v7;
  v8 = *(v7 + 64) + 15;
  v2[48] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v11 = type metadata accessor for ActivityType();
  v2[53] = v11;
  v12 = *(v11 - 8);
  v2[54] = v12;
  v13 = *(v12 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

uint64_t SiriCorrectionsFlow.execute()()
{
  v103 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = type metadata accessor for Logger();
  *(v0 + 456) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  (*(*v1 + 216))();
  if (*(v0 + 136))
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v5 = *(v0 + 368);
    v6 = *(v0 + 328);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 112), v0 + 152);
    v7 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
    dispatch thunk of CorrectingFlow.correctionsExitValue.getter();
    SiriCorrectionsFlow.logExecutedCorrectionsFlow(exitValue:)(v3);
    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
LABEL_16:
    v37 = *(v0 + 392);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);
    v40 = *(v0 + 328);
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    (*(*v40 + 224))(v101);
    v41 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v40 + v41, v37, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      v42 = *(v0 + 320);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 392), &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
      static ExecuteResponse.complete()();
    }

    else
    {
      v43 = *(v0 + 456);
      (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 392), *(v0 + 344));
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DC659000, v44, v45, "[CorrectionsFlow] sending followup action", v46, 2u);
        MEMORY[0x1E12A2F50](v46, -1, -1);
      }

      v48 = *(v0 + 352);
      v47 = *(v0 + 360);
      v49 = *(v0 + 344);
      v50 = *(v0 + 320);

      static ExecuteResponse.redirect(nextPluginAction:)();
      (*(v48 + 8))(v47, v49);
    }

LABEL_21:
    v52 = *(v0 + 440);
    v51 = *(v0 + 448);
    v54 = *(v0 + 408);
    v53 = *(v0 + 416);
    v56 = *(v0 + 392);
    v55 = *(v0 + 400);
    v57 = *(v0 + 384);
    v58 = *(v0 + 360);

    v59 = *(v0 + 8);

    return v59();
  }

  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v12 = *(v0 + 416);
  v13 = *(v0 + 328);
  v99 = *(v0 + 408);
  v100 = *(v0 + 336);
  v90 = v10[13];
  v90(v9, *MEMORY[0x1E69CFD90], v11);
  v14 = type metadata accessor for SiriKitReliabilityCodes();
  v89 = *(v14 - 8);
  v94 = v14;
  v91 = *(v89 + 56);
  v91(v12, 1, 1);
  v97 = *(v13 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
  v92 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), *(v13 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24));
  type metadata accessor for SiriKitEvent();
  v93 = v10[2];
  v93(v8, v9, v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(v12, v99, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v100;
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v16 = v10[1];
  v16(v9, v11);
  v17 = v13[13];
  v18 = v13[14];
  __swift_project_boxed_opaque_existential_1(v13 + 10, v17);
  LOBYTE(v18) = (*(v18 + 16))(v17, v18);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  if ((v18 & 1) == 0)
  {
    if (v21)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "[CorrectionsFlow] nothing to undo in correctionsManager in flow", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v31 = *(v0 + 440);
    v30 = *(v0 + 448);
    v33 = *(v0 + 416);
    v32 = *(v0 + 424);
    v34 = *(v0 + 408);
    v95 = *(v0 + 336);

    v90(v30, *MEMORY[0x1E69CFDD0], v32);
    (*(v89 + 104))(v33, *MEMORY[0x1E69CFC70], v94);
    (v91)(v33, 0, 1, v94);
    v35 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v93(v31, v30, v32);
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v34, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v36 = swift_allocObject();
    v36[2] = 0xD000000000000027;
    v36[3] = 0x80000001DCA81C00;
    v36[4] = v95;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v16(v30, v32);
    goto LABEL_16;
  }

  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "[CorrectionsFlow] undoing using correctionsManager", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v23 = v13[13];
  v24 = v13[14];
  __swift_project_boxed_opaque_existential_1(v13 + 10, v23);
  (*(v24 + 24))(v23, v24);
  outlined init with copy of UndoResult(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) != 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 64), v0 + 192);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1DC659000, v78, v79, "[CorrectionsFlow] Handling registered correcting flow", v80, 2u);
        MEMORY[0x1E12A2F50](v80, -1, -1);
      }

      v81 = *(v0 + 328);

      if (SiriCorrectionsFlow.isSteeringInputAcceptedBy(correctingFlow:)((v0 + 192)))
      {
        v82 = *(v0 + 400);
        v83 = *(v0 + 328);
        (*(*(v0 + 352) + 56))(v82, 1, 1, *(v0 + 344));
        v84 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
        swift_beginAccess();
        outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v82, v83 + v84, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
        swift_endAccess();
      }

      v85 = *(v0 + 320);
      v86 = *(v0 + 328);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 192, v0 + 232);
      (*(*v86 + 224))(v0 + 232);
      v87 = *(v0 + 224);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v88 = *(v87 + 8);
      static ExecuteResponse.ongoing<A>(next:)();
      outlined destroy of UndoResult(v0 + 16);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
      goto LABEL_21;
    }

    v25 = *(v0 + 64);
    *(v0 + 464) = v25;
    v26 = swift_task_alloc();
    *(v0 + 472) = v26;
    *v26 = v0;
    v26[1] = SiriCorrectionsFlow.execute();
    v27 = *(v0 + 328);

    return SiriCorrectionsFlow.execute(undoCommands:)(v25);
  }

  else
  {
    v98 = v16;
    v60 = *(v0 + 64);
    *(v0 + 480) = v60;
    v61 = v60;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v60;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v67;
      *v65 = v67;
      _os_log_impl(&dword_1DC659000, v62, v63, "[CorrectionsFlow] corrections manager returned failure: %@", v64, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    v69 = *(v0 + 440);
    v68 = *(v0 + 448);
    v71 = *(v0 + 416);
    v70 = *(v0 + 424);
    v72 = *(v0 + 408);
    v96 = *(v0 + 336);

    v90(v68, *MEMORY[0x1E69CFDD0], v70);
    (*(v89 + 104))(v71, *MEMORY[0x1E69CFC70], v94);
    (v91)(v71, 0, 1, v94);
    v73 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v93(v69, v68, v70);
    outlined init with copy of ReferenceResolutionClientProtocol?(v71, v72, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v74 = swift_allocObject();
    v74[2] = 0xD000000000000035;
    v74[3] = 0x80000001DCA81C30;
    v74[4] = v96;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v98(v68, v70);
    v75 = swift_task_alloc();
    *(v0 + 488) = v75;
    *v75 = v0;
    v75[1] = SiriCorrectionsFlow.execute();
    v76 = *(v0 + 328);
    v77 = MEMORY[0x1E69E7CC0];

    return SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(v77, 1);
  }
}

{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

{
  v27 = v0;
  outlined destroy of UndoResult((v0 + 2));
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  (*(*v4 + 224))(v25);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v5, v1, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[40];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[49], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    static ExecuteResponse.complete()();
  }

  else
  {
    v7 = v0[57];
    (*(v0[44] + 32))(v0[45], v0[49], v0[43]);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "[CorrectionsFlow] sending followup action", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = v0[44];
    v11 = v0[45];
    v13 = v0[43];
    v14 = v0[40];

    static ExecuteResponse.redirect(nextPluginAction:)();
    (*(v12 + 8))(v11, v13);
  }

  v16 = v0[55];
  v15 = v0[56];
  v18 = v0[51];
  v17 = v0[52];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v22 = v0[45];

  v23 = v0[1];

  return v23();
}

{
  v1 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

{
  v27 = v0;

  outlined destroy of UndoResult(v0 + 16);
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  (*(*v4 + 224))(v25);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v5, v1, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = *(v0 + 320);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 392), &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    static ExecuteResponse.complete()();
  }

  else
  {
    v7 = *(v0 + 456);
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 392), *(v0 + 344));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "[CorrectionsFlow] sending followup action", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = *(v0 + 352);
    v11 = *(v0 + 360);
    v13 = *(v0 + 344);
    v14 = *(v0 + 320);

    static ExecuteResponse.redirect(nextPluginAction:)();
    (*(v12 + 8))(v11, v13);
  }

  v16 = *(v0 + 440);
  v15 = *(v0 + 448);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v21 = *(v0 + 384);
  v22 = *(v0 + 360);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t SiriCorrectionsFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v98 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = &v98 - v11;
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Parse.DirectInvocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  Input.parse.getter();
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x1E69D0158])
  {
    (*(v13 + 8))(v16, v12);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v47 = v105;
    v46 = v106;
    (*(v105 + 16))(v5, a1, v106);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v107[0] = v51;
      *v50 = 136315138;
      lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v47 + 8))(v5, v46);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v107);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_1DC659000, v48, v49, "[CorrectionsFlow] declining input %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v5, v46);
    }

    return 0;
  }

  (*(v13 + 96))(v16, v12);
  (*(v18 + 32))(v24, v16, v17);
  v107[0] = Parse.DirectInvocation.identifier.getter();
  v107[1] = v25;
  v108 = 0xD000000000000024;
  v109 = 0x80000001DCA815B0;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v26 = BidirectionalCollection<>.starts<A>(with:)();

  v27 = v17;
  if ((v26 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.executor);
    (*(v18 + 16))(v21, v24, v17);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v101 = v24;
      v61 = v27;
      v62 = v60;
      v107[0] = v60;
      *v59 = 136315138;
      v63 = Parse.DirectInvocation.identifier.getter();
      v65 = v64;
      v66 = *(v18 + 8);
      v66(v21, v61);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v107);

      *(v59 + 4) = v67;
      _os_log_impl(&dword_1DC659000, v57, v58, "[CorrectionsFlow] CorrectionsFlow declining input. wrong direct invocation identifier %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E12A2F50](v62, -1, -1);
      MEMORY[0x1E12A2F50](v59, -1, -1);

      v66(v101, v61);
    }

    else
    {

      v77 = *(v18 + 8);
      v77(v21, v17);
      v77(v24, v17);
    }

    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.executor);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v104;
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v29, v30, "[CorrectionsFlow] CorrectionsFlow accepting input", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = Parse.DirectInvocation.userData.getter();
  if (v34)
  {
    v35 = v34;
    v101 = v24;
    v36 = type metadata accessor for PropertyListDecoder();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = PropertyListDecoder.init()();
    if (*(v35 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001DCA81B60), (v41 & 1) != 0) && (outlined init with copy of Any(*(v35 + 56) + 32 * v40, v107), (swift_dynamicCast() & 1) != 0))
    {
      v43 = v108;
      v42 = v109;
      v44 = type metadata accessor for PluginAction();
      lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08]);
      v100 = v43;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v99 = v42;
      (*(*(v44 - 8) + 56))(v32, 0, 1, v44);
      v84 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
      v85 = v102;
      swift_beginAccess();
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v32, v85 + v84, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
      swift_endAccess();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v89 = v39;
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1DC659000, v86, v87, "[CorrectionsFlow] Followup PluginAction available.", v90, 2u);
        v91 = v90;
        v39 = v89;
        MEMORY[0x1E12A2F50](v91, -1, -1);
      }

      outlined consume of Data._Representation(v100, v99);
    }

    else
    {
      v86 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DC659000, v86, v68, "[CorrectionsFlow] No followup plugin action.", v69, 2u);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }
    }

    v70 = v103;

    if (*(v35 + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x80000001DCA81BA0), (v72 & 1) != 0))
    {
      outlined init with copy of Any(*(v35 + 56) + 32 * v71, v107);

      if (swift_dynamicCast())
      {
        v73 = v39;
        v75 = v108;
        v74 = v109;
        lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
        v76 = v106;
        v104 = v73;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        (*(v105 + 56))(v70, 0, 1, v76);
        v92 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
        v93 = v102;
        swift_beginAccess();
        outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v70, v93 + v92, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        swift_endAccess();
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_1DC659000, v94, v95, "[CorrectionsFlow] Steering input available.", v97, 2u);
          MEMORY[0x1E12A2F50](v97, -1, -1);
        }

        outlined consume of Data._Representation(v75, v74);

        (*(v18 + 8))(v101, v27);
        return 1;
      }
    }

    else
    {
    }

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v101;
    if (v81)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1DC659000, v79, v80, "[CorrectionsFlow] No steering input in user data.", v83, 2u);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }

    (*(v18 + 8))(v82, v27);
    return 1;
  }

  (*(v18 + 8))(v24, v27);
  return 1;
}

uint64_t SiriCorrectionsFlow.isSteeringInputAcceptedBy(correctingFlow:)(void *a1)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for Input();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for PluginAction();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  v21 = v1 + v20;
  v22 = v15;
  v23 = v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(v21, v14, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v16 + 48))(v14, 1, v22) != 1)
  {
    v26 = v59;
    (*(v16 + 32))(v19, v14, v22);
    v27 = PluginAction.flowHandlerId.getter();
    v29 = v28;
    if (v27 == (*(*v1 + 144))() && v29 == v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.executor);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v47, v48))
        {
          goto LABEL_29;
        }

        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "[CorrectionsFlow] Will not pass steering input because we have cross plugin followup.";
        goto LABEL_28;
      }
    }

    v32 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    v33 = v57;
    PluginAction.input.getter();
    v34 = dispatch thunk of CorrectingFlow.on(correction:)();
    (*(v26 + 8))(v33, v6);
    if (v34)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.executor);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DC659000, v36, v37, "[CorrectionsFlow] flow handles steering, no need to redirect", v38, 2u);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }

      (*(v23 + 8))(v19, v22);
      return 1;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_29:

      (*(v23 + 8))(v19, v22);
      return 0;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "[CorrectionsFlow] The correcting flow will not handle the followup.";
LABEL_28:
    _os_log_impl(&dword_1DC659000, v47, v48, v50, v49, 2u);
    MEMORY[0x1E12A2F50](v49, -1, -1);
    goto LABEL_29;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v24 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v24, v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v25 = v59;
  if ((*(v59 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_31:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.executor);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v53, v54, "[CorrectionsFlow] No steering input.", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    return 0;
  }

  v40 = v56;
  (*(v25 + 32))(v56, v5, v6);
  v41 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  if ((dispatch thunk of CorrectingFlow.on(correction:)() & 1) == 0)
  {
    (*(v25 + 8))(v40, v6);
    goto LABEL_31;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.executor);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v43, v44, "[CorrectionsFlow] flow handles steering with original input.", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  (*(v25 + 8))(v40, v6);
  return 1;
}

uint64_t SiriCorrectionsFlow.execute(undoCommands:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CorrectionsActionOutcome();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(undoCommands:), 0, 0);
}

uint64_t SiriCorrectionsFlow.execute(undoCommands:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] corrections undo action returned, count == %ld", v7, 0xCu);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v8 = v0[2];
  }

  v9 = v0[2];
  v10 = v9[2];
  v0[7] = v10;
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v0[8] = 0;
    v0[9] = v11;
    v12 = v9[7];
    v13 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v12);
    v14 = *(v13 + 8);
    v23 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v17 = v0[6];

    return v23(v17, v12, v13);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    v0[11] = MEMORY[0x1E69E7CC0];
    v20 = v0[3];
    SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(v19);
    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v22 = v0[3];

    return SiriCorrectionsFlow.produceOutput(from:)(v19);
  }
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(undoCommands:), 0, 0);
}

{
  v1 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v0[9]);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v0[8] + 1;
  v3[2] = v5 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, v7, v9);
  if (v10 == v6)
  {
    v0[11] = v3;
    v11 = v0[3];
    SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(v3);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v13 = v0[3];

    return SiriCorrectionsFlow.produceOutput(from:)(v3);
  }

  else
  {
    v15 = v0[8];
    v0[8] = v15 + 1;
    v0[9] = v3;
    v16 = (v0[2] + 40 * v15);
    v17 = v16[12];
    v18 = v16[13];
    __swift_project_boxed_opaque_existential_1(v16 + 9, v17);
    v19 = *(v18 + 8);
    v23 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v22 = v0[6];

    return v23(v22, v17, v18);
  }
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t closure #1 in SiriCorrectionsFlow.sendSiriKitEvent(activityType:statusReason:statusReasonDescription:)(uint64_t *a1)
{
  v1 = *a1;
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t SiriCorrectionsFlow.logExecutedCorrectionsFlow(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v68 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v62 - v9;
  v10 = type metadata accessor for ActivityType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v62 - v16;
  v18 = type metadata accessor for CorrectionsExitValue();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v23, a1, v18, v21);
  v24 = (*(v19 + 88))(v23, v18);
  if (v24 == *MEMORY[0x1E69CFFF0])
  {
    (*(v19 + 96))(v23, v18);
    v25 = *v23;
    v65 = v23[1];
    v66 = v25;
    v26 = v10;
    v27 = v67;
    (*(v11 + 104))(v17, *MEMORY[0x1E69CFDD0], v26);
    v28 = *MEMORY[0x1E69CFC70];
    v29 = type metadata accessor for SiriKitReliabilityCodes();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v27, v28, v29);
    (*(v30 + 56))(v27, 0, 1, v29);
    v31 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v64 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v31);
    type metadata accessor for SiriKitEvent();
    (*(v11 + 16))(v14, v17, v26);
    v32 = v11;
    outlined init with copy of ReferenceResolutionClientProtocol?(v27, v7, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v33 = swift_allocObject();
    v34 = v65;
    v33[2] = v66;
    v33[3] = v34;
    v33[4] = v68;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v35 = v27;
LABEL_3:
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    return (*(v32 + 8))(v17, v26);
  }

  v65 = v7;
  v66 = v14;
  if (v24 == *MEMORY[0x1E69CFFF8])
  {
    (*(v11 + 104))(v17, *MEMORY[0x1E69CFDE0], v10);
    v37 = type metadata accessor for SiriKitReliabilityCodes();
    v38 = v67;
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v39 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
    v41 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v40 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1(v39, v41);
    type metadata accessor for SiriKitEvent();
    (*(v11 + 16))(v66, v17, v10);
    outlined init with copy of ReferenceResolutionClientProtocol?(v38, v65, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v68;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    return (*(v11 + 8))(v17, v10);
  }

  else
  {
    v43 = v2;
    if (v24 == *MEMORY[0x1E69CFFE8])
    {
      v32 = v11;
      (*(v11 + 104))(v17, *MEMORY[0x1E69CFDE0], v10);
      v44 = type metadata accessor for SiriKitReliabilityCodes();
      v45 = v67;
      (*(*(v44 - 8) + 56))(v67, 1, 1, v44);
      v26 = v10;
      v46 = *(v43 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
      v64 = *(v43 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
      __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v46);
      type metadata accessor for SiriKitEvent();
      (*(v11 + 16))(v66, v17, v10);
      outlined init with copy of ReferenceResolutionClientProtocol?(v45, v65, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v47 = swift_allocObject();
      v47[2] = 0xD000000000000011;
      v47[3] = 0x80000001DCA81D90;
      v47[4] = v68;
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      v35 = v45;
      goto LABEL_3;
    }

    v63 = v17;
    v64 = v2;
    v48 = v11;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "[CorrectionsFlow] unexpected correctionsExitValue.", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    v53 = v63;
    (*(v48 + 104))(v63, *MEMORY[0x1E69CFDD0], v10);
    v54 = *MEMORY[0x1E69CFC70];
    v55 = type metadata accessor for SiriKitReliabilityCodes();
    v56 = *(v55 - 8);
    v57 = v67;
    (*(v56 + 104))(v67, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v62[0] = 0x80000001DCA81D60;
    v58 = (v64 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
    v59 = *(v64 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v64 = *(v64 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    v62[1] = __swift_project_boxed_opaque_existential_1(v58, v59);
    type metadata accessor for SiriKitEvent();
    (*(v48 + 16))(v66, v53, v10);
    outlined init with copy of ReferenceResolutionClientProtocol?(v57, v65, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v60 = swift_allocObject();
    v61 = v62[0];
    v60[2] = 0xD00000000000002BLL;
    v60[3] = v61;
    v60[4] = v68;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v48 + 8))(v63, v10);
    return (*(v19 + 8))(v23, v18);
  }
}

uint64_t SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(uint64_t a1)
{
  v64 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = v61 - v7;
  v69 = type metadata accessor for ActivityType();
  v67 = *(v69 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v63 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = v61 - v11;
  v12 = type metadata accessor for CorrectionsActionOutcome();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v80 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = v61 - v21;
  v23 = *(a1 + 16);
  v61[0] = v23;
  v61[1] = a1;
  if (v23)
  {
    v26 = *(v13 + 16);
    v24 = v13 + 16;
    v25 = v26;
    v73 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v27 = a1 + v73;
    v79 = *(v24 + 56);
    v28 = (v24 + 72);
    v29 = *MEMORY[0x1E69D0050];
    v77 = *MEMORY[0x1E69D0040];
    v78 = v29;
    v71 = (v24 + 80);
    v72 = (v24 - 8);
    v30 = MEMORY[0x1E69E7CC0];
    v75 = v24;
    v76 = (v24 + 16);
    v74 = v26;
    v70 = (v24 + 72);
    (v26)(v22, a1 + v73, v12, v20);
    while (1)
    {
      v25(v18, v22, v12);
      v34 = (*v28)(v18, v12);
      if (v34 == v78 || v34 == v77)
      {
        (*v71)(v18, v12);
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        v36 = *v76;
        (*v76)(v80, v22, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1);
          v30 = v81;
        }

        v39 = *(v30 + 16);
        v38 = *(v30 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
          v30 = v81;
        }

        *(v30 + 16) = v39 + 1;
        v40 = v30 + v73 + v39 * v79;
        v33 = v79;
        v36(v40, v80, v12);
        v25 = v74;
      }

      else
      {
        v31 = *v72;
        (*v72)(v18, v12);
        v31(v22, v12);
        v28 = v70;
        v33 = v79;
      }

      v27 += v33;
      if (!--v23)
      {
        break;
      }

      (v25)(v22, v27, v12, v32);
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v41 = *(v30 + 16);

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.executor);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v45 = os_log_type_enabled(v43, v44);
  v47 = v68;
  v46 = v69;
  v49 = v66;
  v48 = v67;
  if (v45)
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = v41;
    *(v50 + 12) = 2048;
    v51 = v61[0];
    *(v50 + 14) = v61[0];

    _os_log_impl(&dword_1DC659000, v43, v44, "[CorrectionsFlow] %ld out of %ld corrections actions report success.", v50, 0x16u);
    MEMORY[0x1E12A2F50](v50, -1, -1);
  }

  else
  {

    v51 = v61[0];
  }

  v52 = *(v48 + 104);
  if (v41 == v51)
  {
    v52(v49, *MEMORY[0x1E69CFDE0], v46);
    v53 = type metadata accessor for SiriKitReliabilityCodes();
    (*(*(v53 - 8) + 56))(v47, 1, 1, v53);
    v54 = *(v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), *(v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24));
    type metadata accessor for SiriKitEvent();
    (*(v48 + 16))(v63, v49, v46);
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v65, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v55 = swift_allocObject();
    v55[2] = 0;
    v55[3] = 0;
  }

  else
  {
    v52(v49, *MEMORY[0x1E69CFDD0], v46);
    v56 = *MEMORY[0x1E69CFC70];
    v57 = type metadata accessor for SiriKitReliabilityCodes();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v47, v56, v57);
    (*(v58 + 56))(v47, 0, 1, v57);
    v59 = *(v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v80 = *(v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v59);
    type metadata accessor for SiriKitEvent();
    (*(v48 + 16))(v63, v49, v46);
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v65, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v55 = swift_allocObject();
    v55[2] = 0xD000000000000022;
    v55[3] = 0x80000001DCA81D30;
  }

  v55[4] = v64;
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  return (*(v48 + 8))(v49, v46);
}

uint64_t SiriCorrectionsFlow.produceOutput(from:)(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = type metadata accessor for CorrectionsActionOutcome();
  v2[64] = v3;
  v4 = *(v3 - 8);
  v2[65] = v4;
  v5 = *(v4 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.produceOutput(from:), 0, 0);
}

void SiriCorrectionsFlow.produceOutput(from:)()
{
  v93 = v0;
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    *&v82[8] = 0;
    v80 = *(v0 + 544);
    v81 = 0;
    v3 = *(v0 + 520);
    v4 = *(v3 + 16);
    v3 += 16;
    v89 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v86 = *(v3 + 56);
    v88 = (v3 + 72);
    v87 = *MEMORY[0x1E69D0050];
    *v82 = *MEMORY[0x1E69D0048];
    v79 = *MEMORY[0x1E69D0040];
    v6 = (v3 - 8);
    v85 = (v3 + 80);
    v90 = MEMORY[0x1E69E7CC0];
    v83 = (v3 - 8);
    while (1)
    {
      v9 = *(v0 + 552);
      v10 = *(v0 + 544);
      v11 = *(v0 + 512);
      v91 = v5;
      v89(v9);
      (v89)(v10, v9, v11);
      v12 = (*v88)(v10, v11);
      if (v12 == v87)
      {
        v13 = *(v0 + 544);
        (*v85)(v13, *(v0 + 512));
        v14 = *v13;
        v15 = v13[1];
        *(v0 + 368) = *(v13 + 4);
        *(v0 + 336) = v14;
        *(v0 + 352) = v15;
        outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 336, v0 + 416, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        if (*(v0 + 440))
        {
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 416), v0 + 376);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 376, v0 + 456);
          v16 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
          }

          v84 = v2;
          v18 = v16[2];
          v17 = v16[3];
          if (v18 >= v17 >> 1)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
          }

          else
          {
            v90 = v16;
          }

          v19 = *(v0 + 552);
          v20 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          v6 = v83;
          (*v83)(v19, v20);
          v90[2] = v18 + 1;
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 456), &v90[5 * v18 + 4]);
LABEL_41:
          v2 = v84;
          goto LABEL_4;
        }

        v7 = *(v0 + 552);
        v8 = *(v0 + 512);
        outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        (*v6)(v7, v8);
        outlined destroy of ReferenceResolutionClientProtocol?(v0 + 416, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
      }

      else
      {
        if (v12 == *v82)
        {
          v21 = *(v0 + 544);
          (*v85)(v21, *(v0 + 512));
          v22 = *(v80 + 40);
          v23 = *(v80 + 48);
          v24 = *v21;
          v25 = v21[1];
          *(v0 + 208) = *(v21 + 4);
          *(v0 + 176) = v24;
          *(v0 + 192) = v25;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.executor);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v92 = v30;
            *v29 = 136315138;
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v92);

            *(v29 + 4) = v31;
            _os_log_impl(&dword_1DC659000, v27, v28, "[CorrectionsFlow] failure reason: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v30);
            v6 = v83;
            MEMORY[0x1E12A2F50](v30, -1, -1);
            MEMORY[0x1E12A2F50](v29, -1, -1);
          }

          else
          {
          }

          if (__OFADD__(*&v82[4], 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }

          ++*&v82[4];
          outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 176, v0 + 256, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          if (!*(v0 + 280))
          {
            v66 = *(v0 + 552);
            v67 = *(v0 + 512);
            outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            (*v6)(v66, v67);
            v68 = v0 + 256;
LABEL_43:
            outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            goto LABEL_4;
          }

          outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v0 + 216);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 216, v0 + 296);
          v42 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
          }

          v44 = v42[2];
          v43 = v42[3];
          v90 = v42;
          if (v44 >= v43 >> 1)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
          }

          v45 = *(v0 + 552);
          v46 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          (*v83)(v45, v46);
          v90[2] = v44 + 1;
          v40 = &v90[5 * v44];
          v6 = v83;
          v41 = (v0 + 296);
        }

        else
        {
          if (v12 != v79)
          {
            v84 = v2;
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v47 = *(v0 + 552);
            v48 = *(v0 + 536);
            v49 = *(v0 + 512);
            v50 = type metadata accessor for Logger();
            __swift_project_value_buffer(v50, static Logger.executor);
            (v89)(v48, v47, v49);
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.debug.getter();
            v53 = os_log_type_enabled(v51, v52);
            v54 = *(v0 + 552);
            v55 = *(v0 + 536);
            if (v53)
            {
              v78 = *(v0 + 552);
              v56 = v6;
              v57 = *(v0 + 528);
              v58 = *(v0 + 512);
              v77 = v52;
              v59 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v92 = v76;
              *v59 = 136315138;
              (v89)(v57, v55, v58);
              v60 = v58;
              v61 = String.init<A>(describing:)();
              v63 = v62;
              v64 = *v56;
              (*v56)(v55, v60);
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v92);

              *(v59 + 4) = v65;
              _os_log_impl(&dword_1DC659000, v51, v77, "[CorrectionsFlow] unknown outcome %s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v76);
              MEMORY[0x1E12A2F50](v76, -1, -1);
              MEMORY[0x1E12A2F50](v59, -1, -1);

              v64(v78, v60);
            }

            else
            {
              v69 = *(v0 + 512);

              v64 = *v6;
              v64(v55, v69);
              v64(v54, v69);
            }

            v64(*(v0 + 544), *(v0 + 512));
            v6 = v83;
            goto LABEL_41;
          }

          v32 = *(v0 + 544);
          (*v85)(v32, *(v0 + 512));
          v33 = *v32;
          v34 = v32[1];
          *(v0 + 48) = *(v32 + 4);
          *(v0 + 16) = v33;
          *(v0 + 32) = v34;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_54;
          }

          ++v81;
          outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          if (!*(v0 + 120))
          {
            v70 = *(v0 + 552);
            v71 = *(v0 + 512);
            outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            (*v6)(v70, v71);
            v68 = v0 + 96;
            goto LABEL_43;
          }

          outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
          v35 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
          }

          v37 = v35[2];
          v36 = v35[3];
          v90 = v35;
          if (v37 >= v36 >> 1)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
          }

          v38 = *(v0 + 552);
          v39 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          (*v83)(v38, v39);
          v90[2] = v37 + 1;
          v40 = &v90[5 * v37];
          v6 = v83;
          v41 = (v0 + 136);
        }

        outlined init with take of ReferenceResolutionClientProtocol(v41, (v40 + 4));
      }

LABEL_4:
      v5 = v91 + v86;
      if (!--v2)
      {
        if (*&v82[4] <= 0)
        {
          v72 = 2 * (v81 > 0);
        }

        else
        {
          v72 = 1;
        }

        v73 = v90;
        goto LABEL_50;
      }
    }
  }

  v72 = 0;
  v73 = MEMORY[0x1E69E7CC0];
LABEL_50:
  *(v0 + 560) = v73;
  v74 = swift_task_alloc();
  *(v0 + 568) = v74;
  *v74 = v0;
  v74[1] = SiriCorrectionsFlow.produceOutput(from:);
  v75 = *(v0 + 504);

  SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(v73, v72);
}

uint64_t SiriCorrectionsFlow.produceOutput(from:)()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v5 = *(*v0 + 536);
  v6 = *(*v0 + 528);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 128) = v5;
  v6 = *(v5 - 8);
  *(v3 + 136) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:), 0, 0);
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[14];
    v0[32] = 0;
    v4 = v3[8];
    v5 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v4);
    v6 = *(MEMORY[0x1E69D0000] + 4);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE39A08](v1 + 32, v4, v5);
  }

  else
  {
    v8 = *(MEMORY[0x1E69CFEC8] + 4);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE398A0]();
  }
}

{
  v1 = *(v0 + 280);
  if (v1 == 1)
  {
    v4 = *(MEMORY[0x1E69CFED0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE398A8]();
  }

  else if (v1 == 2)
  {
    v2 = *(MEMORY[0x1E69CFFB0] + 4);
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE399C8]();
  }

  else
  {
    v6 = *(v0 + 168);
    *(v0 + 216) = v6;
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    static DialogPhase.completion.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    v10 = *(v8 + 32);
    v11 = *(MEMORY[0x1E69CFE88] + 4);
    v15 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    *v12 = v0;
    v12[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
    v13 = *(v0 + 144);

    return v15(v0 + 16, v6, v13);
  }
}

{
  v1 = *(v0 + 64);

  *(v0 + 216) = v1;
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v5 = *(v3 + 32);
  v6 = *(MEMORY[0x1E69CFE88] + 4);
  v10 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  v8 = *(v0 + 144);

  return v10(v0 + 16, v1, v8);
}

{
  v1 = *(v0 + 88);

  *(v0 + 216) = v1;
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v5 = *(v3 + 32);
  v6 = *(MEMORY[0x1E69CFE88] + 4);
  v10 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  v8 = *(v0 + 144);

  return v10(v0 + 16, v1, v8);
}

{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v2);
  v4 = *(MEMORY[0x1E69D0000] + 4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

  return MEMORY[0x1EEE39A08](v0 + 16, v2, v3);
}

{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);

  v6 = *(v0 + 8);

  return v6();
}

{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v3 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[32] + 1;
  if (v1 == v0[19])
  {
    v2 = v0[18];
    v3 = v0[15];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[32] = v1;
    v6 = v0[14];
    v7 = v0[13] + 40 * v1;
    v8 = v6[8];
    v9 = v6[9];
    __swift_project_boxed_opaque_existential_1(v6 + 5, v8);
    v10 = *(MEMORY[0x1E69D0000] + 4);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE39A08](v7 + 32, v8, v9);
  }
}

{
  v1 = v0[22];
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v0[18];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 192);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 208);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 232);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v0[18];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v5 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[23];
  v8 = *v2;
  v4[24] = v1;

  if (v1)
  {
    v6 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v6 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[25];
  v8 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v6 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v6 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void *SiriCorrectionsFlow.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of SiriCorrectionsFlow.State((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state));
  return v0;
}

uint64_t SiriCorrectionsFlow.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of SiriCorrectionsFlow.State((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance SiriCorrectionsFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E69CFA78] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return MEMORY[0x1EEE391E8](a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance SiriCorrectionsFlow(uint64_t a1)
{
  v4 = *(**v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SiriCorrectionsFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriCorrectionsFlow();

  return MEMORY[0x1EEE391F0](v3, a2);
}

void *specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[13] = a8;
  a7[14] = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7 + 10);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a5, a8);
  v18 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  v19 = type metadata accessor for PluginAction();
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  v21 = type metadata accessor for Input();
  (*(*(v21 - 8) + 56))(a7 + v20, 1, 1, v21);
  v22 = a7 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  outlined init with take of ReferenceResolutionClientProtocol(a4, (a7 + 5));
  outlined init with take of ReferenceResolutionClientProtocol(a6, a7 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
  return a7;
}

void *specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SiriCorrectionsFlow();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a5, a8);
  return specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v18, v25, v22, a8, a9);
}

uint64_t outlined init with copy of SiriCorrectionsFlow.State(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 32) = *(a1 + 4);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2);
  }

  return a2;
}

uint64_t *outlined destroy of SiriCorrectionsFlow.State(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1Tm(result);
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of SiriCorrectionsFlow.State(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  return a2;
}

uint64_t type metadata accessor for SiriCorrectionsFlow()
{
  result = type metadata singleton initialization cache for SiriCorrectionsFlow;
  if (!type metadata singleton initialization cache for SiriCorrectionsFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in SiriCorrectionsFlow.sendSiriKitEvent(activityType:statusReason:statusReasonDescription:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in SiriCorrectionsFlow.sendSiriKitEvent(activityType:statusReason:statusReasonDescription:)(a1);
}

uint64_t lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SiriCorrectionsFlow()
{
  type metadata accessor for PluginAction?(319, &lazy cache variable for type metadata for PluginAction?, MEMORY[0x1E69CFE08]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PluginAction?(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SiriCorrectionsFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a1);
}

void type metadata accessor for PluginAction?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *destroy for SiriCorrectionsFlow.State(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

__n128 initializeWithCopy for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

__n128 assignWithCopy for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
  }

  return result;
}

__n128 assignWithTake for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t getEnumTagSinglePayload for SiriCorrectionsFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriCorrectionsFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SiriCorrectionsFlow.State(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for SiriCorrectionsFlow.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t Parse.asCorrectionsParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for USOParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v18, v2, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x1E69D0128])
  {
    (*(v14 + 96))(v18, v13);
    *a1 = *v18;
    v20 = MEMORY[0x1E69CE378];
LABEL_5:
    v21 = *v20;
    v22 = type metadata accessor for CorrectionsParse();
    return (*(*(v22 - 8) + 104))(a1, v21, v22);
  }

  if (v19 == *MEMORY[0x1E69D0168])
  {
    (*(v14 + 96))(v18, v13);
    (*(v9 + 32))(v12, v18, v8);
    USOParse.userParse.getter();
    USOParse.parserIdentifier.getter();
    USOParse.appBundleId.getter();
    CorrectionsUSOParse.init(userParse:parserIdentifier:appBundleId:)();
    (*(v9 + 8))(v12, v8);
    v20 = MEMORY[0x1E69CE380];
    goto LABEL_5;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC659000, v25, v26, "Received unexpected Parse type in asCorrectionsParse", v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = *MEMORY[0x1E69CE388];
  v29 = type metadata accessor for CorrectionsParse();
  (*(*(v29 - 8) + 104))(a1, v28, v29);
  return (*(v14 + 8))(v18, v13);
}

uint64_t CorrectionsService.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v11 = type metadata accessor for Input();
  v5[25] = v11;
  v12 = *(v11 - 8);
  v5[26] = v12;
  v13 = *(v12 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v15 = type metadata accessor for UndoAction();
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static MessageBusActor.shared;
  v5[33] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:), v18, 0);
}

uint64_t CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[CorrectionsService] Checking for corrections with a possible followup", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];

  PluginAction.input.getter();
  CorrectionsService.getUndoAction(_:conversationUserInput:)(v9, v5);
  v0[35] = 0;
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[29];
  v14 = v0[25];
  v15 = v0[26];
  v16 = *(v15 + 8);
  v0[36] = v16;
  v0[37] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  if ((*(v11 + 48))(v13, 1, v10) == 1)
  {
    v17 = v0[33];

    outlined destroy of ReferenceResolutionClientProtocol?(v0[29], &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
LABEL_7:
    v18 = v0[26];
    goto LABEL_8;
  }

  (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v31, v32, "[CorrectionsService] Detected user requested undo", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = v0[32];

  if (UndoAction.isExclusive.getter())
  {
    v35 = v0[33];

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "[CorrectionsService] Undo is exclusive", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v40 = v0[31];
    v39 = v0[32];
    v78 = v0[30];
    v42 = v0[25];
    v41 = v0[26];
    v43 = v0[24];
    v44 = v0[17];
    v45 = v0[13];

    v46 = *(v41 + 56);
    v46(v43, 1, 1, v42);
    CorrectionsService.generateNewInput(from:originalInput:)(v39, v43, v45);
    outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v40 + 8))(v39, v78);
    v19 = v46;
    v20 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(2), (v49 & 1) != 0))
  {
    if (*(*(v47 + 56) + v48) != 1)
    {
LABEL_23:
      v50 = v0[33];
      (*(v0[31] + 8))(v0[32], v0[30]);

      goto LABEL_7;
    }
  }

  else
  {
    v0[5] = &type metadata for SydneyConversationFeatureFlags;
    v0[6] = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    *(v0 + 16) = 2;
    v51 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((v51 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v52 = v0[25];
  v53 = v0[26];
  v54 = v0[23];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[16], v54, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
    v55 = v0[33];
    v56 = v0[22];
    v57 = v0[23];
    v58 = v0[19];
    v59 = v0[20];
    v60 = v0[14];

    outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v59 + 16))(v56, v60, v58);
    v61 = v0[35];
    v62 = v0[17];
    CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v0[32], v0[22], v0[13]);
    v63 = v61;
    v65 = v0[31];
    v64 = v0[32];
    v66 = v0[30];
    v18 = v0[26];
    v67 = v0[22];
    v68 = v0[19];
    v69 = v0[20];
    if (!v63)
    {
      (*(v69 + 8))(v0[22], v0[19]);
      (*(v65 + 8))(v64, v66);
      v20 = 0;
      v19 = *(v18 + 56);
      goto LABEL_9;
    }

    (*(v69 + 8))(v67, v68);
    (*(v65 + 8))(v64, v66);
LABEL_8:
    v19 = *(v18 + 56);
    v20 = 1;
LABEL_9:
    v21 = v0[32];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[27];
    v25 = v0[24];
    v27 = v0[22];
    v26 = v0[23];
    v28 = v0[21];
    v77 = v0[18];
    v19(v0[13], v20, 1, v0[25]);

    v29 = v0[1];

    return v29();
  }

  (*(v0[26] + 32))(v0[27], v0[23], v0[25]);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1DC659000, v70, v71, "[CorrectionsService] Undo is not exclusive", v72, 2u);
    MEMORY[0x1E12A2F50](v72, -1, -1);
  }

  v73 = swift_task_alloc();
  v0[38] = v73;
  *v73 = v0;
  v73[1] = CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:);
  v74 = v0[27];
  v76 = v0[17];
  v75 = v0[18];

  return CorrectionsService.findFollowUpPluginAction(for:)(v75, v74);
}

{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:), v2, 0);
}

{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[34];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[18], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsService] No followup plugin action found, returning nil", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = v0[36];
    v9 = v0[37];
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[30];
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];

    v10(v14, v16);
    (*(v12 + 8))(v11, v13);
    goto LABEL_7;
  }

  v17 = v0[37];
  v18 = v0[21];
  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[18];
  (v0[36])(v0[27], v0[25]);
  v23 = *(v21 + 32);
  v23(v18, v22, v20);
  v23(v19, v18, v20);
  v24 = v0[35];
  v25 = v0[17];
  CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v0[32], v0[22], v0[13]);
  v26 = v24;
  v28 = v0[31];
  v27 = v0[32];
  v29 = v0[30];
  v15 = v0[26];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[20];
  if (v26)
  {

    (*(v32 + 8))(v30, v31);
    (*(v28 + 8))(v27, v29);
LABEL_7:
    v33 = 1;
    goto LABEL_8;
  }

  (*(v32 + 8))(v0[22], v0[19]);
  (*(v28 + 8))(v27, v29);
  v33 = 0;
LABEL_8:
  v34 = v0[32];
  v36 = v0[28];
  v35 = v0[29];
  v37 = v0[27];
  v38 = v0[24];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[21];
  v44 = v0[18];
  (*(v15 + 56))(v0[13], v33, 1, v0[25]);

  v42 = v0[1];

  return v42();
}

uint64_t CorrectionsService.getCorrectionsAction(input:conversationUserInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v34 - v11;
  v13 = type metadata accessor for UndoAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v34[1] = __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34[0] = v17;
    v22 = a3;
    v23 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "[CorrectionsService] Checking for corrections without a possible followup", v21, 2u);
    v24 = v23;
    a3 = v22;
    v17 = v34[0];
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  CorrectionsService.getUndoAction(_:conversationUserInput:)(v35, v12);
  v35 = a1;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    v25 = type metadata accessor for Input();
    return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }

  else
  {
    v34[0] = a3;
    (*(v14 + 32))(v17, v12, v13);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "[CorrectionsService] Detected user requested undo", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v30 = type metadata accessor for Input();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v8, v35, v30);
    v32 = *(v31 + 56);
    v32(v8, 0, 1, v30);
    v33 = v34[0];
    CorrectionsService.generateNewInput(from:originalInput:)(v17, v8, v34[0]);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v14 + 8))(v17, v13);
    return (v32)(v33, 0, 1, v30);
  }
}

uint64_t CorrectionsService.__allocating_init(correctionsClient:conversationHandlerLocator:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t CorrectionsService.init(correctionsClient:conversationHandlerLocator:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t CorrectionsService.getUndoAction(_:conversationUserInput:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for Parse();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CorrectionsParse();
  v40 = *(v44 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v35 - v16;
  if (Input.inputOrAlternativesDirectDismissal.getter())
  {
    v18 = type metadata accessor for UndoAction();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  v36 = a2;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(1), (v22 & 1) != 0))
  {
    if (*(*(v20 + 56) + v21) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v42 = &type metadata for SydneyConversationFeatureFlags;
    v43 = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    LOBYTE(v41[0]) = 1;
    v23 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    if ((v23 & 1) == 0)
    {
LABEL_14:
      v33 = type metadata accessor for UndoAction();
      return (*(*(v33 - 8) + 56))(v36, 1, 1, v33);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol((v38 + 2), v41);
  v24 = v42;
  v25 = v43;
  v38 = __swift_project_boxed_opaque_existential_1(v41, v42);
  Input.parse.getter();
  Parse.asCorrectionsParse()(v13);
  (*(v37 + 8))(v10, v7);
  v26 = *(v39 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  if (v26)
  {
    v27 = (v26 + OBJC_IVAR___SKEUserSpecificInfo_userId);
    v29 = *v27;
    v28 = v27[1];
  }

  CorrectionsContext.init(userId:assistantId:)();
  v30 = type metadata accessor for CorrectionsContext();
  (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
  (*(v25 + 24))(v13, v6, v24, v25);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(v40 + 8))(v13, v44);
  v31 = type metadata accessor for UndoAction();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v17, 1, v31) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    goto LABEL_14;
  }

  v34 = v36;
  (*(v32 + 32))(v36, v17, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return (*(v32 + 56))(v34, 0, 1, v31);
}

uint64_t CorrectionsService.generateNewInput(from:originalInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v58 = a3;
  v4 = type metadata accessor for Parse();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CorrectionsDirectInvocation();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.executor);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = a1;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DC659000, v26, v27, "[CorrectionsService] Generating new input for undo without followup action", v29, 2u);
    v30 = v29;
    a1 = v28;
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  UndoAction.directInvocation.getter();
  v31 = CorrectionsDirectInvocation.userData.getter();
  v32 = *(v15 + 8);
  v32(v24, v59);
  if (!v31)
  {
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v33 = a1;
  UndoAction.directInvocation.getter();
  v34 = CorrectionsDirectInvocation.identifier.getter();
  v36 = v35;
  v32(v21, v59);
  if (v34 == 0xD000000000000024 && 0x80000001DCA815B0 == v36)
  {

    v37 = v54;
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v54;
    if ((v38 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v52, v10, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v39 = v53;
  if ((*(v37 + 48))(v10, 1, v53) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v54 = v33;
    v40 = v51;
    (*(v37 + 32))(v51, v10, v39);
    v41 = type metadata accessor for PropertyListEncoder();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input();
    v44 = v39;
    v45 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v47 = v46;

    v63 = MEMORY[0x1E6969080];
    *&v62 = v45;
    *(&v62 + 1) = v47;
    outlined init with take of Any(&v62, v61);
    outlined copy of Data._Representation(v45, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v31;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 0xD00000000000002BLL, 0x80000001DCA81BA0, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v45, v47);
    (*(v37 + 8))(v40, v44);
  }

LABEL_14:
  UndoAction.directInvocation.getter();
  CorrectionsDirectInvocation.identifier.getter();
  v32(v18, v59);
  v49 = v55;
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v56 + 104))(v49, *MEMORY[0x1E69D0158], v57);
  return Input.init(parse:)();
}

uint64_t CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v4[19] = v7;
  v8 = *(v7 - 8);
  v4[20] = v8;
  v9 = *(v8 + 64) + 15;
  v4[21] = swift_task_alloc();
  v10 = type metadata accessor for Input();
  v4[22] = v10;
  v11 = *(v10 - 8);
  v4[23] = v11;
  v12 = *(v11 + 64) + 15;
  v4[24] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v14 = type metadata accessor for Parse();
  v4[26] = v14;
  v15 = *(v14 - 8);
  v4[27] = v15;
  v16 = *(v15 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_Parser();
  v4[30] = v17;
  v18 = *(v17 - 8);
  v4[31] = v18;
  v19 = *(v18 + 64) + 15;
  v4[32] = swift_task_alloc();
  v20 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v4[33] = v20;
  v21 = *(v20 - 8);
  v4[34] = v21;
  v22 = *(v21 + 64) + 15;
  v4[35] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v24 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[37] = v24;
  v25 = *(v24 - 8);
  v4[38] = v25;
  v26 = *(v25 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v28 = type metadata accessor for UndoAction();
  v4[42] = v28;
  v29 = *(v28 - 8);
  v4[43] = v29;
  v30 = *(v29 + 64) + 15;
  v4[44] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = static MessageBusActor.shared;
  v4[45] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:), v31, 0);
}

uint64_t CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[46] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[CorrectionsService] Checking for corrections with maybe a possible followup", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[41];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  CorrectionsService.getUndoAction(_:conversationUserInput:)(v7, v5);
  v0[47] = 0;
  v9 = v0[42];
  v10 = v0[43];
  v11 = v0[41];
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[45];

    v13 = v0[23];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[41], &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    v14 = *(v13 + 56);
    v15 = 1;
LABEL_7:
    v16 = v0[44];
    v18 = v0[40];
    v17 = v0[41];
    v19 = v0[39];
    v21 = v0[35];
    v20 = v0[36];
    v22 = v0[32];
    v23 = v0[29];
    v66 = v0[28];
    v68 = v0[25];
    v70 = v0[24];
    v24 = v0[21];
    v73 = v0[18];
    v75 = v0[17];
    v14(v0[13], v15, 1, v0[22]);

    v25 = v0[1];

    return v25();
  }

  (*(v10 + 32))(v0[44], v11, v9);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DC659000, v27, v28, "[CorrectionsService] Detected user requested undo", v29, 2u);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }

  v30 = v0[44];

  if (UndoAction.isExclusive.getter())
  {
    goto LABEL_18;
  }

  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(2), (v33 & 1) != 0))
  {
    if (*(*(v31 + 56) + v32) != 1)
    {
LABEL_18:
      v34 = v0[45];

LABEL_19:
      v36 = v0[43];
      v35 = v0[44];
      v76 = v0[42];
      v37 = v0[22];
      v38 = v0[23];
      v39 = v0[17];
      v40 = v0[13];
      (*(v38 + 16))(v39, v0[14], v37);
      v41 = *(v38 + 56);
      v41(v39, 0, 1, v37);
      CorrectionsService.generateNewInput(from:originalInput:)(v35, v39, v40);
      outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      (*(v36 + 8))(v35, v76);
      v14 = v41;
      v15 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v0[5] = &type metadata for SydneyConversationFeatureFlags;
    v0[6] = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    *(v0 + 16) = 2;
    v42 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v43 = v0[44];
  v44 = v0[37];
  v45 = v0[38];
  v46 = v0[36];
  UndoAction.parseExludingUndoUserDialogActs.getter();
  if ((*(v45 + 48))(v46, 1, v44) == 1)
  {
    v47 = v0[45];
    v48 = v0[36];

    outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    goto LABEL_19;
  }

  (*(v0[38] + 32))(v0[40], v0[36], v0[37]);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DC659000, v49, v50, "[CorrectionsService] Undo is not exclusive, and we need to try and find followup actions.", v51, 2u);
    MEMORY[0x1E12A2F50](v51, -1, -1);
  }

  v52 = v0[40];
  v53 = v0[38];
  v65 = v0[39];
  v67 = v0[37];
  v54 = v0[34];
  v55 = v0[35];
  v56 = v0[32];
  v57 = v0[31];
  v64 = v0[30];
  v69 = v0[33];
  v71 = v0[29];
  v58 = v0[27];
  v72 = v0[26];
  v74 = v0[28];
  v59 = v0[25];
  v77 = v0[24];

  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v57 + 8))(v56, v64);
  (*(v53 + 16))(v65, v52, v67);
  (*(v54 + 16))(v59, v55, v69);
  (*(v54 + 56))(v59, 0, 1, v69);
  USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
  (*(v58 + 104))(v71, *MEMORY[0x1E69D0168], v72);
  (*(v58 + 16))(v74, v71, v72);
  Input.init(parse:)();
  v60 = swift_task_alloc();
  v0[48] = v60;
  *v60 = v0;
  v60[1] = CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:);
  v61 = v0[24];
  v62 = v0[18];
  v63 = v0[16];

  return CorrectionsService.findFollowUpPluginAction(for:)(v62, v61);
}

{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:), v2, 0);
}

{
  v1 = v0[45];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];

  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = v0[46];
  if (v5 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[18], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[40];
    v11 = v0[38];
    v12 = v0[34];
    v71 = v0[35];
    v74 = v0[37];
    v66 = v0[29];
    v69 = v0[33];
    v13 = v0[27];
    v63 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[22];
    if (v9)
    {
      v61 = v0[40];
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "[CorrectionsService] No followup plugin action found, returning exclusive undo action", v17, 2u);
      v18 = v17;
      v10 = v61;
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    (*(v14 + 8))(v15, v16);
    (*(v13 + 8))(v66, v63);
    (*(v12 + 8))(v71, v69);
    (*(v11 + 8))(v10, v74);
    v20 = v0[43];
    v19 = v0[44];
    v75 = v0[42];
    v21 = v0[22];
    v22 = v0[23];
    v23 = v0[17];
    v24 = v0[13];
    (*(v22 + 16))(v23, v0[14], v21);
    v25 = *(v22 + 56);
    v25(v23, 0, 1, v21);
    CorrectionsService.generateNewInput(from:originalInput:)(v19, v23, v24);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v20 + 8))(v19, v75);
    v26 = v25;
    v27 = 0;
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "[CorrectionsService] New followup plugin action found", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v31 = v0[47];
    v32 = v0[44];
    v33 = v0[21];
    v34 = v0[16];
    v35 = v0[13];

    CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v32, v33, v35);
    v36 = v31;
    v72 = v0[44];
    v76 = v0[43];
    v67 = v0[40];
    v70 = v0[42];
    v37 = v0[38];
    v38 = v0[34];
    v62 = v0[35];
    v64 = v0[37];
    v59 = v0[29];
    v60 = v0[33];
    v39 = v0[27];
    v58 = v0[26];
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[21];
    v43 = v0[22];
    v44 = v0[19];
    v45 = v0[20];
    if (v36)
    {

      (*(v45 + 8))(v42, v44);
      (*(v40 + 8))(v41, v43);
      (*(v39 + 8))(v59, v58);
      (*(v38 + 8))(v62, v60);
      (*(v37 + 8))(v67, v64);
      (*(v76 + 8))(v72, v70);
      v26 = *(v40 + 56);
      v27 = 1;
    }

    else
    {
      (*(v45 + 8))(v0[21], v0[19]);
      (*(v40 + 8))(v41, v43);
      (*(v39 + 8))(v59, v58);
      (*(v38 + 8))(v62, v60);
      (*(v37 + 8))(v67, v64);
      (*(v76 + 8))(v72, v70);
      v27 = 0;
      v26 = *(v40 + 56);
    }
  }

  v46 = v0[44];
  v48 = v0[40];
  v47 = v0[41];
  v49 = v0[39];
  v51 = v0[35];
  v50 = v0[36];
  v52 = v0[32];
  v53 = v0[28];
  v54 = v0[29];
  v65 = v0[25];
  v68 = v0[24];
  v55 = v0[21];
  v73 = v0[18];
  v77 = v0[17];
  v26(v0[13], v27, 1, v0[22]);

  v56 = v0[1];

  return v56();
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for Input();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[27] = v11;
  v12 = *(v11 - 8);
  v3[28] = v12;
  v13 = *(v12 + 64) + 15;
  v3[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v3[30] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.findFollowUpPluginAction(for:), v14, 0);
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[19];
  v0[15] = MEMORY[0x1E69E7CC8];
  v0[16] = MEMORY[0x1E69E7CC0];
  UUID.init()();
  Input.parse.getter();
  v5 = type metadata accessor for Parse();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  specialized SimpleOrderedDictionary.subscript.setter(v2, v1);
  v6 = *(v4 + 56);
  v7 = v0[15];
  v8 = v0[16];
  v0[31] = v7;
  v0[32] = v8;
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = CorrectionsService.findFollowUpPluginAction(for:);

  return ConversationHandlerLocator.allHandlers(for:)(v7, v8);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  if (*(v1 + 16))
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 184);
    v7 = *(*(v0 + 192) + 80);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 272) + ((v7 + 32) & ~v7), v5, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);

    v8 = v5 + *(v6 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v8 + 8, v0 + 56);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v8);
    (*(v4 + 8))(v5, v3);
    if (*(v0 + 80))
    {
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = *(v0 + 160);
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
      (*(v15 + 16))(v14, v15);
      (*(v10 + 16))(v9, v12, v11);
      PluginAction.init(flowHandlerId:input:)();
      v16 = type metadata accessor for PluginAction();
      (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *(v0 + 272);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "[CorrectionsService] No conversation handler found for followup input, returning nil", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v22 = *(v0 + 136);

  v23 = type metadata accessor for PluginAction();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
LABEL_10:
  v24 = *(v0 + 232);
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  v27 = *(v0 + 176);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.findFollowUpPluginAction(for:), v5, 0);
}

uint64_t CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a1;
  v120 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v114 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v106 - v15;
  v129 = type metadata accessor for Siri_Nlu_External_UserParse();
  v121 = *(v129 - 8);
  v16 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v106 - v20;
  v21 = type metadata accessor for Parse();
  v135 = *(v21 - 8);
  v136 = v21;
  v22 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v106 - v25;
  v26 = type metadata accessor for Input();
  v132 = *(v26 - 8);
  v27 = v132[8];
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v106 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v106 - v32;
  v125 = type metadata accessor for USOParse();
  v33 = *(v125 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v133 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PluginAction();
  v138 = *(v36 - 8);
  v139 = v36;
  v37 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v112 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v140 = &v106 - v40;
  v134 = type metadata accessor for CorrectionsDirectInvocation();
  v41 = *(v134 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v118 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v106 - v45;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.executor);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v126 = v26;
  if (v50)
  {
    v51 = v33;
    v52 = v41;
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DC659000, v48, v49, "[CorrectionsService] Generating new input for undo with followup action", v53, 2u);
    v54 = v53;
    v41 = v52;
    v33 = v51;
    v26 = v126;
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  v124 = v33;

  UndoAction.directInvocation.getter();
  v55 = CorrectionsDirectInvocation.userData.getter();
  v117 = *(v41 + 8);
  v117(v46, v134);
  v119 = v41 + 8;
  v56 = v18;
  if (!v55)
  {
    v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v57 = v133;
  (*(v138 + 16))(v140, a2, v139);
  v58 = v127;
  PluginAction.input.getter();
  v59 = v128;
  Input.parse.getter();
  v127 = v132[1];
  (v127)(v58, v26);
  v61 = v135;
  v60 = v136;
  v62 = (*(v135 + 88))(v59, v136);
  if (v62 == *MEMORY[0x1E69D0168])
  {
    v108 = v56;
    v109 = v55;
    v106 = a2;
    v107 = v62;
    (*(v61 + 96))(v59, v60);
    v63 = v124;
    v64 = v125;
    (*(v124 + 32))(v57, v59, v125);
    v65 = v123;
    v66 = USOParse.userParse.getter();
    v67 = MEMORY[0x1E129C0F0](v66);
    v68 = v121;
    v69 = *(v121 + 8);
    v69(v65, v129);
    v70 = *(v67 + 16);

    if (v70 < 2)
    {
      (*(v63 + 8))(v57, v64);
    }

    else
    {
      v71 = v116;
      UndoAction.parseExludingUndoUserDialogActs.getter();
      if ((*(v68 + 48))(v71, 1, v129) == 1)
      {
        (*(v124 + 8))(v133, v125);
        outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      }

      else
      {
        v72 = v108;
        v73 = v71;
        v74 = v129;
        (*(v68 + 32))(v108, v73, v129);
        (*(v68 + 16))(v123, v72, v74);
        USOParse.parserIdentifier.getter();
        USOParse.appBundleId.getter();
        v75 = v122;
        USOParse.init(userParse:parserIdentifier:appBundleId:)();
        (*(v135 + 104))(v75, v107, v136);
        v76 = v113;
        Input.init(parse:)();
        v77 = PluginAction.speechPackage.getter();
        v123 = PluginAction.flowHandlerId.getter();
        v128 = v78;
        (v132[2])(v111, v76, v126);
        v79 = v124;
        if (v77)
        {
          v132 = v77;
          v121 = PluginAction.utterance.getter();
          v116 = v80;
          v81 = type metadata accessor for ActionParaphrase();
          (*(*(v81 - 8) + 56))(v114, 1, 1, v81);
          v82 = type metadata accessor for UUID();
          (*(*(v82 - 8) + 56))(v115, 1, 1, v82);
          v83 = v112;
          PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)();

          (v127)(v76, v126);
          v69(v108, v129);
          (*(v79 + 8))(v133, v125);
          v85 = v138;
          v84 = v139;
          v86 = v140;
          (*(v138 + 8))(v140, v139);
          (*(v85 + 32))(v86, v83, v84);
        }

        else
        {
          PluginAction.utterance.getter();
          v132 = v87;
          v88 = type metadata accessor for ActionParaphrase();
          (*(*(v88 - 8) + 56))(v114, 1, 1, v88);
          v89 = type metadata accessor for UUID();
          (*(*(v89 - 8) + 56))(v115, 1, 1, v89);
          v90 = v112;
          PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)();
          (v127)(v76, v126);
          v69(v108, v129);
          (*(v79 + 8))(v133, v125);
          v92 = v138;
          v91 = v139;
          v93 = v140;
          (*(v138 + 8))(v140, v139);
          (*(v92 + 32))(v93, v90, v91);
        }
      }
    }

    v55 = v109;
  }

  else
  {
    (*(v61 + 8))(v59, v60);
  }

  v94 = v130[5];
  v95 = v130[6];
  __swift_project_boxed_opaque_existential_1(v130 + 2, v94);
  v96 = (*(v95 + 16))(v94, v95);
  v98 = v97;
  v99 = v131;
  v100 = PluginAction.serialize()();
  if (v99)
  {
    (*(v138 + 8))(v140, v139);
  }

  else
  {
    v143 = MEMORY[0x1E6969080];
    *&v142 = v100;
    *(&v142 + 1) = v101;
    outlined init with take of Any(&v142, &v141);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = v55;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v141, v96, v98, isUniquelyReferenced_nonNull_native);

    v104 = v118;
    UndoAction.directInvocation.getter();
    CorrectionsDirectInvocation.identifier.getter();
    v117(v104, v134);
    v105 = v122;
    Parse.DirectInvocation.init(identifier:userData:)();
    (*(v135 + 104))(v105, *MEMORY[0x1E69D0158], v136);
    Input.init(parse:)();
    return (*(v138 + 8))(v140, v139);
  }
}

uint64_t CorrectionsService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t CorrectionsService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

uint64_t CorrectionsUndoManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v2, v0 + 24);
  swift_endAccess();
  return v0;
}

Swift::Int UndoError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for forceCanUndoOutput()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CorrectionsUndoManager.forceCanUndoOutput = result;
  return result;
}

uint64_t *CorrectionsUndoManager.forceCanUndoOutput.unsafeMutableAddressor()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }

  return &static CorrectionsUndoManager.forceCanUndoOutput;
}

uint64_t static CorrectionsUndoManager.forceCanUndoOutput.getter()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }
}

uint64_t CorrectionsUndoManager.init()()
{
  *(v0 + 56) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v2, v0 + 24);
  swift_endAccess();
  return v0;
}

Swift::Bool __swiftcall CorrectionsUndoManager.canUndo()()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }

  v1 = static CorrectionsUndoManager.forceCanUndoOutput;
  os_unfair_lock_lock((static CorrectionsUndoManager.forceCanUndoOutput + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 2)
  {
    swift_beginAccess();
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v3 + 40 * v4 - 8, &v10);
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
      LOBYTE(v2) = 1;
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
      swift_beginAccess();
      outlined init with copy of CorrectingFlow?(v0 + 24, &v10);
      LOBYTE(v2) = *(&v11 + 1) != 0;
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2 & 1;
      _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsUndoManager] returning test value for canUndo %{BOOL}d", v8, 8u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t CorrectionsUndoManager.undo()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v4 + 40 * v5 - 8, &v42);
    outlined destroy of ReferenceResolutionClientProtocol?(&v42, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v38 = a1;
      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DC659000, v7, v8, "[CorrectionsUndoManager] running undo stack", v9, 2u);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v10 = *(v2 + 16);
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v10 + 40 * v11 - 8, &v42);
        outlined destroy of ReferenceResolutionClientProtocol?(&v42, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
        swift_beginAccess();
        v13 = *(v2 + 16);
        if (!v13[2])
        {
          break;
        }

        v14 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v13;
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = v13[2];
          if (!v16)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v16 = v13[2];
          if (!v16)
          {
            goto LABEL_32;
          }
        }

        v13[2] = v16 - 1;
        *(v2 + 16) = v13;
        outlined init with take of ReferenceResolutionClientProtocol(&v13[5 * v16 - 1], &v42);
        swift_endAccess();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v39[0] = v12;
        if ((v17 & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
          v39[0] = v12;
        }

        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v12);
          v39[0] = v12;
        }

        v20 = *(&v43 + 1);
        v21 = v44;
        v22 = __swift_mutable_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        a1 = &v38;
        v23 = *(*(v20 - 8) + 64);
        v24 = MEMORY[0x1EEE9AC00](v22);
        v26 = &v39[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26, v24);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19, v26, v39, v20, v21);
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        v10 = *(v2 + 16);
        v11 = *(v10 + 16);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    result = outlined destroy of ReferenceResolutionClientProtocol?(&v42, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    v33 = v38;
    *v38 = v12;
    *(v33 + 40) = 1;
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    outlined destroy of ReferenceResolutionClientProtocol?(&v42, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    swift_beginAccess();
    outlined init with copy of CorrectingFlow?(v1 + 24, &v40);
    if (v41)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v40, &v42);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "[CorrectionsUndoManager] return undo flow", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      CorrectionsUndoManager.clearUndoFlow()();
      result = outlined init with take of ReferenceResolutionClientProtocol(&v42, a1);
      *(a1 + 40) = 2;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.executor);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DC659000, v35, v36, "[CorrectionsUndoManager] nothing to undo", v37, 2u);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }

      lazy protocol witness table accessor for type UndoError and conformance UndoError();
      result = swift_allocError();
      *a1 = result;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t CorrectionsUndoManager.register(action:)(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_1DC659000, v7, v8, "[CorrectionsUndoManager] registering undo action", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  CorrectionsUndoManager.clearUndoFlow()();
  v10 = type metadata accessor for UndoCommand();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  v12 = *(v3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v3 + 16) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v18 = v10;
  v19 = &protocol witness table for UndoCommand;
  *&v17 = v11;
  v12[2] = v15 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v17, &v12[5 * v15 + 4]);
  *(v3 + 16) = v12;
  return swift_endAccess();
}

uint64_t UndoCommand.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CorrectionsUndoManager.register(flow:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "[CorrectionsUndoManager] registering undo flow", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  CorrectionsUndoManager.clearUndoStack()();
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v9);
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v9, v2 + 24);
  return swift_endAccess();
}

Swift::Void __swiftcall CorrectionsUndoManager.clear()()
{
  CorrectionsUndoManager.clearUndoFlow()();

  CorrectionsUndoManager.clearUndoStack()();
}

uint64_t CorrectionsUndoManager.clearUndoStack()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsUndoManager] clearing undo stack", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t CorrectionsUndoManager.clearUndoFlow()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsUndoManager] clearing undo flow", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v7, v1 + 24);
  return swift_endAccess();
}

uint64_t CorrectionsUndoManager.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  return v0;
}

uint64_t UndoCommand.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t UndoCommand.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](UndoCommand.execute(), 0, 0);
}

uint64_t UndoCommand.execute()()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = UndoCommand.execute();
  v5 = v0[2];

  return v7(v5);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t UndoCommand.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t UndoCommand.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UndoingCommand.execute() in conformance UndoCommand(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for UndoingCommand.execute() in conformance UndoCommand, 0, 0);
}

uint64_t protocol witness for UndoingCommand.execute() in conformance UndoCommand()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for UndoingCommand.execute() in conformance UndoCommand;
  v5 = v0[2];

  return v7(v5);
}

uint64_t outlined init with copy of CorrectingFlow?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t lazy protocol witness table accessor for type UndoError and conformance UndoError()
{
  result = lazy protocol witness table cache variable for type UndoError and conformance UndoError;
  if (!lazy protocol witness table cache variable for type UndoError and conformance UndoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UndoError and conformance UndoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UndoError and conformance UndoError;
  if (!lazy protocol witness table cache variable for type UndoError and conformance UndoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UndoError and conformance UndoError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CorrectionsUndoManager(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager()
{
  result = lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager;
  if (!lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager)
  {
    type metadata accessor for CorrectionsUndoManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager);
  }

  return result;
}

void destroy for UndoResult(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else if (v1 == 1)
  {
    v2 = *a1;
  }

  else
  {
  }
}

uint64_t initializeWithCopy for UndoResult(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 2;
  }

  else if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for UndoResult(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    else if (v4 == 1)
    {
      v5 = *a1;
    }

    else
    {
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for UndoResult(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 3)
    {
      v3 = *result + 3;
    }

    v4 = result;
    if (v3 == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(result);
    }

    else if (v3 == 1)
    {
      v5 = *result;
    }

    else
    {
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    result = v4;
    if (v6 == 2)
    {
      v8 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v8;
      *(v4 + 32) = *(a2 + 32);
      v7 = 2;
    }

    else if (v6 == 1)
    {
      *v4 = *a2;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *v4 = *a2;
    }

    *(v4 + 40) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UndoResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UndoResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UndoingCommand.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a2, a3);
}

uint64_t specialized Sequence<>.containsConversationTriggeredByPeer()()
{
  v1 = v0[9];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v4 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v6 = 0;
  }

  v0[10] = v4;
  v0[11] = v5;
  v0[13] = v6;
  v0[14] = v8;
  v0[12] = v7;
  if (v4 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_21;
    }

    v0[8] = v14;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v15 = v0[7];
    v16 = v8;
  }

  else
  {
    if (!v8)
    {
      while (1)
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v13 >= ((v7 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v12 = *(v5 + 8 * v13);
        ++v6;
        if (v12)
        {
          v6 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

    v12 = v8;
    v13 = v6;
LABEL_16:
    v16 = (v12 - 1) & v12;
    v15 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  v0[16] = v6;
  v0[17] = v16;
  v0[15] = v15;
  if (v15)
  {
    v4 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v2 = v15;
    v3 = 0;

    return MEMORY[0x1EEE6DFA0](v4, v2, v3);
  }

LABEL_21:
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  v21 = v0[1];

  return v21(0);
}

{
  v1 = *(*(v0 + 120) + 184);
  *(v0 + 144) = v1;
  if (v1 == 2)
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
  }

  else
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  if ((v1 & 1) == 0)
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    *(v0 + 104) = v8;
    *(v0 + 112) = v7;
    v9 = *(v0 + 80);
    if (v9 < 0)
    {
      v12 = __CocoaSet.Iterator.next()();
      if (!v12)
      {
        goto LABEL_18;
      }

      *(v0 + 64) = v12;
      type metadata accessor for RemoteConversationClient();
      swift_dynamicCast();
      v13 = *(v0 + 56);
      v14 = v7;
    }

    else
    {
      if (!v7)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= ((*(v0 + 96) + 64) >> 6))
          {
            goto LABEL_18;
          }

          v10 = *(*(v0 + 88) + 8 * v11);
          ++v8;
          if (v10)
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        return MEMORY[0x1EEE6DFA0](v3, v4, v5);
      }

      v10 = v7;
      v11 = v8;
LABEL_13:
      v14 = (v10 - 1) & v10;
      v13 = *(*(v9 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    }

    *(v0 + 128) = v8;
    *(v0 + 136) = v14;
    *(v0 + 120) = v13;
    if (!v13)
    {
      goto LABEL_18;
    }

    v3 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v4 = v13;
    v5 = 0;

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v6 = *(v0 + 112);
LABEL_18:
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  v19 = *(v0 + 8);

  return v19(v1 & 1);
}

{
  v1 = v0[15];

  v6 = v0[16];
  v5 = v0[17];
  v0[13] = v6;
  v0[14] = v5;
  v7 = v0[10];
  if (v7 < 0)
  {
    v10 = __CocoaSet.Iterator.next()();
    if (!v10)
    {
      goto LABEL_16;
    }

    v0[8] = v10;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v11 = v0[7];
    v12 = v5;
  }

  else
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v9 >= ((v0[12] + 64) >> 6))
        {
          goto LABEL_16;
        }

        v8 = *(v0[11] + 8 * v9);
        ++v6;
        if (v8)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v8 = v5;
    v9 = v6;
LABEL_11:
    v12 = (v8 - 1) & v8;
    v11 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
  }

  v0[16] = v6;
  v0[17] = v12;
  v0[15] = v11;
  if (v11)
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v3 = v11;
    v4 = 0;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

LABEL_16:
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  v17 = v0[1];

  return v17(0);
}

uint64_t DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, __int128 *a6, uint64_t a7)
{
  v13 = a3[3];
  v12 = a3[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = specialized DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(a1, a2, v14, a4, v17, a6, a7, v22, v15, v13, v16, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v18;
}

uint64_t DecisionEngine.previousConversation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t DecisionEngine.previousConversation.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, __int128 *a6, uint64_t a7)
{
  v31 = a7;
  v29 = a2;
  v30 = a6;
  v12 = a3[3];
  v11 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = a5[3];
  v20 = a5[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a5, v19);
  v22 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v27 = specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(a1, v29, v17, a4, v25, v30, v31, v32, v19, v12, v20, v11);

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v27;
}

uint64_t key path setter for DecisionEngine.ambiguityService : DecisionEngine(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v6);
  v3 = *a2;
  outlined init with take of ReferenceResolutionClientProtocol(v6, v5);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v5, v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

uint64_t DecisionEngine.ambiguityService.setter(__int128 *a1)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v3);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v3, v1 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

void (*DecisionEngine.ambiguityService.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  DecisionEngine.ambiguityService.getter(v3);
  return DecisionEngine.ambiguityService.modify;
}

void DecisionEngine.ambiguityService.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

Swift::Void __swiftcall DecisionEngine.newSessionStarted()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  ActionGenerator.newSessionStarted()();
  DecisionEngine.ambiguityService.getter(v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  swift_beginAccess();
  v5 = *(v1 + 184);
  *(v1 + 184) = 0;
}

uint64_t DecisionEngine.newTurnStarted(executionUUID:)(uint64_t a1)
{
  v3 = *(v1 + 176);
  *(v1 + 176) = 0;

  v4 = *(v1 + 16);
  ActionGenerator.newTurnStarted()();
  DecisionEngine.ambiguityService.getter(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 16))(a1, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t DecisionEngine.commitConversation(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = type metadata accessor for ConversationHelperInput(0);
  v6[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v6[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:), v9, 0);
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v11 = *(v0 + 64);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(*(v0 + 56), v2 + *(v1 + 20), type metadata accessor for RemoteConversationTurnData);
  *v2 = v4;
  *(v2 + *(v1 + 24)) = v11;
  v5 = *(v3 + 32);
  v6 = v4;
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  v8 = *(v0 + 96);
  v9 = *(v0 + 40);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v9, v8);
}

{
  v2 = v0[12];
  v1 = v0[13];

  outlined destroy of RemoteConversationTurnData(v2, type metadata accessor for ConversationHelperInput);

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

{
  v2 = v0[12];
  v1 = v0[13];

  outlined destroy of RemoteConversationTurnData(v2, type metadata accessor for ConversationHelperInput);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[13];
  if (v1)
  {
    v8 = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  }

  else
  {
    v4[16] = a1;
    v8 = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = type metadata accessor for DecisionEngineResponse();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = type metadata accessor for ConversationHelperInput(0);
  v8[21] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v17 = type metadata accessor for RemoteConversationTurnData(0);
  v8[23] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v8[25] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:), v19, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)();
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v2, v1, type metadata accessor for RemoteConversationTurnData);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v11 = *(*(v7 + *(v8 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
    v0[5] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    outlined destroy of RemoteConversationTurnData(v7, type metadata accessor for RemoteConversationTurnData);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v38);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v4, v5, "ConjunctionInfo: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationTurnData(v7, type metadata accessor for RemoteConversationTurnData);
  }

  v18 = v0[22];
  v17 = v0[23];
  v19 = v0[21];
  v20 = v0[10];
  v21 = v0[7];
  v35 = *(v0 + 11);
  v22 = ConversationUserInput.asSpeechData.getter();
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v20, v18 + *(v19 + 20), type metadata accessor for RemoteConversationTurnData);
  *v18 = v22;
  *(v18 + *(v19 + 24)) = v35;
  v23 = (*(v20 + *(v17 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
  v25 = *v23;
  v24 = v23[1];
  v0[26] = v24;
  swift_unknownObjectRetain();

  v26 = swift_task_alloc();
  v0[27] = v26;
  *v26 = v0;
  v26[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  v27 = v0[22];
  v28 = v0[13];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[9];
  v32 = v0[6];
  v33 = v0[7];
  v37 = v0[12];

  return DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(v32, v33, v30, v31, v27, v25, v24, v29);
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 224) = v0;

  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  }

  else
  {
    v7 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[6];

  outlined init with copy of ReferenceResolutionClientProtocol?(v5, v4, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = v0[17];
  if (v6 == 1)
  {
    outlined destroy of RemoteConversationTurnData(v0[22], type metadata accessor for ConversationHelperInput);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  }

  else
  {
    v8 = v0[20];
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[7];
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[17], v8, type metadata accessor for DecisionEngineResponse);
    v12 = *(v9 + 88);
    DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v8, *v10, v10[1], *(v11 + 16), *(v11 + 24));
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    v13 = *v8;
    if (*v8)
    {
      v14 = *(v13 + 120);
      v42 = *(v13 + 112);
    }

    v15 = v0[20];
    v16 = v0[15];
    v17 = *(v0[18] + 24);
    outlined init with copy of ReferenceResolutionClientProtocol?(v15 + v17, v16, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v18 = type metadata accessor for Input();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v21 = v20(v16, 1, v18);
    v23 = v0[15];
    v22 = v0[16];
    if (v21 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v24 = type metadata accessor for Siri_Nlu_External_UUID();
      (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    }

    else
    {
      v25 = v0[15];
      Input.parseHypothesisId.getter(v0[16]);
      (*(v19 + 8))(v23, v18);
    }

    v26 = v0[14];
    outlined init with copy of ReferenceResolutionClientProtocol?(v15 + v17, v26, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v27 = v20(v26, 1, v18);
    v28 = v0[14];
    if (v27 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
      (*(v19 + 8))(v28, v18);
    }

    v29 = v0[22];
    v30 = v0[20];
    v31 = v0[16];
    v32 = *(v30 + 8);
    dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
    outlined destroy of RemoteConversationTurnData(v29, type metadata accessor for ConversationHelperInput);
    outlined destroy of RemoteConversationTurnData(v30, type metadata accessor for DecisionEngineResponse);
  }

  v33 = v0[24];
  v34 = v0[22];
  v35 = v0[20];
  v37 = v0[16];
  v36 = v0[17];
  v39 = v0[14];
  v38 = v0[15];

  v40 = v0[1];

  return v40();
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];

  outlined destroy of RemoteConversationTurnData(v3, type metadata accessor for ConversationHelperInput);

  v9 = v0[1];
  v10 = v0[28];

  return v9();
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[44] = v65;
  v9[45] = v8;
  v9[42] = a7;
  v9[43] = a8;
  v9[40] = a5;
  v9[41] = a6;
  v9[38] = a3;
  v9[39] = a4;
  v9[36] = a1;
  v9[37] = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64) + 15;
  v9[46] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v9[47] = v11;
  v12 = *(v11 - 8);
  v9[48] = v12;
  v13 = *(v12 + 64) + 15;
  v9[49] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15;
  v9[50] = swift_task_alloc();
  v15 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v9[51] = v15;
  v16 = *(v15 - 8);
  v9[52] = v16;
  v17 = *(v16 + 64) + 15;
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  v18 = type metadata accessor for Siri_Nlu_External_Parser();
  v9[55] = v18;
  v19 = *(v18 - 8);
  v9[56] = v19;
  v20 = *(v19 + 64) + 15;
  v9[57] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR) - 8) + 64) + 15;
  v9[58] = swift_task_alloc();
  v22 = type metadata accessor for AmbiguityServiceResponse(0);
  v9[59] = v22;
  v23 = *(v22 - 8);
  v9[60] = v23;
  v24 = *(v23 + 64) + 15;
  v9[61] = swift_task_alloc();
  v25 = type metadata accessor for ExecutionLocation();
  v9[62] = v25;
  v26 = *(v25 - 8);
  v9[63] = v26;
  v27 = *(v26 + 64) + 15;
  v9[64] = swift_task_alloc();
  v9[65] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  v9[66] = swift_task_alloc();
  v29 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v9[67] = v29;
  v30 = *(v29 - 8);
  v9[68] = v30;
  v31 = *(v30 + 64) + 15;
  v9[69] = swift_task_alloc();
  v32 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v9[70] = v32;
  v33 = *(v32 - 8);
  v9[71] = v33;
  v34 = *(v33 + 64) + 15;
  v9[72] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR) - 8) + 64) + 15;
  v9[73] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR) - 8) + 64) + 15;
  v9[74] = swift_task_alloc();
  v37 = type metadata accessor for UserInputResult();
  v9[75] = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();
  v39 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v9[78] = swift_task_alloc();
  v40 = *(*(type metadata accessor for CamParse() - 8) + 64) + 15;
  v9[79] = swift_task_alloc();
  v41 = type metadata accessor for ActionCandidate();
  v9[80] = v41;
  v42 = *(v41 - 8);
  v9[81] = v42;
  v43 = *(v42 + 64) + 15;
  v9[82] = swift_task_alloc();
  v44 = type metadata accessor for Parse();
  v9[83] = v44;
  v45 = *(v44 - 8);
  v9[84] = v45;
  v46 = *(v45 + 64) + 15;
  v9[85] = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11SiriKitFlow5ParseO7elementtMd, &_sSi6offset_11SiriKitFlow5ParseO7elementtMR);
  v9[86] = v47;
  v48 = *(*(v47 - 8) + 64) + 15;
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9[89] = v49;
  v50 = *(*(v49 - 8) + 64) + 15;
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = swift_task_alloc();
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();
  v51 = type metadata accessor for Input();
  v9[95] = v51;
  v52 = *(v51 - 8);
  v9[96] = v52;
  v53 = *(v52 + 64) + 15;
  v9[97] = swift_task_alloc();
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  v9[100] = swift_task_alloc();
  v9[101] = swift_task_alloc();
  v9[102] = swift_task_alloc();
  v54 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9[103] = v54;
  v55 = *(v54 - 8);
  v9[104] = v55;
  v56 = *(v55 + 64) + 15;
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v9[107] = swift_task_alloc();
  v9[108] = swift_task_alloc();
  v57 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v9[109] = v57;
  v58 = *(v57 - 8);
  v9[110] = v58;
  v59 = *(v58 + 64) + 15;
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v60 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR) - 8) + 64) + 15;
  v9[113] = swift_task_alloc();
  v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR) - 8) + 64) + 15;
  v9[114] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v62 = static MessageBusActor.shared;
  v9[115] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v62, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)()
{
  v219 = v0;
  if (one-time initialization token for executor != -1)
  {
LABEL_71:
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = type metadata accessor for Logger();
  *(v0 + 928) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = *(v1 + 56);
  *(v0 + 936) = v3;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo;
  v5 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  v216 = v0;
  if (v5)
  {
    v6 = *(v0 + 912);
    outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, v6, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v7 = type metadata accessor for PommesSearchReason();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v6, 1, v7);
    v10 = *(v0 + 912);
    if (v9 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 912), &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      v203 = 0;
      v11 = 0;
    }

    else
    {
      v203 = PommesSearchReason.rawValue.getter();
      v11 = v12;
      (*(v8 + 8))(v10, v7);
    }

    v13 = *(v3 + v4);
    if (v13)
    {
      v14 = *(v0 + 904);
      outlined init with copy of ReferenceResolutionClientProtocol?(v13 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, v14, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      v15 = type metadata accessor for PommesError();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 48))(v14, 1, v15);
      v18 = *(v0 + 904);
      if (v17 != 1)
      {
        v200 = PommesError.rawValue.getter();
        v19 = v108;
        (*(v16 + 8))(v18, v15);
        goto LABEL_11;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 904), &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    }
  }

  else
  {
    v11 = 0;
    v203 = 0;
  }

  v200 = 0;
  v19 = 0;
LABEL_11:
  v182 = v19;
  v184 = v11;
  *(v0 + 952) = v19;
  *(v0 + 944) = v11;
  v20 = *(v0 + 896);
  v21 = *(v0 + 888);
  v22 = *(v0 + 880);
  v23 = *(v0 + 872);
  v24 = *(v0 + 832);
  (*(v22 + 16))(v20, v3 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v23);
  (*(v22 + 104))(v21, *MEMORY[0x1E69D0A98], v23);
  lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x1E69D0AA8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v22 + 8);
  v25(v21, v23);
  v25(v20, v23);
  v26 = *(v0 + 264);
  v196 = *(v0 + 256);
  v190 = v3;
  v27 = *(v3 + 16);
  v207 = *(v27 + 16);
  v210 = v24;
  *(v0 + 960) = v207;
  v213 = (v24 + 8);

  v28 = 0;
  do
  {
    v29 = v28;
    *(v0 + 968) = v28;
    if (v207 == v28)
    {
      break;
    }

    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v30 = *(v0 + 864);
    v31 = *(v0 + 824);
    v32 = (*(v210 + 16))(v30, v27 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v28++, v31);
    MEMORY[0x1E129C0F0](v32);
    v33 = Array<A>.hasWantedToUndo.getter();

    (*(v210 + 8))(v30, v31);
  }

  while ((v33 & 1) == 0);
  v34 = *(v0 + 768);
  v193 = *(v0 + 760);
  v35 = *(v0 + 752);
  v36 = *(v0 + 360);
  v37 = *(v0 + 320);
  v38 = *(v0 + 296);

  v39 = *(type metadata accessor for ConversationHelperInput(0) + 20);
  *(v0 + 1296) = v39;
  v178 = v37 + v39;
  v40 = *(*(v37 + v39 + *(type metadata accessor for RemoteConversationTurnData(0) + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  *(v0 + 976) = v40;
  *(v0 + 16) = v203;
  *(v0 + 24) = v184;
  *(v0 + 32) = v200;
  *(v0 + 40) = v182;
  *(v0 + 48) = v196 == v26;
  *(v0 + 49) = v207 != v29;
  *(v0 + 56) = v40;
  v41 = *(v38 + 16);
  *(v0 + 984) = v41;
  v42 = *(v38 + 24);
  *(v0 + 992) = v42;
  v43 = v40;

  DecisionEngine.ambiguityService.getter(v216 + 8);
  v44 = v216[11];
  v45 = v216[12];
  __swift_project_boxed_opaque_existential_1(v216 + 8, v44);
  v46 = *(v45 + 24);
  v47 = v45;
  v48 = v216;
  v46(v38, v44, v47);
  v49 = *(v34 + 48);
  v216[125] = v49;
  v216[126] = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v49(v35, 1, v193) != 1)
  {
    v56 = v216[102];
    v57 = v216[96];
    v58 = v216[95];
    v59 = v216[94];
    v60 = v216[38];
    v61 = *(v57 + 32);
    v216[127] = v61;
    v216[128] = (v57 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v61(v56, v59, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v216 + 8);
    Input.stripSetIdentity()();
    v62 = v216[38];
    if ((v60 & 0xC000000000000001) != 0)
    {
      if (v62 < 0)
      {
        v63 = v216[38];
      }

      if (__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }
    }

    else if (*(v62 + 16))
    {
LABEL_22:
      v64 = v216[38];

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        if ((v60 & 0xC000000000000001) != 0)
        {
          v68 = __CocoaSet.count.getter();
          v69 = v216[38];
        }

        else
        {
          v68 = *(v216[38] + 16);
        }

        *(v67 + 4) = v68;

        _os_log_impl(&dword_1DC659000, v65, v66, "[DecisionEngine] %ld active conversations are present. Trying to find an existing flow", v67, 0xCu);
        MEMORY[0x1E12A2F50](v67, -1, -1);
        v48 = v216;
      }

      else
      {
        v126 = v216[38];
      }

      v48[129] = *(v48[45] + 32);
      v127 = swift_task_alloc();
      v48[130] = v127;
      *v127 = v48;
      v127[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
      v128 = v48[40];
      v129 = v48[38];
      v130 = v48[102];

      return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v130, v129, v128);
    }

    v116 = v216[45];
    v117 = *(v116 + 176);
    if (!v117)
    {
      v118 = v216[45];
      v119 = DecisionEngine.getRREntities()();
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.salientEntitiesProvider.getter();

      dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

      v120 = *(v116 + 176);
      *(v116 + 176) = v119;
      v48 = v216;

      v117 = *(v116 + 176);
      v116 = v216[45];
    }

    v48[137] = v117;
    v121 = v48;
    if (v117)
    {
      v122 = v117;
    }

    else
    {
      v122 = MEMORY[0x1E69E7CC0];
    }

    v123 = *(v116 + 16);

    v124 = swift_task_alloc();
    v121[138] = v124;
    *v124 = v121;
    v124[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v125 = v121[37];

    return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v125, v122, v116 + 96);
  }

  v176 = v43;
  outlined destroy of ReferenceResolutionClientProtocol?(v216[94], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v216 + 8);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = v41;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v218 = v54;
    *v53 = 136315138;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v42, &v218);

    *(v53 + 4) = v55;
    _os_log_impl(&dword_1DC659000, v50, v51, "[DecisionEngine]: Could not extract ranked input from ConversationUserInput for rcId: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1E12A2F50](v54, -1, -1);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  else
  {
  }

  v70 = *(*(v190 + 16) + 16);
  v204 = *(v190 + 16);

  v197 = v70;
  if (v70)
  {
    v71 = 0;
    v72 = v216[52];
    v201 = (v216[56] + 8);
    v0 = v72 + 104;
    v73 = (v72 + 8);
    v180 = (v216[48] + 8);
    v194 = *MEMORY[0x1E69D0988];
    do
    {
      if (v71 >= *(v204 + 16))
      {
        goto LABEL_70;
      }

      v74 = v48[106];
      v75 = v48[103];
      v76 = v216[57];
      v77 = v216[55];
      v78 = v216[54];
      v79 = v216[53];
      v80 = v216[51];
      v191 = *(v210 + 16);
      v191(v74, v204 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v71, v75);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v81 = v77;
      v82 = *v201;
      (*v201)(v76, v81);
      (*v0)(v79, v194, v80);
      lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v48 = v216;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v83 = *v73;
      (*v73)(v79, v80);
      v83(v78, v80);
      if (v48[34] == v48[35])
      {
        v84 = v216[106];
        v85 = v216[50];
        Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v85);
        v86 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
        v87 = *(v86 - 8);
        v88 = v85;
        v48 = v216;
        v89 = (*(v87 + 48))(v88, 1, v86);
        v90 = v216[50];
        if (v89 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v216[50], &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        }

        else
        {
          v91 = v216[49];
          v92 = v216[47];
          Siri_Nlu_External_UserDialogAct.delegated.getter();
          (*(v87 + 8))(v90, v86);
          v93 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
          v95 = v94;
          (*v180)(v91, v92);
          if (v93 == 0xD000000000000026 && 0x80000001DCA82100 == v95)
          {
            v48 = v216;
            v131 = v216[115];

            goto LABEL_63;
          }

          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v48 = v216;
          if (v96)
          {
            v97 = v216[115];
LABEL_63:

            (*(v48[104] + 32))(v48[107], v48[106], v48[103]);
            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              *v134 = 0;
              _os_log_impl(&dword_1DC659000, v132, v133, "[DecisionEngine] Returning response with NLv3 fallback exception parse.", v134, 2u);
              v135 = v134;
              v48 = v216;
              MEMORY[0x1E12A2F50](v135, -1, -1);
            }

            v136 = v132;
            v137 = v48[107];
            v138 = v48[105];
            v139 = v48[103];
            v205 = v48[97];
            v208 = v48[96];
            v211 = v48[95];
            v140 = v48[85];
            v141 = v48[84];
            v198 = v48[83];
            v142 = v216[57];
            v186 = v216[55];
            v143 = v216[52];
            v188 = v216[51];
            v144 = v216[46];
            v145 = v216[36];

            v191(v138, v137, v139);
            Siri_Nlu_External_UserParse.parser.getter();
            Siri_Nlu_External_Parser.parserID.getter();
            v146 = v142;
            v48 = v216;
            v82(v146, v186);
            (*(v143 + 56))(v144, 0, 1, v188);
            USOParse.init(userParse:parserIdentifier:appBundleId:)();
            (*(v141 + 104))(v140, *MEMORY[0x1E69D0168], v198);
            Input.init(parse:)();

            (*v213)(v137, v139);
            v147 = type metadata accessor for DecisionEngineResponse();
            v148 = *(v147 + 24);
            (*(v208 + 32))(v145 + v148, v205, v211);
            (*(v208 + 56))(v145 + v148, 0, 1, v211);
            *v145 = 0;
            *(v145 + 8) = 0;
            *(v145 + *(v147 + 28)) = 0;
            (*(*(v147 - 8) + 56))(v145, 0, 1, v147);
            goto LABEL_66;
          }
        }
      }

      ++v71;
      (*v213)(v48[106], v48[103]);
    }

    while (v197 != v71);
  }

  v98 = v48[45];

  if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v178, *(v178 + 8), v207 != v29))
  {
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1DC659000, v99, v100, "[DecisionEngine] Returning fallback response", v101, 2u);
      v102 = v101;
      v48 = v216;
      MEMORY[0x1E12A2F50](v102, -1, -1);
    }

    v103 = swift_task_alloc();
    v48[161] = v103;
    *v103 = v48;
    v103[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v104 = v48[45];
    v105 = v48[40];
    v106 = v48[36];

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v106, v105, (v48 + 2));
  }

  else
  {
    v109 = v48[115];

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_1DC659000, v110, v111, "[DecisionEngine] Returning no response to enforce server fallback", v112, 2u);
      v113 = v112;
      v48 = v216;
      MEMORY[0x1E12A2F50](v113, -1, -1);
    }

    v114 = v48[36];

    v115 = type metadata accessor for DecisionEngineResponse();
    (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
LABEL_66:
    v149 = v48[114];
    v150 = v48[113];
    v151 = v48[112];
    v152 = v48;
    v153 = v48[111];
    v154 = v152[108];
    v155 = v152[107];
    v156 = v152[106];
    v157 = v152[105];
    v158 = v152[102];
    v159 = v152[101];
    v161 = v152[100];
    v162 = v152[99];
    v163 = v152[98];
    v164 = v152[97];
    v165 = v152[94];
    v166 = v152[93];
    v167 = v152[92];
    v168 = v152[91];
    v169 = v152[90];
    v170 = v152[88];
    v171 = v152[87];
    v172 = v152[85];
    v173 = v152[82];
    v174 = v152[79];
    v175 = v152[78];
    v177 = v152[77];
    v179 = v152[76];
    v181 = v152[74];
    v183 = v152[73];
    v185 = v152[72];
    v187 = v152[69];
    v189 = v152[66];
    v192 = v152[65];
    v195 = v152[64];
    v199 = v152[61];
    v202 = v152[58];
    v206 = v152[57];
    v209 = v152[54];
    v212 = v152[53];
    v214 = v152[50];
    v215 = v152[49];
    v217 = v152[46];

    v160 = v152[1];

    return v160();
  }
}

{
  v1 = v0;
  if (v0[131])
  {
    v2 = v0[124];
    v3 = v0[116];
    v4 = v0[115];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine] found an existing flow that can handle top NL parse this turn.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = v0[131];
    v9 = v0[122];
    v10 = v0[119];
    v11 = v0[118];
    v12 = v0[102];
    v13 = v0[96];
    v14 = v0[95];
    v15 = v0[36];

    v16 = type metadata accessor for DecisionEngineResponse();
    v17 = *(v16 + 24);
    (*(v13 + 16))(v15 + v17, v12, v14);
    (*(v13 + 56))(v15 + v17, 0, 1, v14);
    *v15 = v8;
    *(v15 + 8) = 1;
    *(v15 + *(v16 + 28)) = 0;
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    (*(v13 + 8))(v12, v14);
    v18 = v0[114];
    v19 = v0[113];
    v20 = v0[112];
    v21 = v0[111];
    v22 = v0[108];
    v23 = v0[107];
    v24 = v0[106];
    v25 = v0[105];
    v26 = v0[102];
    v27 = v0[101];
    v78 = v0[100];
    v79 = v0[99];
    v80 = v0[98];
    v81 = v0[97];
    v82 = v0[94];
    v83 = v0[93];
    v84 = v0[92];
    v85 = v0[91];
    v86 = v0[90];
    v87 = v0[88];
    v88 = v0[87];
    v89 = v0[85];
    v90 = v0[82];
    v91 = v0[79];
    v92 = v0[78];
    v93 = v0[77];
    v94 = v0[76];
    v95 = v0[74];
    v97 = v0[73];
    v98 = v0[72];
    v100 = v0[69];
    v102 = v0[66];
    v105 = v0[65];
    v106 = v0[64];
    v108 = v0[61];
    v110 = v0[58];
    v112 = v0[57];
    v114 = v0[54];
    v116 = v0[53];
    v118 = v0[50];
    v120 = v0[49];
    v122 = v0[46];

    v28 = v0[1];

    return v28();
  }

  v30 = v0[102];
  v31 = Input.alternatives.getter();
  v32 = *(v31 + 16);
  if (v32)
  {
    v99 = v0[96];
    v111 = v0[86];
    v33 = v0[84];
    v123 = MEMORY[0x1E69E7CC0];
    v34 = v31;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    result = v34;
    v35 = 0;
    v36 = v123;
    v113 = *(result + 16);
    v121 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v107 = result + v121;
    v109 = v33;
    v96 = (v33 + 8);
    v101 = v32;
    v103 = result;
    v104 = v0;
    while (v35 != v113)
    {
      if (v35 >= *(result + 16))
      {
        goto LABEL_38;
      }

      v119 = v36;
      v37 = v1[88];
      v38 = v1;
      v39 = *(v111 + 48);
      v40 = v38[102];
      v41 = v38[87];
      v42 = v38[83];
      v43 = *(v109 + 72);
      v44 = v43 * v35;
      v117 = *(v109 + 16);
      v117(v37 + v39, v107 + v43 * v35, v42);
      *v41 = v35;
      v45 = *(v111 + 48);
      v115 = v41;
      (*(v109 + 32))(v41 + v45, v37 + v39, v42);
      v46 = Input.alternatives.getter();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
        v46 = result;
      }

      v47 = *(v46 + 2);
      v1 = v104;
      if (v35 >= v47)
      {
        goto LABEL_39;
      }

      v48 = v47 - 1;
      (*v96)(&v46[v121 + v44], v104[83]);
      if (v43 > 0 || &v46[v121 + v44] >= &v46[v121 + v44 + v43 + (v48 - v35) * v43])
      {
        v50 = v104[83];
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v43)
      {
        v49 = v104[83];
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = v104[102];
      v52 = v104[101];
      v53 = v104[87];
      v54 = v104[85];
      v55 = v104[83];
      *(v46 + 2) = v48;
      v117(v54, v115 + v45, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR);
      *(swift_allocObject() + 16) = xmmword_1DCA66060;
      Input.parse.getter();
      specialized Array.append<A>(contentsOf:)(v46);
      Input.init(parse:alternatives:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_sSi6offset_11SiriKitFlow5ParseO7elementtMd, &_sSi6offset_11SiriKitFlow5ParseO7elementtMR);
      v36 = v119;
      v57 = *(v119 + 16);
      v56 = *(v119 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1);
        v36 = v119;
      }

      v58 = v104[128];
      v59 = v104[127];
      v60 = v104[101];
      v61 = v104[95];
      ++v35;
      *(v36 + 16) = v57 + 1;
      v59(v36 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v57, v60, v61);
      result = v103;
      if (v35 == v101)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v1[132] = v36;
  v62 = *(v36 + 16);
  v1[133] = v62;
  if (v62)
  {
    v63 = v1[96];
    v1[134] = 0;
    if (!*(v36 + 16))
    {
LABEL_40:
      __break(1u);
      return result;
    }

    (*(v63 + 16))(v1[100], v36 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v1[95]);
    v64 = swift_task_alloc();
    v1[135] = v64;
    *v64 = v1;
    v64[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v65 = v1[129];
    v66 = v1[40];
    v67 = v1[38];
    v68 = v1[100];

    return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v68, v67, v66);
  }

  else
  {

    v69 = v1[45];
    v70 = *(v69 + 176);
    if (!v70)
    {
      v71 = v1[45];
      v72 = DecisionEngine.getRREntities()();
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.salientEntitiesProvider.getter();

      dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

      v73 = *(v69 + 176);
      *(v69 + 176) = v72;

      v70 = *(v69 + 176);
      v69 = v1[45];
    }

    v1[137] = v70;
    if (v70)
    {
      v74 = v70;
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }

    v75 = *(v69 + 16);

    v76 = swift_task_alloc();
    v1[138] = v76;
    *v76 = v1;
    v76[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v77 = v1[37];

    return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v77, v74, v69 + 96);
  }
}

{
  if (v0[136])
  {
    v1 = v0[132];
    v2 = v0[124];
    v3 = v0[116];
    v4 = v0[115];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine] found an existing flow that can handle alternative NL parse this turn.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v77 = v0[128];
    v79 = v0[136];
    v8 = v0[127];
    v9 = v0[122];
    v10 = v0[119];
    v11 = v0[118];
    v81 = v0[102];
    v12 = v0[100];
    v13 = v0[96];
    v14 = v0[95];
    v15 = v0[36];

    v16 = type metadata accessor for DecisionEngineResponse();
    v17 = *(v16 + 24);
    v8(v15 + v17, v12, v14);
    (*(v13 + 56))(v15 + v17, 0, 1, v14);
    *v15 = v79;
    *(v15 + 8) = 1;
    *(v15 + *(v16 + 28)) = 0;
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    (*(v13 + 8))(v81, v14);
    v18 = v0[114];
    v19 = v0[113];
    v20 = v0[112];
    v21 = v0[111];
    v22 = v0[108];
    v23 = v0[107];
    v24 = v0[106];
    v25 = v0[105];
    v26 = v0[102];
    v27 = v0[101];
    v48 = v0[100];
    v49 = v0[99];
    v50 = v0[98];
    v51 = v0[97];
    v52 = v0[94];
    v53 = v0[93];
    v54 = v0[92];
    v55 = v0[91];
    v56 = v0[90];
    v57 = v0[88];
    v58 = v0[87];
    v59 = v0[85];
    v60 = v0[82];
    v61 = v0[79];
    v62 = v0[78];
    v63 = v0[77];
    v64 = v0[76];
    v65 = v0[74];
    v66 = v0[73];
    v67 = v0[72];
    v68 = v0[69];
    v69 = v0[66];
    v70 = v0[65];
    v71 = v0[64];
    v72 = v0[61];
    v73 = v0[58];
    v74 = v0[57];
    v75 = v0[54];
    v76 = v0[53];
    v78 = v0[50];
    v80 = v0[49];
    v82 = v0[46];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[133];
    v31 = v0[134] + 1;
    result = (*(v0[96] + 8))(v0[100], v0[95]);
    if (v31 == v30)
    {
      v32 = v0[132];

      v33 = v0[45];
      v34 = *(v33 + 176);
      if (!v34)
      {
        v35 = v0[45];
        v36 = DecisionEngine.getRREntities()();
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.salientEntitiesProvider.getter();

        dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

        v37 = *(v33 + 176);
        *(v33 + 176) = v36;

        v34 = *(v33 + 176);
        v33 = v0[45];
      }

      v0[137] = v34;
      if (v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC0];
      }

      v39 = *(v33 + 16);

      v40 = swift_task_alloc();
      v0[138] = v40;
      *v40 = v0;
      v40[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
      v41 = v0[37];

      return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v41, v38, v33 + 96);
    }

    else
    {
      v0[134] = v31;
      v42 = v0[132];
      if (v31 >= *(v42 + 16))
      {
        __break(1u);
      }

      else
      {
        (*(v0[96] + 16))(v0[100], v42 + ((*(v0[96] + 80) + 32) & ~*(v0[96] + 80)) + *(v0[96] + 72) * v31, v0[95]);
        v43 = swift_task_alloc();
        v0[135] = v43;
        *v43 = v0;
        v43[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
        v44 = v0[129];
        v45 = v0[100];
        v46 = v0[40];
        v47 = v0[38];

        return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v45, v47, v46);
      }
    }
  }

  return result;
}

{
  v141 = v0;
  v1._rawValue = *(v0 + 1112);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  v4 = *(v0 + 928);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v5._countAndFlagsBits = v3;
  v5._object = v2;
  ConversationSELFHelper.emitActionCandidatesGenerated(rcId:actionCandidates:)(v5, v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1112);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_1DC659000, v6, v7, "[DecisionEngine] Generated %ld action candidates", v10, 0xCu);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 1112);
  }

  v12 = *(v0 + 928);
  v13 = *(*(v0 + 360) + 40);
  CorrectionsService.getCorrectionsAction(input:conversationUserInput:)(*(v0 + 816), *(v0 + 296), *(v0 + 744));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 712);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v140 = v20;
    *v19 = 136315138;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v17, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v140);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v14, v15, "[DecisionEngine] Corrections Input: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 760);
  v27 = *(v0 + 744);
  v28 = *(v0 + 728);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v27, v28, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if (v25(v28, 1, v26) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 728), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_12:
    v49 = *(v0 + 1112);
    v50 = *(v0 + 992);
    v51 = *(v0 + 984);
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    ObjectType = swift_getObjectType();
    (*(v52 + 160))(v49, v51, v50, ObjectType, v52);

    if (*(v49 + 16))
    {
      v55 = *(v0 + 1096);
      v56 = *(v0 + 360);
      DecisionEngine.ambiguityService.getter((v0 + 104));
      v57 = *(v0 + 128);
      v58 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v57);
      *(v0 + 1216) = *(v56 + 32);
      swift_beginAccess();
      *(v0 + 1224) = *(v56 + 184);
      v59 = *(v58 + 32);

      v137 = v59 + *v59;
      v60 = v59[1];
      v61 = swift_task_alloc();
      *(v0 + 1232) = v61;
      *v61 = v0;
      v61[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
      v62 = *(v0 + 1112);
      v63 = *(v0 + 816);
      v64 = *(v0 + 464);
      v66 = *(v0 + 328);
      v65 = *(v0 + 336);
      v67 = *(v0 + 320);
      v68 = *(v0 + 296);
      v145 = v57;
      v146 = v58;
      v143 = v66;
      v144 = v65;

      __asm { BRAA            X8, X16 }
    }

    v69 = *(v0 + 1112);
    v70 = *(v0 + 1096);
    v71 = *(v0 + 928);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC659000, v72, v73, "[DecisionEngine] Skipping ambiguity handling as there are no actions from action generator", v74, 2u);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    v75 = swift_task_alloc();
    *(v0 + 1176) = v75;
    *v75 = v0;
    v75[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v76 = *(v0 + 816);
    v77 = *(v0 + 736);
    v78 = *(v0 + 296);

    return CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)(v77, v76, v78);
  }

  v29 = *(v0 + 1024);
  v30 = *(v0 + 312);
  (*(v0 + 1016))(*(v0 + 792), *(v0 + 728), *(v0 + 760));
  if (!v30)
  {
    (*(*(v0 + 768) + 8))(*(v0 + 792), *(v0 + 760));
    goto LABEL_12;
  }

  v31 = *(v0 + 1112);
  v138 = *(v0 + 992);
  v121 = *(v0 + 816);
  v32 = *(v0 + 680);
  v33 = *(v0 + 672);
  v123 = *(v0 + 664);
  v125 = *(v0 + 656);
  v34 = *(v0 + 648);
  v133 = *(v0 + 640);
  v135 = *(v0 + 984);
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v116 = *(v0 + 936);
  v117 = *(v0 + 584);
  v119 = *(v0 + 544);
  v131 = *(v0 + 536);
  v127 = *(v0 + 344);
  v129 = *(v0 + 352);
  v37 = *(v0 + 312);
  *(v0 + 1096);
  v38 = *(v0 + 296);

  v39 = *(v37 + 112);
  v40 = *(v37 + 120);

  Input.parse.getter();
  Parse.asCamParse()(v35);
  (*(v33 + 8))(v32, v123);
  UUID.init()();
  ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)();
  v41 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMR);
  v42 = *(v34 + 72);
  v43 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1DCA66060;
  (*(v34 + 16))(v44 + v43, v125, v133);
  (*(v129 + 160))(v44, v135, v138, v41);

  v134 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  v139 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  v122 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession);
  v136 = *(v38 + 48);
  v128 = *(v116 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v130 = *(v116 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);

  v45 = NLResponse.requestLanguageVariant.getter();
  v124 = v46;
  v126 = v45;
  outlined init with copy of ReferenceResolutionClientProtocol?(v116 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v117, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v119 + 48))(v117, 1, v131) == 1)
  {
    v47 = *(v0 + 592);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 584), &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v48 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
  }

  else
  {
    v80 = *(v0 + 552);
    v81 = *(v0 + 544);
    v82 = *(v0 + 536);
    (*(v81 + 16))(v80, *(v0 + 584), v82);
    v83 = (*(v81 + 88))(v80, v82);
    v84 = *(v0 + 592);
    if (v83 == *MEMORY[0x1E69D02E8])
    {
      v85 = *(v0 + 576);
      v86 = *(v0 + 568);
      v87 = *(v0 + 560);
      v88 = *(v0 + 552);
      v89 = *(v0 + 544);
      (*(v89 + 96))(v88, *(v0 + 536));
      (*(v86 + 32))(v85, v88, v87);
      NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
      (*(v86 + 8))(v85, v87);
      (*(v89 + 8))(*(v0 + 584), *(v0 + 536));
    }

    else
    {
      v90 = *(*(v0 + 544) + 8);
      v90(*(v0 + 552), *(v0 + 536));
      v91 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
      (*(*(v91 - 8) + 56))(v84, 1, 1, v91);
      v90(*(v0 + 584), *(v0 + 536));
    }
  }

  v92 = *(v0 + 992);
  v93 = *(v0 + 984);
  v132 = *(v0 + 592);
  v94 = *(v0 + 528);
  v95 = *(v0 + 520);
  v118 = v95;
  v120 = v94;
  v96 = *(v0 + 504);
  v97 = *(v0 + 512);
  v98 = *(v0 + 496);
  v99 = *(v0 + 296);
  v100 = type metadata accessor for FlowRedirectContext();
  (*(*(v100 - 8) + 56))(v94, 1, 1, v100);
  v101 = *(v96 + 16);
  v101(v95, v99 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation, v98);
  v101(v97, v99 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation, v98);
  v102 = type metadata accessor for RemoteConversationSpeechData();
  v103 = objc_allocWithZone(v102);
  v104 = &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v104 = v93;
  v104[1] = v92;
  v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = 1;
  *&v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v134;
  *&v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v139;
  v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v122;
  *&v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v136;
  v105 = &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v105 = 0;
  v105[1] = 0;
  v106 = &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v106 = v128;
  v106[1] = v130;
  v107 = &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v107 = v126;
  v107[1] = v124;
  outlined init with copy of ReferenceResolutionClientProtocol?(v132, &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v94, &v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v101(&v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v118, v98);
  v101(&v103[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v97, v98);
  *(v0 + 240) = v103;
  *(v0 + 248) = v102;
  v108 = v134;
  v109 = v139;
  v110 = v136;
  v111 = objc_msgSendSuper2((v0 + 240), sel_init);
  *(v0 + 1120) = v111;
  v112 = *(v96 + 8);
  v112(v97, v98);
  v112(v118, v98);
  outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v113 = swift_task_alloc();
  *(v0 + 1128) = v113;
  *v113 = v0;
  v113[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v114 = *(v0 + 792);
  v115 = *(v0 + 616);

  return RemoteConversationClient.accept(input:speechData:)(v115, v114, v111);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *(*v1 + 1120);
  v5 = *v1;
  *(*v1 + 1136) = v0;

  v6 = *(v2 + 920);
  if (v0)
  {
    v7 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {
    v7 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[75];
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v0[77], v0[76], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v58 = v0[127];
    v60 = v0[128];
    v2 = v0[122];
    v3 = v0[119];
    v4 = v0[118];
    v5 = v0[115];
    v6 = v0[96];
    v52 = v0[95];
    v54 = v0[99];
    v62 = v0[93];
    v64 = v0[102];
    v7 = v0[82];
    v8 = v0[81];
    v9 = v0[80];
    v10 = v0[77];
    v56 = v0[39];
    v11 = v0[36];

    outlined destroy of RemoteConversationTurnData(v10, type metadata accessor for UserInputResult);
    (*(v8 + 8))(v7, v9);
    v12 = type metadata accessor for DecisionEngineResponse();
    v13 = *(v12 + 24);
    v58(v11 + v13, v54, v52);
    (*(v6 + 56))(v11 + v13, 0, 1, v52);
    *v11 = v56;
    *(v11 + 8) = 0;
    *(v11 + *(v12 + 28)) = 0;
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v6 + 8))(v64, v52);
    v14 = v0[114];
    v15 = v0[113];
    v16 = v0[112];
    v17 = v0[111];
    v18 = v0[108];
    v19 = v0[107];
    v20 = v0[106];
    v21 = v0[105];
    v22 = v0[102];
    v23 = v0[101];
    v27 = v0[100];
    v28 = v0[99];
    v29 = v0[98];
    v30 = v0[97];
    v31 = v0[94];
    v32 = v0[93];
    v33 = v0[92];
    v34 = v0[91];
    v35 = v0[90];
    v36 = v0[88];
    v37 = v0[87];
    v38 = v0[85];
    v39 = v0[82];
    v40 = v0[79];
    v41 = v0[78];
    v42 = v0[77];
    v43 = v0[76];
    v44 = v0[74];
    v45 = v0[73];
    v46 = v0[72];
    v47 = v0[69];
    v48 = v0[66];
    v49 = v0[65];
    v50 = v0[64];
    v51 = v0[61];
    v53 = v0[58];
    v55 = v0[57];
    v57 = v0[54];
    v59 = v0[53];
    v61 = v0[50];
    v63 = v0[49];
    v65 = v0[46];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = static MessageBusActor.shared;
    v0[143] = static MessageBusActor.shared;

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v26, 0);
  }
}

{
  v1 = *(v0[45] + 32);
  v2 = swift_task_alloc();
  v0[144] = v2;
  *v2 = v0;
  v2[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v3 = v0[99];
  v4 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v3, v4, 0, 1);
}

{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v3, *(v3 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v9 = *(v0 + 1160);
    v10 = *(v0 + 1144);
    v11 = *(v0 + 792);
    v12 = *(v0 + 768);
    v13 = *(v0 + 760);
    v14 = *(v0 + 288);

    v15 = type metadata accessor for DecisionEngineResponse();
    v16 = *(v15 + 24);
    (*(v12 + 16))(v14 + v16, v11, v13);
    (*(v12 + 56))(v14 + v16, 0, 1, v13);
    *v14 = v9;
    *(v14 + 8) = 0;
    *(v14 + *(v15 + 28)) = 0;
    v17 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v17, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 1168) = v4;
    *v4 = v0;
    v4[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v5 = *(v0 + 360);
    v6 = *(v0 + 320);
    v7 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v7, v6, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1144);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = *(v0 + 1144);

  v2 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[96];
  v51 = v0[95];
  v53 = v0[99];
  v59 = v0[93];
  v61 = v0[102];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[39];
  v55 = v0[36];
  v57 = v0[76];

  outlined destroy of RemoteConversationTurnData(v9, type metadata accessor for UserInputResult);
  (*(v7 + 8))(v6, v8);
  v11 = *(v5 + 8);
  v11(v53, v51);
  v12 = type metadata accessor for DecisionEngineResponse();
  (*(*(v12 - 8) + 56))(v55, 0, 1, v12);
  outlined destroy of RemoteConversationTurnData(v57, type metadata accessor for UserInputResult);
  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v11(v61, v51);
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[108];
  v18 = v0[107];
  v19 = v0[106];
  v20 = v0[105];
  v21 = v0[102];
  v22 = v0[101];
  v25 = v0[100];
  v26 = v0[99];
  v27 = v0[98];
  v28 = v0[97];
  v29 = v0[94];
  v30 = v0[93];
  v31 = v0[92];
  v32 = v0[91];
  v33 = v0[90];
  v34 = v0[88];
  v35 = v0[87];
  v36 = v0[85];
  v37 = v0[82];
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[76];
  v42 = v0[74];
  v43 = v0[73];
  v44 = v0[72];
  v45 = v0[69];
  v46 = v0[66];
  v47 = v0[65];
  v48 = v0[64];
  v49 = v0[61];
  v50 = v0[58];
  v52 = v0[57];
  v54 = v0[54];
  v56 = v0[53];
  v58 = v0[50];
  v60 = v0[49];
  v62 = v0[46];

  v23 = v0[1];

  return v23();
}

{
  v1 = *(*v0 + 1176);
  v2 = *(*v0 + 920);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 760);
  v4 = *(v0 + 744);
  v5 = *(v0 + 720);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(*(v0 + 736), v4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v4, v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v6 = v2(v5, 1, v3);
  v7 = *(v0 + 784);
  if (v6 == 1)
  {
    v8 = *(v0 + 1008);
    v9 = *(v0 + 1000);
    v10 = *(v0 + 760);
    v11 = *(v0 + 720);
    (*(*(v0 + 768) + 16))(v7, *(v0 + 816), v10);
    if (v9(v11, 1, v10) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 720), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }
  }

  else
  {
    v12 = *(v0 + 1024);
    (*(v0 + 1016))(v7, *(v0 + 720), *(v0 + 760));
  }

  v13 = static MessageBusActor.shared;
  *(v0 + 1184) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v13, 0);
}

{
  v1 = *(v0[45] + 32);
  v2 = swift_task_alloc();
  v0[149] = v2;
  *v2 = v0;
  v2[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v3 = v0[98];
  v4 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v3, v4, 0, 1);
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v3, *(v3 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v9 = *(v0 + 1200);
    v10 = *(v0 + 1184);
    v11 = *(v0 + 784);
    v12 = *(v0 + 768);
    v13 = *(v0 + 760);
    v14 = *(v0 + 288);

    v15 = type metadata accessor for DecisionEngineResponse();
    v16 = *(v15 + 24);
    (*(v12 + 16))(v14 + v16, v11, v13);
    (*(v12 + 56))(v14 + v16, 0, 1, v13);
    *v14 = v9;
    *(v14 + 8) = 0;
    *(v14 + *(v15 + 28)) = 0;
    v17 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v17, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 1208) = v4;
    *v4 = v0;
    v4[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v5 = *(v0 + 360);
    v6 = *(v0 + 320);
    v7 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v7, v6, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1208);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = *(v0 + 1184);

  v2 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[102];
  v6 = v0[98];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[93];
  v10 = v0[36];

  v11 = *(v7 + 8);
  v11(v6, v8);
  v12 = type metadata accessor for DecisionEngineResponse();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v11(v5, v8);
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[108];
  v18 = v0[107];
  v19 = v0[106];
  v20 = v0[105];
  v21 = v0[102];
  v22 = v0[101];
  v25 = v0[100];
  v26 = v0[99];
  v27 = v0[98];
  v28 = v0[97];
  v29 = v0[94];
  v30 = v0[93];
  v31 = v0[92];
  v32 = v0[91];
  v33 = v0[90];
  v34 = v0[88];
  v35 = v0[87];
  v36 = v0[85];
  v37 = v0[82];
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[76];
  v42 = v0[74];
  v43 = v0[73];
  v44 = v0[72];
  v45 = v0[69];
  v46 = v0[66];
  v47 = v0[65];
  v48 = v0[64];
  v49 = v0[61];
  v50 = v0[58];
  v51 = v0[57];
  v52 = v0[54];
  v53 = v0[53];
  v54 = v0[50];
  v55 = v0[49];
  v56 = v0[46];

  v23 = v0[1];

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1232);
  v4 = *v1;

  v5 = v2[153];
  v6 = v2[139];
  v7 = v2[137];
  v8 = v2[115];
  if (v0)
  {

    v9 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {

    v9 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[116];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[58], &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine] AmbiguityService couldn't find best action. Falling back to default input", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v0[157] = static MessageBusActor.shared;

    v8 = swift_task_alloc();
    v0[158] = v8;
    *v8 = v0;
    v8[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v9 = v0[152];
    v10 = v0[102];
    v11 = v0[40];

    return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v10, v11, 0, 1);
  }

  else
  {
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[58], v0[61], type metadata accessor for AmbiguityServiceResponse);
    v13 = swift_task_alloc();
    v0[155] = v13;
    *v13 = v0;
    v13[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v14 = v0[61];
    v15 = v0[45];
    v16 = v0[41];
    v17 = v0[42];
    v18 = v0[40];
    v19 = v0[36];

    return DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(v19, v14, v18, v16, v17, (v0 + 2));
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1240);
  v4 = *v1;
  *(*v1 + 1248) = v0;

  v5 = *(v2 + 920);
  if (v0)
  {
    v6 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {
    v6 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[102];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[93];
  v9 = v0[61];

  outlined destroy of RemoteConversationTurnData(v9, type metadata accessor for AmbiguityServiceResponse);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(v6 + 8))(v5, v7);
  v10 = v0[114];
  v11 = v0[113];
  v12 = v0[112];
  v13 = v0[111];
  v14 = v0[108];
  v15 = v0[107];
  v16 = v0[106];
  v17 = v0[105];
  v18 = v0[102];
  v19 = v0[101];
  v22 = v0[100];
  v23 = v0[99];
  v24 = v0[98];
  v25 = v0[97];
  v26 = v0[94];
  v27 = v0[93];
  v28 = v0[92];
  v29 = v0[91];
  v30 = v0[90];
  v31 = v0[88];
  v32 = v0[87];
  v33 = v0[85];
  v34 = v0[82];
  v35 = v0[79];
  v36 = v0[78];
  v37 = v0[77];
  v38 = v0[76];
  v39 = v0[74];
  v40 = v0[73];
  v41 = v0[72];
  v42 = v0[69];
  v43 = v0[66];
  v44 = v0[65];
  v45 = v0[64];
  v46 = v0[61];
  v47 = v0[58];
  v48 = v0[57];
  v49 = v0[54];
  v50 = v0[53];
  v51 = v0[50];
  v52 = v0[49];
  v53 = v0[46];

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v3, *(v3 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v9 = *(v0 + 1272);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 816);
    v12 = *(v0 + 768);
    v13 = *(v0 + 760);
    v14 = *(v0 + 288);

    v15 = type metadata accessor for DecisionEngineResponse();
    v16 = *(v15 + 24);
    (*(v12 + 16))(v14 + v16, v11, v13);
    (*(v12 + 56))(v14 + v16, 0, 1, v13);
    *v14 = v9;
    *(v14 + 8) = 0;
    *(v14 + *(v15 + 28)) = 0;
    v17 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v17, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 1280) = v4;
    *v4 = v0;
    v4[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v5 = *(v0 + 360);
    v6 = *(v0 + 320);
    v7 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v7, v6, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1280);
  v2 = *(*v0 + 1256);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = *(v0 + 1256);

  v2 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[102];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[93];
  v9 = v0[36];

  v10 = type metadata accessor for DecisionEngineResponse();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(v6 + 8))(v5, v7);
  v11 = v0[114];
  v12 = v0[113];
  v13 = v0[112];
  v14 = v0[111];
  v15 = v0[108];
  v16 = v0[107];
  v17 = v0[106];
  v18 = v0[105];
  v19 = v0[102];
  v20 = v0[101];
  v23 = v0[100];
  v24 = v0[99];
  v25 = v0[98];
  v26 = v0[97];
  v27 = v0[94];
  v28 = v0[93];
  v29 = v0[92];
  v30 = v0[91];
  v31 = v0[90];
  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[85];
  v35 = v0[82];
  v36 = v0[79];
  v37 = v0[78];
  v38 = v0[77];
  v39 = v0[76];
  v40 = v0[74];
  v41 = v0[73];
  v42 = v0[72];
  v43 = v0[69];
  v44 = v0[66];
  v45 = v0[65];
  v46 = v0[64];
  v47 = v0[61];
  v48 = v0[58];
  v49 = v0[57];
  v50 = v0[54];
  v51 = v0[53];
  v52 = v0[50];
  v53 = v0[49];
  v54 = v0[46];

  v21 = v0[1];

  return v21();
}

{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 920);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[36];

  v6 = type metadata accessor for DecisionEngineResponse();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = v0[114];
  v8 = v0[113];
  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[108];
  v12 = v0[107];
  v13 = v0[106];
  v14 = v0[105];
  v15 = v0[102];
  v16 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v22 = v0[97];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[85];
  v31 = v0[82];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[76];
  v36 = v0[74];
  v37 = v0[73];
  v38 = v0[72];
  v39 = v0[69];
  v40 = v0[66];
  v41 = v0[65];
  v42 = v0[64];
  v43 = v0[61];
  v44 = v0[58];
  v45 = v0[57];
  v46 = v0[54];
  v47 = v0[53];
  v48 = v0[50];
  v49 = v0[49];
  v50 = v0[46];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[96];
  v6 = v0[95];
  v54 = v0[99];
  v56 = v0[93];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[39];

  (*(v8 + 8))(v7, v9);
  v11 = *(v5 + 8);
  v11(v54, v6);
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v57 = v0[142];
  v12 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[108];
  v17 = v0[107];
  v20 = v0[106];
  v21 = v0[105];
  v22 = v0[101];
  v23 = v0[100];
  v24 = v0[99];
  v25 = v0[98];
  v26 = v0[97];
  v27 = v0[94];
  v28 = v0[93];
  v29 = v0[92];
  v30 = v0[91];
  v31 = v0[90];
  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[85];
  v35 = v0[82];
  v36 = v0[79];
  v37 = v0[78];
  v38 = v0[77];
  v39 = v0[76];
  v40 = v0[74];
  v41 = v0[73];
  v42 = v0[72];
  v43 = v0[69];
  v44 = v0[66];
  v45 = v0[65];
  v46 = v0[64];
  v47 = v0[61];
  v48 = v0[58];
  v49 = v0[57];
  v50 = v0[54];
  v51 = v0[53];
  v52 = v0[50];
  v53 = v0[49];
  v55 = v0[46];
  v11(v0[102], v0[95]);

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[116];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[58], &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine] AmbiguityService couldn't find best action. Falling back to default input", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v0[157] = static MessageBusActor.shared;

  v8 = swift_task_alloc();
  v0[158] = v8;
  *v8 = v0;
  v8[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v9 = v0[152];
  v10 = v0[102];
  v11 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v10, v11, 0, 1);
}

{
  v1 = v0[122];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[61];

  outlined destroy of RemoteConversationTurnData(v7, type metadata accessor for AmbiguityServiceResponse);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v51 = v0[156];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[112];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v17 = v0[105];
  v18 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v22 = v0[97];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[85];
  v31 = v0[82];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[76];
  v36 = v0[74];
  v37 = v0[73];
  v38 = v0[72];
  v39 = v0[69];
  v40 = v0[66];
  v41 = v0[65];
  v42 = v0[64];
  v43 = v0[61];
  v44 = v0[58];
  v45 = v0[57];
  v46 = v0[54];
  v47 = v0[53];
  v48 = v0[50];
  v49 = v0[49];
  v50 = v0[46];
  (*(v5 + 8))(v0[102], v0[95]);

  v15 = v0[1];

  return v15();
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 1080);
  v3 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 1088) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 1104);
  v3 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 1112) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 1152);
  v3 = *(*v1 + 1144);
  v5 = *v1;
  *(*v1 + 1160) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 1192);
  v3 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1200) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 1264);
  v3 = *(*v1 + 1256);
  v5 = *v1;
  *(*v1 + 1272) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v3, 0);
}

uint64_t DecisionEngine.CAMFallbackInfo.init(pommesSearchReason:pommesError:emptyNLInput:hasUndoRequest:conjunctionInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v36 - v17;
  if (a3)
  {
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
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "[DecisionEngine] userWantedToUndo present, so we need to generate CAM fallback flow to produce undo fallback behavior.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    return 1;
  }

  else
  {
    v24 = *(v3 + 192);
    v25 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
    v26 = type metadata accessor for ServerFallbackReason();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v18, v14))
    {
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v24;
      v28[5] = a1;
      v28[6] = a2;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:), v28);

      v29 = [objc_opt_self() sharedPreferences];
      v23 = [v29 shouldDisableServerFallbackDomain];
    }

    else
    {
      v23 = 0;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 67109378;
      *(v33 + 4) = v23;
      *(v33 + 8) = 2080;
      *(v33 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
      _os_log_impl(&dword_1DC659000, v31, v32, "[DecisionEngine] empty nlParses and shouldDisableServerfallbackWithABExperiment = %{BOOL}d for executionRequestId: %s", v33, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }
  }

  return v23;
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = type metadata accessor for Parse();
  v4[52] = v5;
  v6 = *(v5 - 8);
  v4[53] = v6;
  v7 = *(v6 + 64) + 15;
  v4[54] = swift_task_alloc();
  v8 = type metadata accessor for Input();
  v4[55] = v8;
  v9 = *(v8 - 8);
  v4[56] = v9;
  v10 = *(v9 + 64) + 15;
  v4[57] = swift_task_alloc();
  v11 = type metadata accessor for Parse.DirectInvocation();
  v4[58] = v11;
  v12 = *(v11 - 8);
  v4[59] = v12;
  v13 = *(v12 + 64) + 15;
  v4[60] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v4[61] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.getCAMFallback(conversationHelperInput:info:), v14, 0);
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)()
{
  v1 = *(v0 + 400);
  v2 = v1[1];
  v3 = MEMORY[0x1E69E6158];
  if (v2)
  {
    v4 = *v1;
    *(v0 + 296) = MEMORY[0x1E69E6158];
    *(v0 + 272) = v4;
    *(v0 + 280) = v2;
    outlined init with take of Any((v0 + 272), (v0 + 304));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), 0xD000000000000012, 0x80000001DCA81B40, isUniquelyReferenced_nonNull_native);
    v1 = *(v0 + 400);
  }

  v6 = v1[3];
  if (v6)
  {
    v7 = v1[2];
    *(v0 + 232) = v3;
    *(v0 + 208) = v7;
    *(v0 + 216) = v6;
    outlined init with take of Any((v0 + 208), (v0 + 240));

    v8 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 240), 0x724573656D6D6F70, 0xEB00000000726F72, v8);
    v1 = *(v0 + 400);
  }

  v9 = *(v1 + 32);
  v10 = MEMORY[0x1E69E6370];
  *(v0 + 40) = MEMORY[0x1E69E6370];
  *(v0 + 16) = v9;
  outlined init with take of Any((v0 + 16), (v0 + 48));
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 48), 0x494C4E7974706D65, 0xEC0000007475706ELL, v11);
  v12 = *(v1 + 33);
  *(v0 + 104) = v10;
  *(v0 + 80) = v12;
  outlined init with take of Any((v0 + 80), (v0 + 112));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 112), 0x526F646E55736168, 0xEE00747365757165, v13);
  v14 = type metadata accessor for JSONEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v17 = v1[5];
  *(v0 + 360) = v17;
  *(v0 + 368) = v17;
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 360, v0 + 376, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  lazy protocol witness table accessor for type RequestConjunctionInfo? and conformance <A> A?();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 360, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);

  *(v0 + 168) = MEMORY[0x1E6969080];
  *(v0 + 144) = v18;
  *(v0 + 152) = v20;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  outlined copy of Data._Representation(v18, v20);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), 0x74636E756A6E6F63, 0xEF6F666E496E6F69, v21);
  outlined consume of Data._Representation(v18, v20);
  v23 = *(v0 + 472);
  v22 = *(v0 + 480);
  v25 = *(v0 + 456);
  v24 = *(v0 + 464);
  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  v29 = *(v0 + 408);
  v28 = *(v0 + 416);
  static CamDirectInvocationIdentifiers.fallback.getter();
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v23 + 16))(v26, v22, v24);
  (*(v27 + 104))(v26, *MEMORY[0x1E69D0158], v28);
  Input.init(parse:)();
  v30 = *(v29 + 32);
  v31 = swift_task_alloc();
  *(v0 + 496) = v31;
  *v31 = v0;
  v31[1] = DecisionEngine.getCAMFallback(conversationHelperInput:info:);
  v32 = *(v0 + 456);
  v33 = *(v0 + 392);

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v32, v33, 0, 0);
}

{
  v1 = v0[63];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v9 = v0[54];
  v8 = v0[55];
  v10 = v0[48];

  (*(v5 + 8))(v3, v4);
  v11 = type metadata accessor for DecisionEngineResponse();
  v12 = *(v11 + 24);
  (*(v7 + 32))(v10 + v12, v6, v8);
  (*(v7 + 56))(v10 + v12, 0, 1, v8);
  *v10 = v1;
  *(v10 + 8) = 0;
  *(v10 + *(v11 + 28)) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v3 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 504) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.getCAMFallback(conversationHelperInput:info:), v3, 0);
}

Swift::Void __swiftcall Input.stripSetIdentity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v96 = &v83 - v3;
  v4 = type metadata accessor for Input();
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v94 = *(v111 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v100 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v83 - v12;
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v103 = *(v13 - 8);
  v14 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v19 = type metadata accessor for USOParse();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Parse();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - v29;
  v31 = v0;
  Input.parse.getter();
  v32 = v24;
  v33 = v25;
  v34 = (*(v25 + 88))(v30, v32);
  if (v34 != *MEMORY[0x1E69D0168])
  {
    (*(v25 + 8))(v30, v32);
    return;
  }

  v35 = v34;
  v36 = *(v33 + 96);
  v88 = v32;
  v36(v30, v32);
  (*(v20 + 32))(v23, v30, v19);
  v37 = USOParse.userParse.getter();
  v38 = MEMORY[0x1E129C0F0](v37);
  v39 = *(v103 + 8);
  v93 = v13;
  v92 = v103 + 8;
  v91 = v39;
  v39(v18, v13);
  v40 = *(v38 + 16);

  if (v40 < 2)
  {
    (*(v20 + 8))(v23, v19);
    return;
  }

  v85 = v35;
  v87 = v18;
  v90 = v31;
  v41 = v102;
  v89 = v23;
  USOParse.userParse.getter();
  v42 = Siri_Nlu_External_UserParse.userDialogActs.modify();
  v107 = v43;
  v44 = *v43;
  v45 = *(*v43 + 16);
  v46 = v20;
  v86 = v33;
  v106 = v45;
  v84 = v42;
  v47 = 0;
  if (v45)
  {
    v48 = v94;
    v108 = v94 + 8;
    v109 = (v94 + 16);
    v104 = v19;
    v105 = v20;
    while (1)
    {
      if (v47 >= *(v44 + 16))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v46 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v49 = v48[9];
      v19 = v48[2];
      v51 = v110;
      v50 = v111;
      (v19)(v110, v44 + v46 + v49 * v47, v111);
      v31 = Siri_Nlu_External_UserDialogAct.isSetIdentity.getter();
      v23 = v48[1];
      (v23)(v51, v50);
      v41 = v47 + 1;
      if (v31)
      {
        break;
      }

      ++v47;
      v46 = v105;
      v19 = v104;
      if (v106 == v41)
      {
        v47 = *(*v107 + 16);
        v41 = v47;
        goto LABEL_12;
      }
    }

    v68 = *v107;
    v69 = *(*v107 + 16);
    v44 = v89;
    if (v69 - 1 == v47)
    {
      v19 = v104;
      v46 = v105;
      goto LABEL_12;
    }

    v83 = (v48 + 5);
    v31 = v46 + v49 * v41;
    v48 = v109;
    while (v41 < v69)
    {
      v77 = v110;
      v44 = v111;
      (v19)(v110, v68 + v31, v111);
      v78 = Siri_Nlu_External_UserDialogAct.isSetIdentity.getter();
      (v23)(v77, v44);
      if (v78)
      {
        v48 = v109;
      }

      else
      {
        v48 = v109;
        if (v41 != v47)
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v79 = *v107;
          if (v47 >= *(*v107 + 16))
          {
            goto LABEL_41;
          }

          v106 = *(*v107 + 16);
          v94 = v47 * v49;
          v44 = v111;
          (v19)(v101, v79 + v46 + v47 * v49, v111);
          if (v41 >= v106)
          {
            goto LABEL_42;
          }

          (v19)(v100, v79 + v31, v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v107 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
            *v107 = v79;
          }

          v44 = v111;
          v48 = v83;
          if (v47 >= v79[2])
          {
            goto LABEL_43;
          }

          v81 = v79 + v46;
          v82 = *v83;
          (*v83)(&v81[v94], v100, v111);
          if (v41 >= *(*v107 + 16))
          {
            goto LABEL_44;
          }

          v82((*v107 + v31), v101, v44);
          v48 = v109;
        }

        ++v47;
      }

      ++v41;
      v68 = *v107;
      v69 = *(*v107 + 16);
      v31 += v49;
      if (v41 == v69)
      {
        v19 = v104;
        v46 = v105;
        v44 = v89;
        if (v41 >= v47)
        {
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_38;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_14;
  }

  v41 = 0;
LABEL_12:
  specialized Array.replaceSubrange<A>(_:with:)(v47, v41, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  v84(v112, 0);
  v52 = v87;
  v53 = USOParse.userParse.getter();
  v54 = MEMORY[0x1E129C0F0](v53);
  v31 = v93;
  v91(v52, v93);
  v55 = *(v54 + 16);

  v57 = *(MEMORY[0x1E129C0F0](v56) + 16);

  v58 = v55 == v57;
  v48 = v90;
  v23 = v99;
  v47 = v103;
  if (v58)
  {
    goto LABEL_20;
  }

  v44 = Input.description.getter();
  v41 = v59;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_45;
  }

LABEL_14:
  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.executor);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v112[0] = v64;
    *v63 = 136315138;
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v41, v112);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_1DC659000, v61, v62, "[DecisionEngine] setIdentity stripped %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v66 = v64;
    v31 = v93;
    MEMORY[0x1E12A2F50](v66, -1, -1);
    v67 = v63;
    v48 = v90;
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  else
  {
  }

LABEL_20:
  v71 = v97;
  v70 = v98;
  (*(v98 + 32))(v97, v48, v23);
  v72 = v102;
  (*(v47 + 16))(v87, v102, v31);
  v73 = v89;
  USOParse.parserIdentifier.getter();
  USOParse.appBundleId.getter();
  v74 = v95;
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  v75 = v86;
  v76 = v88;
  (*(v86 + 104))(v74, v85, v88);
  Input.withReformedParse(_:)();
  (*(v75 + 8))(v74, v76);
  (*(v70 + 8))(v71, v99);
  v91(v72, v93);
  (*(v46 + 8))(v73, v19);
}

void *DecisionEngine.getRREntities()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "[DecisionEngine] Beginning collecting the RRCandidates", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v11 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  v12 = dispatch thunk of ReferenceResolutionClientProtocol.retrieveSalientEntities()();
  v13 = v12;
  if (v14)
  {
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    outlined consume of Result<[RRCandidate], Error>(v13, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v13;
      v36 = v34;
      *v18 = 136315138;
      v19 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(describing:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v16, v17, "[DecisionEngine] Error when retrieving RRCandidates : %s", v18, 0xCu);
      v23 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    outlined consume of Result<[RRCandidate], Error>(v13, 1);
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136315138;
      v28 = type metadata accessor for RRCandidate();
      v29 = MEMORY[0x1E12A16D0](v13, v28);
      v34 = v6;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v36);
      v6 = v34;

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1DC659000, v24, v25, "[DecisionEngine] RRCandidates: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    outlined consume of Result<[RRCandidate], Error>(v13, 0);
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for PluginAction();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v12 = type metadata accessor for AmbiguityOutput(0);
  v7[17] = v12;
  v13 = *(v12 - 8);
  v7[18] = v13;
  v14 = *(v13 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v16 = type metadata accessor for Input();
  v7[22] = v16;
  v17 = *(v16 - 8);
  v7[23] = v17;
  v18 = *(v17 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v7[26] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v19, 0);
}

void DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)()
{
  v113 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[7], v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v22 = v0[25];
    v23 = v0[22];
    v24 = v0[23];
    v25 = v0[21];
    v26 = v0[10];
    v27 = *(v24 + 32);
    v0[27] = v27;
    v0[28] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27(v22, v25, v23);
    v28 = *(v26 + 32);
    v29 = swift_task_alloc();
    v0[29] = v29;
    *v29 = v0;
    v29[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v30 = v0[25];
LABEL_13:
    v31 = v0[8];

    ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v30, v31, 0, 0);
    return;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0[21], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[7];
  v8 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7 + *(v8 + 20), v6, &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[16], &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
LABEL_4:
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v12 = type metadata accessor for ConversationHelperInput(0);
    if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v11 + *(v12 + 20)), *(v11 + *(v12 + 20) + 8), *(v9 + 33)))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.executor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DC659000, v14, v15, "[DecisionEngine]: Generating CAM Fallback", v16, 2u);
        MEMORY[0x1E12A2F50](v16, -1, -1);
      }

      v17 = swift_task_alloc();
      v0[45] = v17;
      *v17 = v0;
      v17[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
      v18 = v0[9];
      v19 = v0[10];
      v20 = v0[8];
      v21 = v0[6];

      DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v21, v20, v18);
      return;
    }

    v47 = v0[26];
    v48 = v0[6];

    v49 = type metadata accessor for DecisionEngineResponse();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    goto LABEL_38;
  }

  v32 = v0[19];
  v33 = v0[20];
  v34 = v0[17];
  _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[16], v33, type metadata accessor for AmbiguityOutput);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v33, v32, type metadata accessor for AmbiguityOutput);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v0[23];
    v35 = v0[24];
    v37 = v0[22];
    v38 = v0[19];
    v39 = *(v36 + 32);
    v0[41] = v39;
    v0[42] = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v39(v35, v38, v37);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "[AmbiguityService]: Received an ambiguity flow", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v44 = v0[10];

    v45 = *(v44 + 32);
    v46 = swift_task_alloc();
    v0[43] = v46;
    *v46 = v0;
    v46[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v30 = v0[24];
    goto LABEL_13;
  }

  v50 = *v0[19];
  v0[31] = v50;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v51, static Logger.executor);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1DC659000, v52, v53, "[DecisionEngine]: Received actions to execute", v54, 2u);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  v55 = *(v50 + 16);
  v0[33] = v55;
  if (!v55)
  {
    v67 = v0[31];
    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);

    goto LABEL_4;
  }

  v56 = v0[12];
  v0[34] = 0;
  v57 = v0[31];
  if (!*(v57 + 16))
  {
    __break(1u);
    return;
  }

  v60 = *(v56 + 16);
  v58 = v56 + 16;
  v59 = v60;
  v61 = v0[15];
  v62 = v0[11];
  v63 = (*(v58 + 64) + 32) & ~*(v58 + 64);
  v0[35] = v60;
  v0[36] = v58 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(v61, v57 + v63, v62);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v64)
  {
    v65 = v0[31];
    v66 = v0[26];

LABEL_35:

    v71 = v0[32];
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC659000, v72, v73, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v74, 2u);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    v75 = v0[23];
    v110 = v0[22];
    v76 = v0[20];
    v77 = v0[15];
    v78 = v0[11];
    v79 = v0[12];
    v80 = v0[6];

    v81 = type metadata accessor for DecisionEngineResponse();
    v82 = *(v81 + 24);
    PluginAction.input.getter();
    (*(v79 + 8))(v77, v78);
    outlined destroy of RemoteConversationTurnData(v76, type metadata accessor for AmbiguityOutput);
    (*(v75 + 56))(v80 + v82, 0, 1, v110);
    *v80 = 0;
    *(v80 + 8) = 0;
    *(v80 + *(v81 + 28)) = 0;
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
LABEL_38:
    v84 = v0[24];
    v83 = v0[25];
    v86 = v0[20];
    v85 = v0[21];
    v87 = v0[19];
    v89 = v0[15];
    v88 = v0[16];
    v91 = v0[13];
    v90 = v0[14];

    v92 = v0[1];

    v92();
    return;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
    v69 = v0[31];
    v70 = v0[26];
    goto LABEL_35;
  }

  v93 = v0[32];
  v59(v0[14], v0[15], v0[11]);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v0[14];
  v98 = v0[11];
  v99 = v0[12];
  if (v96)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v112 = v101;
    *v100 = 136315138;
    v111 = PluginAction.flowHandlerId.getter();
    v103 = v102;
    v104 = *(v99 + 8);
    v104(v97, v98);
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v103, &v112);

    *(v100 + 4) = v105;
    _os_log_impl(&dword_1DC659000, v94, v95, "[DecisionEngine]: Trying to load new conversation for %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x1E12A2F50](v101, -1, -1);
    MEMORY[0x1E12A2F50](v100, -1, -1);
  }

  else
  {

    v104 = *(v99 + 8);
    v104(v97, v98);
  }

  v0[37] = v104;
  v106 = *(v0[10] + 32);
  v107 = swift_task_alloc();
  v0[38] = v107;
  *v107 = v0;
  v107[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v108 = v0[15];
  v109 = v0[8];

  ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v108, v109);
}

{
  v112 = v0;
  v1 = v0[30];
  if (v1)
  {
    v3 = v0[27];
    v2 = v0[28];
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[6];

    v9 = type metadata accessor for DecisionEngineResponse();
    v10 = *(v9 + 24);
    v3(v8 + v10, v5, v6);
    (*(v7 + 56))(v8 + v10, 0, 1, v6);
    *v8 = v1;
    *(v8 + 8) = 0;
    *(v8 + *(v9 + 28)) = 0;
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
LABEL_3:
    v12 = v0[24];
    v11 = v0[25];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[19];
    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[13];
    v18 = v0[14];

    v20 = v0[1];

    v20();
    return;
  }

  (*(v0[23] + 8))(v0[25], v0[22]);
  v21 = v0[17];
  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[7];
  v25 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v24 + *(v25 + 20), v23, &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[16], &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  }

  else
  {
    v39 = v0[19];
    v40 = v0[20];
    v41 = v0[17];
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[16], v40, type metadata accessor for AmbiguityOutput);
    _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v40, v39, type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v0[23];
      v42 = v0[24];
      v44 = v0[22];
      v45 = v0[19];
      v46 = *(v43 + 32);
      v0[41] = v46;
      v0[42] = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v46(v42, v45, v44);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "[AmbiguityService]: Received an ambiguity flow", v50, 2u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      v51 = v0[10];

      v52 = *(v51 + 32);
      v53 = swift_task_alloc();
      v0[43] = v53;
      *v53 = v0;
      v53[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
      v54 = v0[24];
      v55 = v0[8];

      ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v54, v55, 0, 0);
      return;
    }

    v59 = *v0[19];
    v0[31] = v59;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    v0[32] = __swift_project_value_buffer(v60, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1DC659000, v61, v62, "[DecisionEngine]: Received actions to execute", v63, 2u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    v64 = *(v59 + 16);
    v0[33] = v64;
    if (v64)
    {
      v65 = v0[12];
      v0[34] = 0;
      v66 = v0[31];
      if (!*(v66 + 16))
      {
        __break(1u);
        return;
      }

      v69 = *(v65 + 16);
      v67 = v65 + 16;
      v68 = v69;
      v70 = v0[15];
      v71 = v0[11];
      v72 = (*(v67 + 64) + 32) & ~*(v67 + 64);
      v0[35] = v69;
      v0[36] = v67 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v69(v70, v66 + v72, v71);
      if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v73)
      {
        v74 = v0[31];
        v75 = v0[26];
      }

      else
      {
        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v77 & 1) == 0)
        {
          v92 = v0[32];
          v68(v0[14], v0[15], v0[11]);
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.debug.getter();
          v95 = os_log_type_enabled(v93, v94);
          v96 = v0[14];
          v97 = v0[11];
          v98 = v0[12];
          if (v95)
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v111 = v100;
            *v99 = 136315138;
            v110 = PluginAction.flowHandlerId.getter();
            v102 = v101;
            v103 = *(v98 + 8);
            v103(v96, v97);
            v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v102, &v111);

            *(v99 + 4) = v104;
            _os_log_impl(&dword_1DC659000, v93, v94, "[DecisionEngine]: Trying to load new conversation for %s", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v100);
            MEMORY[0x1E12A2F50](v100, -1, -1);
            MEMORY[0x1E12A2F50](v99, -1, -1);
          }

          else
          {

            v103 = *(v98 + 8);
            v103(v96, v97);
          }

          v0[37] = v103;
          v105 = *(v0[10] + 32);
          v106 = swift_task_alloc();
          v0[38] = v106;
          *v106 = v0;
          v106[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
          v107 = v0[15];
          v108 = v0[8];

          ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v107, v108);
          return;
        }

        v78 = v0[31];
        v79 = v0[26];
      }

      v80 = v0[32];
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1DC659000, v81, v82, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v83, 2u);
        MEMORY[0x1E12A2F50](v83, -1, -1);
      }

      v84 = v0[23];
      v109 = v0[22];
      v85 = v0[20];
      v86 = v0[15];
      v87 = v0[11];
      v88 = v0[12];
      v89 = v0[6];

      v90 = type metadata accessor for DecisionEngineResponse();
      v91 = *(v90 + 24);
      PluginAction.input.getter();
      (*(v88 + 8))(v86, v87);
      outlined destroy of RemoteConversationTurnData(v85, type metadata accessor for AmbiguityOutput);
      (*(v84 + 56))(v89 + v91, 0, 1, v109);
      *v89 = 0;
      *(v89 + 8) = 0;
      *(v89 + *(v90 + 28)) = 0;
      (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
      goto LABEL_3;
    }

    v76 = v0[31];
    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);
  }

  v26 = v0[9];
  v27 = v0[10];
  v28 = v0[8];
  v29 = type metadata accessor for ConversationHelperInput(0);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v28 + *(v29 + 20)), *(v28 + *(v29 + 20) + 8), *(v26 + 33)) & 1) == 0)
  {
    v56 = v0[26];
    v57 = v0[6];

    v58 = type metadata accessor for DecisionEngineResponse();
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
    goto LABEL_3;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.executor);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v31, v32, "[DecisionEngine]: Generating CAM Fallback", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = swift_task_alloc();
  v0[45] = v34;
  *v34 = v0;
  v34[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v35 = v0[9];
  v36 = v0[10];
  v37 = v0[8];
  v38 = v0[6];

  DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v38, v37, v35);
}