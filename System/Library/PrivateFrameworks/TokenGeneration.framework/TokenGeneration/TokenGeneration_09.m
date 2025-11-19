uint64_t closure #1 in InferenceRequestInstrumentation.start()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v14 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  v13 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType + 8);

  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v15 = *MEMORY[0x1E69AA418];
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12, v15, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest();
  v18 = swift_allocBox();
  static Buildable.with(_:)();
  *v6 = v18;
  v19 = *MEMORY[0x1E69AA5C8];
  v20 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v6, v19, v20);
  (*(v21 + 56))(v6, 0, 1, v20);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  InferenceProviderRequestConfiguration.sessionUUID.getter();
  v5(v3, 0, 1, v4);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
  InferenceProviderRequestConfiguration.useCaseIdentifier.getter();
  return GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();
}

uint64_t closure #2 in closure #1 in InferenceRequestInstrumentation.start()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV0I4TypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV0I4TypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType;
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2 + v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  return MEMORY[0x1AC5A44D0](v6);
}

void InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v27 - v12;
  v14 = *a1;
  if (*(*a1 + 16))
  {
    v15 = v14[3];
    v29[0] = v14[2];
    v29[1] = v15;
    v29[2] = v14[4];
    v16 = *(&v2->isa + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
    MEMORY[0x1EEE9AC00](v11);
    v27[-2] = v2;
    v27[-1] = v29;
    outlined init with copy of ModelInformation.Asset(v29, v28);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    outlined destroy of ModelInformation.Asset(v29);
    v25 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  }

  else
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.inference);

    v27[0] = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27[0], v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v29[0] = v20;
      *v19 = 136315138;
      InferenceProviderRequestConfiguration.requestUUID.getter();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v29);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1AB828000, v27[0], v18, "No model information found for request %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1AC5A6CD0](v20, -1, -1);
      MEMORY[0x1AC5A6CD0](v19, -1, -1);
    }

    else
    {
      v26 = v27[0];
    }
  }
}

uint64_t closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  v7 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType + 8);

  MEMORY[0x1AC5A5BC0](0x6E496C65646F6D2ELL, 0xEA00000000006F66);
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15[-v10];
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  v13 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v16 = a3;
  static Buildable.with(_:)();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t closure #1 in closure #1 in closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  result = GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter();
  if (a2[3])
  {
    v6 = a2[2];

    return GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter();
  }

  return result;
}

uint64_t InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35[-1] - v5;
  outlined init with copy of PromptCompletionEvent(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v35[0] = v35[6];
    v35[1] = v35[7];
    v35[2] = v36;

    InferenceRequestInstrumentation.reportModelInformation(_:)(v35);

    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v9 = v37;
    v8 = v38;
    v10 = v39;
    v11 = v40;
    v12 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount;
    v13 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount);
    if (v13)
    {
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
LABEL_6:
        *(v1 + v12) = v15;
        v16 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
        MEMORY[0x1EEE9AC00](result);
        *(&v34 - 2) = v9;
        *(&v34 - 1) = v8;
        os_unfair_lock_lock(v16 + 12);
        closure #1 in InferenceRequestTransparency.record(textDelta:)partial apply(&v16[4]);
        os_unfair_lock_unlock(v16 + 12);

        outlined consume of Data?(v10, v11);
        return __swift_destroy_boxed_opaque_existential_0(v41);
      }
    }

    else
    {
      v26 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
      v34 = v1;
      EventReporter.send(eventBuiltWithPresetsAnd:)();
      v32 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
      (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
      result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
      v1 = v34;
      v33 = *(v34 + v12);
      v14 = __OFADD__(v33, 1);
      v15 = v33 + 1;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v17 = v37;
    v18 = v38;

    result = outlined consume of Data._Representation(v17, v18);
    v19 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount);
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = v20;
    v21 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
    MEMORY[0x1EEE9AC00](result);
    *(&v34 - 2) = 0x3E6567616D693CLL;
    *(&v34 - 1) = 0xE700000000000000;
    os_unfair_lock_lock(v21 + 12);
    closure #1 in InferenceRequestTransparency.record(textDelta:)partial apply(&v21[4]);
LABEL_13:
    os_unfair_lock_unlock(v21 + 12);
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;

      outlined consume of FinishReason(v27, v28);
      outlined consume of Data._Representation(v29, v30);
      v31 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
      os_unfair_lock_lock((v31 + 48));
      partial apply for closure #1 in InferenceRequestTransparency.submit()((v31 + 16));
      os_unfair_lock_unlock((v31 + 48));
    }

    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v22 = v37;
  v23 = v38;

  result = outlined consume of Data._Representation(v22, v23);
  v24 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount);
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = v25;
    v21 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
    MEMORY[0x1EEE9AC00](result);
    *(&v34 - 2) = 0x3E6F696475613CLL;
    *(&v34 - 1) = 0xE700000000000000;
    os_unfair_lock_lock(v21 + 12);
    partial apply for closure #1 in InferenceRequestTransparency.record(textDelta:)(&v21[4]);
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t closure #1 in InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  v7 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType + 8);

  MEMORY[0x1AC5A5BC0](0x6F5474737269662ELL, 0xEB000000006E656BLL);
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

void closure #1 in InferenceRequestInstrumentation.end(error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v32 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v32 - v15;
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  v19 = *(a2 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType + 8);

  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a3)
  {
    v21 = *MEMORY[0x1E69AA408];
    v22 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v16, v21, v22);
    (*(v23 + 56))(v16, 0, 1, v22);
    MEMORY[0x1AC5A6AE0](a3);
    GenerativeFunctionsInstrumentationEvent.subtype.setter();
    swift_getErrorValue();
    Error.telemetryValue.getter(v32[2], v32[3], v8);
    v24 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  else
  {
    v25 = *MEMORY[0x1E69AA400];
    v26 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v16, v25, v26);
    (*(v27 + 56))(v16, 0, 1, v26);
    GenerativeFunctionsInstrumentationEvent.subtype.setter();
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest();
    v28 = swift_allocBox();
    static Buildable.with(_:)();
    *v12 = v28;
    v29 = *MEMORY[0x1E69AA5C8];
    v30 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v12, v29, v30);
    (*(v31 + 56))(v12, 0, 1, v30);
    GenerativeFunctionsInstrumentationEvent.metadata.setter();
  }
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
}

uint64_t Error.telemetryValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v86 = a2;
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v77 - v8;
  v10 = type metadata accessor for InferenceError.Context();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v77 - v16;
  v18 = *(a1 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v77 - v22;
  v24 = type metadata accessor for InferenceError();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v18;
  v85 = v4;
  v29 = v4;
  v30 = *(v18 + 16);
  v30(v23, v29, a1);
  v31 = v25;
  v32 = swift_dynamicCast();
  v33 = *(v25 + 56);
  if ((v32 & 1) == 0)
  {
    v33(v17, 1, 1, v24);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
    goto LABEL_5;
  }

  v33(v17, 0, 1, v24);
  (*(v25 + 32))(v28, v17, v24);
  InferenceError.context.getter();
  v34 = v82;
  v35 = v31;
  if ((*(v82 + 48))(v9, 1, v10) != 1)
  {
    v46 = v10;
    v78 = v24;
    v79 = v28;
    v80 = v35;
    v47 = v34;
    v48 = v81;
    (*(v34 + 32))(v81, v9, v46);
    v49 = InferenceError.Context.userInfo.getter();
    if (*(v49 + 16))
    {
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001ABA41210);
      if (v51)
      {
        v52 = (*(v49 + 56) + 16 * v50);
        v54 = *v52;
        v53 = v52[1];

        v55 = InferenceError.Context.userInfo.getter();
        if (*(v55 + 16))
        {
          v56 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001ABA41230);
          if (v57)
          {
            v58 = (*(v55 + 56) + 16 * v56);
            v59 = v48;
            v60 = v46;
            v61 = *v58;
            v62 = v58[1];

            type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
            v63 = swift_allocBox();
            MEMORY[0x1EEE9AC00](v63);
            v64 = v54;
            v65 = v79;
            *(&v77 - 6) = v79;
            *(&v77 - 5) = v64;
            *(&v77 - 4) = v53;
            *(&v77 - 3) = v61;
            *(&v77 - 2) = v62;
            static Buildable.with(_:)();

            v66 = v87;
            *v87 = v63;
            v67 = *MEMORY[0x1E69AA3C8];
            v68 = type metadata accessor for GenerativeFunctionsInstrumentationError();
            (*(*(v68 - 8) + 104))(v66, v67, v68);
            (*(v47 + 8))(v59, v60);
            return (*(v80 + 8))(v65, v78);
          }
        }
      }
    }

    v69 = InferenceError.Context.domain.getter();
    v71 = v70;

    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {
      (*(v34 + 8))(v48, v46);
      (*(v80 + 8))(v79, v78);
      goto LABEL_5;
    }

    type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
    v73 = swift_allocBox();
    MEMORY[0x1EEE9AC00](v73);
    v65 = v79;
    *(&v77 - 2) = v79;
    *(&v77 - 1) = v48;
    static Buildable.with(_:)();
    v74 = v87;
    *v87 = v73;
    v75 = *MEMORY[0x1E69AA3C8];
    v76 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    (*(*(v76 - 8) + 104))(v74, v75, v76);
    (*(v34 + 8))(v48, v46);
    return (*(v80 + 8))(v65, v78);
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  (*(v31 + 8))(v28, v24);
LABEL_5:
  v36 = v83;
  v30(v83, v85, a1);
  v37 = _getErrorEmbeddedNSError<A>(_:)();
  if (v37)
  {
    v38 = v37;
    (*(v84 + 8))(v36, a1);
  }

  else
  {
    v38 = swift_allocError();
    (*(v84 + 32))(v39, v36, a1);
  }

  v40 = _convertErrorToNSError(_:)();

  type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
  v41 = swift_allocBox();
  MEMORY[0x1EEE9AC00](v41);
  *(&v77 - 2) = v40;
  static Buildable.with(_:)();

  v42 = v87;
  *v87 = v41;
  v43 = *MEMORY[0x1E69AA3C8];
  v44 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  return (*(*(v44 - 8) + 104))(v42, v43, v44);
}

uint64_t InferenceRequestInstrumentation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_configuration;
  v2 = type metadata accessor for InferenceProviderRequestConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType + 8);

  v4 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType;
  v5 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);

  v7 = *(v0 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InferenceRequestInstrumentation()
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for InstrumentedStream(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      type metadata accessor for (())?();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InstrumentedStream(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for InstrumentedStream(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t type metadata completion function for InferenceRequest()
{
  result = type metadata accessor for StreamingRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OneShotRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unsigned __int8 *closure #1 in Error.telemetryValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  _StringGuts.grow(_:)(20);

  v37 = 0x636E657265666E49;
  v38 = 0xEF2E726F72724565;
  v10 = InferenceError.caseName.getter();
  MEMORY[0x1AC5A5BC0](v10);

  MEMORY[0x1AC5A5BC0](46, 0xE100000000000000);
  MEMORY[0x1AC5A5BC0](a3, a4);
  result = GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  v12 = HIBYTE(a6) & 0xF;
  v13 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v14 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v35 = 0;
    v34 = 1;
    return MEMORY[0x1AC5A4390](v35, v34 & 1);
  }

  if ((a6 & 0x1000000000000000) != 0)
  {

    v16 = specialized _parseInteger<A, B>(ascii:radix:)(a5, a6, 10);
    v34 = v36;

LABEL_63:
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v16;
    }

    return MEMORY[0x1AC5A4390](v35, v34 & 1);
  }

  if ((a6 & 0x2000000000000000) == 0)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_61;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v23;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_61;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v16 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_62;
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
LABEL_62:
        v34 = v12;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v37 = a5;
  v38 = a6 & 0xFFFFFFFFFFFFFFLL;
  if (a5 != 43)
  {
    if (a5 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = &v37;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          v31 = (v31 + 1);
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = &v37 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v12)
  {
    if (--v12)
    {
      v16 = 0;
      v26 = &v37 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v12)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t closure #2 in Error.telemetryValue.getter()
{
  _StringGuts.grow(_:)(20);

  v0 = InferenceError.caseName.getter();
  MEMORY[0x1AC5A5BC0](v0);

  MEMORY[0x1AC5A5BC0](46, 0xE100000000000000);
  v1 = InferenceError.Context.domain.getter();
  MEMORY[0x1AC5A5BC0](v1);

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  v2 = InferenceError.Context.code.getter();
  return MEMORY[0x1AC5A4390](v2, 0);
}

uint64_t closure #3 in Error.telemetryValue.getter(int a1, id a2)
{
  v3 = [a2 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  return MEMORY[0x1AC5A4390]([a2 code], 0);
}

Swift::String __swiftcall OneShotRequest.eventTypeSuffix()()
{
  v1 = type metadata accessor for OneShotRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v0, v4, type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
        v8 = 0xD000000000000016;
        v7 = 0x80000001ABA412D0;
        goto LABEL_20;
      }

      v6 = "completePromptTemplate";
LABEL_13:
      v9 = (v6 - 32) | 0x8000000000000000;
      outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
      v7 = v9;
      v8 = 0xD000000000000016;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
        v7 = 0xEE00726574706164;
        v8 = 0x41656C69706D6F63;
        goto LABEL_20;
      }

      v6 = "classifyPromptTemplate";
      goto LABEL_13;
    }

    outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
    v8 = 0x7966697373616C63;
LABEL_17:
    v7 = 0xEE0074706D6F7250;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
      v8 = 0x6574656C706D6F63;
      goto LABEL_17;
    }

    outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
    v7 = 0x80000001ABA412F0;
    v8 = 0xD000000000000019;
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
    v7 = 0xEB00000000736E65;
    v8 = 0x6B6F54746E756F63;
  }

  else
  {
    outlined destroy of PromptCompletion(v4, type metadata accessor for OneShotRequest);
    v7 = 0x80000001ABA41310;
    v8 = 0xD000000000000012;
  }

LABEL_20:
  result._object = v7;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t closure #1 in InstrumentedStream.init<>(using:on:)()
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(v1);
  InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(v1);
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t InstrumentedStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = &v25 - v16;
  (*(v7 + 16))(v10, v3, v6, v15);
  v18 = dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v19 = v3 + *(a1 + 36);
  v20 = *(v19 + 8);
  v21 = (*v19)(v18);
  v22 = (v3 + *(a1 + 40));
  v23 = *v22;
  InstrumentedStream.AsyncIterator.init(wrapped:instrumentation:handleElement:isStarted:)(v17, v21, *v22, v22[1], 0, a2);
  return _s15TokenGeneration31InferenceRequestInstrumentationCxRi_zRi0_zly7ElementQzIseghgn_Sgs8SendableRzSciRzlWOy(v23);
}

int *InstrumentedStream.AsyncIterator.init(wrapped:instrumentation:handleElement:isStarted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = type metadata accessor for InstrumentedStream.AsyncIterator();
  *(a6 + result[9]) = a2;
  v14 = (a6 + result[10]);
  *v14 = a3;
  v14[1] = a4;
  *(a6 + result[11]) = a5;
  return result;
}

uint64_t InstrumentedStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = *(AssociatedTypeWitness - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InstrumentedStream.AsyncIterator.next(), 0, 0);
}

uint64_t InstrumentedStream.AsyncIterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 44);
  if ((*(v2 + v3) & 1) == 0)
  {
    v4 = v0[15];
    v5 = *(*(v2 + *(v1 + 36)) + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v6 = v0[15];
    v7 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
    *(v2 + v3) = 1;
  }

  v8 = v0[5];
  v9 = v0[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x1E69E85A8] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = InstrumentedStream.AsyncIterator.next();
  v14 = v0[10];
  v15 = v0[4];

  return MEMORY[0x1EEE6D8C8](v14, AssociatedTypeWitness, AssociatedConformanceWitness);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = InstrumentedStream.AsyncIterator.next();
  }

  else
  {
    v3 = InstrumentedStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[17];
    v5 = v0[14];
    v7 = v0[3];
    v6 = v0[4];
    (*(v0[9] + 8))(v1, v0[8]);
    v8 = *(v6 + *(v7 + 36));
    v9 = *(v8 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = 0;
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    if (v4)
    {

      v4 = 1;
    }

    v11 = v0[14];

    v12 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    v13 = 1;
    (*(*(v12 - 8) + 56))(v11, v4, 1, v12);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  }

  else
  {
    v15 = v0[3];
    v14 = v0[4];
    v16 = *(v2 + 32);
    v16(v0[12], v1, v3);
    v17 = v14 + *(v15 + 40);
    if (*v17)
    {
      v18 = *(v17 + 8);
      (*v17)(*(v0[4] + *(v0[3] + 36)), v0[12]);
    }

    v16(v0[2], v0[12], v0[7]);
    v13 = 0;
  }

  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[10];
  (*(v0[11] + 56))(v0[2], v13, 1, v0[7]);

  v24 = v0[1];

  return v24();
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(*(v0 + 32) + *(*(v0 + 24) + 36));
  v4 = *(v3 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 80);

  v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  swift_willThrow();

  v12 = *(v0 + 8);
  v13 = *(v0 + 136);

  return v12();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance InstrumentedStream<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return InstrumentedStream.AsyncIterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance InstrumentedStream<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  InstrumentedStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t partial apply for closure #2 in closure #1 in InferenceRequestInstrumentation.end(error:)()
{
  MEMORY[0x1AC5A44F0](*(v0 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount), 0);
  v1 = *(v0 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount);
  return GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.outputImagesCount.setter();
}

uint64_t partial apply for closure #2 in Error.telemetryValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #2 in Error.telemetryValue.getter();
}

uint64_t _s15TokenGeneration31InferenceRequestInstrumentationCxRi_zRi0_zly7ElementQzIseghgn_Sgs8SendableRzSciRzlWOy(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined destroy of PromptCompletion(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in InferenceRequestTransparency.record(completion:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in InferenceRequestTransparency.record(completion:)(a1);
}

uint64_t outlined init with copy of PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for InstrumentedStream.AsyncIterator(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    type metadata accessor for InferenceRequestInstrumentation(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for (())?();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InstrumentedStream.AsyncIterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v10 < 0x7FFFFFFF)
  {
    v22 = *(&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v9 + 48);

    return v21(a1);
  }
}

void storeEnumTagSinglePayload for InstrumentedStream.AsyncIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v12 >= a3)
  {
    v16 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v13] = 0;
      }

      else if (v16)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v10 < 0x7FFFFFFF)
      {
        v20 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v9 + 56);

        v19(a1, a2);
      }

      return;
    }
  }

  v17 = ~v12 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v16 > 1)
    {
LABEL_27:
      if (v16 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v16 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    a1[v13] = v18;
  }
}

uint64_t static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.from(inferenceRequestHandlerIdentifier:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 == 0xD000000000000015 && 0x80000001ABA41410 == a2 || (v20 = v8, v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), v8 = v20, (v11 & 1) != 0))
  {
    v12 = *MEMORY[0x1E69AA380];
LABEL_5:
    v13 = *(v8 + 104);

    return v13(a3, v12, v6);
  }

  if ((a1 != 0xD00000000000001CLL || 0x80000001ABA41430 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0xD000000000000011 && 0x80000001ABA41450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = MEMORY[0x1E69AA378];
    }

    else
    {
      *a3 = 0;
      v18 = MEMORY[0x1E69AA390];
    }

    v12 = *v18;
    v8 = v20;
    goto LABEL_5;
  }

  v23 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  v24 = v15;
  v21 = 0x74706774616863;
  v22 = 0xE700000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.contains<A>(_:)();

  if (v16)
  {
    v17 = MEMORY[0x1E69AA388];
  }

  else
  {
    *v10 = 6;
    v17 = MEMORY[0x1E69AA390];
  }

  (*(v20 + 104))(v10, *v17, v6);
  return (*(v20 + 32))(a3, v10, v6);
}

uint64_t closure #1 in InferenceRequestTransparency.record(prompt:)(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  outlined init with copy of Prompt?(a2, &v19 - v6);
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Prompt?(v7);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = Prompt.transparencyDescription.getter();
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = type metadata accessor for TransparencyReport();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  TransparencyReport.init()();
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  v16 = a1[1];

  *a1 = v10;
  a1[1] = v11;
  v17 = a1[3];

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t Prompt.transparencyDescription.getter()
{
  v0 = type metadata accessor for Prompt.Turn.Segment();
  v98 = *(v0 - 8);
  v1 = *(v98 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (&v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v72 - v5;
  v94 = type metadata accessor for Prompt.Turn.Role();
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v72 - v11;
  v87 = type metadata accessor for Prompt.Turn();
  v12 = *(v87 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v82 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - v18;
  v20 = Prompt.turns()();
  v21 = *(v20 + 16);
  v97 = v6;
  v83 = v12;
  v90 = v21;
  if (v21)
  {
    v22 = 0;
    v88 = v12 + 16;
    v86 = *MEMORY[0x1E69DA7B0];
    v85 = (v7 + 104);
    v81 = v7 + 8;
    v78 = (v12 + 8);
    v80 = (v12 + 32);
    v84 = MEMORY[0x1E69E7CC0];
    v23 = v87;
    v89 = v20;
    v79 = v19;
    v24 = v92;
    v25 = v93;
    while (v22 < *(v20 + 16))
    {
      v96 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v95 = *(v83 + 72);
      (*(v83 + 16))(v19, v20 + v96 + v95 * v22, v23);
      Prompt.Turn.role.getter();
      v26 = v94;
      (*v85)(v25, v86, v94);
      v27 = static Prompt.Turn.Role.== infix(_:_:)();
      v28 = *v81;
      (*v81)(v25, v26);
      v28(v24, v26);
      if (v27)
      {
        v29 = *v80;
        v30 = v79;
        v31 = v87;
        (*v80)(v91, v79, v87);
        v32 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v32;
        v100 = v32;
        v23 = v31;
        v19 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1);
          v23 = v87;
          v34 = v100;
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v23 = v87;
          v34 = v100;
        }

        *(v34 + 16) = v36 + 1;
        v84 = v34;
        v29((v34 + v96 + v36 * v95), v91, v23);
        v6 = v97;
      }

      else
      {
        v19 = v79;
        v23 = v87;
        (*v78)(v79, v87);
      }

      ++v22;
      v20 = v89;
      if (v90 == v22)
      {
        goto LABEL_13;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v84 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v37 = *(v84 + 16);
  if (v37)
  {
    v38 = v84;
    v100 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v39 = v87;
    v40 = 0;
    v41 = v83;
    v76 = v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v75 = v83 + 16;
    v92 = (v98 + 88);
    v93 = (v98 + 16);
    v42 = v100;
    v79 = 0x80000001ABA413B0;
    LODWORD(v91) = *MEMORY[0x1E69DA7E8];
    LODWORD(v90) = *MEMORY[0x1E69DA7F0];
    LODWORD(v88) = *MEMORY[0x1E69DA7D0];
    v86 = *MEMORY[0x1E69DA7D8];
    v43 = (v98 + 8);
    v78 = 0x80000001ABA413D0;
    v77 = *MEMORY[0x1E69DA7E0];
    v85 = 0x80000001ABA413F0;
    v89 = (v98 + 96);
    v73 = (v83 + 8);
    v74 = v37;
    while (v40 < *(v84 + 16))
    {
      v80 = v40;
      v81 = v42;
      (*(v41 + 16))(v82, v76 + *(v41 + 72) * v40, v39);
      v44 = Prompt.Turn.segments.getter();
      v45 = *(v44 + 16);
      if (v45)
      {
        v99 = MEMORY[0x1E69E7CC0];
        v46 = v44;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
        v47 = v46;
        v48 = 0;
        v49 = v99;
        v94 = v47 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v95 = v45;
        v96 = v47;
        while (v48 < *(v47 + 16))
        {
          v50 = v98;
          v51 = *(v98 + 16);
          v51(v6, v94 + *(v98 + 72) * v48, v0);
          v51(v4, v6, v0);
          v52 = (*(v50 + 88))(v4, v0);
          if (v52 == v91)
          {
            (*v43)(v6, v0);
            (*v89)(v4, v0);
            v54 = *v4;
            v53 = v4[1];
          }

          else if (v52 == v90)
          {
            v55 = *v43;
            (*v43)(v6, v0);
            v55(v4, v0);
            v53 = 0xE700000000000000;
            v54 = 0x3E6567616D693CLL;
          }

          else if (v52 == v88)
          {
            v56 = *v43;
            (*v43)(v6, v0);
            v56(v4, v0);
            v54 = 0xD000000000000014;
            v53 = v85;
          }

          else
          {
            if (v52 == v86)
            {
              v57 = *v43;
              (*v43)(v6, v0);
              v57(v4, v0);
              v54 = 0xD000000000000011;
              v58 = &v101;
            }

            else
            {
              if (v52 != v77)
              {
                goto LABEL_44;
              }

              v59 = *v43;
              (*v43)(v6, v0);
              v59(v4, v0);
              v54 = 0xD000000000000014;
              v58 = &v102;
            }

            v53 = *(v58 - 32);
          }

          v99 = v49;
          v61 = *(v49 + 16);
          v60 = *(v49 + 24);
          if (v61 >= v60 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
            v49 = v99;
          }

          ++v48;
          *(v49 + 16) = v61 + 1;
          v62 = v49 + 16 * v61;
          *(v62 + 32) = v54;
          *(v62 + 40) = v53;
          v47 = v96;
          v6 = v97;
          if (v95 == v48)
          {

            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_35:
      v99 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v63 = BidirectionalCollection<>.joined(separator:)();
      v65 = v64;

      v39 = v87;
      (*v73)(v82, v87);
      v42 = v81;
      v100 = v81;
      v67 = *(v81 + 16);
      v66 = *(v81 + 24);
      if (v67 >= v66 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
        v39 = v87;
        v42 = v100;
      }

      v40 = (v80 + 1);
      *(v42 + 16) = v67 + 1;
      v68 = v42 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v41 = v83;
      if (v40 == v74)
      {
        v69 = v42;

        goto LABEL_40;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v100 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v70 = BidirectionalCollection<>.joined(separator:)();

  return v70;
}

uint64_t closure #1 in InferenceRequestTransparency.record(completion:)(uint64_t *a1)
{
  PromptCompletion.transparencyDescription.getter();
  v2 = type metadata accessor for TransparencyReport();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  TransparencyReport.init()();
  v5 = *a1;
  v6 = a1[1];
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  *a1 = 0;
  a1[1] = 0;
  v7 = a1[3];

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t PromptCompletion.transparencyDescription.getter()
{
  v1 = type metadata accessor for PromptCompletion.Segment(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PromptCompletion.Content(0);
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = *(v0 + 32);
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);
    v18 = *(v17 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v42 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v42;
      v20 = v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v21 = *(v2 + 72);
      v39 = v17;
      v40 = v21;
      do
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v20, v5, type metadata accessor for PromptCompletion.Segment);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v5, v15, type metadata accessor for PromptCompletion.Content);
        outlined destroy of PromptCompletion.Segment(v5, type metadata accessor for PromptCompletion.Segment);
        v42 = v19;
        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
          v19 = v42;
        }

        *(v19 + 2) = v23 + 1;
        outlined init with take of PromptCompletion.Content(v15, &v19[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23]);
        v20 += v40;
        --v18;
      }

      while (v18);
    }

    v24 = *(v19 + 2);
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_25:

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v24 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v24)
  {
    goto LABEL_25;
  }

LABEL_9:
  v25 = &v19[(*(v6 + 80) + 32) & ~*(v6 + 80)];
  v40 = *(v6 + 72);
  v26 = MEMORY[0x1E69E7CC0];
  do
  {
    _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v25, v12, type metadata accessor for PromptCompletion.Content);
    _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v12, v9, type metadata accessor for PromptCompletion.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined destroy of PromptCompletion.Segment(v12, type metadata accessor for PromptCompletion.Content);
        outlined destroy of PromptCompletion.Segment(v9, type metadata accessor for PromptCompletion.Content);
        v28 = 0xE600000000000000;
        v29 = 0x3E656C69663CLL;
        goto LABEL_18;
      }

      outlined destroy of PromptCompletion.Segment(v9, type metadata accessor for PromptCompletion.Content);
      outlined destroy of PromptCompletion.Segment(v12, type metadata accessor for PromptCompletion.Content);
      v28 = 0xE700000000000000;
      v33 = 0x6F696475613CLL;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined destroy of PromptCompletion.Segment(v12, type metadata accessor for PromptCompletion.Content);
        v29 = *v9;
        v28 = v9[1];
        v30 = v9[2];
        v31 = v9[3];
        v32 = v9[4];

        outlined consume of Data?(v31, v32);
        goto LABEL_18;
      }

      outlined destroy of PromptCompletion.Segment(v9, type metadata accessor for PromptCompletion.Content);
      outlined destroy of PromptCompletion.Segment(v12, type metadata accessor for PromptCompletion.Content);
      v28 = 0xE700000000000000;
      v33 = 0x6567616D693CLL;
    }

    v29 = v33 & 0xFFFFFFFFFFFFLL | 0x3E000000000000;
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    }

    v35 = *(v26 + 2);
    v34 = *(v26 + 3);
    if (v35 >= v34 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v26);
    }

    *(v26 + 2) = v35 + 1;
    v36 = &v26[16 * v35];
    *(v36 + 4) = v29;
    *(v36 + 5) = v28;
    v25 += v40;
    --v24;
  }

  while (v24);

LABEL_26:
  v42 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v37 = BidirectionalCollection<>.joined(separator:)();

  return v37;
}

uint64_t closure #1 in InferenceRequestTransparency.record(textDelta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = v6;

  MEMORY[0x1AC5A5BC0](a2, a3);

  *(a1 + 16) = v9;
  *(a1 + 24) = v7;
  return result;
}

double closure #1 in InferenceRequestTransparency.submit()(void *a1)
{
  v2 = type metadata accessor for TransparencyReport();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  TransparencyReport.init()();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t InferenceRequestTransparency.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_configuration;
  v2 = type metadata accessor for InferenceProviderRequestConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_executionEnvironment;
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InferenceRequestTransparency()
{
  result = type metadata singleton initialization cache for InferenceRequestTransparency;
  if (!type metadata singleton initialization cache for InferenceRequestTransparency)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InferenceRequestTransparency()
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceRequestTransparency.MutableState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for InferenceRequestTransparency.MutableState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.Segment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v19;
  v9[11] = v8;
  v9[8] = a8;
  v9[9] = v18;
  v9[6] = a5;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = type metadata accessor for XPCDictionary();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v13 = type metadata accessor for XPCCodableObject();
  v9[15] = v13;
  v14 = *(v13 - 8);
  v9[16] = v14;
  v15 = *(v14 + 64) + 15;
  v9[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:), 0, 0);
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 160);
  v7 = *(*v3 + 152);
  v8 = *(*v3 + 144);
  v9 = *(*v3 + 136);
  v10 = *(*v3 + 128);
  v11 = *(*v3 + 120);
  v12 = *v3;
  *(*v3 + 168) = v2;

  (*(v10 + 8))(v9, v11);
  outlined consume of Data._Representation(v7, v8);
  if (v2)
  {
    v13 = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  }

  else
  {
    *(v5 + 176) = a2;
    *(v5 + 184) = a1;
    v13 = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  AsyncSequence.map<A>(_:)();
}

uint64_t closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a4;
  *(v7 + 32) = a7;
  *(v7 + 16) = a1;
  *(v7 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:), 0, 0);
}

uint64_t closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  static WireFormat.decode<A>(_:from:)();
  v6 = v0[1];

  return v6();
}

uint64_t InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v36 = a3;
  v38 = a5;
  v39 = a6;
  v40 = a4;
  v34 = a1;
  v35 = a2;
  v37 = a7;
  v33 = type metadata accessor for XPCDictionary();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCCodableObject();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for StreamingRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest);
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  v31 = a8;
  v32 = a9;
  StreamingRequest.xpcData.getter(v12);
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  (*(v9 + 8))(v12, v33);
  v22 = v39;
  v21 = v40;
  (*(v39 + 48))(v41, v34, v35, v18, v20, v17, v36, v40, v39);
  outlined consume of Data._Representation(v18, v20);
  (*(v14 + 8))(v17, v13);
  v23 = v42;
  v24 = v43;
  v25 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v26 = v38;
  v27 = type metadata accessor for AsyncThrowingMapSequence();
  v28 = v37;
  v37[3] = v27;
  v28[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v28);
  static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(v25, v26, v21, v26, v23, v22, v31, v32, v24);
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:xpcCodableObject:requiredAssets:expectedResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for StreamingRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  (*(a8 + 48))(v24, a1, a2, v14, v15, a3, a4, a5, a8);
  outlined consume of Data._Representation(v14, v16);
  v17 = v25;
  v18 = v26;
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  a7[3] = type metadata accessor for AsyncThrowingMapSequence();
  a7[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a7);
  static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(v19, a6, a5, a6, v17, a8, a9, a10, v18);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t static ModelCatalogStub.AssetKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t ModelCatalogStub.AssetKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int ModelCatalogStub.AssetKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelCatalogStub.AssetKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelCatalogStub.AssetKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelCatalogStub.AssetKey(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t dispatch thunk of InferenceSessionProtocol.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of InferenceSessionProtocol.request(loggingIdentifier:data:xpcData:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t getEnumTagSinglePayload for ModelCatalogStub.AssetKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ModelCatalogStub.AssetKey(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for generation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.generation);
  __swift_project_value_buffer(v0, static Log.generation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15TokenGeneration16ModelCatalogStubV8AssetKeyVG_SSs5NeverOTg504_s15d12Generation19f153ManagerSessionV13createRequest33_F61778B4E28C3CEC7B6F3BC34FB92D58LL4data17loggingIdentifier14requiredAssets0cD8Services0G0V10Foundation4DataV_SSShyAA0C11gh2V8iJ60VGtFSSARcfu_32d73f8ee8dcd6a9ac23a3a668891edd15ARSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Request();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ModelManagerSession.request(loggingIdentifier:data:requiredAssets:), 0, 0);
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15TokenGeneration16ModelCatalogStubV8AssetKeyVG_SSs5NeverOTg504_s15d12Generation19f153ManagerSessionV13createRequest33_F61778B4E28C3CEC7B6F3BC34FB92D584data17loggingIdentifier14requiredAssets0cD8Services0G0V10Foundation4DataV_SSShyAA0C11gh2V8iJ60VGtFSSARcfu_32d73f8ee8dcd6a9ac23a3a668891edd15ARSSTf3nnnpk_nTf1cn_n(v3);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v8);

  outlined copy of Data._Representation(v5, v4);

  Request.init(session:loggingIdentifier:clientData:requiredAssetTypes:)();
  v9 = *(MEMORY[0x1E69B26B0] + 4);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);
  v11 = v0[10];

  return MEMORY[0x1EEE1F430]();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v1);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t ModelManagerSession.streamingRequest(loggingIdentifier:data:xpcData:requiredAssets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v36 = a5;
  v38 = a2;
  v39 = a4;
  v40 = a1;
  v42 = a7;
  v41 = type metadata accessor for ResponseSequence();
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v35 - v16;
  v18 = type metadata accessor for ClientData();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  type metadata accessor for StreamingRequest();
  v20 = type metadata accessor for XPCCodableObject();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v17, v36, v20);
  (*(v21 + 56))(v17, 0, 1, v20);

  outlined copy of Data._Representation(a3, v39);
  ClientData.init(data:xpcData:)();
  v40 = StreamingRequest.__allocating_init(session:loggingIdentifier:clientData:)();
  dispatch thunk of StreamingRequest.execute()();
  lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ResponseSequence and conformance ResponseSequence, MEMORY[0x1E69B2660]);
  v22 = v37;
  AsyncCompactMapSequence.init(_:transform:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10Foundation4DataVs5Error_pGMd, &_sScsy10Foundation4DataVs5Error_pGMR);
  v24 = v42;
  v42[3] = v23;
  v24[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<Data, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy10Foundation4DataVs5Error_pGMd, &_sScsy10Foundation4DataVs5Error_pGMR);
  __swift_allocate_boxed_opaque_existential_1(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  v25 = swift_allocBox();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v29 = v43;
  v30 = v44;
  (*(v10 + 16))(v43, v22, v44);
  v31 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  (*(v10 + 32))(v32 + v31, v29, v30);
  v33 = (v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = partial apply for closure #1 in ModelManagerSession.streamingRequest(loggingIdentifier:data:xpcData:requiredAssets:);
  v33[1] = a6;
  swift_retain_n();

  AsyncThrowingStream.init<>(unfolding:)();

  (*(v10 + 8))(v22, v30);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed ClientData) -> (@owned Data?)(uint64_t *a1)
{
  *a1 = ClientData.data.getter();
  a1[1] = v3;
  v4 = *(v1 + 8);

  return v4();
}

void protocol witness for InferenceSessionProtocol.requestPrewarm() in conformance ModelManagerSession()
{
  v1 = *v0;
  Session.requestPrewarm()();
  if (v2)
  {
    specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v2);
    swift_willThrow();
  }
}

uint64_t protocol witness for InferenceSessionProtocol.request(loggingIdentifier:data:requiredAssets:) in conformance ModelManagerSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(a1, a2, a3, a4, a5, v12);
}

uint64_t protocol witness for InferenceSessionProtocol.request(loggingIdentifier:data:xpcData:requiredAssets:) in conformance ModelManagerSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return (specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:))(a1, a2, a3, a4, a5, v12);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
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
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t closure #1 in uuid(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = type metadata accessor for UUID();
    return (*(*(v4 - 8) + 16))(a2, v2, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1ABA29C00;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1ABA29C00;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1AC5A2EC0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1AC5A2EC0]();
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = v78 - v4;
  v87 = type metadata accessor for TokenGenerationError(0);
  v84 = *(v87 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x1EEE9AC00](v87);
  v83 = (v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v81 = v78 - v8;
  v86 = type metadata accessor for InferenceError();
  v9 = *(v86 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v86);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices0aB5ErrorOSgMd, &_s20ModelManagerServices0aB5ErrorOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v78 - v18;
  v20 = type metadata accessor for ModelManagerError();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v82 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v78 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v78 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v78 - v31;
  v88 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v33 = swift_dynamicCast();
  v34 = *(v21 + 56);
  if (v33)
  {
    v34(v19, 0, 1, v20);
    v78[0] = *(v21 + 32);
    v78[1] = v21 + 32;
    (v78[0])(v32, v19, v20);
    v79 = *(v21 + 16);
    v80 = v32;
    v79(v30, v32, v20);
    v35 = *(v21 + 88);
    if (v35(v30, v20) == *MEMORY[0x1E69B2578])
    {
      (*(v21 + 96))(v30, v20);
      v36 = v30;
      v37 = v86;
      (*(v9 + 32))(v15, v36, v86);
      (*(v9 + 16))(v13, v15, v37);
      v38 = v13;
      v39 = v85;
      TokenGenerationError.init(_:)(v38, v85);
      if ((*(v84 + 48))(v39, 1, v87) != 1)
      {
        v74 = v81;
        outlined init with take of TokenGenerationError(v39, v81);
        lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        a1 = swift_allocError();
        outlined init with take of TokenGenerationError(v74, v75);
        (*(v9 + 8))(v15, v86);
        (*(v21 + 8))(v80, v20);
        return a1;
      }

      (*(v9 + 8))(v15, v86);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
    }

    else
    {
      (*(v21 + 8))(v30, v20);
    }

    v48 = v79;
    v49 = v80;
    v79(v27, v80, v20);
    v50 = v35(v27, v20);
    v51 = *MEMORY[0x1E69B2580];
    v52 = *(v21 + 8);
    v52(v27, v20);
    if (v50 == v51)
    {
      v53 = ModelManagerError.descriptionWithoutUnderlying.getter();
      v54 = v48;
      v56 = v55;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8]);
      v57 = v52;
      v58 = swift_allocError();
      v54(v59, v49, v20);
      v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v61 = v83;
      *v83 = v53;
      v61[1] = v56;
      v61[2] = v58;
      v61[3] = 0;
      v61[4] = 0;
      v61[5] = v60;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      a1 = swift_allocError();
      outlined init with take of TokenGenerationError(v61, v62);
      v57(v49, v20);
    }

    else
    {
      if (one-time initialization token for generator != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Log.generator);
      v64 = v82;
      v48(v82, v49, v20);
      v65 = Logger.logObject.getter();
      v66 = v48;
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v67))
      {
        v68 = swift_slowAlloc();
        v86 = v52;
        v69 = v68;
        v70 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = v87;
        *v69 = 136315650;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001ABA41510, &v88);
        *(v69 + 12) = 2080;
        *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001ABA41530, &v88);
        *(v69 + 22) = 2112;
        lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8]);
        swift_allocError();
        v66(v71, v64, v20);
        v72 = _swift_stdlib_bridgeErrorToNSError();
        (v86)(v64, v20);
        *(v69 + 24) = v72;
        *v70 = v72;
        _os_log_impl(&dword_1AB828000, v65, v67, "Received %s that couldn't be converted to a %s: %@", v69, 0x20u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v70, -1, -1);
        v73 = v87;
        swift_arrayDestroy();
        v49 = v80;
        MEMORY[0x1AC5A6CD0](v73, -1, -1);
        MEMORY[0x1AC5A6CD0](v69, -1, -1);
      }

      else
      {

        v52(v64, v20);
      }

      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8]);
      a1 = swift_allocError();
      (v78[0])(v76, v49, v20);
    }
  }

  else
  {
    v34(v19, 1, 1, v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s20ModelManagerServices0aB5ErrorOSgMd, &_s20ModelManagerServices0aB5ErrorOSgMR);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Log.generator);
    MEMORY[0x1AC5A6AE0](a1);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v88 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      swift_getDynamicType();
      v45 = _typeName(_:qualified:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v88);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1AB828000, v41, v42, "Received unexpected error type from model manager: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1AC5A6CD0](v44, -1, -1);
      MEMORY[0x1AC5A6CD0](v43, -1, -1);
    }

    MEMORY[0x1AC5A6AE0](a1);
  }

  return a1;
}

uint64_t outlined init with take of TokenGenerationError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenGenerationError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientData();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:), 0, 0);
}

uint64_t specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:)()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v14 = v0[2];
  type metadata accessor for OneShotRequest();
  v8 = type metadata accessor for XPCCodableObject();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, v4, v8);
  (*(v9 + 56))(v3, 0, 1, v8);

  outlined copy of Data._Representation(v7, v5);
  ClientData.init(data:xpcData:)();
  v0[13] = OneShotRequest.__allocating_init(session:loggingIdentifier:clientData:)();
  v10 = *(MEMORY[0x1E69B2650] + 4);
  v15 = (*MEMORY[0x1E69B2650] + MEMORY[0x1E69B2650]);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  v12 = v0[11];

  return v15(v12);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  }

  else
  {
    v3 = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[11];
  result = ClientData.data.getter();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = v3;
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v9 = v0[1];

    return v9(v4, v5);
  }

  return result;
}

{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];

  specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v1);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(unint64_t *a1, void (*a2)(uint64_t))
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

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v40;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v29 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 36);
      v10 = *(a1 + 56) + 56 * v6;
      v31 = *v10;
      v32 = *(v10 + 16);
      v33 = *(v10 + 32);
      v34 = *(v10 + 40);
      v35 = *(v10 + 48);
      PromptCompletion.Aggregator.CandidateAggregator.finish()(&v36);
      v11 = v36;
      v12 = v37;
      v13 = v38;
      v14 = v39;
      v40 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      v17 = v3;
      if (v16 >= v15 >> 1)
      {
        v27 = v37;
        v28 = v36;
        v26 = v38;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v13 = v26;
        v12 = v27;
        v11 = v28;
        v17 = v40;
      }

      *(v17 + 16) = v16 + 1;
      v18 = v17 + 56 * v16;
      *(v18 + 32) = v11;
      *(v18 + 48) = v12;
      *(v18 + 64) = v13;
      *(v18 + 80) = v14;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_22;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      v3 = v17;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (a1 + 72 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v6, v30, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v29)
      {
        return;
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
}

double PromptCompletion.TextContent.init(value:annotations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0.0;
  *(a4 + 24) = xmmword_1ABA1D8C0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t PromptCompletion.modelInformation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 PromptCompletion.modelInformation.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1->n128_u64[0];
  v4 = v1[1].n128_i64[0];

  result = v6;
  *v1 = v6;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t PromptCompletion.promptModeration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t PromptCompletion.candidates.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

__n128 PromptCompletion.usage.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 PromptCompletion.usage.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

id PromptCompletion.metadata.getter()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v5 = [v1 JSONObjectWithData:isa options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    result = v10[0];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t PromptCompletion.renderedPrompt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PromptCompletion(0) + 36);

  return outlined assign with take of Prompt.Rendering?(a1, v3);
}

uint64_t PromptCompletion.init(modelInformation:candidates:usage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v35 = a2;
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a3[1];
  v33 = *a3;
  v34 = v13;
  v32 = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v15 = type metadata accessor for Prompt.Rendering();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v17 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v36[0] = 0;
  v19 = [v17 dataWithJSONObject:isa options:0 error:v36];

  v20 = v36[0];
  if (!v19)
  {
    v30 = v20;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(a4 + 3) = 0;
  v24 = *(type metadata accessor for PromptCompletion(0) + 36);
  v16(&a4[v24], 1, 1, v15);
  *a4 = v12;
  *(a4 + 1) = v11;
  *(a4 + 2) = v34;
  v25 = *(a4 + 3);

  v26 = v35;
  *(a4 + 3) = 0;
  *(a4 + 4) = v26;
  v27 = v32;
  *(a4 + 5) = v33;
  *(a4 + 6) = v27;
  *(a4 + 7) = v21;
  *(a4 + 8) = v23;
  result = outlined assign with take of Prompt.Rendering?(v10, &a4[v24]);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PromptCompletion.init(modelInformation:promptModeration:candidates:usage:metadata:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v12 = *a4;
  v11 = a4[1];
  v13 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v28];

  if (!v15)
  {
    v25 = v28[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v16 = v28[0];

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(a6 + 3) = 0;
  v20 = *(type metadata accessor for PromptCompletion(0) + 36);
  v21 = type metadata accessor for Prompt.Rendering();
  (*(*(v21 - 8) + 56))(&a6[v20], 1, 1, v21);
  *a6 = v8;
  *(a6 + 1) = v7;
  *(a6 + 2) = v9;
  v22 = *(a6 + 3);

  *(a6 + 3) = v10;
  *(a6 + 4) = a3;
  *(a6 + 5) = v12;
  *(a6 + 6) = v11;
  *(a6 + 7) = v17;
  *(a6 + 8) = v19;
  result = outlined assign with take of Prompt.Rendering?(a5, &a6[v20]);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PromptCompletion.init(modelInformation:candidates:usage:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a2;
  v34[1] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v14 = *a1;
  v13 = a1[1];
  v32 = a1[2];
  v16 = *a3;
  v15 = a3[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a4, v12, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v17 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v34[0] = 0;
  v19 = [v17 dataWithJSONObject:isa options:0 error:v34];

  v20 = v34[0];
  if (!v19)
  {
    v30 = v20;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a4, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  *(a5 + 3) = 0;
  v24 = *(type metadata accessor for PromptCompletion(0) + 36);
  v25 = type metadata accessor for Prompt.Rendering();
  (*(*(v25 - 8) + 56))(&a5[v24], 1, 1, v25);
  *a5 = v14;
  *(a5 + 1) = v13;
  *(a5 + 2) = v32;
  v26 = *(a5 + 3);

  v27 = v33;
  *(a5 + 3) = 0;
  *(a5 + 4) = v27;
  *(a5 + 5) = v16;
  *(a5 + 6) = v15;
  *(a5 + 7) = v21;
  *(a5 + 8) = v23;
  result = outlined assign with take of Prompt.Rendering?(v12, &a5[v24]);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PromptCompletion.init(modelInformation:promptModeration:candidates:usage:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v37 = a3;
  v38[1] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *a2;
  v35 = v15;
  v36 = v18;
  v19 = *a4;
  v20 = a4[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a5, v14, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v21 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v38[0] = 0;
  v23 = [v21 dataWithJSONObject:isa options:0 error:v38];

  if (!v23)
  {
    v34 = v38[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v24 = v38[0];

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a5, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  *(a6 + 3) = 0;
  v28 = *(type metadata accessor for PromptCompletion(0) + 36);
  v29 = type metadata accessor for Prompt.Rendering();
  (*(*(v29 - 8) + 56))(&a6[v28], 1, 1, v29);
  *a6 = v35;
  *(a6 + 1) = v16;
  *(a6 + 2) = v17;
  v30 = *(a6 + 3);

  v31 = v37;
  *(a6 + 3) = v36;
  *(a6 + 4) = v31;
  *(a6 + 5) = v19;
  *(a6 + 6) = v20;
  *(a6 + 7) = v25;
  *(a6 + 8) = v27;
  result = outlined assign with take of Prompt.Rendering?(v14, &a6[v28]);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PromptCompletion.Candidate.segments.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PromptCompletion.Candidate.toolCalls.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PromptCompletion.Candidate.moderation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t PromptCompletion.Candidate.finishReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of FinishReason(v2, v3);
}

uint64_t PromptCompletion.Candidate.finishReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of FinishReason(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

id PromptCompletion.Candidate.metadata.getter()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    result = v10[0];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void PromptCompletion.Candidate.init(segments:toolCalls:finishReason:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = a3[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v9 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18[0] = 0;
  v11 = [v9 dataWithJSONObject:isa options:0 error:v18];

  v12 = v18[0];
  if (!v11)
  {
    v17 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = v7;
  a4[4] = v8;
  a4[5] = v13;
  a4[6] = v15;
  v16 = *MEMORY[0x1E69E9840];
}

void PromptCompletion.Candidate.init(segments:toolCalls:moderation:finishReason:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v20[0] = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:v20];

  v14 = v20[0];
  if (!v13)
  {
    v19 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *a5 = a1;
  a5[1] = a2;
  a5[2] = v8;
  a5[3] = v9;
  a5[4] = v10;
  a5[5] = v15;
  a5[6] = v17;
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration41Promptkit_Wireformat_RecursiveSchemaFieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v83 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v75 - v10);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v12 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v75 - v13;
  v14 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = &v75 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
  v21 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v23 = &v75 - v22;
  v85 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  v24 = *(*(v85 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v85);
  v92 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v75 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v30 || a1 == a2)
  {
    v70 = 1;
    return v70 & 1;
  }

  v79 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v91 = a2 + v31;
  v81 = &v75 - v28;
  v82 = (v15 + 48);
  v76 = v23;
  v77 = (v5 + 48);
  v80 = *(v27 + 72);
  v33 = v85;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v32, v29, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    v34 = v92;
    outlined init with copy of PromptCompletion.Content(v91, v92, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    v35 = *(v29 + 1);
    v36 = *(v34 + 8);
    if (v35)
    {
      if (!v36 || (*v29 != *v92 || v35 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v36)
    {
      goto LABEL_50;
    }

    v37 = *(v29 + 3);
    v38 = *(v92 + 24);
    if (v37)
    {
      if (!v38 || (*(v29 + 2) != *(v92 + 16) || v37 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v38)
    {
      goto LABEL_50;
    }

    v39 = v29[32];
    v40 = *(v92 + 32);
    if (v39 == 2)
    {
      if (v40 != 2)
      {
        goto LABEL_50;
      }
    }

    else if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
    {
      goto LABEL_50;
    }

    v86 = v30;
    v41 = *(v33 + 28);
    v42 = *(v90 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v29[v41], v23, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92 + v41, &v23[v42], &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v43 = *v82;
    if ((*v82)(v23, 1, v14) != 1)
    {
      break;
    }

    v44 = v43(&v23[v42], 1, v14);
    v29 = v81;
    if (v44 != 1)
    {
      goto LABEL_44;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v45 = v86;
LABEL_39:
    v68 = *(v33 + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v69 = v92;
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v69, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    outlined destroy of PromptCompletion.FileContent(v29, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    if (v70)
    {
      v91 += v80;
      v32 += v80;
      v30 = v45 - 1;
      if (v30)
      {
        continue;
      }
    }

    return v70 & 1;
  }

  v78 = v32;
  v46 = v89;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v89, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v47 = v14;
  if (v43(&v23[v42], 1, v14) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v46, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v29 = v81;
LABEL_44:
    v71 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd;
    v72 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR;
    v73 = v23;
    goto LABEL_49;
  }

  v48 = &v23[v42];
  v49 = v88;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v48, v88, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v50 = *(v84 + 48);
  v51 = v87;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, v87, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v51 + v50, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v52 = *v77;
  v53 = v79;
  v54 = (*v77)(v51, 1, v79);
  v29 = v81;
  if (v54 == 1)
  {
    v55 = v52(v51 + v50, 1, v53);
    v45 = v86;
    if (v55 != 1)
    {
      goto LABEL_47;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v56 = v88;
    v14 = v47;
LABEL_38:
    v65 = *(v14 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v66 = v89;
    v67 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v56, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    outlined destroy of PromptCompletion.FileContent(v66, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v23 = v76;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v33 = v85;
    v32 = v78;
    if ((v67 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, v11, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v57 = v52(v51 + v50, 1, v53);
  v45 = v86;
  if (v57 != 1)
  {
    v58 = v83;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v51 + v50, v83, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v59 = *v11;
    v60 = *v58;
    v61 = *v58 & 0xF000000000000007;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      v56 = v88;
      if (v61 == 0xF000000000000007 || (v14 = v47, outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v58), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v59), v62 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v59, v60), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v60), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v59), (v62 & 1) == 0))
      {
LABEL_45:
        outlined destroy of PromptCompletion.FileContent(v58, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v87, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
        goto LABEL_48;
      }
    }

    else
    {
      v56 = v88;
      v14 = v47;
      if (v61 != 0xF000000000000007)
      {
        goto LABEL_45;
      }
    }

    v63 = *(v79 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v58, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v87, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v64 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
LABEL_47:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v56 = v88;
LABEL_48:
  outlined destroy of PromptCompletion.FileContent(v56, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of PromptCompletion.FileContent(v89, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v71 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd;
  v72 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR;
  v73 = v76;
LABEL_49:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, v71, v72);
LABEL_50:
  outlined destroy of PromptCompletion.FileContent(v92, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
  outlined destroy of PromptCompletion.FileContent(v29, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
LABEL_51:
  v70 = 0;
  return v70 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v52 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = (&v46 - v9);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v10 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v46 - v11;
  v49 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v13 = *(*(v49 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - v17;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_26:
    v42 = 0;
    return v42 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v48 = v12;
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v4 + 48);
  v23 = *(v16 + 72);
  v46 = v22;
  v47 = v23;
  v24 = v52;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v20, v55, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    if (!v18)
    {
      break;
    }

    v26 = v54;
    outlined init with copy of PromptCompletion.Content(v21, v54, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v27 = *(v51 + 48);
    v28 = v48;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, v48, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v28 + v27, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v29 = *v22;
    if ((*v22)(v28, 1, v24) == 1)
    {
      if (v29(v28 + v27, 1, v24) != 1)
      {
        goto LABEL_23;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v53, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
      if (v29(v28 + v27, 1, v24) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v53, type metadata accessor for Promptkit_Wireformat_JSONSchema);
LABEL_23:
        v44 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
        v45 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
        goto LABEL_24;
      }

      v30 = v50;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v28 + v27, v50, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v31 = *v53;
      v32 = *v30;
      v33 = *v30 & 0xF000000000000007;
      if ((~*v53 & 0xF000000000000007) != 0)
      {
        if (v33 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v30), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v31), v34 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v31, v32), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v32), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v31), (v34 & 1) == 0))
        {
LABEL_21:
          outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          outlined destroy of PromptCompletion.FileContent(v53, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          v44 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
          v45 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
LABEL_24:
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v44, v45);
LABEL_25:
          outlined destroy of PromptCompletion.FileContent(v54, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
          outlined destroy of PromptCompletion.FileContent(v55, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
          goto LABEL_26;
        }
      }

      else if (v33 != 0xF000000000000007)
      {
        goto LABEL_21;
      }

      v35 = *(v52 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v36 = v53;
      v37 = v50;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v37, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of PromptCompletion.FileContent(v36, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
      v22 = v46;
      if ((v38 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v39 = *(v49 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v40 = v54;
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v40, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    if (v42)
    {
      v21 += v47;
      v20 += v47;
      v43 = v18-- == 1;
      v24 = v52;
      if (!v43)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration35Promptkit_Wireformat_ToolDefinitionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v72 = &v59 - v14;
  v67 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v70 = &v59 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v23 = &v59 - v22;
  v68 = type metadata accessor for Promptkit_Wireformat_ToolDefinition(0);
  v24 = *(*(v68 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v68);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v59 - v29;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_26:
    v58 = 0;
    return v58 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v59 = v8;
  v60 = v12;
  v62 = v4;
  v63 = v27;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v34 = (v15 + 48);
  v61 = (v5 + 48);
  v65 = *(v28 + 72);
  v66 = v34;
  v35 = v67;
  while (1)
  {
    v36 = v74;
    result = outlined init with copy of PromptCompletion.Content(v32, v74, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    if (!v30)
    {
      break;
    }

    v73 = v30;
    outlined init with copy of PromptCompletion.Content(v33, v27, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    v38 = *(v71 + 48);
    v39 = v23;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v23, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &v23[v38], &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    v40 = *v34;
    if ((*v34)(v23, 1, v35) == 1)
    {
      if (v40(&v23[v38], 1, v35) != 1)
      {
        goto LABEL_21;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    }

    else
    {
      v41 = v70;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v70, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
      if (v40(&v23[v38], 1, v35) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
        v27 = v63;
LABEL_21:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
        goto LABEL_25;
      }

      v42 = v69;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v23[v38], v69, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      v43 = *(v64 + 48);
      v44 = v72;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, v72, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v44 + v43, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      v45 = *v61;
      v46 = v44;
      v47 = v62;
      if ((*v61)(v46, 1, v62) == 1)
      {
        if (v45(v72 + v43, 1, v47) != 1)
        {
          goto LABEL_23;
        }

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      }

      else
      {
        v48 = v72;
        v49 = v60;
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, v60, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
        if (v45(v48 + v43, 1, v47) == 1)
        {
          outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
          v23 = v39;
LABEL_23:
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
LABEL_24:
          outlined destroy of PromptCompletion.FileContent(v69, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
          outlined destroy of PromptCompletion.FileContent(v70, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
          v27 = v63;
LABEL_25:
          outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
          outlined destroy of PromptCompletion.FileContent(v74, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
          goto LABEL_26;
        }

        v50 = v59;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v48 + v43, v59, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        v51 = specialized static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(v49, v50);
        outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
        v23 = v39;
        if ((v51 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v35 = v67;
      v52 = *(v67 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v53 = v69;
      v54 = v70;
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v53, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      outlined destroy of PromptCompletion.FileContent(v54, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
      v27 = v63;
      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v56 = *(v68 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v57 = v74;
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    outlined destroy of PromptCompletion.FileContent(v57, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    if (v58)
    {
      v30 = v73 - 1;
      v34 = v66;
      v33 += v65;
      v32 += v65;
      if (v73 != 1)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ModalityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Modality(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Content(v14, v11, type metadata accessor for Promptkit_Wireformat_Modality);
        outlined init with copy of PromptCompletion.Content(v15, v8, type metadata accessor for Promptkit_Wireformat_Modality);
        v17 = v11[1];
        v18 = v8[1];
        if (v17)
        {
          if (!v18 || (*v11 != *v8 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_16:
            outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for Promptkit_Wireformat_Modality);
            outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_Modality);
            goto LABEL_17;
          }
        }

        else if (v18)
        {
          goto LABEL_16;
        }

        v19 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for Promptkit_Wireformat_Modality);
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_Modality);
        if (v20)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_17:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v75 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v69 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v69 - v13;
  v86 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v14 = *(v86 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v69 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  v20 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v22 = &v69 - v21;
  v23 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v69 - v30;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v32 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v76 = v28;
  v77 = v22;
  v70 = v11;
  v71 = v4;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v78 = &v69 - v30;
  v79 = (v14 + 48);
  v36 = *(v29 + 72);
  v73 = (v5 + 48);
  v74 = v36;
  v72 = v27;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v34, v31, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v85 = v34;
    outlined init with copy of PromptCompletion.Content(v35, v27, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v37 = *(v84 + 48);
    v38 = v77;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v77, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v38 + v37, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v39 = *v79;
    v40 = v86;
    if ((*v79)(v38, 1, v86) != 1)
    {
      break;
    }

    if (v39(v38 + v37, 1, v40) != 1)
    {
      goto LABEL_30;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v41 = v76;
    v31 = v78;
LABEL_15:
    v56 = v41[5];
    v57 = &v31[v56];
    v58 = v31[v56 + 4];
    v59 = &v27[v56];
    v60 = v27[v56 + 4];
    if (v58)
    {
      if (!v60)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (*v57 != *v59)
      {
        LOBYTE(v60) = 1;
      }

      if (v60)
      {
        goto LABEL_35;
      }
    }

    v61 = v41[6];
    v62 = v31[v61];
    v63 = v27[v61];
    if (v62 == 3)
    {
      if (v63 != 3)
      {
        goto LABEL_35;
      }
    }

    else if (v62 != v63)
    {
      goto LABEL_35;
    }

    v64 = v41[7];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    outlined destroy of PromptCompletion.FileContent(v31, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    if (v65)
    {
      v35 += v74;
      v34 = v85 + v74;
      if (--v32)
      {
        continue;
      }
    }

    return v65 & 1;
  }

  v42 = v83;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, v83, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  if (v39(v38 + v37, 1, v40) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v27 = v72;
LABEL_30:
    v66 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd;
    v67 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR;
    goto LABEL_34;
  }

  v43 = v82;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v38 + v37, v82, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v44 = v81;
  v45 = *(v80 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v81, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43, v44 + v45, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v46 = *v73;
  v47 = v71;
  if ((*v73)(v44, 1, v71) == 1)
  {
    v48 = v46(v44 + v45, 1, v47);
    v27 = v72;
    if (v48 != 1)
    {
      goto LABEL_32;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v49 = v83;
    goto LABEL_14;
  }

  v50 = v70;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, v70, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v46(v44 + v45, 1, v47) != 1)
  {
    v51 = v75;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v44 + v45, v75, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v52 = specialized static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v50, v51);
    outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v49 = v83;
    v27 = v72;
    if ((v52 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_14:
    v53 = *(v86 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v54 = v82;
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v54, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v41 = v76;
    v31 = v78;
    if ((v55 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_15;
  }

  outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v27 = v72;
LABEL_32:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v49 = v83;
LABEL_33:
  outlined destroy of PromptCompletion.FileContent(v82, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v66 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd;
  v67 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR;
LABEL_34:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, v66, v67);
  v31 = v78;
LABEL_35:
  outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for Promptkit_Wireformat_PromptComponent);
  outlined destroy of PromptCompletion.FileContent(v31, type metadata accessor for Promptkit_Wireformat_PromptComponent);
LABEL_36:
  v65 = 0;
  return v65 & 1;
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_JSONSchemaV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v24 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Content(v14, v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined init with copy of PromptCompletion.Content(v15, v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        v17 = *v11;
        v18 = *v8;
        v19 = *v8 & 0xF000000000000007;
        if ((~*v11 & 0xF000000000000007) != 0)
        {
          if (v19 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v8), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v17), v20 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v17, v18), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v18), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v17), (v20 & 1) == 0))
          {
LABEL_14:
            outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
            outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
            goto LABEL_15;
          }
        }

        else if (v19 != 0xF000000000000007)
        {
          goto LABEL_14;
        }

        v21 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_15:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - v5;
  v50 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v37 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v37 - v13;
  v45 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
  v14 = *(*(v45 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v45);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v37 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_19:
    v34 = 0;
    return v34 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v43 = v17;
  v44 = (v6 + 48);
  v42 = *(v18 + 72);
  v24 = v41;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v22, v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    if (!v20)
    {
      break;
    }

    v49 = v20;
    outlined init with copy of PromptCompletion.Content(v23, v17, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v26 = v47;
    v27 = *(v46 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v47, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v26 + v27, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    v28 = *v44;
    if ((*v44)(v26, 1, v50) == 1)
    {
      if (v28(v26 + v27, 1, v50) != 1)
      {
        outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        v36 = v24;
        v35 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt;
        goto LABEL_17;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v48, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
      if (v28(v26 + v27, 1, v50) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        v35 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum;
        v36 = v48;
LABEL_17:
        outlined destroy of PromptCompletion.FileContent(v36, v35);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
        goto LABEL_19;
      }

      v29 = v38;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v26 + v27, v38, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      v30 = *(v40 + 48);
      v31 = v39;
      outlined init with copy of PromptCompletion.Content(v48, v39, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined init with copy of PromptCompletion.Content(v29, v31 + v30, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      v32 = specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(v31, v31 + v30);
      outlined destroy of PromptCompletion.FileContent(v29, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined destroy of PromptCompletion.FileContent(v31 + v30, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
      v24 = v41;
      outlined destroy of PromptCompletion.FileContent(v31, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
      outlined destroy of PromptCompletion.FileContent(v48, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
      if ((v32 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v43, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        goto LABEL_19;
      }
    }

    v33 = *(v45 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v17 = v43;
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    if (v34)
    {
      v20 = v49 - 1;
      v23 += v42;
      v22 += v42;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v90 = (&v79 - v6);
  v88 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v79 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
  v15 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v79 - v16;
  v96 = type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  v17 = *(v96 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v79 - v23;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
  v24 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v26 = &v79 - v25;
  v98 = type metadata accessor for Promptkit_Wireformat_ToolCall(0);
  v27 = *(*(v98 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v98);
  v99 = (&v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v79 - v31;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_50:
    v71 = 0;
    return v71 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v71 = 1;
    return v71 & 1;
  }

  v81 = v10;
  v82 = v14;
  v79 = v4;
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v83 = v26;
  v84 = (v7 + 48);
  v85 = *(v30 + 72);
  v86 = (v17 + 48);
  v36 = v95;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v34, v36, type metadata accessor for Promptkit_Wireformat_ToolCall);
    if (!v32)
    {
      break;
    }

    v38 = v99;
    outlined init with copy of PromptCompletion.Content(v35, v99, type metadata accessor for Promptkit_Wireformat_ToolCall);
    v39 = v36[1];
    v40 = v38[1];
    if (v39)
    {
      if (!v40 || (*v36 != *v99 || v39 != v40) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v40)
    {
      goto LABEL_49;
    }

    v93 = v34;
    v94 = v32;
    v92 = v35;
    v41 = v97;
    v42 = v20;
    v43 = *(v98 + 20);
    v44 = *(v91 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36 + v43, v26, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v99 + v43, &v26[v44], &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
    v45 = *v86;
    v46 = v96;
    if ((*v86)(v26, 1, v96) == 1)
    {
      if (v45(&v26[v44], 1, v46) != 1)
      {
        goto LABEL_43;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      v20 = v42;
      v48 = v92;
      v47 = v93;
      v49 = v94;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v41, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      if (v45(&v26[v44], 1, v46) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
LABEL_43:
        v76 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd;
        v77 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR;
        v78 = v26;
        goto LABEL_48;
      }

      v20 = v42;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v26[v44], v42, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      v50 = *(v87 + 48);
      v51 = v89;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, v89, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v51 + v50, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      v52 = *v84;
      v53 = v88;
      if ((*v84)(v51, 1, v88) == 1)
      {
        v54 = v52(v51 + v50, 1, v53);
        v26 = v83;
        v49 = v94;
        if (v54 != 1)
        {
          goto LABEL_45;
        }

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      }

      else
      {
        v55 = v82;
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, v82, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
        v56 = v52(v51 + v50, 1, v53);
        v49 = v94;
        if (v56 == 1)
        {
          outlined destroy of PromptCompletion.FileContent(v55, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
          v20 = v42;
          v26 = v83;
LABEL_45:
          v73 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd;
          v74 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR;
          v75 = v51;
          goto LABEL_46;
        }

        v57 = v81;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v51 + v50, v81, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        v58 = v90;
        v59 = (v90 + *(v79 + 48));
        outlined init with copy of PromptCompletion.Content(v55, v90, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined init with copy of PromptCompletion.Content(v57, v59, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        v60 = v58[1];
        v61 = v59[1];
        v26 = v83;
        v20 = v42;
        if (v60)
        {
          v36 = v95;
          if (!v61 || (*v90 != *v59 || v60 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_41:
            outlined destroy of PromptCompletion.FileContent(v81, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
            outlined destroy of PromptCompletion.FileContent(v59, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
            outlined destroy of PromptCompletion.FileContent(v90, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
            outlined destroy of PromptCompletion.FileContent(v82, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
            v73 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd;
            v74 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR;
            v75 = v89;
LABEL_46:
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v75, v73, v74);
LABEL_47:
            outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
            outlined destroy of PromptCompletion.FileContent(v97, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
            v76 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd;
            v77 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR;
            v78 = v26;
LABEL_48:
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, v76, v77);
LABEL_49:
            outlined destroy of PromptCompletion.FileContent(v99, type metadata accessor for Promptkit_Wireformat_ToolCall);
            outlined destroy of PromptCompletion.FileContent(v36, type metadata accessor for Promptkit_Wireformat_ToolCall);
            goto LABEL_50;
          }
        }

        else
        {
          v36 = v95;
          if (v61)
          {
            goto LABEL_41;
          }
        }

        v62 = v90[3];
        v63 = v59[3];
        if (v62)
        {
          if (!v63 || (v90[2] != v59[2] || v62 != v63) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v63)
        {
          goto LABEL_41;
        }

        v64 = *(type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0) + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v65 = v90;
        v80 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v81, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined destroy of PromptCompletion.FileContent(v59, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
        outlined destroy of PromptCompletion.FileContent(v65, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
        outlined destroy of PromptCompletion.FileContent(v82, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v89, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
        if ((v80 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v66 = *(v96 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v67 = v97;
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      outlined destroy of PromptCompletion.FileContent(v67, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      v48 = v92;
      v47 = v93;
      if ((v68 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v69 = *(v98 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v70 = v99;
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v72 = v70;
    v36 = v95;
    outlined destroy of PromptCompletion.FileContent(v72, type metadata accessor for Promptkit_Wireformat_ToolCall);
    outlined destroy of PromptCompletion.FileContent(v36, type metadata accessor for Promptkit_Wireformat_ToolCall);
    if (v71)
    {
      v32 = v49 - 1;
      v35 = v48 + v85;
      v34 = v47 + v85;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v71 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration27Promptkit_Wireformat_PromptV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v93 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v11 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v93 - v12;
  v117 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v13 = *(v117 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v118 = &v93 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  v19 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v93 - v20;
  v115 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v120 = *(v115 - 8);
  v21 = *(v120 + 64);
  v22 = MEMORY[0x1EEE9AC00](v115);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v93 - v25;
  v27 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v35 = &v93 - v34;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
    goto LABEL_47;
  }

  if (!v36 || a1 == a2)
  {
    v88 = 1;
    return v88 & 1;
  }

  v114 = v26;
  v95 = v32;
  v37 = 0;
  v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v39 = a1 + v38;
  v100 = a2 + v38;
  v107 = (v13 + 48);
  v96 = (v5 + 48);
  v40 = *(v33 + 72);
  v41 = &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd;
  v99 = v31;
  v98 = &v93 - v34;
  v97 = v4;
  v101 = v36;
  v94 = a1 + v38;
  v93 = v40;
  while (1)
  {
    v111 = v37;
    v42 = v40 * v37;
    result = outlined init with copy of PromptCompletion.Content(v39 + v40 * v37, v35, type metadata accessor for Promptkit_Wireformat_Prompt);
    if (v111 == v101)
    {
      goto LABEL_51;
    }

    result = outlined init with copy of PromptCompletion.Content(v100 + v42, v31, type metadata accessor for Promptkit_Wireformat_Prompt);
    v44 = *v35;
    v45 = *v31;
    v46 = *(*v35 + 16);
    v47 = *(*v31 + 16);
    v48 = v117;
    v49 = v41;
    v50 = v114;
    if (v46 != v47)
    {
      goto LABEL_46;
    }

    if (v46 && v44 != v45)
    {
      break;
    }

LABEL_33:
    v41 = v49;
    v87 = *(v95 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v35 = v98;
    v31 = v99;
    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v31, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of PromptCompletion.FileContent(v35, type metadata accessor for Promptkit_Wireformat_Prompt);
    if (v88)
    {
      v37 = v111 + 1;
      v39 = v94;
      v40 = v93;
      if (v111 + 1 != v101)
      {
        continue;
      }
    }

    return v88 & 1;
  }

  v51 = 0;
  v52 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v108 = v44 + v52;
  v105 = v45 + v52;
  v106 = v24;
  v103 = v44;
  v104 = v45;
  v102 = v46;
  while (1)
  {
    if (v51 >= *(v44 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v53 = *(v120 + 72) * v51;
    result = outlined init with copy of PromptCompletion.Content(v108 + v53, v50, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    if (v51 >= *(v45 + 16))
    {
      goto LABEL_50;
    }

    v54 = v49;
    outlined init with copy of PromptCompletion.Content(v105 + v53, v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v55 = *(v119 + 48);
    v56 = v50;
    v57 = v121;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, v121, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v57 + v55, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v58 = *v107;
    if ((*v107)(v57, 1, v48) == 1)
    {
      if (v58(v57 + v55, 1, v48) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
        v50 = v114;
        v59 = v115;
        v24 = v106;
        goto LABEL_22;
      }

      outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      v90 = v114;
      v89 = type metadata accessor for Promptkit_Wireformat_PromptComponent;
LABEL_39:
      outlined destroy of PromptCompletion.FileContent(v90, v89);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
      goto LABEL_46;
    }

    v60 = v118;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57, v118, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    if (v58(v57 + v55, 1, v48) == 1)
    {
      outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      outlined destroy of PromptCompletion.FileContent(v114, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      v89 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
      v90 = v60;
      goto LABEL_39;
    }

    v61 = v116;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v57 + v55, v116, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v62 = v113;
    v63 = *(v112 + 48);
    v64 = v54;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v60, v113, v54, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, v62 + v63, v54, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v65 = *v96;
    v66 = v97;
    if ((*v96)(v62, 1, v97) == 1)
    {
      v67 = v65(v62 + v63, 1, v66);
      v24 = v106;
      if (v67 != 1)
      {
        v91 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
        v92 = v116;
        goto LABEL_42;
      }

      v68 = v62;
      v49 = v54;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, v54, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      v69 = v118;
      goto LABEL_21;
    }

    v70 = v110;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v62, v110, v64, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v71 = v65(v62 + v63, 1, v66);
    v24 = v106;
    if (v71 == 1)
    {
      break;
    }

    v72 = v109;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v62 + v63, v109, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v73 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v70, v72);
    outlined destroy of PromptCompletion.FileContent(v72, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of PromptCompletion.FileContent(v70, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v62, v64, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v69 = v118;
    v49 = v64;
    if ((v73 & 1) == 0)
    {
      outlined destroy of PromptCompletion.FileContent(v116, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      goto LABEL_44;
    }

LABEL_21:
    v48 = v117;
    v74 = *(v117 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v75 = v116;
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v75, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of PromptCompletion.FileContent(v69, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v121, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v50 = v114;
    v59 = v115;
    if ((v76 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_22:
    v77 = v59[5];
    v78 = (v50 + v77);
    v79 = *(v50 + v77 + 4);
    v80 = &v24[v77];
    v81 = v80[4];
    if (v79)
    {
      v45 = v104;
      if ((v80[4] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v45 = v104;
      if ((v80[4] & 1) != 0 || *v78 != *v80)
      {
        goto LABEL_45;
      }
    }

    v82 = v59[6];
    v83 = *(v50 + v82);
    v84 = v24[v82];
    if (v83 == 3)
    {
      if (v84 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v83 != v84)
    {
      goto LABEL_45;
    }

    v85 = v59[7];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v86 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    result = outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v44 = v103;
    if ((v86 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v102 == ++v51)
    {
      goto LABEL_33;
    }
  }

  outlined destroy of PromptCompletion.FileContent(v116, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v91 = type metadata accessor for Promptkit_Wireformat_ValueEnum;
  v92 = v70;
LABEL_42:
  outlined destroy of PromptCompletion.FileContent(v92, v91);
  v69 = v118;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v62, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
LABEL_44:
  v50 = v114;
  outlined destroy of PromptCompletion.FileContent(v69, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v121, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
LABEL_45:
  outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
  outlined destroy of PromptCompletion.FileContent(v50, type metadata accessor for Promptkit_Wireformat_PromptComponent);
LABEL_46:
  outlined destroy of PromptCompletion.FileContent(v99, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of PromptCompletion.FileContent(v98, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_47:
  v88 = 0;
  return v88 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV9CandidateV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v12 = 0;
    return v12 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v12 = 1;
    return v12 & 1;
  }

  v3 = (a1 + 80);
  v4 = (a2 + 40);
  while (1)
  {
    v5 = *(v3 - 5);
    result = *(v3 - 4);
    v7 = *(v3 - 3);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    v32[0] = *(v3 - 6);
    v32[1] = v5;
    v32[2] = result;
    v33 = v7;
    v34 = v9;
    v35 = v8;
    v36 = v10;
    if (!v2)
    {
      break;
    }

    v21 = v2;
    v22 = *v4;
    v11 = v4[1];
    v23 = v4[3];
    v24 = v4[2];
    v25 = v4[5];
    v26 = v4[4];
    v27[0] = *(v4 - 1);
    v27[1] = v22;
    v27[2] = v11;
    v28 = v24;
    v29 = v23;
    v30 = v26;
    v31 = v25;

    outlined copy of FinishReason(v7, v9);
    outlined copy of Data._Representation(v8, v10);

    outlined copy of FinishReason(v24, v23);
    outlined copy of Data._Representation(v26, v25);
    v12 = specialized static PromptCompletion.Candidate.== infix(_:_:)(v32, v27);
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;

    outlined consume of FinishReason(v13, v14);
    outlined consume of Data._Representation(v15, v16);
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;

    outlined consume of FinishReason(v17, v18);
    outlined consume of Data._Representation(v19, v20);
    if (v12)
    {
      v3 += 7;
      v4 += 7;
      v2 = v21 - 1;
      if (v21 != 1)
      {
        continue;
      }
    }

    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
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
        outlined init with copy of PromptCompletion.Content(v21, v18, a4);
        outlined init with copy of PromptCompletion.Content(v22, v15, a4);
        v24 = a5(v18, v15);
        outlined destroy of PromptCompletion.FileContent(v15, a6);
        outlined destroy of PromptCompletion.FileContent(v18, a6);
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration11ModelBundleV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8, v14);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v12, v20, v8);
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(v33, v34);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *v23;
    (*v23)(v12, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV10AnnotationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PromptCompletion.URLCitation(0);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v40 - v13);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
  v15 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v40 - v16;
  v47 = type metadata accessor for PromptCompletion.Annotation(0);
  v18 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v40 - v23);
  v25 = *(a1 + 16);
  if (v25 == *(a2 + 16))
  {
    if (!v25 || a1 == a2)
    {
      return 1;
    }

    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = a1 + v26;
    v28 = a2 + v26;
    v41 = *(v22 + 72);
    v42 = &v40 - v23;
    v43 = v20;
    while (1)
    {
      outlined init with copy of PromptCompletion.Content(v27, v24, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Content(v28, v20, type metadata accessor for PromptCompletion.Annotation);
      if (*v24 != *v20)
      {
        break;
      }

      v29 = v24;
      v30 = v9;
      v31 = *(v47 + 20);
      v32 = *(v48 + 48);
      outlined init with copy of PromptCompletion.Content(v29 + v31, v17, type metadata accessor for PromptCompletion.Annotation.Type);
      outlined init with copy of PromptCompletion.Content(v20 + v31, &v17[v32], type metadata accessor for PromptCompletion.Annotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v46;
        outlined init with copy of PromptCompletion.Content(v17, v46, type metadata accessor for PromptCompletion.Annotation.Type);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v38 = type metadata accessor for PromptCompletion.DocumentCitation;
          v39 = v33;
          goto LABEL_21;
        }

        v34 = v45;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v17[v32], v45, type metadata accessor for PromptCompletion.DocumentCitation);
        v35 = static DocumentResourceIdentifier.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v34, type metadata accessor for PromptCompletion.DocumentCitation);
        outlined destroy of PromptCompletion.FileContent(v33, type metadata accessor for PromptCompletion.DocumentCitation);
        v9 = v30;
        v24 = v42;
        v20 = v43;
        if ((v35 & 1) == 0)
        {
          outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
          break;
        }
      }

      else
      {
        outlined init with copy of PromptCompletion.Content(v17, v14, type metadata accessor for PromptCompletion.Annotation.Type);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v38 = type metadata accessor for PromptCompletion.URLCitation;
          v39 = v14;
LABEL_21:
          outlined destroy of PromptCompletion.FileContent(v39, v38);
          v24 = v42;
          v20 = v43;
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
          break;
        }

        v9 = v30;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v17[v32], v30, type metadata accessor for PromptCompletion.URLCitation);
        if ((*v14 != *v30 || v14[1] != *(v30 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v36 = *(v44 + 20), (static URL.== infix(_:_:)() & 1) == 0))
        {
          outlined destroy of PromptCompletion.FileContent(v30, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
          v24 = v42;
          v20 = v43;
          break;
        }

        outlined destroy of PromptCompletion.FileContent(v30, type metadata accessor for PromptCompletion.URLCitation);
        outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.URLCitation);
        v24 = v42;
        v20 = v43;
      }

      outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
      outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for PromptCompletion.Annotation);
      outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for PromptCompletion.Annotation);
      v28 += v41;
      v27 += v41;
      if (!--v25)
      {
        return 1;
      }
    }

    outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for PromptCompletion.Annotation);
    outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for PromptCompletion.Annotation);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v36 = 0;
      v3 = (a1 + 72);
      v4 = (a2 + 40);
      while (1)
      {
        v5 = *(v3 - 3);
        v6 = *(v3 - 2);
        v8 = *(v3 - 1);
        v7 = *v3;
        v9 = v4[1];
        v10 = v4[2];
        v11 = v4[3];
        v12 = v4[4];
        if (*(v3 - 5) != *(v4 - 1) || *(v3 - 4) != *v4)
        {
          v38 = *v4;
          v39 = v4[2];
          v37 = v4[3];
          v13 = *(v3 - 3);
          v14 = v4[1];
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v9 = v14;
          v5 = v13;
          v11 = v37;
          v10 = v39;
          if ((v15 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        if (v6)
        {
          if (!v10 || (v5 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else if (v10)
        {
          goto LABEL_63;
        }

        v16 = v7 >> 62;
        v17 = v12 >> 62;
        if (v7 >> 62 == 3)
        {
          break;
        }

        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v24 = *(v8 + 16);
            v23 = *(v8 + 24);
            v21 = __OFSUB__(v23, v24);
            v18 = v23 - v24;
            if (v21)
            {
              goto LABEL_69;
            }

            goto LABEL_33;
          }

          v18 = 0;
          if (v17 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v16)
        {
          LODWORD(v18) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_68;
          }

          v18 = v18;
          if (v17 <= 1)
          {
LABEL_34:
            if (v17)
            {
              LODWORD(v22) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
              }

              v22 = v22;
            }

            else
            {
              v22 = BYTE6(v12);
            }

            goto LABEL_38;
          }
        }

        else
        {
          v18 = BYTE6(v7);
          if (v17 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_27:
        if (v17 != 2)
        {
          if (v18)
          {
            goto LABEL_63;
          }

          goto LABEL_6;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v21)
        {
          goto LABEL_67;
        }

LABEL_38:
        if (v18 != v22)
        {
          goto LABEL_63;
        }

        if (v18 < 1)
        {
          goto LABEL_6;
        }

        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v26 = *(v8 + 16);
            v35 = *(v8 + 24);

            outlined copy of Data._Representation(v8, v7);

            outlined copy of Data._Representation(v11, v12);
            v27 = __DataStorage._bytes.getter();
            if (v27)
            {
              v28 = __DataStorage._offset.getter();
              if (__OFSUB__(v26, v28))
              {
                goto LABEL_72;
              }

              v27 += v26 - v28;
            }

            if (__OFSUB__(v35, v26))
            {
              goto LABEL_71;
            }

            MEMORY[0x1AC5A2EC0]();
            v29 = v27;
            v30 = v36;
            goto LABEL_59;
          }

          memset(v41, 0, 14);

          outlined copy of Data._Representation(v8, v7);

          outlined copy of Data._Representation(v11, v12);
          closure #1 in static Data.== infix(_:_:)(v41, v11, v12, &v40);

          v25 = v11;
        }

        else
        {
          if (v16)
          {
            if (v8 >> 32 < v8)
            {
              goto LABEL_70;
            }

            outlined copy of Data._Representation(v8, v7);

            outlined copy of Data._Representation(v11, v12);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v8, v32))
              {
                goto LABEL_73;
              }

              v31 += v8 - v32;
            }

            v30 = v36;
            MEMORY[0x1AC5A2EC0]();
            v29 = v31;
LABEL_59:
            closure #1 in static Data.== infix(_:_:)(v29, v11, v12, v41);
            v36 = v30;

            outlined consume of Data._Representation(v11, v12);

            outlined consume of Data._Representation(v8, v7);
            if ((v41[0] & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_6;
          }

          v41[0] = v8;
          LOWORD(v41[1]) = v7;
          BYTE2(v41[1]) = BYTE2(v7);
          BYTE3(v41[1]) = BYTE3(v7);
          BYTE4(v41[1]) = BYTE4(v7);
          BYTE5(v41[1]) = BYTE5(v7);

          outlined copy of Data._Representation(v8, v7);

          outlined copy of Data._Representation(v11, v12);
          closure #1 in static Data.== infix(_:_:)(v41, v11, v12, &v40);

          v25 = v11;
        }

        outlined consume of Data._Representation(v25, v12);

        outlined consume of Data._Representation(v8, v7);
        if (!v40)
        {
          goto LABEL_63;
        }

LABEL_6:
        v3 += 6;
        v4 += 6;
        if (!--v2)
        {
          goto LABEL_64;
        }
      }

      v18 = 0;
      if (!v8 && v7 == 0xC000000000000000 && v12 >> 62 == 3)
      {
        v18 = 0;
        if (!v11 && v12 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_33:
      if (v17 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

LABEL_64:
    result = 1;
  }

  else
  {
LABEL_63:
    result = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C11SchemaFieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v56 - v10);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v56 - v13;
  v66 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0);
  v14 = *(*(v66 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v66);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v20 = (&v56 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_43;
  }

  if (!v21 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v58 = v7;
  v59 = v11;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v60 = v17;
  v61 = (v4 + 48);
  v57 = *(v18 + 72);
  v25 = v66;
  v26 = v64;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v23, v20, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    outlined init with copy of PromptCompletion.Content(v24, v17, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    v27 = v20[1];
    v28 = v17[1];
    if (v27)
    {
      if (!v28 || (*v20 != *v17 || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v28)
    {
      goto LABEL_42;
    }

    v29 = v20[3];
    v30 = v17[3];
    if (v29)
    {
      if (!v30 || (v20[2] != v17[2] || v29 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v30)
    {
      goto LABEL_42;
    }

    v62 = v21;
    v63 = v24;
    v31 = v25[6];
    v32 = *(v65 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + v31, v26, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17 + v31, v26 + v32, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v33 = *v61;
    v34 = v67;
    if ((*v61)(v26, 1, v67) == 1)
    {
      v35 = v33(v26 + v32, 1, v34);
      v17 = v60;
      if (v35 != 1)
      {
        goto LABEL_40;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
      v36 = v62;
      v37 = v63;
      v25 = v66;
      goto LABEL_29;
    }

    v38 = v59;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v59, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v33(v26 + v32, 1, v34) == 1)
    {
      break;
    }

    v39 = v58;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v26 + v32, v58, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v40 = *v38;
    v41 = *v39;
    v42 = v41 & 0xF000000000000007;
    v17 = v60;
    if ((~*v38 & 0xF000000000000007) != 0)
    {
      if (v42 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v41), outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v40), v43 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v40, v41), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v41), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v40), (v43 & 1) == 0))
      {
LABEL_38:
        outlined destroy of PromptCompletion.FileContent(v58, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of PromptCompletion.FileContent(v59, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        v53 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
        v54 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
        goto LABEL_41;
      }
    }

    else if (v42 != 0xF000000000000007)
    {
      goto LABEL_38;
    }

    v56 = v23;
    v44 = *(v67 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v45 = v58;
    v46 = v59;
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = v56;
    outlined destroy of PromptCompletion.FileContent(v45, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of PromptCompletion.FileContent(v46, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v25 = v66;
    v36 = v62;
    v37 = v63;
    if ((v47 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_29:
    v48 = v25[7];
    v49 = *(v20 + v48);
    v50 = *(v17 + v48);
    if (v49 == 2)
    {
      if (v50 != 2)
      {
        goto LABEL_42;
      }
    }

    else if (v50 == 2 || ((v49 ^ v50) & 1) != 0)
    {
      goto LABEL_42;
    }

    v51 = v25[8];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    if (v52)
    {
      v24 = v37 + v57;
      v23 += v57;
      v21 = v36 - 1;
      if (v21)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  outlined destroy of PromptCompletion.FileContent(v38, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v17 = v60;
LABEL_40:
  v53 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
  v54 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_41:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v53, v54);
LABEL_42:
  outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
  outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
LABEL_43:
  v52 = 0;
  return v52 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C12SchemaChoiceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v48 - v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v22 = (&v48 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_32;
  }

  if (!v23 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v54 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v52 = v19;
  v53 = (v5 + 48);
  v27 = *(v20 + 72);
  v48 = v11;
  v49 = v27;
  v50 = v15;
  v51 = (&v48 - v21);
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v25, v22, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    outlined init with copy of PromptCompletion.Content(v26, v19, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    v28 = v22[1];
    v29 = v19[1];
    if (v28)
    {
      if (!v29 || (*v22 != *v19 || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v29)
    {
      goto LABEL_27;
    }

    v57 = v25;
    v30 = *(v15 + 20);
    v31 = *(v56 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22 + v30, v14, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19 + v30, &v14[v31], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v32 = v54;
    v33 = *v53;
    if ((*v53)(v14, 1, v54) != 1)
    {
      break;
    }

    if (v33(&v14[v31], 1, v32) != 1)
    {
      v45 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice;
      v46 = v51;
      goto LABEL_30;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v22 = v51;
    v19 = v52;
LABEL_22:
    v15 = v50;
    v43 = *(v50 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    if (v44)
    {
      v26 += v49;
      v25 = v57 + v49;
      if (--v23)
      {
        continue;
      }
    }

    return v44 & 1;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if (v33(&v14[v31], 1, v32) != 1)
  {
    v34 = v55;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v14[v31], v55, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v35 = *v11;
    v36 = *v34;
    v37 = v36 & 0xF000000000000007;
    v22 = v51;
    v19 = v52;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      if (v37 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v36), outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v35), v38 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v35, v36), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v36), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v35), (v38 & 1) == 0))
      {
LABEL_26:
        outlined destroy of PromptCompletion.FileContent(v55, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of PromptCompletion.FileContent(v48, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_27:
        outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
        goto LABEL_31;
      }
    }

    else if (v37 != 0xF000000000000007)
    {
      goto LABEL_26;
    }

    v39 = *(v54 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v40 = v48;
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v11 = v40;
    outlined destroy of PromptCompletion.FileContent(v40, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
  v45 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
  v46 = v11;
LABEL_30:
  outlined destroy of PromptCompletion.FileContent(v46, v45);
  v19 = v52;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
LABEL_31:
  outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
LABEL_32:
  v44 = 0;
  return v44 & 1;
}

uint64_t PromptCompletion.Candidate.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for Prompt.ToolCall();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23[1] = v1[3];
  v24 = v10;
  v11 = v1[4];
  v27 = v1[5];
  v12 = v1[6];
  v25 = v11;
  v26 = v12;
  specialized Array<A>.hash(into:)(a1, v8);
  MEMORY[0x1AC5A6570](*(v9 + 16));
  v13 = *(v9 + 16);
  if (v13)
  {
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v3);
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v14 - 8))(v7, v3);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  v19 = v24;
  if (v24)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v19);
    v20 = v25;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_12;
  }

  Hasher._combine(_:)(0);
  v20 = v25;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v20 == 1)
  {
    v21 = 2;
  }

  else
  {
    if (v20 != 2)
    {
      MEMORY[0x1AC5A6570](1);
      String.hash(into:)();
      return Data.hash(into:)();
    }

    v21 = 3;
  }

LABEL_12:
  MEMORY[0x1AC5A6570](v21);
  return Data.hash(into:)();
}

Swift::Int PromptCompletion.Candidate.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v4[15] = v1;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Candidate()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v4[15] = v1;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Candidate()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v4[15] = v1;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t PromptCompletion.Content.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PromptCompletion.FileContent(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptCompletion.Content(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PromptCompletion.Content(v2, v11, type metadata accessor for PromptCompletion.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v11, v7, type metadata accessor for PromptCompletion.FileContent);
      MEMORY[0x1AC5A6570](2);
      type metadata accessor for URL();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      dispatch thunk of Hashable.hash(into:)();
      v18 = &v7[v4[5]];
      v19 = *v18;
      v20 = *(v18 + 1);
      String.hash(into:)();
      v21 = &v7[v4[6]];
      v22 = *v21;
      v23 = *(v21 + 1);
      String.hash(into:)();
      MEMORY[0x1AC5A65A0](*&v7[v4[7]]);
      return outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for PromptCompletion.FileContent);
    }

    v25 = *v11;
    v26 = v11[1];
    v27 = 3;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    v25 = *v11;
    v26 = v11[1];
    v27 = 1;
LABEL_9:
    MEMORY[0x1AC5A6570](v27);
    Data.hash(into:)();
    return outlined consume of Data._Representation(v25, v26);
  }

  v14 = *v11;
  v13 = v11[1];
  v16 = v11[2];
  v15 = v11[3];
  v17 = v11[4];
  MEMORY[0x1AC5A6570](0);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v16);
  if (v17 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return outlined consume of Data?(v15, v17);
}

uint64_t PromptCompletion.TextContent.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletion.TextContent.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletion.TextContent.annotations.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PromptCompletion.TextContent._userInfo.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

uint64_t PromptCompletion.TextContent._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

double PromptCompletion.TextContent.init(value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 24) = xmmword_1ABA1D8C0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void PromptCompletion.TextContent.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);
  if (v7 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletion.TextContent.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.TextContent()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletion.TextContent(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);
  if (v7 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.TextContent()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static PromptCompletion.URLCitation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);

  return static URL.== infix(_:_:)();
}

uint64_t PromptCompletion.Annotation.Type.hash(into:)()
{
  v1 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromptCompletion.URLCitation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Content(v0, v12, type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v4, type metadata accessor for PromptCompletion.DocumentCitation);
    MEMORY[0x1AC5A6570](1);
    type metadata accessor for DocumentResourceIdentifier();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
    dispatch thunk of Hashable.hash(into:)();
    v13 = type metadata accessor for PromptCompletion.DocumentCitation;
    v14 = v4;
  }

  else
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v8, type metadata accessor for PromptCompletion.URLCitation);
    MEMORY[0x1AC5A6570](0);
    v15 = *v8;
    v16 = v8[1];
    String.hash(into:)();
    v17 = *(v5 + 20);
    type metadata accessor for URL();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    dispatch thunk of Hashable.hash(into:)();
    v13 = type metadata accessor for PromptCompletion.URLCitation;
    v14 = v8;
  }

  return outlined destroy of PromptCompletion.FileContent(v14, v13);
}

uint64_t PromptCompletion.Annotation.init(index:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for PromptCompletion.Annotation(0);
  return _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(a2, a3 + *(v5 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
}

uint64_t static PromptCompletion.Annotation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PromptCompletion.Annotation(0) + 20);

  return specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t PromptCompletion.Annotation.hash(into:)()
{
  MEMORY[0x1AC5A6570](*v0);
  v1 = v0 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  return PromptCompletion.Annotation.Type.hash(into:)();
}

Swift::Int PromptCompletion.Annotation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v0);
  v1 = v0 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Annotation(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v1);
  v3 = v1 + *(a1 + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.Annotation(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1AC5A6570](*v2);
  v4 = v2 + *(a2 + 20);
  return PromptCompletion.Annotation.Type.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Annotation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v2);
  v4 = v2 + *(a2 + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletion.Annotation(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t PromptCompletion.URLCitation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletion.URLCitation.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletion.URLCitation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PromptCompletion.URLCitation.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PromptCompletion.URLCitation.init(title:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t PromptCompletion.URLCitation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletion.URLCitation.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.URLCitation(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = *(a1 + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.URLCitation(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.URLCitation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletion.URLCitation(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return static URL.== infix(_:_:)();
}

uint64_t PromptCompletion.DocumentCitation.documentIdentifier.setter(uint64_t a1)
{
  v3 = type metadata accessor for DocumentResourceIdentifier();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PromptCompletion.DocumentCitation.init(documentIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PromptCompletion.DocumentCitation.hash(into:)()
{
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletion.DocumentCitation.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.DocumentCitation()
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.DocumentCitation()
{
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.DocumentCitation()
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletion.ImageContent.imageData()()
{
  v2 = *v0;
  v3 = v0[1];
  outlined copy of Data._Representation(v2, v3);
  v4 = *(v1 + 8);

  return v4(v2, v3);
}

uint64_t PromptCompletion.AudioContent.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PromptCompletion.AudioContent.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PromptCompletion.AudioContent.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.hash(into:)();
}

uint64_t PromptCompletion.DocumentCitation.documentIdentifier.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PromptCompletion.FileContent.name.getter()
{
  v1 = (v0 + *(type metadata accessor for PromptCompletion.FileContent(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PromptCompletion.FileContent.mimeType.getter()
{
  v1 = (v0 + *(type metadata accessor for PromptCompletion.FileContent(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *PromptCompletion.FileContent.init(url:name:mimeType:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for PromptCompletion.FileContent(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a7 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

uint64_t PromptCompletion.FileContent.hash(into:)()
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PromptCompletion.FileContent(0);
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v0 + v1[7]));
}

Swift::Int PromptCompletion.FileContent.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PromptCompletion.FileContent(0);
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v0 + v1[7]));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.FileContent(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v1 + a1[7]));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.FileContent(uint64_t a1, int *a2)
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v2 + a2[7]));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.FileContent(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v2 + a2[7]));
  return Hasher._finalize()();
}

uint64_t PromptCompletion.Moderation.ratings.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PromptCompletion.Moderation.Category.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PromptCompletion.Moderation.Category.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t PromptCompletion.Moderation.Category.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int PromptCompletion.ImageContent.hashValue.getter(void (*a1)(_BYTE *, uint64_t, uint64_t))
{
  v4 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  a1(v6, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.ImageContent(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  Hasher.init(_seed:)();
  a3(v8, v6, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.ImageContent(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  Hasher.init(_seed:)();
  a4(v9, v7, v6);
  return Hasher._finalize()();
}

Swift::Int PromptCompletion.Moderation.Probability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v65 = *(v62 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v66 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v57 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v57 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v19 = 0;
  v58 = (&v57 - v17);
  v59 = a1;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v63 = v15;
  v60 = a2;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
    v33 = (*(v59 + 48) + 16 * v28);
    v34 = *v33;
    v35 = v33[1];
    v36 = v61;
    outlined init with copy of PromptCompletion.Content(*(v59 + 56) + *(v65 + 72) * v28, v61, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
    v38 = *(v37 + 48);
    v39 = v63;
    *v63 = v34;
    *(v39 + 1) = v35;
    v15 = v39;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v36, &v39[v38], type metadata accessor for Promptkit_Wireformat_JSONSchema);
    (*(*(v37 - 8) + 56))(v15, 0, 1, v37);

    v18 = v58;
LABEL_19:
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v15, v18, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMR);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
    v41 = (*(*(v40 - 8) + 48))(v18, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v45 = *v18;
    v44 = v18[1];
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v18 + v43, v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v44);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_28;
    }

    v49 = *(a2 + 56);
    v50 = v66;
    outlined init with copy of PromptCompletion.Content(v49 + *(v65 + 72) * v46, v66, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v51 = *v50;
    v52 = v9;
    v53 = *v9;
    v54 = *v9 & 0xF000000000000007;
    if ((~v51 & 0xF000000000000007) != 0)
    {
      if (v54 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v9), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v51), v55 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v51, v53), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v53), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v51), (v55 & 1) == 0))
      {
LABEL_27:
        outlined destroy of PromptCompletion.FileContent(v66, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        v9 = v52;
LABEL_28:
        outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        return 0;
      }
    }

    else if (v54 != 0xF000000000000007)
    {
      goto LABEL_27;
    }

    v25 = *(v62 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v26 = v66;
    v9 = v52;
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v26, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    result = outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    a2 = v60;
    v15 = v63;
    v23 = v64;
    if ((v27 & 1) == 0)
    {
      return v42;
    }
  }

  if (v24 <= v19 + 1)
  {
    v29 = v19 + 1;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v31 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
      (*(*(v56 - 8) + 56))(v15, 1, 1, v56);
      v64 = 0;
      v19 = v30;
      goto LABEL_19;
    }

    v32 = *(v57 + 8 * v31);
    ++v19;
    if (v32)
    {
      v64 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v19 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v208 = *(v4 - 8);
  v5 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v164 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v188 = &v164 - v14;
  v182 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v15 = *(v182 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v176 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v177 = &v164 - v20;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  v21 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v164 - v22;
  v199 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  v23 = *(v199 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v191 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v192 = &v164 - v28;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
  v29 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v164 - v30;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  v31 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v203 = &v164 - v32;
  v206 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v33 = *(v206 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v209 = &v164 - v38;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  v39 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v41 = &v164 - v40;
  v202 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
  v211 = *(v202 - 8);
  v42 = *(v211 + 64);
  v43 = MEMORY[0x1EEE9AC00](v202);
  v214 = &v164 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v210 = &v164 - v45;
  v183 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  v201 = *(v183 - 8);
  v46 = *(v201 + 64);
  v47 = MEMORY[0x1EEE9AC00](v183);
  v212 = (&v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x1EEE9AC00](v47);
  v213 = &v164 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v187 = &v164 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMR);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v196 = &v164 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v54);
  v195 = (&v164 - v57);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v172 = v12;
  v167 = v11;
  v166 = v7;
  v179 = v4;
  v58 = 0;
  v59 = *(a1 + 64);
  v165 = a1 + 64;
  v60 = 1 << *(a1 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v59;
  v164 = (v60 + 63) >> 6;
  v197 = (v33 + 48);
  v173 = (v23 + 48);
  v168 = (v15 + 48);
  v171 = (v208 + 48);
  v170 = a2;
  v169 = a1;
  while (1)
  {
    if (v62)
    {
      v175 = (v62 - 1) & v62;
      v63 = __clz(__rbit64(v62)) | (v58 << 6);
      v64 = v196;
LABEL_16:
      v69 = (*(a1 + 48) + 16 * v63);
      v70 = *v69;
      v71 = v69[1];
      v72 = v187;
      outlined init with copy of PromptCompletion.Content(*(a1 + 56) + *(v201 + 72) * v63, v187, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
      v74 = *(v73 + 48);
      *v64 = v70;
      v64[1] = v71;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v72, v64 + v74, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      (*(*(v73 - 8) + 56))(v64, 0, 1, v73);
    }

    else
    {
      v65 = v164 <= v58 + 1 ? v58 + 1 : v164;
      v66 = v65 - 1;
      v64 = v196;
      while (1)
      {
        v67 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          return result;
        }

        if (v67 >= v164)
        {
          break;
        }

        v68 = *(v165 + 8 * v67);
        ++v58;
        if (v68)
        {
          v175 = (v68 - 1) & v68;
          v63 = __clz(__rbit64(v68)) | (v67 << 6);
          v58 = v67;
          goto LABEL_16;
        }
      }

      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
      (*(*(v161 - 8) + 56))(v64, 1, 1, v161);
      v175 = 0;
      v58 = v66;
    }

    v75 = v195;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v64, v195, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMR);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
    v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
    v78 = v77 == 1;
    if (v77 == 1)
    {
      return v78;
    }

    v79 = *(v76 + 48);
    v80 = *v75;
    v81 = v75[1];
    v82 = v75 + v79;
    v83 = v213;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v82, v213, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      goto LABEL_78;
    }

    v174 = v78;
    v87 = *(a2 + 56) + *(v201 + 72) * v84;
    v88 = v212;
    result = outlined init with copy of PromptCompletion.Content(v87, v212, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v89 = *v88;
    v90 = *v83;
    v91 = *(v89 + 16);
    v92 = v209;
    v93 = v210;
    if (v91 != *(*v83 + 16))
    {
      goto LABEL_77;
    }

    if (v91 && v89 != v90)
    {
      break;
    }

LABEL_57:
    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v212[1], *(v213 + 8)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v212[2], *(v213 + 16)) & 1) == 0)
    {
      goto LABEL_77;
    }

    v158 = *(v183 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v159 = v212;
    v160 = v213;
    LOBYTE(v158) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v159, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    result = outlined destroy of PromptCompletion.FileContent(v160, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    a2 = v170;
    a1 = v169;
    v62 = v175;
    v78 = v174;
    if ((v158 & 1) == 0)
    {
      return v78;
    }
  }

  v94 = 0;
  v95 = (*(v211 + 80) + 32) & ~*(v211 + 80);
  v190 = v89 + v95;
  v189 = v90 + v95;
  v198 = v41;
  v186 = v89;
  v185 = v90;
  v184 = v91;
  while (1)
  {
    if (v94 >= *(v89 + 16))
    {
      goto LABEL_82;
    }

    v96 = v41;
    v97 = v94;
    v98 = *(v211 + 72) * v94;
    result = outlined init with copy of PromptCompletion.Content(v190 + v98, v93, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v99 = *(v90 + 16);
    v208 = v97;
    if (v97 >= v99)
    {
      goto LABEL_83;
    }

    v100 = v214;
    outlined init with copy of PromptCompletion.Content(v189 + v98, v214, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v101 = *(v205 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v93, v96, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v100, v96 + v101, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    v102 = *v197;
    v103 = v206;
    if ((*v197)(v96, 1, v206) == 1)
    {
      if (v102(v96 + v101, 1, v103) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
        v41 = v96;
        goto LABEL_55;
      }

      outlined destroy of PromptCompletion.FileContent(v214, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      v163 = v93;
      v162 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt;
LABEL_65:
      outlined destroy of PromptCompletion.FileContent(v163, v162);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
      goto LABEL_77;
    }

    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, v92, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    if (v102(v96 + v101, 1, v103) == 1)
    {
      outlined destroy of PromptCompletion.FileContent(v214, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      outlined destroy of PromptCompletion.FileContent(v93, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      v162 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum;
      v163 = v92;
      goto LABEL_65;
    }

    v104 = v96 + v101;
    v105 = v204;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v104, v204, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v106 = v203;
    v107 = v203 + *(v193 + 48);
    outlined init with copy of PromptCompletion.Content(v92, v203, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined init with copy of PromptCompletion.Content(v105, v107, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v108 = *(v194 + 48);
    v109 = v200;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, v200, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v207 = v107;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v107, v109 + v108, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v110 = *v173;
    v111 = v199;
    if ((*v173)(v109, 1, v199) != 1)
    {
      break;
    }

    v112 = v110(v109 + v108, 1, v111) == 1;
    v113 = v109;
    v93 = v210;
    if (!v112)
    {
      goto LABEL_67;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
LABEL_41:
    v178 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
    v133 = *(v178 + 20);
    v134 = *(v172 + 48);
    v135 = v106 + v133;
    v136 = v188;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v135, v188, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v207 + v133, v136 + v134, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    v137 = *v171;
    v138 = v179;
    if ((*v171)(v136, 1, v179) == 1)
    {
      v139 = v137(v136 + v134, 1, v138);
      v121 = v198;
      v132 = v209;
      if (v139 != 1)
      {
        goto LABEL_69;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v136, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      v106 = v203;
      v140 = v178;
    }

    else
    {
      v141 = v136;
      v142 = v136;
      v143 = v167;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v141, v167, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      if (v137(v142 + v134, 1, v138) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v143, type metadata accessor for Promptkit_Wireformat_Prompt);
        v136 = v142;
        v132 = v209;
        v93 = v210;
        v121 = v198;
LABEL_69:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v136, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
        v106 = v203;
        goto LABEL_75;
      }

      v144 = v166;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v142 + v134, v166, type metadata accessor for Promptkit_Wireformat_Prompt);
      v145 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v143, *v144);
      v121 = v198;
      if ((v145 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v144, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of PromptCompletion.FileContent(v143, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v142, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
        v106 = v203;
        goto LABEL_74;
      }

      v146 = *(v179 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v147 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v144, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of PromptCompletion.FileContent(v143, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v142, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      v106 = v203;
      v132 = v209;
      v93 = v210;
      v140 = v178;
      if ((v147 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v148 = *(v140 + 24);
    v149 = (v106 + v148);
    v150 = *(v106 + v148 + 8);
    v151 = (v207 + v148);
    v152 = v151[1];
    if (v150)
    {
      if (!v152 || (*v149 != *v151 || v150 != v152) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else if (v152)
    {
      goto LABEL_75;
    }

    v153 = *(v140 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v154 = v207;
    LOBYTE(v153) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v204, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v155 = v154;
    v41 = v198;
    outlined destroy of PromptCompletion.FileContent(v155, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    v92 = v132;
    outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    outlined destroy of PromptCompletion.FileContent(v132, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    if ((v153 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_55:
    v156 = *(v202 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v157 = v214;
    LOBYTE(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v157, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    result = outlined destroy of PromptCompletion.FileContent(v93, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v89 = v186;
    v90 = v185;
    if ((v156 & 1) == 0)
    {
      goto LABEL_77;
    }

    v94 = v208 + 1;
    if (v184 == v208 + 1)
    {
      goto LABEL_57;
    }
  }

  v114 = v192;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, v192, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if (v110(v109 + v108, 1, v111) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v114, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    v93 = v210;
    v113 = v109;
LABEL_67:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
    v121 = v198;
    v132 = v209;
    goto LABEL_75;
  }

  v115 = v191;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v109 + v108, v191, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  v116 = *(v180 + 48);
  v117 = v181;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, v181, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, v117 + v116, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v118 = *v168;
  v119 = v182;
  if ((*v168)(v117, 1, v182) == 1)
  {
    v112 = v118(v117 + v116, 1, v119) == 1;
    v120 = v117;
    v121 = v198;
    if (!v112)
    {
      goto LABEL_72;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v122 = v192;
    v123 = v199;
    goto LABEL_40;
  }

  v124 = v177;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, v177, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v125 = v118(v117 + v116, 1, v119);
  v121 = v198;
  if (v125 != 1)
  {
    v126 = v117 + v116;
    v127 = v176;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v126, v176, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v128 = static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(v124, v127);
    outlined destroy of PromptCompletion.FileContent(v127, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v123 = v199;
    outlined destroy of PromptCompletion.FileContent(v124, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v122 = v192;
    if ((v128 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_40:
    v129 = *(v123 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v130 = v191;
    v131 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v130, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    outlined destroy of PromptCompletion.FileContent(v122, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v200, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v132 = v209;
    v93 = v210;
    if ((v131 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_41;
  }

  outlined destroy of PromptCompletion.FileContent(v124, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  v120 = v117;
LABEL_72:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v120, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  v122 = v192;
LABEL_73:
  outlined destroy of PromptCompletion.FileContent(v191, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of PromptCompletion.FileContent(v122, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v200, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
LABEL_74:
  v132 = v209;
  v93 = v210;
LABEL_75:
  outlined destroy of PromptCompletion.FileContent(v204, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of PromptCompletion.FileContent(v207, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of PromptCompletion.FileContent(v132, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v121, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
LABEL_76:
  outlined destroy of PromptCompletion.FileContent(v214, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
  outlined destroy of PromptCompletion.FileContent(v93, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
LABEL_77:
  outlined destroy of PromptCompletion.FileContent(v212, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  v83 = v213;
LABEL_78:
  outlined destroy of PromptCompletion.FileContent(v83, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  return 0;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v70 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v13 = &v70 - v12;
  v79 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v85 = *(v79 - 8);
  v14 = *(v85 + 64);
  v15 = MEMORY[0x1EEE9AC00](v79);
  v86 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v70 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v23);
  v81 = (&v70 - v27);
  v82 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v82 + 16))
  {
    return 0;
  }

  v28 = 0;
  v74 = a1;
  v75 = v25;
  v29 = *(a1 + 64);
  v71 = a1 + 64;
  v72 = v10;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v76 = v33;
  v77 = (v4 + 48);
  while (1)
  {
    if (!v32)
    {
      if (v33 <= v28 + 1)
      {
        v38 = v28 + 1;
      }

      else
      {
        v38 = v33;
      }

      v39 = v38 - 1;
      v40 = v81;
      while (1)
      {
        v41 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v41 >= v33)
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
          (*(*(v66 - 8) + 56))(v25, 1, 1, v66);
          v84 = 0;
          v28 = v39;
          goto LABEL_18;
        }

        v42 = *(v71 + 8 * v41);
        ++v28;
        if (v42)
        {
          v84 = (v42 - 1) & v42;
          v37 = __clz(__rbit64(v42)) | (v41 << 6);
          v28 = v41;
          goto LABEL_17;
        }
      }

      __break(1u);
      return result;
    }

    v84 = (v32 - 1) & v32;
    v37 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v43 = (*(v74 + 48) + 16 * v37);
    v45 = *v43;
    v44 = v43[1];
    v46 = v78;
    outlined init with copy of PromptCompletion.Content(*(v74 + 56) + *(v85 + 72) * v37, v78, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
    v48 = *(v47 + 48);
    *v25 = v45;
    v25[1] = v44;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v46, v25 + v48, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    (*(*(v47 - 8) + 56))(v25, 0, 1, v47);

    v40 = v81;
LABEL_18:
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v25, v40, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMR);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
    v50 = (*(*(v49 - 8) + 48))(v40, 1, v49);
    v83 = v50 == 1;
    if (v50 == 1)
    {
      return v83;
    }

    v51 = v87;
    v52 = *(v49 + 48);
    v53 = *v40;
    v54 = v40[1];
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v40 + v52, v19, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v55 = v19;
    v56 = v82;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      break;
    }

    v60 = v86;
    outlined init with copy of PromptCompletion.Content(*(v56 + 56) + *(v85 + 72) * v57, v86, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v61 = *(v80 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v60, v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, &v13[v61], &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v62 = *v77;
    v19 = v55;
    if ((*v77)(v13, 1, v51) == 1)
    {
      if (v62(&v13[v61], 1, v87) != 1)
      {
        outlined destroy of PromptCompletion.FileContent(v86, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v68 = v55;
        v67 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
        goto LABEL_31;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    }

    else
    {
      v63 = v72;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v72, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      if (v62(&v13[v61], 1, v87) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v86, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        outlined destroy of PromptCompletion.FileContent(v55, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v67 = type metadata accessor for Promptkit_Wireformat_ValueEnum;
        v68 = v63;
LABEL_31:
        outlined destroy of PromptCompletion.FileContent(v68, v67);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
        return 0;
      }

      v64 = v73;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v13[v61], v73, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v65 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v63, v64);
      outlined destroy of PromptCompletion.FileContent(v64, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      outlined destroy of PromptCompletion.FileContent(v63, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      v19 = v55;
      if ((v65 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v86, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v69 = v55;
        goto LABEL_32;
      }
    }

    v34 = *(v79 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v35 = v86;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v35, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    result = outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v25 = v75;
    v33 = v76;
    v32 = v84;
    if ((v36 & 1) == 0)
    {
      return v83;
    }
  }

  v69 = v55;
LABEL_32:
  outlined destroy of PromptCompletion.FileContent(v69, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  return 0;
}