Swift::Int SiriSuggestionsFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriSuggestionsFeatureFlags()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for mathIntentNames(uint64_t a1)
{
  return one-time initialization function for mathIntentNames(a1, &static SuggestionConstants.mathSuggestionIntents.getter, &static InfoServerSuggestionAssetProvider.mathIntentNames);
}

{
  return one-time initialization function for mathIntentNames(a1, &static SuggestionConstants.mathSuggestionIntents.getter, &static InfoActionKeyMapper.mathIntentNames);
}

uint64_t *InfoServerSuggestionAssetProvider.mathIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for mathIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.mathIntentNames;
}

uint64_t *InfoServerSuggestionAssetProvider.weatherIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for weatherIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.weatherIntentNames;
}

uint64_t *InfoServerSuggestionAssetProvider.clockIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for clockIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.clockIntentNames;
}

uint64_t InfoServerSuggestionAssetProvider.getAssets(context:suggestion:)(uint64_t a1, void *a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v36 - v7;
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  v10 = CandidateSuggestion.getSuggestionId()();
  if (v10._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v10._object == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  v15 = dispatch thunk of CandidateSuggestion.params.getter();
  v16 = static SuggestionConstants.serverIntentName.getter();
  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v18, &v37);

  v21 = swift_dynamicCast();
  if ((v21 & 1) == 0)
  {
LABEL_17:
    *v8 = 0x6C7070612E6D6F63;
    v26 = 0xEE00697269732E65;
    goto LABEL_18;
  }

  v23 = v36[2];
  v22 = v36[3];
  if (one-time initialization token for mathIntentNames != -1)
  {
    v21 = swift_once();
  }

  v37 = v23;
  v38 = v22;
  __chkstk_darwin(v21);
  v36[-2] = &v37;
  v25 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v36[-4], v24);
  if ((v25 & 1) == 0)
  {
    if (one-time initialization token for weatherIntentNames != -1)
    {
      v25 = swift_once();
    }

    v37 = v23;
    v38 = v22;
    __chkstk_darwin(v25);
    v36[-2] = &v37;
    v33 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v36[-4], v32);
    if (v33)
    {

      v26 = 0x800000000001BD50;
      *v8 = 0xD000000000000011;
      goto LABEL_18;
    }

    if (one-time initialization token for clockIntentNames != -1)
    {
      v33 = swift_once();
    }

    v37 = v23;
    v38 = v22;
    __chkstk_darwin(v33);
    v36[-2] = &v37;
    v35 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v36[-4], v34);

    if (v35)
    {
      v26 = 0x800000000001BCF0;
      *v8 = 0xD000000000000015;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v26 = 0x800000000001BD10;
  *v8 = 0xD000000000000014;
LABEL_18:
  *(v8 + 1) = v26;
  v27 = enum case for Image.appIcon(_:);
  v28 = type metadata accessor for Image();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v8, v27, v28);
  v30 = *(v29 + 56);
  v30(v8, 0, 1, v28);
  v30(v6, 1, 1, v28);
  return Assets.init(icon:inAppIcon:)();
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

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for DialogDetails();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = static SuggestionConstants.kOwnerInformation;
  v0[5] = type metadata accessor for DomainOwner();
  v0[6] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v5 = v0[18];

  return v7(v0 + 2);
}

{
  v13 = v0[27];
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v19 = v0[20];
  v16 = v0[19];
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  static SuggestionConstants.relatedQuestionsSuggestionId.getter();
  *v1 = &async function pointer to specialized thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);
  v1[1] = 0;
  v15 = enum case for DialogDetails.catTemplateCallback(_:);
  v14 = *(v2 + 104);
  v14(v1);
  *(swift_task_alloc() + 16) = v0 + 7;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

  v4 = *(v2 + 8);
  v4(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  static SuggestionConstants.serverSuggestionId.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v16;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for implicit closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  *(v6 + 24) = v5;
  *v1 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);
  v1[1] = v6;
  (v14)(v1, v15, v3);
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

  v4(v1, v3);
  v7 = type metadata accessor for InfoServerGenerator();
  v8 = swift_allocObject();
  v0[15] = v7;
  v0[16] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoServerGenerator and conformance InfoServerGenerator, v9, type metadata accessor for InfoServerGenerator);
  v0[12] = v8;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.withConversationalGenerator(_:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  dispatch thunk of SuggestionOwnerDefinitionBuilder.registerAdditionalIntentType(intent:)();

  (*(v18 + 8))(v17, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AD90;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();

  v11 = v0[1];

  return v11(v10);
}

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(v2 + 216) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return _swift_task_switch(static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InfoServerSuggestionDefinitionFactory.serverUtteranceMapper(dialogProperties:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v47 = type metadata accessor for BehaviorAfterSpeaking();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v47);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v43 - v8;
  v10 = type metadata accessor for TemplatingText();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v43 - v14;
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v22 = dispatch thunk of DialogProperties.getParameters()();
  v23 = static SuggestionConstants.serverExampleUtterance.getter();
  if (!*(v22 + 16))
  {

    goto LABEL_6;
  }

  v44 = v9;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_6:

    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v25, v50);

  v28 = swift_dynamicCast();
  (*(v17 + 56))(v15, v28 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    v29 = static SuggestionConstants.serverIntentName.getter();
    v43[2] = v30;
    v43[3] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
    v31 = *(type metadata accessor for TemplatingSection() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    *(swift_allocObject() + 16) = xmmword_1AD90;
    v43[1] = "relatedQuestions";
    SpeakableString.print.getter();
    SpeakableString.speak.getter();
    TemplatingText.init(text:speakableTextOverride:)();
    (*(v45 + 56))(v44, 1, 1, v46);
    TemplatingSection.init(id:content:caption:spokenOnly:)();
    (*(v3 + 104))(v48, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v47);
    v34 = type metadata accessor for TemplatingResult();
    v35 = v49;
    v49[3] = v34;
    __swift_allocate_boxed_opaque_existential_0Tm(v35);
    TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
    return (*(v17 + 8))(v20, v16);
  }

LABEL_7:
  outlined destroy of SpeakableString?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static SuggestionsLogger.suggestions);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "Unable to find example utterance in dialog parameter", v40, 2u);
  }

  static SuggestionConstants.serverIntentName.getter();
  (*(v3 + 104))(v48, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v47);
  v41 = type metadata accessor for TemplatingResult();
  v42 = v49;
  v49[3] = v41;
  __swift_allocate_boxed_opaque_existential_0Tm(v42);
  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t *a1, void *a2)
{
  type metadata accessor for InfoServerSuggestionDefinitionFactory();
  static InfoServerSuggestionDefinitionFactory.serverUtteranceMapper(dialogProperties:)(a2, a1);
  v5 = *(v2 + 8);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.IntentType();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  *&v55 = *(a1 + 40);
  v54 = *(a1 + 24);
  *&v57 = __swift_project_boxed_opaque_existential_1Tm(a1, v54);
  *&v56 = static SuggestionConstants.serverIntentName.getter();
  v7 = static SuggestionConstants.serverIntentName.getter();
  v9 = v8;
  v10 = type metadata accessor for FromContextResolver();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = &async function pointer to closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v11[5] = 0;
  *&v79 = v10;
  v13 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type FromContextResolver and conformance FromContextResolver, v12, type metadata accessor for FromContextResolver);
  *(&v79 + 1) = v13;
  v78[0] = v11;
  static SuggestionConstants.serverIntentName.getter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  v59 = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  v14 = type metadata accessor for ResolvableParameter();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v82 = v54;
  v83 = v55;
  __swift_allocate_boxed_opaque_existential_0Tm(v81);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of SpeakableString?(v78, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v17 = v83;
  v55 = v82;
  *&v57 = __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  *&v56 = static SuggestionConstants.serverExampleUtterance.getter();
  v18 = static SuggestionConstants.serverExampleUtterance.getter();
  v20 = v19;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = &async function pointer to closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v21[5] = 0;
  *&v76 = v10;
  *(&v76 + 1) = v13;
  v75[0] = v21;
  static SuggestionConstants.serverExampleUtterance.getter();
  static SuggestionTransformers.removeParameterFromLogging()();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  v22 = *(v14 + 48);
  v23 = *(v14 + 52);
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v79 = v55;
  v80 = v17;
  __swift_allocate_boxed_opaque_existential_0Tm(v78);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of SpeakableString?(v75, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v24 = v80;
  v56 = v79;
  __swift_project_boxed_opaque_existential_1Tm(v78, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  v25 = *(type metadata accessor for VersionedInvocation() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v57 = xmmword_1AD90;
  *(v28 + 16) = xmmword_1AD90;
  static VersionedInvocations.HintsDawnA.getter();
  v76 = v56;
  v77 = v24;
  __swift_allocate_boxed_opaque_existential_0Tm(v75);
  dispatch thunk of SuggestionDetailsBuilder.validForInvocationTypes(_:)();

  v29 = v77;
  v56 = v76;
  __swift_project_boxed_opaque_existential_1Tm(v75, v76);
  v30 = type metadata accessor for InfoActionKeyMapper();
  inited = swift_initStaticObject();
  *&v70 = v30;
  *(&v70 + 1) = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoActionKeyMapper and conformance InfoActionKeyMapper, v32, type metadata accessor for InfoActionKeyMapper);
  v69[0] = inited;
  v73 = v56;
  v74 = v29;
  __swift_allocate_boxed_opaque_existential_0Tm(v72);
  dispatch thunk of SuggestionDetailsBuilder.actionKeyMapper(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v33 = v74;
  v56 = v73;
  __swift_project_boxed_opaque_existential_1Tm(v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v34 = type metadata accessor for DeliveryVehicle();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v57;
  v39 = enum case for SiriHintsMode.display(_:);
  v40 = type metadata accessor for SiriHintsMode();
  (*(*(v40 - 8) + 104))(v38 + v37, v39, v40);
  (*(v35 + 104))(v38 + v37, enum case for DeliveryVehicle.siriHints(_:), v34);
  v70 = v56;
  v71 = v33;
  __swift_allocate_boxed_opaque_existential_0Tm(v69);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v41 = v71;
  v57 = v70;
  __swift_project_boxed_opaque_existential_1Tm(v69, v70);
  static SuggestionConstants.t41Locales.getter();
  v67 = v57;
  v68 = v41;
  __swift_allocate_boxed_opaque_existential_0Tm(v66);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();

  v42 = v68;
  v57 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  v43 = type metadata accessor for InfoServerSuggestionAssetProvider();
  v44 = swift_allocObject();
  v61 = v43;
  v62 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoServerSuggestionAssetProvider and conformance InfoServerSuggestionAssetProvider, v45, type metadata accessor for InfoServerSuggestionAssetProvider);
  v60[0] = v44;
  v64 = v57;
  v65 = v42;
  __swift_allocate_boxed_opaque_existential_0Tm(v63);
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  v46 = v64;
  v47 = __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  v48 = *(v46 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v51 = &v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SiriSuggestions.IntentMatch();
  v62 = &protocol witness table for SiriSuggestions.IntentMatch;
  __swift_allocate_boxed_opaque_existential_0Tm(v60);
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  v52 = swift_allocObject();
  *(v52 + 16) = closure #5 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  *(v52 + 24) = 0;
  SiriSuggestions.IntentMatch.init(intentType:matcher:)();
  dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
  (*(v48 + 8))(v51, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  return __swift_destroy_boxed_opaque_existential_1Tm(v81);
}

uint64_t closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = swift_getObjectType();
  v5 = *(*(a3 + 8) + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), v7, v6);
}

uint64_t closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  countAndFlagsBits = v0[3].value._countAndFlagsBits;
  object = v0[3].value._object;
  v3 = v0[2].value._object;
  v4 = Context.getServerIntent()();
  v0[1] = v4;
  v0[4].value._countAndFlagsBits = v4.value._object;

  return _swift_task_switch(closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = &type metadata for String;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    *(*(v0 + 32) + 16) = 0;
  }

  v4 = *(v0 + 32);
  *v4 = v2;
  v4[1] = v1;
  v4[3] = v3;
  return (*(v0 + 8))();
}

Swift::String_optional __swiftcall Context.getServerIntent()()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v0 = static SuggestionConstants.kOwnerInformation;
  v6[3] = type metadata accessor for DomainOwner();
  v6[4] = &protocol witness table for DomainOwner;
  v6[0] = v0;

  static SuggestionConstants.serverIntentName.getter();
  Context.getParam(for:key:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  if (v8)
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v6[0];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v6[1];
    }
  }

  else
  {
    outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void *FromContextResolver.__allocating_init(resolverTypeOperand:propertyExtractor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = [*(v0 + 56) domainUseCase];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 40) = &type metadata for String;
    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    outlined init with take of Any((v0 + 16), v2);
  }

  else
  {
    v7 = [*(v0 + 56) infoDomain];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = *(v0 + 48);
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    *v12 = v9;
    v12[1] = v11;
  }

  v13 = *(v0 + 48);
  v14 = enum case for IntentParameter.directAssignment(_:);
  v15 = type metadata accessor for IntentParameter();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v5 = *(*(a3 + 8) + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), v7, v6);
}

uint64_t closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[6] = Context.getUtterance()();

  return _swift_task_switch(closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  v1 = v0[6];
  if (v1)
  {
    v2 = type metadata accessor for INInformationUseCaseUtterance();
  }

  else
  {
    v2 = 0;
    v3 = v0[2];
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  v4 = v0[2];
  *v4 = v1;
  v4[3] = v2;
  v5 = v0[1];

  return v5();
}

uint64_t Context.getUtterance()()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v0 = static SuggestionConstants.kOwnerInformation;
  v2[3] = type metadata accessor for DomainOwner();
  v2[4] = &protocol witness table for DomainOwner;
  v2[0] = v0;

  static SuggestionConstants.serverExampleUtterance.getter();
  Context.getParam(for:key:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v4)
  {
    type metadata accessor for INInformationUseCaseUtterance();
    if (swift_dynamicCast())
    {
      return v2[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of SpeakableString?(v3, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) exampleUtterance];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes29INInformationUseCaseUtteranceCSgMd, &_s20SiriInformationTypes29INInformationUseCaseUtteranceCSgMR);
  *v1 = v2;
  v3 = enum case for IntentParameter.directAssignment(_:);
  v4 = type metadata accessor for IntentParameter();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t *InfoActionKeyMapper.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static InfoActionKeyMapper.instance;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for InfoActionKeyMapper();
  result = swift_initStaticObject();
  static InfoActionKeyMapper.instance = result;
  return result;
}

uint64_t one-time initialization function for mathIntentNames(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t **a3)
{
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2(v7);
  v11 = *(v10 + 16);
  if (v11)
  {
    v27 = a3;
    v33 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v33;
    v15 = *(v12 + 64);
    v26 = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v28 = *(v12 + 56);
    v29 = v13;
    v17 = (v12 - 8);
    do
    {
      v18 = v30;
      v19 = v12;
      v29(v9, v16, v30);
      v31 = 0;
      v32 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v20 = v31;
      v21 = v32;
      (*v17)(v9, v18);
      v33 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v14 = v33;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = v20;
      v24[5] = v21;
      v16 += v28;
      --v11;
      v12 = v19;
    }

    while (v11);

    a3 = v27;
  }

  else
  {

    v14 = &_swiftEmptyArrayStorage;
  }

  *a3 = v14;
  return result;
}

uint64_t *InfoActionKeyMapper.mathIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for mathIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoActionKeyMapper.mathIntentNames;
}

uint64_t static InfoServerSuggestionAssetProvider.mathIntentNames.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t InfoActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)(uint64_t a1, uint64_t a2)
{
  v3 = static SuggestionConstants.serverIntentName.getter();
  if (*(a2 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    v7 = v6;

    if (v7)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v5, v13);
      v8 = swift_dynamicCast();
      if (v8)
      {
        if (one-time initialization token for mathIntentNames != -1)
        {
          v8 = swift_once();
        }

        v13[0] = v12[5];
        v13[1] = v12[6];
        __chkstk_darwin(v8);
        v12[2] = v13;
        v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v12, v9);

        if (v10)
        {
          static SuggestionConstants.serverSuggestionIdMath.getter();
        }
      }
    }
  }

  else
  {
  }

  static ActionKeyMappers.simpleActionKeyMapper(actionId:)();

  __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
  dispatch thunk of ActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(a1, a2, a3);
}

uint64_t closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

uint64_t closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)()
{
  v1 = [*(v0 + 32) exampleUtterance];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v4 = dispatch thunk of CandidateSuggestion.context.getter();
    v6 = v5;
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 96) = swift_getObjectType();
    v7 = *(*(v6 + 8) + 8);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), v9, v8);
  }

  else
  {
    v10 = *(v0 + 64);
    outlined init with copy of CandidateSuggestion(*(v0 + 24), *(v0 + 16));

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  Context.setUtterance(_:)(*(v0 + 72));
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

{
  v23 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static SuggestionsLogger.suggestions);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v8)
  {
    v21 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
    v14 = Message.debugDescription.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Found and constructed server based related questions suggestion: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = *(v0 + 64);
  outlined init with copy of CandidateSuggestion(*(v0 + 24), *(v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t Context.setUtterance(_:)(void *a1)
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v2 = static SuggestionConstants.kOwnerInformation;
  v6[3] = type metadata accessor for DomainOwner();
  v6[4] = &protocol witness table for DomainOwner;
  v6[0] = v2;

  static SuggestionConstants.serverExampleUtterance.getter();
  v5[3] = type metadata accessor for INInformationUseCaseUtterance();
  v5[0] = a1;
  v3 = a1;
  Context.setParam(for:key:value:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t specialized Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return _swift_task_switch(specialized Sequence.asyncMap<A>(_:), 0, 0);
}

uint64_t specialized Sequence.asyncMap<A>(_:)()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[7];
    v0[11] = &_swiftEmptyArrayStorage;
    v0[12] = 0;
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = specialized Sequence.asyncMap<A>(_:);
    v6 = v0[8];

    return (v9)(v0 + 2, v1 + 32);
  }

  else
  {
    v8 = v0[1];

    return v8(&_swiftEmptyArrayStorage);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);

    v5 = specialized Sequence.asyncMap<A>(_:);
  }

  else
  {
    v5 = specialized Sequence.asyncMap<A>(_:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 88);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, *(v0 + 88));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 96) + 1;
  v3[2] = v5 + 1;
  outlined init with take of CandidateSuggestion((v0 + 16), &v3[5 * v5 + 4]);
  if (v7 == v6)
  {
    v8 = *(v0 + 8);

    return v8(v3);
  }

  else
  {
    v10 = *(v0 + 96);
    *(v0 + 88) = v3;
    *(v0 + 96) = v10 + 1;
    v11 = *(v0 + 72) + 40 * v10;
    v15 = (*(v0 + 56) + **(v0 + 56));
    v12 = *(*(v0 + 56) + 4);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = specialized Sequence.asyncMap<A>(_:);
    v14 = *(v0 + 64);

    return v15(v0 + 16, v11 + 72);
  }
}

{
  v1 = *(v0 + 112);
  return (*(v0 + 8))();
}

uint64_t closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

uint64_t closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)()
{
  v1 = [*(v0 + 32) exampleUtterance];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v4 = dispatch thunk of CandidateSuggestion.context.getter();
    v6 = v5;
    *(v0 + 96) = v4;
    *(v0 + 104) = v5;
    *(v0 + 112) = swift_getObjectType();
    v7 = *(*(v6 + 8) + 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
  }

  else
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 40);
    v15 = *(v0 + 24);
    v16 = v15[4];
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    v17 = dispatch thunk of CandidateSuggestion.context.getter();
    v19 = v18;
    *(v0 + 120) = v17;
    *(v0 + 128) = v18;
    *(v0 + 136) = swift_getObjectType();
    Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
    *(v0 + 144) = String.init<A>(describing:)();
    *(v0 + 152) = v20;
    v21 = *(*(v19 + 8) + 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v22;
    v11 = closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
  }

  return _swift_task_switch(v11, v8, v10);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  Context.setUtterance(_:)(*(v0 + 88));
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v6 = dispatch thunk of CandidateSuggestion.context.getter();
  v8 = v7;
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  *(v0 + 136) = swift_getObjectType();
  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
  *(v0 + 144) = String.init<A>(describing:)();
  *(v0 + 152) = v9;
  v10 = *(*(v8 + 8) + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), v12, v11);
}

{
  countAndFlagsBits = v0[8]._countAndFlagsBits;
  object = v0[8]._object;
  v3 = v0[7]._object;
  Context.setServerIntent(_:)(v0[9]);
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{
  v23 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static SuggestionsLogger.suggestions);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
    v14 = Message.debugDescription.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Found and constructed server based info suggestion: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[10];
  v19 = v0[8];
  outlined init with copy of CandidateSuggestion(v0[3], v0[2]);

  v20 = v0[1];

  return v20();
}

Swift::Void __swiftcall Context.setServerIntent(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v3 = static SuggestionConstants.kOwnerInformation;
  v5[3] = type metadata accessor for DomainOwner();
  v5[4] = &protocol witness table for DomainOwner;
  v5[0] = v3;

  static SuggestionConstants.serverIntentName.getter();
  v4[3] = &type metadata for String;
  v4[0] = countAndFlagsBits;
  v4[1] = object;

  Context.setParam(for:key:value:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.sectionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FromContextResolver.propertyExtractor.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *FromContextResolver.init(resolverTypeOperand:propertyExtractor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return (specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:))(a2, a3, a4);
}

uint64_t FromContextResolver.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t FromContextResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance FromContextResolver()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver;

  return (specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:))(a2, a3, a4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void default argument 1 of SolarEventResolver.resolveParameter(date:calendar:)()
{
  v0 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable (@guaranteed INInformationUseCaseIntent) -> (@out IntentParameter)(void *a1, void *a2)
{
  if (INInformationUseCaseIntent.supportsRelatedQuestions()() && (v5 = [a2 exampleUtterance]) != 0)
  {
    v6 = v5;
    a1[3] = type metadata accessor for INInformationUseCaseUtterance();
    *a1 = v6;
    v7 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v7 = &enum case for IntentParameter.ignore(_:);
  }

  v8 = *v7;
  v9 = type metadata accessor for IntentParameter();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  v10 = *(v2 + 8);

  return v10();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  InformationSuggestion.rawValue.getter(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000686372;
      v8 = 0x6165536C61636F6CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BD90;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000000001BDB0;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001BDD0;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BDF0;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BE10;
          break;
        case 6:
          v8 = 0xD000000000000016;
          v7 = 0x800000000001BE30;
          break;
        case 7:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000000001BE50;
          break;
        case 8:
          v8 = 0xD000000000000019;
          v7 = 0x800000000001BE70;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000000001BE90;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x800000000001BEB0;
          break;
        case 0xB:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BED0;
          break;
        case 0xC:
          break;
        case 0xD:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BF00;
          break;
        case 0xE:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 0xF:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF20;
          break;
        case 0x10:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF40;
          break;
        case 0x11:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF60;
          break;
        case 0x12:
          v8 = 0xD000000000000017;
          v7 = 0x800000000001BF80;
          break;
        case 0x13:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BFA0;
          break;
        case 0x14:
          v8 = 0xD000000000000012;
          v7 = 0x800000000001BFC0;
          break;
        case 0x15:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BFE0;
          break;
        case 0x16:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001C000;
          break;
        case 0x17:
          v8 = 0xD000000000000017;
          v7 = 0x800000000001C020;
          break;
        case 0x18:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001C040;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001BD70;
          break;
      }

      v9 = 0x6165536C61636F6CLL;
      v10 = 0xEB00000000686372;
      switch(a1)
      {
        case 1:
          v10 = 0x800000000001BD90;
          if (v8 == 0xD000000000000018)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        case 2:
          v10 = 0x800000000001BDB0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 3:
          v10 = 0x800000000001BDD0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 4:
          v10 = 0x800000000001BDF0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 5:
          v10 = 0x800000000001BE10;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 6:
          v10 = 0x800000000001BE30;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 7:
          v10 = 0x800000000001BE50;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 8:
          v10 = 0x800000000001BE70;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 9:
          v10 = 0x800000000001BE90;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 10:
          v10 = 0x800000000001BEB0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 11:
          v10 = 0x800000000001BED0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 12:
          goto LABEL_74;
        case 13:
          v10 = 0x800000000001BF00;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 14:
          v10 = 0xE400000000000000;
          if (v8 != 1937204590)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 15:
          v10 = 0x800000000001BF20;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 16:
          v10 = 0x800000000001BF40;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 17:
          v10 = 0x800000000001BF60;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 18:
          v10 = 0x800000000001BF80;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 19:
          v9 = 0xD000000000000015;
          v10 = 0x800000000001BFA0;
LABEL_74:
          if (v8 == v9)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        case 20:
          v10 = 0x800000000001BFC0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 21:
          v10 = 0x800000000001BFE0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 22:
          v10 = 0x800000000001C000;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 23:
          v10 = 0x800000000001C020;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 24:
          v10 = 0x800000000001C040;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        default:
          v10 = 0x800000000001BD70;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

LABEL_75:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_76:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_6ADC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(a1, a2, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v10 = type metadata accessor for Objective();
  v4[26] = v10;
  v11 = *(v10 - 8);
  v4[27] = v11;
  v12 = *(v11 + 64) + 15;
  v4[28] = swift_task_alloc();
  v13 = type metadata accessor for SiriSuggestions.Intent();
  v4[29] = v13;
  v14 = *(v13 - 8);
  v4[30] = v14;
  v15 = *(v14 + 64) + 15;
  v4[31] = swift_task_alloc();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v4[32] = v16;
  v17 = *(v16 - 8);
  v4[33] = v17;
  v18 = *(v17 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[17];
  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
  (*(v4 + 104))(v2, enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:), v3);
  lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    if (one-time initialization token for suggestions != -1)
    {
      swift_once();
    }

    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v10 = v0[17];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static SuggestionsLogger.suggestions);
    (*(v8 + 16))(v7, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[35];
      v15 = v0[22];
      v16 = v0[23];
      v52 = v0[32];
      v54 = v0[21];
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
      v18 = Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter();
      v6(v14, v52);
      (*(v15 + 8))(v16, v54);
      *(v17 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "Encountered unspecified intent of id %ld. Filtering out for infoServerSuggestion", v17, 0xCu);
    }

    else
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
    }

    v43 = v0[34];
    v42 = v0[35];
    v44 = v0[31];
    v45 = v0[28];
    v47 = v0[24];
    v46 = v0[25];
    v48 = v0[23];

    v49 = v0[1];

    return v49(0);
  }

  else
  {
    v19 = v0[30];
    v20 = v0[31];
    v22 = v0[28];
    v21 = v0[29];
    v24 = v0[26];
    v23 = v0[27];
    v51 = v0[25];
    v53 = v0[24];
    v25 = v0[19];
    v26 = v0[20];
    v27 = v0[17];
    v28 = v0[18];
    v29 = Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)();
    v0[36] = v29;
    v55 = v28[4];
    v30 = v28;
    v31 = v28[3];
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    *v20 = v29;
    (*(v19 + 104))(v20, enum case for SiriSuggestions.Intent.inIntent(_:), v21);
    (*(v23 + 104))(v22, enum case for Objective.engagement(_:), v24);
    v32 = type metadata accessor for DeliveryVehicle();
    (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
    v33 = type metadata accessor for Preference();
    (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
    v34 = async function pointer to dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)[1];
    v35 = v29;
    v36 = swift_task_alloc();
    v0[37] = v36;
    *v36 = v0;
    v36[1] = specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
    v37 = v0[31];
    v38 = v0[28];
    v40 = v0[24];
    v39 = v0[25];
    v41.n128_u64[0] = 1.0;

    return dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)(v37, v38, v39, v40, v31, v55, v41);
  }
}

{
  v1 = *(v0 + 304);
  if (!v1)
  {
    if (one-time initialization token for suggestions != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_42:
    *(v0 + 312) = _swiftEmptyArrayStorage;
    v44 = *(v0 + 288);
    v45 = *(v0 + 136);

    v46 = swift_task_alloc();
    *(v0 + 320) = v46;
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v47 = swift_task_alloc();
    *(v0 + 328) = v47;
    *v47 = v0;
    v47[1] = specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

    return specialized Sequence.asyncMap<A>(_:)(&async function pointer to partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), v46, _swiftEmptyArrayStorage);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = v1 + 32;
  v6 = *(v1 + 16);
  do
  {
    outlined init with copy of CandidateSuggestion(v5, v0 + 16);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v8 = CandidateSuggestion.getSuggestionId()();
    if (v8._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v8._object == v9)
    {
      goto LABEL_11;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_12;
    }

    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v13 = CandidateSuggestion.getSuggestionId()();
    if (v13._countAndFlagsBits == static SuggestionConstants.serverSuggestionIdMath.getter() && v13._object == v14)
    {
LABEL_11:

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_13;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v16 = (v15 & 1) == 0;
    v17 = __OFADD__(v3, v16);
    v3 += v16;
    if (v17)
    {
      __break(1u);
      break;
    }

LABEL_13:
    v5 += 40;
    --v6;
  }

  while (v6);
  while (v6 < *(v1 + 16))
  {
    outlined init with copy of CandidateSuggestion(v4, v0 + 56);
    if (!v3)
    {
      goto LABEL_31;
    }

    v18 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v19 = CandidateSuggestion.getSuggestionId()();
    if (v19._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v19._object == v20)
    {
      goto LABEL_18;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_19;
    }

    v23 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v24 = CandidateSuggestion.getSuggestionId()();
    if (v24._countAndFlagsBits == static SuggestionConstants.serverSuggestionIdMath.getter() && v24._object == v25)
    {
LABEL_18:
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
LABEL_31:
        outlined init with take of CandidateSuggestion((v0 + 56), v0 + 96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        outlined init with take of CandidateSuggestion((v0 + 96), &_swiftEmptyArrayStorage[5 * v28 + 4]);
        goto LABEL_20;
      }
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
LABEL_20:
    ++v6;
    v4 += 40;
    if (v2 == v6)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_37:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static SuggestionsLogger.suggestions);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 288);
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v30, v31, "Unable to find server suggestionID", v34, 2u);
  }

  v36 = *(v0 + 272);
  v35 = *(v0 + 280);
  v37 = *(v0 + 248);
  v38 = *(v0 + 224);
  v40 = *(v0 + 192);
  v39 = *(v0 + 200);
  v41 = *(v0 + 184);

  v42 = *(v0 + 8);

  return v42(0);
}

{
  v1 = *(v0 + 336);

  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  v7 = *(*v1 + 216);
  v8 = *(*v1 + 208);
  v9 = *(*v1 + 200);
  v10 = *(*v1 + 192);
  v12 = *v1;
  *(*v1 + 304) = a1;

  outlined destroy of SpeakableString?(v10, &_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  outlined destroy of SpeakableString?(v9, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[39];
    v9 = v4[40];

    v4[42] = a1;

    return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
  }
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Objective();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for SiriSuggestions.Intent();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v25 = v0[7];
  v26 = v0[6];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  v11 = Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)();
  v0[14] = v11;
  v27 = v10[4];
  v12 = v10;
  v13 = v10[3];
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  *v2 = v11;
  (*(v1 + 104))(v2, enum case for SiriSuggestions.Intent.inIntent(_:), v3);
  (*(v5 + 104))(v4, enum case for Objective.discoverability(_:), v6);
  v14 = type metadata accessor for DeliveryVehicle();
  (*(*(v14 - 8) + 56))(v25, 1, 1, v14);
  v15 = type metadata accessor for Preference();
  (*(*(v15 - 8) + 56))(v26, 1, 1, v15);
  v16 = async function pointer to dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)[1];
  v17 = v11;
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:);
  v19 = v0[13];
  v20 = v0[10];
  v22 = v0[6];
  v21 = v0[7];
  v23.n128_u64[0] = 1.0;

  return dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)(v19, v20, v21, v22, v13, v27, v23);
}

{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[2];
    v4 = swift_task_alloc();
    v0[17] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:);

    return specialized Sequence.asyncMap<A>(_:)(&async function pointer to partial apply for closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), v4, v1);
  }

  else
  {
    if (one-time initialization token for suggestions != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static SuggestionsLogger.suggestions);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to find server suggestionID", v12, 2u);
    }

    v13 = v0[13];
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

{

  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  v9 = *(*v1 + 56);
  v10 = *(*v1 + 48);
  v12 = *v1;
  *(*v1 + 128) = a1;

  outlined destroy of SpeakableString?(v10, &_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  outlined destroy of SpeakableString?(v9, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[16];
    v9 = v4[17];

    v4[19] = a1;

    return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
  }
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for Locale();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v10 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v3[39] = v11;
  v12 = *(v11 - 8);
  v3[40] = v12;
  v13 = *(v12 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v122 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 344) = __swift_project_value_buffer(v1, static SuggestionsLogger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Info suggestions running generators", v4, 2u);
  }

  v5 = *(v0 + 216);

  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v7 = dispatch thunk of Interaction.executionParameters.getter();
  v8 = static SuggestionConstants.serverPayloadKey.getter();
  if (!*(v7 + 16))
  {

    goto LABEL_14;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_14:

    v14 = 0;
    v15 = 0xF000000000000000;
    goto LABEL_15;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v7 + 56) + 48 * v10, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = *(v0 + 192);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = *(v0 + 200);
  }

  else
  {
    v15 = 0xF000000000000000;
  }

LABEL_15:
  *(v0 + 352) = v14;
  *(v0 + 360) = v15;
  v16 = dispatch thunk of Interaction.executionParameters.getter();
  Payload = static SuggestionConstants.alternateQueryPayloadKey.getter();
  if (!*(v16 + 16))
  {

    goto LABEL_21;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(Payload, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_21:

    v23 = 0;
    v24 = 0xF000000000000000;
    goto LABEL_22;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v16 + 56) + 48 * v19, v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v22 = swift_dynamicCast();
  v23 = *(v0 + 176);
  if (v22)
  {
    v24 = *(v0 + 184);
  }

  else
  {
    v23 = 0;
    v24 = 0xF000000000000000;
  }

LABEL_22:
  *(v0 + 368) = v23;
  *(v0 + 376) = v24;
  v25 = dispatch thunk of Interaction.executionParameters.getter();
  v26 = static SuggestionConstants.relatedQuestionsPayloadKey.getter();
  if (!*(v25 + 16))
  {

    goto LABEL_31;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_31:

    v32 = 0;
    v33 = 0xF000000000000000;
    goto LABEL_32;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v25 + 56) + 48 * v28, v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v31 = swift_dynamicCast();
  if (v31)
  {
    v32 = *(v0 + 160);
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = *(v0 + 168);
  }

  else
  {
    v33 = 0xF000000000000000;
  }

LABEL_32:
  *(v0 + 384) = v32;
  *(v0 + 392) = v33;
  if (v15 >> 60 != 15)
  {
    v35 = *(v0 + 336);
    v37 = *(v0 + 304);
    v36 = *(v0 + 312);
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    outlined copy of Data._Representation(v14, v15);
    outlined copy of Data._Representation(v14, v15);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    Message.init(serializedData:extensions:partial:options:)();
    *(v0 + 400) = 0;
    v38 = *(v0 + 336);
    v39 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    *(v0 + 408) = v39;
    v40 = *(v39 + 16);
    *(v0 + 416) = v40;
    if (v40)
    {
      v41 = *(v0 + 264);
      v42 = *(v0 + 272);
      v43 = *(v42 + 16);
      v42 += 16;
      v44 = *(v0 + 224);
      v45 = *(v42 + 64);
      *(v0 + 552) = v45;
      *(v0 + 424) = *(v42 + 56);
      *(v0 + 432) = v43;
      *(v0 + 440) = 0;
      *(v0 + 448) = _swiftEmptyArrayStorage;
      v47 = *(v0 + 248);
      v46 = *(v0 + 256);
      v48 = *(v0 + 240);
      v43(*(v0 + 288), v39 + ((v45 + 32) & ~v45), v41);
      v49 = v44[4];
      __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
      dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
      v50 = Locale.identifier.getter();
      v52 = v51;
      *(v0 + 456) = v51;
      (*(v47 + 8))(v46, v48);
      v53 = swift_task_alloc();
      *(v0 + 464) = v53;
      *v53 = v0;
      v53[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
      v54 = *(v0 + 288);
      v55 = *(v0 + 232);

      return specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(v54, v55, v50, v52);
    }

    v57 = *(v0 + 336);
    v58 = *(v0 + 312);
    v59 = *(v0 + 320);
    outlined consume of Data?(*(v0 + 352), *(v0 + 360));
    (*(v59 + 8))(v57, v58);
    v33 = *(v0 + 392);
    v34 = *(v0 + 400);
    goto LABEL_43;
  }

  if (v24 >> 60 != 15)
  {
    v34 = 0;
LABEL_43:
    if (v33 >> 60 == 15)
    {
      v60 = *(v0 + 352);
      v61 = *(v0 + 360);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      v62 = v60;
      goto LABEL_50;
    }

    v32 = *(v0 + 384);
    goto LABEL_46;
  }

  if (v33 >> 60 == 15)
  {
LABEL_52:
    v84 = *(v0 + 328);
    v83 = *(v0 + 336);
    v86 = *(v0 + 296);
    v85 = *(v0 + 304);
    v88 = *(v0 + 280);
    v87 = *(v0 + 288);
    v89 = *(v0 + 256);

    v90 = *(v0 + 8);

    return v90(_swiftEmptyArrayStorage);
  }

  v34 = 0;
LABEL_46:
  v63 = *(v0 + 328);
  v64 = *(v0 + 312);
  v65 = *(v0 + 296);
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  outlined copy of Data._Representation(v32, v33);
  outlined copy of Data._Representation(v32, v33);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  Message.init(serializedData:extensions:partial:options:)();
  if (v34)
  {
    v66 = *(v0 + 384);
    v67 = *(v0 + 392);

    outlined consume of Data?(v66, v67);
    v68 = *(v0 + 344);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    v71 = os_log_type_enabled(v69, v70);
    v73 = *(v0 + 384);
    v72 = *(v0 + 392);
    v75 = *(v0 + 368);
    v74 = *(v0 + 376);
    v76 = *(v0 + 352);
    v61 = *(v0 + 360);
    if (v71)
    {
      v118 = *(v0 + 360);
      v77 = swift_slowAlloc();
      v117 = v72;
      v78 = swift_slowAlloc();
      *&v119 = v78;
      *v77 = 136315138;
      *(v0 + 208) = v34;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v79 = String.init<A>(describing:)();
      v116 = v73;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v119);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_0, v69, v70, "Unable to get candidate from factory: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);

      outlined consume of Data?(v75, v74);

      outlined consume of Data?(v116, v117);
      v62 = v76;
      v82 = v118;
LABEL_51:
      outlined consume of Data?(v62, v82);
      goto LABEL_52;
    }

    outlined consume of Data?(v75, v74);

    outlined consume of Data?(v73, v72);
    v62 = v76;
LABEL_50:
    v82 = v61;
    goto LABEL_51;
  }

  v91 = *(v0 + 328);
  v92 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
  *(v0 + 480) = v92;
  v93 = *(v92 + 16);
  *(v0 + 488) = v93;
  if (!v93)
  {

    v109 = *(v0 + 384);
    v110 = *(v0 + 392);
    v112 = *(v0 + 352);
    v111 = *(v0 + 360);
    v114 = *(v0 + 320);
    v113 = *(v0 + 328);
    v115 = *(v0 + 312);
    outlined consume of Data?(*(v0 + 368), *(v0 + 376));
    outlined consume of Data?(v109, v110);
    outlined consume of Data?(v109, v110);
    outlined consume of Data?(v112, v111);
    (*(v114 + 8))(v113, v115);
    goto LABEL_52;
  }

  v94 = *(v0 + 224);
  v96 = *(v0 + 272);
  v95 = *(v0 + 280);
  v97 = *(v96 + 16);
  v96 += 16;
  v98 = *(v96 + 64);
  *(v0 + 556) = v98;
  *(v0 + 496) = *(v96 + 56);
  *(v0 + 504) = v97;
  *(v0 + 520) = _swiftEmptyArrayStorage;
  *(v0 + 512) = 0;
  v99 = *(v0 + 256);
  v100 = *(v0 + 240);
  v101 = *(v0 + 248);
  v97(v95, v92 + ((v98 + 32) & ~v98), *(v0 + 264));
  v102 = v94[4];
  __swift_project_boxed_opaque_existential_1Tm(v94, v94[3]);
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v103 = Locale.identifier.getter();
  v105 = v104;
  *(v0 + 528) = v104;
  (*(v101 + 8))(v99, v100);
  v106 = swift_task_alloc();
  *(v0 + 536) = v106;
  *v106 = v0;
  v106[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
  v107 = *(v0 + 280);
  v108 = *(v0 + 232);

  return specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v107, v108, v103, v105);
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 472) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

{
  v2 = *(*v1 + 536);
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 544) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

void specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v94 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = v2[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = *(v0 + 448);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 448);
  if (isUniquelyReferenced_nonNull_native && v5 <= v2[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, *(v0 + 448));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((v2[3] >> 1) - v2[2] >= v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v8 = v2[2];
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          v2[2] = v10;
          goto LABEL_15;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  if (v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_15:
  v12 = *(v0 + 440) + 1;
  if (v12 == *(v0 + 416))
  {
    v13 = *(v0 + 408);

    v14 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    outlined consume of Data?(*(v0 + 352), *(v0 + 360));
    (*(v16 + 8))(v14, v15);
    v17 = *(v0 + 392);
    if (v17 >> 60 == 15)
    {
      v19 = *(v0 + 352);
      v18 = *(v0 + 360);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      outlined consume of Data?(v19, v18);
LABEL_30:
      v75 = *(v0 + 328);
      v74 = *(v0 + 336);
      v77 = *(v0 + 296);
      v76 = *(v0 + 304);
      v79 = *(v0 + 280);
      v78 = *(v0 + 288);
      v80 = *(v0 + 256);

      v81 = *(v0 + 8);

      v81(v2);
      return;
    }

    v32 = *(v0 + 400);
    v33 = *(v0 + 384);
    v34 = *(v0 + 328);
    v35 = *(v0 + 312);
    v36 = *(v0 + 296);
    v93 = 0;
    memset(v92, 0, sizeof(v92));
    outlined copy of Data._Representation(v33, v17);
    outlined copy of Data._Representation(v33, v17);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    Message.init(serializedData:extensions:partial:options:)();
    if (v32)
    {
      v38 = *(v0 + 384);
      v37 = *(v0 + 392);

      outlined consume of Data?(v38, v37);
      v39 = *(v0 + 344);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 384);
      v43 = *(v0 + 392);
      v46 = *(v0 + 368);
      v45 = *(v0 + 376);
      v48 = *(v0 + 352);
      v47 = *(v0 + 360);
      if (v42)
      {
        v91 = *(v0 + 360);
        v49 = swift_slowAlloc();
        v90 = v43;
        v50 = swift_slowAlloc();
        *&v92[0] = v50;
        *v49 = 136315138;
        *(v0 + 208) = v32;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v51 = String.init<A>(describing:)();
        v89 = v44;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v92);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_0, v40, v41, "Unable to get candidate from factory: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);

        outlined consume of Data?(v46, v45);

        outlined consume of Data?(v89, v90);
        v54 = v48;
        v55 = v91;
      }

      else
      {

        outlined consume of Data?(v46, v45);

        outlined consume of Data?(v44, v43);
        v54 = v48;
        v55 = v47;
      }

      outlined consume of Data?(v54, v55);
      v2 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v56 = *(v0 + 328);
    v57 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    *(v0 + 480) = v57;
    v58 = *(v57 + 16);
    *(v0 + 488) = v58;
    if (!v58)
    {

      v83 = *(v0 + 384);
      v82 = *(v0 + 392);
      v85 = *(v0 + 352);
      v84 = *(v0 + 360);
      v87 = *(v0 + 320);
      v86 = *(v0 + 328);
      v88 = *(v0 + 312);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      outlined consume of Data?(v83, v82);
      outlined consume of Data?(v83, v82);
      outlined consume of Data?(v85, v84);
      (*(v87 + 8))(v86, v88);
      goto LABEL_30;
    }

    v59 = *(v0 + 224);
    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    v62 = *(v61 + 16);
    v61 += 16;
    v63 = *(v61 + 64);
    *(v0 + 556) = v63;
    *(v0 + 496) = *(v61 + 56);
    *(v0 + 504) = v62;
    *(v0 + 520) = v2;
    *(v0 + 512) = 0;
    v64 = *(v0 + 256);
    v65 = *(v0 + 240);
    v66 = *(v0 + 248);
    v62(v60, v57 + ((v63 + 32) & ~v63), *(v0 + 264));
    v67 = v59[4];
    __swift_project_boxed_opaque_existential_1Tm(v59, v59[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v68 = Locale.identifier.getter();
    v70 = v69;
    *(v0 + 528) = v69;
    (*(v66 + 8))(v64, v65);
    v71 = swift_task_alloc();
    *(v0 + 536) = v71;
    *v71 = v0;
    v71[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v72 = *(v0 + 280);
    v73 = *(v0 + 232);

    specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v72, v73, v68, v70);
  }

  else
  {
    *(v0 + 440) = v12;
    *(v0 + 448) = v2;
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 224);
    v24 = *(v0 + 272) + 16;
    (*(v0 + 432))(*(v0 + 288), *(v0 + 408) + ((*(v0 + 552) + 32) & ~*(v0 + 552)) + *(v0 + 424) * v12, *(v0 + 264));
    v25 = v23[4];
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v26 = Locale.identifier.getter();
    v28 = v27;
    *(v0 + 456) = v27;
    (*(v21 + 8))(v20, v22);
    v29 = swift_task_alloc();
    *(v0 + 464) = v29;
    *v29 = v0;
    v29[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v30 = *(v0 + 288);
    v31 = *(v0 + 232);

    specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(v30, v31, v26, v28);
  }
}

void *specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v1 = *(v0 + 544);
  result = *(v0 + 520);
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 520);
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, *(v0 + 520));
    v6 = result;
    if (*(v1 + 16))
    {
LABEL_5:
      if ((v6[3] >> 1) - v6[2] >= v3)
      {
        v7 = *(v0 + 544);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = v6[2];
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          v6[2] = v10;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v12 = *(v0 + 544);

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v13 = *(v0 + 512) + 1;
  if (v13 == *(v0 + 488))
  {
    v14 = *(v0 + 480);

    v16 = *(v0 + 384);
    v15 = *(v0 + 392);
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 312);
    outlined consume of Data?(*(v0 + 368), *(v0 + 376));
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v18, v17);
    (*(v20 + 8))(v19, v21);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v25 = *(v0 + 296);
    v24 = *(v0 + 304);
    v27 = *(v0 + 280);
    v26 = *(v0 + 288);
    v28 = *(v0 + 256);

    v29 = *(v0 + 8);

    return v29(v6);
  }

  else
  {
    *(v0 + 520) = v6;
    *(v0 + 512) = v13;
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 272) + 16;
    (*(v0 + 504))(*(v0 + 280), *(v0 + 480) + ((*(v0 + 556) + 32) & ~*(v0 + 556)) + *(v0 + 496) * v13, *(v0 + 264));
    v35 = v33[4];
    __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v36 = Locale.identifier.getter();
    v38 = v37;
    *(v0 + 528) = v37;
    (*(v32 + 8))(v30, v31);
    v39 = swift_task_alloc();
    *(v0 + 536) = v39;
    *v39 = v0;
    v39[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v40 = *(v0 + 280);
    v41 = *(v0 + 232);

    return specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v40, v41, v36, v38);
  }
}

uint64_t specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v6 = dispatch thunk of CandidateSuggestion.context.getter();
  v8 = v7;
  v0[12] = v6;
  v12 = (v3 + *v3);
  v9 = v3[1];
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:);

  return (v12)(v0 + 6, v6, v8);
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  if (*(v0 + 72))
  {
    outlined init with take of Any((v0 + 48), (v0 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_1AD90;
    outlined init with take of Any((v0 + 16), v1 + 2);
  }

  else
  {
    outlined destroy of SpeakableString?(v0 + 48, &_sypSgMd, &_sypSgMR);
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t lazy protocol witness table accessor for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriSuggestionsFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t outlined init with copy of Decodable & Encodable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of CandidateSuggestion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CandidateSuggestion(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

  return closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

  return closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(a1, a2, v7, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

BOOL InformationSuggestionsResolvableParameter.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InformationSuggestionsResolvableParameter.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InformationSuggestionsResolvableParameter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InformationSuggestionsResolvableParameter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestionsResolvableParameter@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestionsResolvableParameter, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t SolarEventResolver.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0xD000000000000010;
  *(v2 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(a1, v2 + 16);
  return v2;
}

uint64_t SolarEventResolver.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0xD000000000000010;
  *(v1 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(a1, v1 + 16);
  return v1;
}

uint64_t SolarEventResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SolarEventResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(SolarEventResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = SolarEventResolver.resolveParameter()();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SolarEventResolver.resolveParameter()()
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v22);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  dispatch thunk of Clock.getCurrentTime()();
  Date.init(timeIntervalSinceReferenceDate:)();
  v15 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 104))(v5, enum case for Calendar.Component.hour(_:), v1);
  v16 = Calendar.component(_:from:)();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v17 = swift_allocObject();
  v18 = v17;
  v19 = 0x657369726E7573;
  if ((v16 - 6) < 0xC)
  {
    v19 = 0x7465736E7573;
  }

  v20 = 0xE700000000000000;
  if ((v16 - 6) < 0xC)
  {
    v20 = 0xE600000000000000;
  }

  *(v17 + 16) = xmmword_1AD90;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = v19;
  *(v17 + 40) = v20;
  (*(v6 + 8))(v9, v23);
  (*(v10 + 8))(v13, v22);
  return v18;
}

uint64_t SolarEventResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t SolarEventResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance SolarEventResolver()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);

  return v1;
}

uint64_t specialized SolarEventResolver.resolveParameter(date:calendar:)()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Calendar.Component.hour(_:), v0);
  v5 = Calendar.component(_:from:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AD90;
  v7 = 0x657369726E7573;
  if ((v5 - 6) < 0xC)
  {
    v7 = 0x7465736E7573;
  }

  v8 = 0xE700000000000000;
  *(result + 56) = &type metadata for String;
  if ((v5 - 6) < 0xC)
  {
    v8 = 0xE600000000000000;
  }

  *(result + 32) = v7;
  *(result + 40) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter()
{
  result = lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter;
  if (!lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SolarEventResolver and conformance SolarEventResolver(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SolarEventResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SuggestionsLogger.suggestions.unsafeMutableAddressor()
{
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static SuggestionsLogger.suggestions);
}

uint64_t one-time initialization function for suggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SuggestionsLogger.suggestions);
  __swift_project_value_buffer(v0, static SuggestionsLogger.suggestions);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static SuggestionsLogger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static SuggestionsLogger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
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

uint64_t INInformationUseCaseUtterance.toDialog(dialogProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 displayString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 spokenString];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a1[3] = type metadata accessor for SpeakableString();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return SpeakableString.init(print:speak:)();
}

uint64_t protocol witness for DialogParameterProvider.toDialog(dialogProvider:) in conformance INInformationUseCaseUtterance@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 displayString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v3 spokenString];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a1[3] = type metadata accessor for SpeakableString();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return SpeakableString.init(print:speak:)();
}

uint64_t *SuggestionConstants.kOwnerInformation.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  return &static SuggestionConstants.kOwnerInformation;
}

uint64_t static SuggestionConstants.intentMatchForUseCase(intentMatches:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for INInformationUseCaseIntent();
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return SiriSuggestions.IntentMatch.init(intentType:matcher:)();
}

uint64_t one-time initialization function for kOwnerInformation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for DomainOwner();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = DomainOwner.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *SuggestionConstants.kOwnerMaps.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwnerMaps != -1)
  {
    swift_once();
  }

  return &static SuggestionConstants.kOwnerMaps;
}

uint64_t static SuggestionConstants.kOwnerInformation.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t static SuggestionConstants.intentQueryMatchesInformationUseCaseIntent@Sendable (_:intentMatches:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O6IntentOSgMd, _s18SiriSuggestionsKit0aB0O6IntentOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SiriSuggestions.Intent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  SiriSuggestions.IntentQuery.hydratedIntent.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of SiriSuggestions.Intent?(v6);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  (*(v8 + 32))(v14, v6, v7);
  (*(v8 + 16))(v12, v14, v7);
  if ((*(v8 + 88))(v12, v7) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v17 = *(v8 + 8);
    v17(v14, v7);
    v17(v12, v7);
    goto LABEL_8;
  }

  (*(v8 + 96))(v12, v7);
  v15 = *v12;
  type metadata accessor for INInformationUseCaseIntent();
  if (!swift_dynamicCastClass())
  {

    (*(v8 + 8))(v14, v7);
    goto LABEL_8;
  }

  v16 = a2();

  (*(v8 + 8))(v14, v7);
  return v16 & 1;
}

uint64_t sub_BE60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined destroy of SiriSuggestions.Intent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O6IntentOSgMd, _s18SiriSuggestionsKit0aB0O6IntentOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AppBundleIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 > 3u)
  {
    if (a1 == 6)
    {
      v4 = 0x6C7070612E6D6F63;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 != 2)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000016;
    if (!a1)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR, &_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = v10 - v12;
  result = specialized Sequence._copySequenceContents(initializing:)(&v43, &v4[2 * v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    v4[2] = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = v4[2];
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = *(result + 56) + 16 * v21;
  v28 = *v27;
  v29 = *(v27 + 8);

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = v4[3];
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v13;
  }

  v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = v38[3] >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[2 * v13 + 4];
    *v33 = v28;
    *(v33 + 8) = v29;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = *(result + 56) + ((v2 << 10) | (16 * v36));
    v28 = *v37;
    v29 = *(v37 + 8);

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      v4[2] = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  v4[2] = v13;
LABEL_13:
  result = outlined consume of [String : (InformationSuggestion, [String : ResolvableParameter])].Iterator._Variant();
  *v1 = v4;
  return result;
}

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

uint64_t one-time initialization function for kOwner()
{
  v0 = type metadata accessor for DomainOwner();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = DomainOwner.init(_:)();
  static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner = result;
  return result;
}

uint64_t *InformationSuggestionsPluginOwnerDefinitionFactory.kOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }

  return &static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner;
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner.getter()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DialogDetails();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = static SuggestionConstants.kOwnerInformation;
  v0[5] = type metadata accessor for DomainOwner();
  v0[6] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v5 = v0[24];

  return v7(v0 + 2);
}

{
  v1 = v0 + 7;
  v2 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5Clock_pMd, &_s18SiriSuggestionsKit5Clock_pMR);
  v3 = dispatch thunk of SuggestionOwnerDefinitionBuilder.getEntity<A>(entityType:)();
  if (!v3)
  {
    goto LABEL_5;
  }

  if (!*(v3 + 16))
  {

LABEL_5:
    v0[11] = 0;
    *v1 = 0u;
    *(v0 + 9) = 0u;
    goto LABEL_6;
  }

  outlined init with copy of CandidateSuggestion(v3 + 32, (v0 + 7));

LABEL_6:
  v4 = 0;
  v5 = v0[27];
  v25 = v0[28];
  v24 = enum case for DialogDetails.bespokeDialog(_:);
  v22 = (v5 + 8);
  v23 = (v5 + 104);
  v26 = v0;
  v32 = v0 + 12;
  do
  {
    v6 = v0[28];
    v29 = v0[26];
    v30 = v0[25];
    v31 = v0[30];
    v7 = &outlined read-only object #0 of static InformationSuggestion.allCases.getter + v4++;
    v8 = v7[32];
    v28 = specialized static InformationSuggestionsPluginOwnerDefinitionFactory.enabledLocales(for:)(v8);
    type metadata accessor for INInformationUseCaseIntent();
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
    v27 = InformationSuggestion.rawValue.getter(v8);
    v10 = v9;
    _StringGuts.grow(_:)(25);

    v11._countAndFlagsBits = v27;
    v11._object = v10;
    String.append(_:)(v11);

    v12 = type metadata accessor for SuggestionOverrideDialog();
    v13 = swift_allocObject();
    *(v13 + 16) = 0xD000000000000017;
    *(v13 + 24) = 0x800000000001C330;
    *(v13 + 32) = 0xD000000000000010;
    *(v13 + 40) = 0x800000000001C0A0;
    *(v13 + 48) = 1;
    *(v13 + 56) = 0xD000000000000017;
    *(v13 + 64) = 0x800000000001C330;
    *(v13 + 72) = 0xD000000000000010;
    *(v13 + 80) = 0x800000000001C0A0;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0xD000000000000017;
    *(v13 + 104) = 0x800000000001C330;
    *(v13 + 112) = 0x7470697263736564;
    *(v13 + 120) = 0xEB000000006E6F69;
    *(v13 + 128) = 0;
    *(v25 + 24) = v12;
    *(v25 + 32) = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SuggestionOverrideDialog and conformance SuggestionOverrideDialog, v14, type metadata accessor for SuggestionOverrideDialog);
    *v6 = v13;
    (*v23)(v6, v24, v29);
    v15 = swift_task_alloc();
    *(v15 + 16) = v8;
    *(v15 + 24) = v32;
    *(v15 + 32) = v28;
    *(v15 + 40) = v30;
    *(v15 + 48) = v1;
    swift_bridgeObjectRetain_n();
    dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

    v0 = v26;

    (*v22)(v6, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  while (v4 != 25);
  v16 = v26[30];
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AD90;
  outlined init with copy of CandidateSuggestion((v26 + 17), v17 + 32);
  v26[22] = v17;
  type metadata accessor for InfoServerSuggestionDefinitionFactory();
  v18 = swift_task_alloc();
  v26[31] = v18;
  *v18 = v26;
  v18[1] = static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v20 = v26[23];
  v19 = v26[24];

  return static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(v20, v19);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  specialized Array.append<A>(contentsOf:)(*(v0 + 256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v3 = *(v0 + 176);
  outlined destroy of SpeakableString?(v0 + 56, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(v2 + 240) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = [*(v0 + 24) exampleUtterance];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v2[3] = type metadata accessor for INInformationUseCaseUtterance();
    *v2 = v3;
    v4 = enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v4 = enum case for IntentParameter.ignore(_:);
  }

  v5 = type metadata accessor for IntentParameter();
  (*(*(v5 - 8) + 104))(v2, v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t InformationSuggestion.rawValue.getter(char a1)
{
  result = 0x6165536C61636F6CLL;
  switch(a1)
  {
    case 1:
    case 11:
    case 13:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 5:
    case 19:
    case 21:
      result = 0xD000000000000015;
      break;
    case 6:
    case 10:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      return result;
    case 14:
      result = 1937204590;
      break;
    case 15:
    case 16:
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
    case 23:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t InformationSuggestion.catIdentifier.getter(char a1)
{
  _StringGuts.grow(_:)(25);

  v2._countAndFlagsBits = InformationSuggestion.rawValue.getter(a1);
  String.append(_:)(v2);

  return 0xD000000000000017;
}

uint64_t SuggestionOverrideDialog.__allocating_init(catId:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x800000000001C0A0;
  *(v4 + 48) = 1;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = 0xD000000000000010;
  *(v4 + 80) = 0x800000000001C0A0;
  *(v4 + 88) = 0;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 112) = 0x7470697263736564;
  *(v4 + 120) = 0xEB000000006E6F69;
  *(v4 + 128) = 0;
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a4;
  *&v143 = a3;
  v134 = a2;
  v8 = v152;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMd, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v130 = &v124 - v11;
  v12 = type metadata accessor for SiriSuggestions.IntentMatch();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  __chkstk_darwin(v12);
  v16 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v124 - v19);
  v138 = a1;
  outlined init with copy of Decodable & Encodable & Sendable(a1, v164);
  v21 = *v165;
  v144 = *&v165[8];
  __swift_project_boxed_opaque_existential_1Tm(v164, *v165);
  if (one-time initialization token for signals != -1)
  {
LABEL_46:
    swift_once();
  }

  v22 = static InformationSuggestionSignals.signals;
  v23 = *(&dword_10 + static InformationSuggestionSignals.signals);
  v127 = a6;
  v131 = v13;
  v132 = v12;
  v125 = v16;
  v129 = v20;
  if (v23)
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v134);
    if (v25)
    {
      v26 = *(*&stru_20.segname[v22 + 16] + 8 * v24);
    }
  }

  *&v162 = v21;
  *(v8 + 176) = v144;
  __swift_allocate_boxed_opaque_existential_0Tm(&v161);
  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:)();

  a6 = v162;
  *&v142 = v163;
  *&v141 = __swift_project_boxed_opaque_existential_1Tm(&v161, v162);
  *&v144 = &v124;
  v27 = *(a6 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v141);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static SuggestionConstants.paramUtteranceOverride.getter();
  v21 = v31;
  v32 = static SuggestionConstants.paramUtteranceOverride.getter();
  v34 = v33;
  v35 = type metadata accessor for FromContextResolver();
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = v34;
  v36[4] = &async function pointer to closure #1 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v36[5] = 0;
  v136 = v35;
  *&v159 = v35;
  v135 = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type FromContextResolver and conformance FromContextResolver, 255, type metadata accessor for FromContextResolver);
  *(&v159 + 1) = v135;
  *&v158 = v36;
  v37 = type metadata accessor for ResolvableParameter();
  static SuggestionConstants.paramUtteranceOverride.getter();
  outlined init with copy of CandidateSuggestion(v143, v155);
  v126 = v37;
  ResolvableParameter.__allocating_init(typeIdentifier:required:intentTransformer:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  v38 = *(v27 + 8);
  v13 = (v27 + 8);
  v38(v30, a6);
  outlined destroy of SpeakableString?(&v158, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  if (one-time initialization token for serverParameterMapping != -1)
  {
    swift_once();
  }

  v39 = static InformationSuggestion.serverParameterMapping;
  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v134), (v41 & 1) != 0))
  {
    v42 = *(*&stru_20.segname[v39 + 16] + 8 * v40);
  }

  else
  {
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v44 = 0;
  v137 = v43;
  v45 = *(v43 + 64);
  v133 = v43 + 64;
  v46 = 1 << *(v43 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v8 = v47 & v45;
  v12 = (v46 + 63) >> 6;
  v20 = v136;
  if ((v47 & v45) != 0)
  {
    while (1)
    {
      v48 = v44;
LABEL_19:
      v49 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v50 = v49 | (v48 << 6);
      v51 = *(v137 + 56);
      v52 = (*(v137 + 48) + 16 * v50);
      v53 = v52[1];
      *&v143 = *v52;
      v139 = v53;
      a6 = *(v51 + 8 * v50);
      v16 = v138[3];
      *&v142 = v138[5];
      *&v140 = __swift_project_boxed_opaque_existential_1Tm(v138, v16);
      *&v144 = &v124;
      *&v141 = *(v16 - 1);
      v54 = *(v141 + 64);
      __chkstk_darwin(v140);
      v13 = &v124 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);

      v56 = ResolvableParameter.typeIdentifier.getter();
      v58 = v57;
      v59 = swift_allocObject();
      v59[2] = v56;
      v59[3] = v58;
      v59[4] = &async function pointer to closure #2 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
      v59[5] = 0;
      *v165 = v20;
      *&v165[8] = v135;
      v164[0] = v59;
      v21 = v139;
      SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

      (*(v141 + 8))(v13, v16);
      outlined destroy of SpeakableString?(v164, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v48 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v48 >= v12)
    {
      break;
    }

    v8 = *(v133 + 8 * v48);
    ++v44;
    if (v8)
    {
      v44 = v48;
      goto LABEL_19;
    }
  }

  v60 = v138[5];
  v144 = *(v138 + 3);
  __swift_project_boxed_opaque_existential_1Tm(v138, v144);
  *v165 = v144;
  *&v165[16] = v60;
  __swift_allocate_boxed_opaque_existential_0Tm(v164);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();
  v61 = *&v165[16];
  v143 = *v165;
  *&v144 = __swift_project_boxed_opaque_existential_1Tm(v164, *v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v62 = type metadata accessor for DeviceType();
  v63 = *(v62 - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  v142 = xmmword_1B560;
  *(v66 + 16) = xmmword_1B560;
  v67 = v66 + v65;
  v68 = *(v63 + 104);
  v68(v67, enum case for DeviceType.iPhone(_:), v62);
  v68(v67 + v64, enum case for DeviceType.iPad(_:), v62);
  v68(v67 + 2 * v64, enum case for DeviceType.mac(_:), v62);
  v162 = v143;
  v163 = v61;
  __swift_allocate_boxed_opaque_existential_0Tm(&v161);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  v69 = v163;
  v144 = v162;
  __swift_project_boxed_opaque_existential_1Tm(&v161, v162);
  v70 = InformationSuggestion.rawValue.getter(v134);
  v72 = v71;
  v159 = v144;
  v160 = v69;
  __swift_allocate_boxed_opaque_existential_0Tm(&v158);
  *&v143 = v70;
  dispatch thunk of SuggestionDetailsBuilder.loggingIdentifier(_:)();
  *&v144 = v72;

  v73 = v160;
  v141 = v159;
  __swift_project_boxed_opaque_existential_1Tm(&v158, v159);
  v156 = v141;
  v157 = v73;
  __swift_allocate_boxed_opaque_existential_0Tm(v155);
  dispatch thunk of SuggestionDetailsBuilder.requiresNetworkConnection()();
  v74 = v157;
  v141 = v156;
  __swift_project_boxed_opaque_existential_1Tm(v155, v156);
  v153 = v141;
  v154 = v74;
  __swift_allocate_boxed_opaque_existential_0Tm(v152);
  dispatch thunk of SuggestionDetailsBuilder.templateRoot(_:)();
  v75 = v154;
  v141 = v153;
  __swift_project_boxed_opaque_existential_1Tm(v152, v153);
  v150 = v141;
  v151 = v75;
  __swift_allocate_boxed_opaque_existential_0Tm(v149);
  dispatch thunk of SuggestionDetailsBuilder.exampleUtteranceDialogId(_:)();
  v76 = v151;
  v140 = v150;
  *&v141 = __swift_project_boxed_opaque_existential_1Tm(v149, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v77 = type metadata accessor for DeliveryVehicle();
  v78 = *(v77 - 8);
  v79 = *(v78 + 72);
  v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v142;
  v82 = v81 + v80;
  v83 = *(v78 + 104);
  v83(v82, enum case for DeliveryVehicle.siriHelp(_:), v77);
  v83(v82 + v79, enum case for DeliveryVehicle.siriAutoComplete(_:), v77);
  v83(v82 + 2 * v79, enum case for DeliveryVehicle.assistantSuggestions(_:), v77);
  v147 = v140;
  v148 = v76;
  __swift_allocate_boxed_opaque_existential_0Tm(v146);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v84 = v147;
  v85 = __swift_project_boxed_opaque_existential_1Tm(v146, v147);
  v86 = *(v84 - 8);
  v87 = *(v86 + 64);
  v88 = __chkstk_darwin(v85);
  v90 = &v124 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v142 = v88;
  if (v134 > 0xDu)
  {
    if (v134 - 15 < 2)
    {
      v92 = 0x800000000001BD50;
      v93 = 0xD000000000000011;
      goto LABEL_32;
    }

    if (v134 == 14)
    {
      v91 = 0x7377656E2E65;
      goto LABEL_31;
    }

LABEL_30:
    v91 = 0x697269732E65;
    goto LABEL_31;
  }

  if (v134 < 2u)
  {
    v92 = 0x800000000001BD10;
    v93 = 0xD000000000000014;
    goto LABEL_32;
  }

  if (v134 - 12 >= 2)
  {
    goto LABEL_30;
  }

  v91 = 0x7370614D2E65;
LABEL_31:
  v92 = v91 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  v93 = 0x6C7070612E6D6F63;
LABEL_32:
  v94 = v129;
  *v129 = v93;
  v94[1] = v92;
  v95 = enum case for Image.appIcon(_:);
  v96 = type metadata accessor for Image();
  v97 = *(v96 - 8);
  (*(v97 + 104))(v94, v95, v96);
  (*(v97 + 56))(v94, 0, 1, v96);
  v98 = type metadata accessor for StaticIconUrlProvider();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  v101 = StaticIconUrlProvider.init(icon:)();
  v145[3] = v98;
  v145[4] = &protocol witness table for StaticIconUrlProvider;
  v145[0] = v101;
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  (*(v86 + 8))(v90, v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v145);
  __swift_destroy_boxed_opaque_existential_1Tm(v146);
  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  __swift_destroy_boxed_opaque_existential_1Tm(v155);
  __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  __swift_destroy_boxed_opaque_existential_1Tm(&v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  v102 = v130;
  InformationSuggestion.intentMatcher.getter(v134, v130);
  v104 = v131;
  v103 = v132;
  if ((*(v131 + 6))(v102, 1, v132) == 1)
  {
    outlined destroy of SpeakableString?(v102, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMd, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMR);
  }

  else
  {
    v105 = v125;
    (*(v104 + 4))(v125, v102, v103);
    v106 = v138[3];
    v107 = v138[5];
    v108 = __swift_project_boxed_opaque_existential_1Tm(v138, v106);
    v109 = *(v106 - 8);
    v110 = *(v109 + 64);
    __chkstk_darwin(v108);
    v112 = &v124 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v165 = v103;
    *&v165[8] = &protocol witness table for SiriSuggestions.IntentMatch;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v164);
    (*(v104 + 2))(boxed_opaque_existential_0Tm, v105, v103);
    dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
    (*(v109 + 8))(v112, v106);
    (*(v104 + 1))(v105, v103);
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
  }

  if (v143 == 0xD000000000000011 && 0x800000000001BF40 == v144)
  {
  }

  else
  {
    v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v114 & 1) == 0)
    {
      return result;
    }
  }

  outlined init with copy of Decodable & Encodable & Sendable(v138, v164);
  v116 = *v165;
  v117 = __swift_project_boxed_opaque_existential_1Tm(v164, *v165);
  v118 = *(v116 - 8);
  v119 = *(v118 + 64);
  __chkstk_darwin(v117);
  v121 = &v124 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(v127, &v158, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
  if (v159)
  {
    outlined init with take of CandidateSuggestion(&v158, &v161);
  }

  else
  {
    static Clocks.getSystemClock()();
    if (v159)
    {
      outlined destroy of SpeakableString?(&v158, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
    }
  }

  v122 = type metadata accessor for SolarEventResolver();
  v123 = swift_allocObject();
  *(v123 + 56) = 0xD000000000000010;
  *(v123 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(&v161, v123 + 16);
  *&v162 = v122;
  *(&v162 + 1) = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SolarEventResolver and conformance SolarEventResolver, 255, type metadata accessor for SolarEventResolver);
  *&v161 = v123;
  ResolvableParameter.__allocating_init(typeIdentifier:required:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v118 + 8))(v121, v116);
  outlined destroy of SpeakableString?(&v161, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  return __swift_destroy_boxed_opaque_existential_1Tm(v164);
}

unint64_t InformationSuggestion.parameters.getter(char a1)
{
  if (one-time initialization token for serverParameterMapping != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = static InformationSuggestion.serverParameterMapping;
  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) != 0))
  {
    v4 = *(*&stru_20.segname[v1 + 16] + 8 * v2);
  }

  else
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }
}

uint64_t closure #2 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  v1[1] = 0u;
  return (*(v0 + 8))();
}

unint64_t InformationSuggestion.appBundleIdentifier.getter(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 - 15 >= 2)
  {
    v2 = 0x6C7070612E6D6F63;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a1 < 2u)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 <= 0xDu)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t InformationSuggestion.intentMatcher.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (one-time initialization token for serverParameterMapping != -1)
  {
    swift_once();
  }

  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    type metadata accessor for INInformationUseCaseIntent();
    static SiriSuggestions.IntentType.inIntent(intentType:)();
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in InformationSuggestion.intentMatcher.getter;
    *(v8 + 24) = v7;
    SiriSuggestions.IntentMatch.init(intentType:matcher:)();
    v9 = type metadata accessor for SiriSuggestions.IntentMatch();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  else
  {
    v11 = type metadata accessor for SiriSuggestions.IntentMatch();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = specialized Array.append<A>(contentsOf:)(v12))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InformationSuggestionsPluginOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver;

  return static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppBundleIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AppBundleIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AppBundleIdentifier@<X0>(unint64_t *a1@<X8>)
{
  result = AppBundleIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for serverWeatherParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AD90;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  outlined init with copy of CandidateSuggestion(v10, v9);
  v3 = type metadata accessor for ResolvableParameter();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  *(inited + 48) = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = outlined destroy of SpeakableString?(inited + 32, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  static InformationSuggestion.serverWeatherParams = v7;
  return result;
}

uint64_t one-time initialization function for serverSportsScoreParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v41 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B570;
  *(inited + 32) = 0xD000000000000010;
  v48 = inited + 32;
  *(inited + 40) = 0x800000000001C660;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000017;
  *(v9 + 24) = 0x800000000001C5C0;
  v50 = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v53 = v1[2];
  v51 = v1 + 2;
  v53(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v10 = type metadata accessor for ResolvableParameter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v14 = v1[1];
  v52 = v1 + 1;
  v14(v7, v0);
  v49 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 48) = v13;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000000001C6A0;
  v46 = "firstTeamVocLocation";
  v15 = swift_allocObject();
  v47 = 0xD00000000000001BLL;
  *(v15 + 16) = 0xD00000000000001BLL;
  *(v15 + 24) = 0x800000000001C600;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v53(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v16 = *(v10 + 48);
  v17 = *(v10 + 52);
  swift_allocObject();
  v18 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v14(v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 72) = v18;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000000001C6E0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0x6D616E5F6D616574;
  *(v19 + 24) = 0xEF656D616E5F3065;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v45 = closure #1 in static InformationSuggestion.containsParameterForLogging();
  Transformer.init(transform:)();
  v44 = v5;
  v42 = v0;
  v53(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  swift_allocObject();
  v22 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v23 = v49;
  v49(v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 96) = v22;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000000001C720;
  v43 = "team_name1_voc_teamName";
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD000000000000017;
  *(v24 + 24) = 0x800000000001C740;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v25 = v44;
  v26 = v42;
  v53(v44, v7, v42);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v27 = *(v10 + 48);
  v28 = *(v10 + 52);
  swift_allocObject();
  v29 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v23(v7, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 120) = v29;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000000001C780;
  v43 = "team_name1_voc_teamLocation";
  v30 = swift_allocObject();
  *(v30 + 16) = v47;
  *(v30 + 24) = 0x800000000001C7A0;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v53(v25, v7, v26);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v31 = *(v10 + 48);
  v32 = *(v10 + 52);
  swift_allocObject();
  v33 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v34 = v49;
  v49(v7, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 144) = v33;
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x800000000001C7E0;
  v47 = "secondTeamFullName";
  v35 = swift_allocObject();
  *(v35 + 16) = 0x6D616E5F6D616574;
  *(v35 + 24) = 0xEF656D616E5F3165;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  Transformer.init(transform:)();
  v53(v25, v7, v26);
  outlined init with copy of CandidateSuggestion(v55, v54);
  v36 = *(v10 + 48);
  v37 = *(v10 + 52);
  swift_allocObject();
  v38 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v34(v7, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(inited + 168) = v38;
  v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.serverSportsScoreParams = v39;
  return result;
}

uint64_t one-time initialization function for teamScheduleParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B560;
  *(inited + 32) = 0x4E636F566D616574;
  v28 = inited + 32;
  *(inited + 40) = 0xEB00000000656D61;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000017;
  *(v9 + 24) = 0x800000000001C5C0;
  v25[1] = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v29 = v1[2];
  v29(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v31, v30);
  v10 = type metadata accessor for ResolvableParameter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v26 = v1[1];
  v26(v7, v0);
  v27 = v1 + 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  *(inited + 48) = v13;
  *(inited + 56) = 0x4C636F566D616574;
  *(inited + 64) = 0xEF6E6F697461636FLL;
  v25[0] = "team_name0_voc_teamLocation";
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD00000000000001BLL;
  *(v14 + 24) = 0x800000000001C600;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v29(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v31, v30);
  v15 = *(v10 + 48);
  v16 = *(v10 + 52);
  swift_allocObject();
  v17 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v18 = v26;
  v26(v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  *(inited + 72) = v17;
  strcpy((inited + 80), "teamFullName");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v19 = swift_allocObject();
  *(v19 + 16) = 0x6D616E5F6D616574;
  *(v19 + 24) = 0xEF656D616E5F3065;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  v29(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v31, v30);
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  swift_allocObject();
  v22 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v18(v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  *(inited + 96) = v22;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.teamScheduleParams = v23;
  return result;
}

uint64_t one-time initialization function for leagueNameParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B580;
  *(inited + 32) = 0x6F5665756761656CLL;
  v26 = inited + 32;
  *(inited + 40) = 0xED0000656D614E63;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD00000000000001ALL;
  *(v9 + 24) = 0x800000000001C540;
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v25 = v1[2];
  v23 = v0;
  v25(v5, v7, v0);
  outlined init with copy of CandidateSuggestion(v28, v27);
  v10 = type metadata accessor for ResolvableParameter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v14 = v1[1];
  v14(v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(inited + 48) = v13;
  *(inited + 56) = 0x614E65756761656CLL;
  *(inited + 64) = 0xEA0000000000656DLL;
  v24 = "league_name_name";
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000010;
  *(v15 + 24) = 0x800000000001C580;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  v16 = v23;
  v25(v5, v7, v23);
  outlined init with copy of CandidateSuggestion(v28, v27);
  v17 = *(v10 + 48);
  v18 = *(v10 + 52);
  swift_allocObject();
  v19 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v14(v7, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(inited + 72) = v19;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.leagueNameParams = v20;
  return result;
}

uint64_t one-time initialization function for serverMappings()
{
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v203 = *(v201 - 8);
  v0 = *(v203 + 64);
  v1 = __chkstk_darwin(v201);
  v195 = &v190 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v194 = &v190 - v3;
  v202 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v4 = *(v202 - 8);
  base_props = v4->base_props;
  __chkstk_darwin(v202);
  v198 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v199 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v200 = (&v190 - v13);
  v14 = __chkstk_darwin(v12);
  v196 = &v190 - v15;
  v16 = __chkstk_darwin(v14);
  v197 = &v190 - v17;
  v18 = __chkstk_darwin(v16);
  v192 = &v190 - v19;
  v20 = __chkstk_darwin(v18);
  v193 = &v190 - v21;
  __chkstk_darwin(v20);
  v23 = &v190 - v22;
  v212 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v207 = v8;
  v205 = *(v8 + 104);
  v206 = (v8 + 104);
  v205(v23, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.weatherGetWeather(_:), v7);
  if (one-time initialization token for serverWeatherParams != -1)
  {
    swift_once();
  }

  v24 = static InformationSuggestion.serverWeatherParams;
  v210 = 0;
  v211 = 0xE000000000000000;

  v208 = v7;
  _print_unlocked<A, B>(_:_:)();
  v26 = v210;
  v25 = v211;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v212;
  v209[0] = v212;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_75;
  }

  v34 = v29;
  if (v28[3] < v33)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
    v28 = v209[0];
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
    if ((v34 & 1) == (v36 & 1))
    {
      v30 = v35;
      goto LABEL_8;
    }

    goto LABEL_104;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
LABEL_8:
    v37 = v208;
    v212 = v28;
    if ((v34 & 1) == 0)
    {
      v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v28[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v28[6] + 16 * v30);
      *v39 = 0x72656874616577;
      v39[1] = 0xE700000000000000;
      *(v28[7] + 8 * v30) = v38;
      v40 = v28[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        __break(1u);
        goto LABEL_87;
      }

      v28[2] = v42;
    }

    v43 = v28[7];
    v44 = *(v43 + 8 * v30);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v43 + 8 * v30);
    *(v43 + 8 * v30) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, v24, v26, v25, v45);

    *(v43 + 8 * v30) = v209[0];
    swift_endAccess();

    v46 = *(v207 + 8);
    v207 += 8;
    v204 = v46;
    v46(v23, v37);
    (v4[1].base_meths)(v198, enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.weatherWithLocation(_:), v202);
    v24 = static InformationSuggestion.serverWeatherParams;
    v210 = 0;
    v211 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v212;
    v209[0] = v212;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
    v49 = v47[2];
    v50 = (v48 & 1) == 0;
    v51 = v49 + v50;
    if (!__OFADD__(v49, v50))
    {
      v34 = v48;
      if (v47[3] < v51)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v26);
        v47 = v209[0];
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
        if ((v34 & 1) != (v53 & 1))
        {
          goto LABEL_104;
        }

        v30 = v52;
        v212 = v47;
        if (v34)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v26)
      {
        v212 = v47;
        if (v48)
        {
          goto LABEL_20;
        }

LABEL_18:
        v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
        v47[(v30 >> 6) + 8] |= 1 << v30;
        v55 = (v47[6] + 16 * v30);
        *v55 = 0x72656874616577;
        v55[1] = 0xE700000000000000;
        *(v47[7] + 8 * v30) = v54;
        v56 = v47[2];
        v41 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v41)
        {
          __break(1u);
LABEL_90:
          specialized _NativeDictionary.copy()();
          v62 = v209[0];
          goto LABEL_26;
        }

        v47[2] = v57;
LABEL_20:
        v58 = v47[7];
        v59 = *(v58 + 8 * v30);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v209[0] = *(v58 + 8 * v30);
        *(v58 + 8 * v30) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, v24, v23, v25, v60);

        *(v58 + 8 * v30) = v209[0];
        swift_endAccess();

        (*&v4->ivar_base_size)(v198, v202);
        v4 = v193;
        v205(v193, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetTeamScore(_:), v37);
        if (one-time initialization token for serverSportsScoreParams == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_76;
      }

LABEL_87:
      specialized _NativeDictionary.copy()();
      v47 = v209[0];
      v212 = v209[0];
      if (v34)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_21:
    v34 = 0x7374726F7073;
    v24 = static InformationSuggestion.serverSportsScoreParams;
    v210 = 0;
    v211 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v212;
    v209[0] = v212;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x7374726F7073, 0xE600000000000000);
    v64 = v62[2];
    v65 = (v63 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_30;
    }

    v26 = v63;
    if (v62[3] >= v66)
    {
      if (v61)
      {
        goto LABEL_26;
      }

      goto LABEL_90;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v61);
    v62 = v209[0];
    v67 = specialized __RawDictionaryStorage.find<A>(_:)(0x7374726F7073, 0xE600000000000000);
    if ((v26 & 1) != (v68 & 1))
    {
      goto LABEL_104;
    }

    v30 = v67;
LABEL_26:
    v69 = v208;
    v212 = v62;
    if ((v26 & 1) == 0)
    {
      v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v62[(v30 >> 6) + 8] |= 1 << v30;
      v71 = (v62[6] + 16 * v30);
      *v71 = v34;
      v71[1] = 0xE600000000000000;
      *(v62[7] + 8 * v30) = v70;
      v72 = v62[2];
      v41 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v41)
      {
        __break(1u);
LABEL_92:
        specialized _NativeDictionary.copy()();
        v78 = v209[0];
        goto LABEL_35;
      }

      v62[2] = v73;
    }

    v26 = v4;
    v74 = v62[7];
    v75 = *(v74 + 8 * v30);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v74 + 8 * v30);
    *(v74 + 8 * v30) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, v24, v23, v25, v76);

    *(v74 + 8 * v30) = v209[0];
    swift_endAccess();

    v204(v26, v69);
    v4 = v192;
    v205(v192, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetTeamSchedule(_:), v69);
    if (one-time initialization token for teamScheduleParams != -1)
    {
      goto LABEL_78;
    }

LABEL_30:
    v24 = static InformationSuggestion.teamScheduleParams;
    v210 = 0;
    v211 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v212;
    v209[0] = v212;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    v80 = v78[2];
    v81 = (v79 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      __break(1u);
LABEL_80:
      swift_once();
      goto LABEL_39;
    }

    v26 = v79;
    if (v78[3] >= v82)
    {
      if (v77)
      {
        goto LABEL_35;
      }

      goto LABEL_92;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, v77);
    v78 = v209[0];
    v83 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    if ((v26 & 1) != (v84 & 1))
    {
      goto LABEL_104;
    }

    v30 = v83;
LABEL_35:
    v85 = v208;
    v212 = v78;
    if ((v26 & 1) == 0)
    {
      v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v78[(v30 >> 6) + 8] |= 1 << v30;
      v87 = (v78[6] + 16 * v30);
      *v87 = v34;
      v87[1] = 0xE600000000000000;
      *(v78[7] + 8 * v30) = v86;
      v88 = v78[2];
      v41 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v41)
      {
        __break(1u);
LABEL_94:
        specialized _NativeDictionary.copy()();
        v94 = v209[0];
        goto LABEL_44;
      }

      v78[2] = v89;
    }

    v26 = v4;
    v90 = v78[7];
    v91 = *(v90 + 8 * v30);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v90 + 8 * v30);
    *(v90 + 8 * v30) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(21, v24, v23, v25, v92);

    *(v90 + 8 * v30) = v209[0];
    swift_endAccess();

    v204(v26, v85);
    v205(v197, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetLeagueScore(_:), v85);
    if (one-time initialization token for leagueNameParams != -1)
    {
      goto LABEL_80;
    }

LABEL_39:
    v4 = &InfoServerSuggestionAssetProvider;
    v24 = static InformationSuggestion.leagueNameParams;
    v210 = 0;
    v211 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v93 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v212;
    v209[0] = v212;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    v96 = v94[2];
    v97 = (v95 & 1) == 0;
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v26 = v95;
    if (v94[3] >= v98)
    {
      if (v93)
      {
        goto LABEL_44;
      }

      goto LABEL_94;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, v93);
    v94 = v209[0];
    v99 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    if ((v26 & 1) != (v100 & 1))
    {
      goto LABEL_104;
    }

    v30 = v99;
LABEL_44:
    v101 = v208;
    v212 = v94;
    if ((v26 & 1) == 0)
    {
      v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v94[(v30 >> 6) + 8] |= 1 << v30;
      v103 = (v94[6] + 16 * v30);
      *v103 = v34;
      v103[1] = 0xE600000000000000;
      *(v94[7] + 8 * v30) = v102;
      v104 = v94[2];
      v41 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v41)
      {
        __break(1u);
LABEL_96:
        specialized _NativeDictionary.copy()();
        v110 = v209[0];
        goto LABEL_52;
      }

      v94[2] = v105;
    }

    v106 = v94[7];
    v107 = *(v106 + 8 * v30);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v106 + 8 * v30);
    *(v106 + 8 * v30) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(22, v24, v23, v25, v108);

    *(v106 + 8 * v30) = v209[0];
    swift_endAccess();

    v204(v197, v101);
    v205(v196, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetLeagueSchedule(_:), v101);
    v24 = *&v4[44].flags;
    v210 = 0;
    v211 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v109 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v212;
    v209[0] = v212;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    v112 = v110[2];
    v113 = (v111 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_82;
    }

    LOBYTE(v30) = v111;
    if (v110[3] >= v114)
    {
      if (v109)
      {
        goto LABEL_52;
      }

      goto LABEL_96;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, v109);
    v110 = v209[0];
    v115 = specialized __RawDictionaryStorage.find<A>(_:)(v34, 0xE600000000000000);
    if ((v30 & 1) != (v116 & 1))
    {
      goto LABEL_104;
    }

    v26 = v115;
LABEL_52:
    v117 = v208;
    v212 = v110;
    if ((v30 & 1) == 0)
    {
      v118 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v110[(v26 >> 6) + 8] |= 1 << v26;
      v119 = (v110[6] + 16 * v26);
      *v119 = v34;
      v119[1] = 0xE600000000000000;
      *(v110[7] + 8 * v26) = v118;
      v120 = v110[2];
      v41 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v41)
      {
        __break(1u);
LABEL_98:
        specialized _NativeDictionary.copy()();
        v142 = v209[0];
        v212 = v209[0];
        if (v30)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v110[2] = v121;
    }

    v122 = v110[7];
    v123 = *(v122 + 8 * v26);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v122 + 8 * v26);
    *(v122 + 8 * v26) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(23, v24, v23, v25, v124);

    *(v122 + 8 * v26) = v209[0];
    swift_endAccess();

    v204(v196, v117);
    v205(v200, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.stocksGetSymbolQuote(_:), v117);
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    v192 = (inited + 32);
    *(inited + 16) = xmmword_1B580;
    *(inited + 40) = 0xE400000000000000;
    v193 = "descriptionCallback";
    v126 = swift_allocObject();
    *(v126 + 16) = 1701667182;
    *(v126 + 24) = 0xE400000000000000;
    v202 = type metadata accessor for INInformationUseCaseIntent();
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v128 = v194;
    v197 = v127;
    Transformer.init(transform:)();
    v129 = v203;
    v130 = (v203 + 16);
    v198 = *(v203 + 16);
    v131 = v195;
    v132 = v201;
    (v198)(v195, v128, v201);
    outlined init with copy of CandidateSuggestion(&v210, v209);
    v133 = type metadata accessor for ResolvableParameter();
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    v136 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v137 = *(v129 + 8);
    (v137)(v128, v132);
    __swift_destroy_boxed_opaque_existential_1Tm(&v210);
    *(inited + 48) = v136;
    strcpy((inited + 56), "instrumentType");
    *(inited + 71) = -18;
    v138 = swift_allocObject();
    *(v138 + 16) = 0x656D757274736E69;
    *(v138 + 24) = 0xEF657079745F746ELL;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    static SuggestionTransformers.removeParameterFromLogging()();
    v30 = v201;
    v196 = v130;
    (v198)(v131, v128, v201);
    outlined init with copy of CandidateSuggestion(&v210, v209);
    v139 = *(v133 + 48);
    v140 = *(v133 + 52);
    v191 = v133;
    swift_allocObject();
    v141 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v203 = v129 + 8;
    v193 = v137;
    (v137)(v128, v30);
    v26 = 0x736B636F7473;
    __swift_destroy_boxed_opaque_existential_1Tm(&v210);
    *(inited + 72) = v141;
    v117 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
    swift_arrayDestroy();
    v210 = 0;
    v211 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v212;
    v209[0] = v212;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x736B636F7473, 0xE600000000000000);
    v144 = v142[2];
    v145 = (v143 & 1) == 0;
    v146 = v144 + v145;
    if (__OFADD__(v144, v145))
    {
      goto LABEL_83;
    }

    LOBYTE(v30) = v143;
    if (v142[3] < v146)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v146, v24);
      v142 = v209[0];
      v147 = specialized __RawDictionaryStorage.find<A>(_:)(0x736B636F7473, 0xE600000000000000);
      if ((v30 & 1) != (v148 & 1))
      {
        goto LABEL_104;
      }

      v34 = v147;
      v212 = v142;
      if (v30)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_98;
    }

    v212 = v142;
    if (v143)
    {
      goto LABEL_64;
    }

LABEL_62:
    v149 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    v142[(v34 >> 6) + 8] |= 1 << v34;
    v150 = (v142[6] + 16 * v34);
    *v150 = v26;
    v150[1] = 0xE600000000000000;
    *(v142[7] + 8 * v34) = v149;
    v151 = v142[2];
    v41 = __OFADD__(v151, 1);
    v152 = v151 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_101;
    }

    v142[2] = v152;
LABEL_64:
    v153 = v142[7];
    v154 = *(v153 + 8 * v34);
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v153 + 8 * v34);
    *(v153 + 8 * v34) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(24, v117, v23, v25, v155);

    *(v153 + 8 * v34) = v209[0];
    swift_endAccess();

    v156 = v208;
    v204(v200, v208);
    v205(v199, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.geoGetDirections(_:), v156);
    v157 = swift_initStackObject();
    *(v157 + 32) = 0x73736572646461;
    v205 = (v157 + 32);
    *(v157 + 16) = xmmword_1B560;
    *(v157 + 40) = 0xE700000000000000;
    v192 = "stocksGetQuoteName";
    v158 = swift_allocObject();
    *(v158 + 16) = 0x73736572646461;
    *(v158 + 24) = 0xE700000000000000;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    v206 = closure #1 in static InformationSuggestion.containsParameterForLogging();
    v159 = v194;
    Transformer.init(transform:)();
    v160 = v195;
    v200 = v4;
    v4 = v201;
    v161 = v198;
    (v198)(v195, v159, v201);
    outlined init with copy of CandidateSuggestion(&v210, v209);
    v26 = v191;
    v162 = *(v191 + 48);
    v163 = *(v191 + 52);
    swift_allocObject();
    v164 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    (v193)(v159, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v210);
    *(v157 + 48) = v164;
    *(v157 + 56) = 0x6C616E6F73726570;
    *(v157 + 64) = 0xE800000000000000;
    v192 = "geoGetDirectionsAddress";
    v165 = swift_allocObject();
    *(v165 + 16) = 0x6C616E6F73726570;
    *(v165 + 24) = 0xE800000000000000;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    Transformer.init(transform:)();
    (v161)(v160, v159, v4);
    outlined init with copy of CandidateSuggestion(&v210, v209);
    v166 = *(v26 + 48);
    v167 = *(v26 + 52);
    swift_allocObject();
    v168 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v169 = v193;
    (v193)(v159, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v210);
    *(v157 + 72) = v168;
    strcpy((v157 + 80), "localBusiness");
    *(v157 + 94) = -4864;
    v192 = "geoGetDirectionsPersonal";
    v170 = swift_allocObject();
    strcpy((v170 + 16), "localBusiness");
    *(v170 + 30) = -4864;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    Transformer.init(transform:)();
    (v198)(v160, v159, v4);
    outlined init with copy of CandidateSuggestion(&v210, v209);
    v171 = *(v26 + 48);
    v172 = *(v26 + 52);
    swift_allocObject();
    v173 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    (v169)(v159, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v210);
    *(v157 + 96) = v173;
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(v157);
    swift_setDeallocating();
    swift_arrayDestroy();
    v210 = 0;
    v211 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v23 = v210;
    v25 = v211;
    swift_beginAccess();

    v174 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v212;
    v209[0] = v212;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(1936744813, 0xE400000000000000);
    v176 = *(v30 + 16);
    v177 = (v175 & 1) == 0;
    v178 = v176 + v177;
    if (!__OFADD__(v176, v177))
    {
      break;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    specialized _NativeDictionary.copy()();
    v28 = v209[0];
  }

  LOBYTE(v26) = v175;
  if (*(v30 + 24) >= v178)
  {
    if (v174)
    {
      v181 = v208;
      if ((v175 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

LABEL_101:
    specialized _NativeDictionary.copy()();
    v30 = v209[0];
    v181 = v208;
    if ((v26 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_73:
    v186 = *(v30 + 56);
    v187 = *(v186 + 8 * v34);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v209[0] = *(v186 + 8 * v34);
    *(v186 + 8 * v34) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(12, v24, v23, v25, v188);

    *(v186 + 8 * v34) = v209[0];
    swift_endAccess();

    result = (v204)(v199, v181);
    static InformationSuggestion.serverMappings = v30;
    return result;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v178, v174);
  v30 = v209[0];
  v179 = specialized __RawDictionaryStorage.find<A>(_:)(1936744813, 0xE400000000000000);
  if ((v26 & 1) != (v180 & 1))
  {
    goto LABEL_104;
  }

  v34 = v179;
  v181 = v208;
  if (v26)
  {
    goto LABEL_73;
  }

LABEL_71:
  v182 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *(v30 + 8 * (v34 >> 6) + 64) |= 1 << v34;
  v183 = (*(v30 + 48) + 16 * v34);
  *v183 = 1936744813;
  v183[1] = 0xE400000000000000;
  *(*(v30 + 56) + 8 * v34) = v182;
  v184 = *(v30 + 16);
  v41 = __OFADD__(v184, 1);
  v185 = v184 + 1;
  if (!v41)
  {
    *(v30 + 16) = v185;
    goto LABEL_73;
  }

  __break(1u);
LABEL_104:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

int *one-time initialization function for serverParameterMapping()
{
  result = closure #1 in variable initialization expression of static InformationSuggestion.serverParameterMapping();
  static InformationSuggestion.serverParameterMapping = result;
  return result;
}

void *closure #1 in variable initialization expression of static InformationSuggestion.serverParameterMapping()
{
  v5 = _swiftEmptyArrayStorage;
  if (one-time initialization token for serverMappings != -1)
  {
    swift_once();
  }

  specialized Sequence.forEach(_:)(v0);

  if (v5[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, 1, &v4);

  return v4;
}

uint64_t InformationSuggestion.ServerMappingBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:), 0, 0);
}

uint64_t closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)()
{
  v1 = [*(v0 + 24) parameters];
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = v1;
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_24:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
LABEL_25:

LABEL_26:
    v22 = *(v0 + 16);
    goto LABEL_27;
  }

LABEL_4:
  v5 = 0;
  v33 = v3 & 0xFFFFFFFFFFFFFF8;
  v34 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v34)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v6 identifier];
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v7;
    v11 = v3;
    v12 = *(v0 + 32);
    v35 = *(v0 + 40);
    v13 = v9;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v12 && v16 == v35)
    {
      break;
    }

    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v11;
    v7 = v10;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_25;
    }
  }

  v7 = v10;
LABEL_19:

  v21 = [v7 value];
  v22 = *(v0 + 16);
  if (v21)
  {
    v23 = v21;
    v24 = [v21 displayString];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v22[3] = &type metadata for String;
    *v22 = v25;
    v22[1] = v27;
    v28 = &enum case for IntentParameter.directAssignment(_:);
    goto LABEL_28;
  }

LABEL_27:
  v28 = &enum case for IntentParameter.ignore(_:);
LABEL_28:
  v29 = *v28;
  v30 = type metadata accessor for IntentParameter();
  (*(*(v30 - 8) + 104))(v22, v29, v30);
  v31 = *(v0 + 8);

  return v31();
}

uint64_t static InformationSuggestion.containsParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);

  return Transformer.init(transform:)();
}

uint64_t closure #1 in static InformationSuggestion.weatherLocationParameter()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static InformationSuggestion.weatherLocationParameter(), 0, 0);
}

uint64_t closure #1 in static InformationSuggestion.weatherLocationParameter()()
{
  v159 = v0;
  v1 = [v0[3] parameters];
  if (!v1)
  {
    v23 = v0[2];
    v24 = enum case for IntentParameter.ignore(_:);
    v25 = type metadata accessor for IntentParameter();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    goto LABEL_70;
  }

  v2 = v1;
  v156 = v0;
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_25:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_26:
    v154 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_4:
  v5 = 0;
  v154 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = [v7 identifier];
      if (v9)
      {
        break;
      }

LABEL_7:

      ++v6;
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [v8 value];
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = v14;
    v16 = [v14 displayString];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v154[2] + 1, 1, v154);
    }

    v21 = v154[2];
    v20 = v154[3];
    if (v21 >= v20 >> 1)
    {
      v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v154);
    }

    v154[2] = v21 + 1;
    v22 = &v154[4 * v21];
    v22[4] = v11;
    v22[5] = v13;
    v22[6] = v17;
    v22[7] = v153;
  }

  while (v5 != v4);
LABEL_27:

  if (v154[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v26 = &_swiftEmptyDictionarySingleton;
  }

  v158 = v26;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v154, 1, &v158);

  v27 = v158;
  v28 = type metadata accessor for DialogLocationAddress.Builder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  if (v27[2])
  {
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000000001C820);
    if (v32)
    {
      v33 = v0[15];
      v34 = (v27[7] + 16 * v31);
      v35 = *v34;
      v36 = v34[1];

      String.toSpeakableString.getter();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 1;
  }

  v38 = v0[15];
  v39 = type metadata accessor for SpeakableString();
  v40 = *(*(v39 - 8) + 56);
  v41 = 1;
  v40(v38, v37, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(_:)();

  outlined destroy of SpeakableString?(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000000001C840);
    if (v43)
    {
      v44 = v156[14];
      v45 = (v27[7] + 16 * v42);
      v46 = *v45;
      v47 = v45[1];

      String.toSpeakableString.getter();

      v41 = 0;
    }
  }

  v48 = v156[14];
  v49 = 1;
  v40(v48, v41, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeAreaCode(_:)();

  outlined destroy of SpeakableString?(v48, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972746E756F63, 0xE700000000000000);
    if (v51)
    {
      v52 = v156[13];
      v53 = (v27[7] + 16 * v50);
      v54 = *v53;
      v55 = v53[1];

      String.toSpeakableString.getter();

      v49 = 0;
    }
  }

  v56 = v156[13];
  v57 = 1;
  v40(v56, v49, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withCountry(_:)();

  outlined destroy of SpeakableString?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(0x5F7972746E756F63, 0xEC00000065646F63);
    if (v59)
    {
      v60 = v156[12];
      v61 = (v27[7] + 16 * v58);
      v62 = *v61;
      v63 = v61[1];

      String.toSpeakableString.getter();

      v57 = 0;
    }
  }

  v64 = v156[12];
  v65 = 1;
  v40(v64, v57, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withCountryCode(_:)();

  outlined destroy of SpeakableString?(v64, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000000001C860);
    if (v67)
    {
      v68 = v156[11];
      v69 = (v27[7] + 16 * v66);
      v70 = *v69;
      v71 = v69[1];

      String.toSpeakableString.getter();

      v65 = 0;
    }
  }

  v72 = v156[11];
  v73 = 1;
  v40(v72, v65, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of SpeakableString?(v72, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(0x7974696C61636F6CLL, 0xE800000000000000);
    if (v75)
    {
      v76 = v156[10];
      v77 = (v27[7] + 16 * v74);
      v78 = *v77;
      v79 = v77[1];

      String.toSpeakableString.getter();

      v73 = 0;
    }
  }

  v80 = v156[10];
  v81 = 1;
  v40(v80, v73, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withLocality(_:)();

  outlined destroy of SpeakableString?(v80, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v82 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
    if (v83)
    {
      v84 = v156[9];
      v85 = (v27[7] + 16 * v82);
      v86 = *v85;
      v87 = v85[1];

      String.toSpeakableString.getter();

      v81 = 0;
    }
  }

  v88 = v156[9];
  v89 = 1;
  v40(v88, v81, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withName(_:)();

  outlined destroy of SpeakableString?(v88, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(0x635F6C6174736F70, 0xEB0000000065646FLL);
    if (v91)
    {
      v92 = v156[8];
      v93 = (v27[7] + 16 * v90);
      v94 = *v93;
      v95 = v93[1];

      String.toSpeakableString.getter();

      v89 = 0;
    }
  }

  v96 = v156[8];
  v97 = 1;
  v40(v96, v89, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withPostCode(_:)();

  outlined destroy of SpeakableString?(v96, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v98 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x800000000001C880);
    if (v99)
    {
      v100 = v156[7];
      v101 = (v27[7] + 16 * v98);
      v102 = *v101;
      v103 = v101[1];

      String.toSpeakableString.getter();

      v97 = 0;
    }
  }

  v104 = v156[7];
  v105 = 1;
  v40(v104, v97, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withSubAdministrativeArea(_:)();

  outlined destroy of SpeakableString?(v104, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v106 = specialized __RawDictionaryStorage.find<A>(_:)(0x61636F6C5F627573, 0xEC0000007974696CLL);
    if (v107)
    {
      v108 = v156[6];
      v109 = (v27[7] + 16 * v106);
      v110 = *v109;
      v111 = v109[1];

      String.toSpeakableString.getter();

      v105 = 0;
    }
  }

  v112 = v156[6];
  v113 = 1;
  v40(v112, v105, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withSubLocality(_:)();

  outlined destroy of SpeakableString?(v112, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    v114 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000001C8A0);
    if (v115)
    {
      v116 = v156[5];
      v117 = (v27[7] + 16 * v114);
      v118 = *v117;
      v119 = v117[1];

      String.toSpeakableString.getter();

      v113 = 0;
    }
  }

  v120 = v156[5];
  v40(v120, v113, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withSubThoroughfare(_:)();

  outlined destroy of SpeakableString?(v120, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2] && (v121 = specialized __RawDictionaryStorage.find<A>(_:)(0x6867756F726F6874, 0xEC00000065726166), (v122 & 1) != 0))
  {
    v123 = v156[4];
    v124 = (v27[7] + 16 * v121);
    v125 = *v124;
    v126 = v124[1];

    String.toSpeakableString.getter();

    v127 = 0;
  }

  else
  {

    v127 = 1;
  }

  v128 = v156[4];
  v129 = v156[2];
  v40(v128, v127, 1, v39);
  dispatch thunk of DialogLocationAddress.Builder.withThoroughfare(_:)();

  outlined destroy of SpeakableString?(v128, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogLocationAddress.Builder.build()();

  v130 = type metadata accessor for DialogLocationValue.Builder();
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  swift_allocObject();
  DialogLocationValue.Builder.init()();

  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v133 = dispatch thunk of DialogLocationValue.Builder.build()();

  v134 = type metadata accessor for DialogLocation.Builder();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1B590;
  *(v137 + 32) = v133;

  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v138 = dispatch thunk of DialogLocation.Builder.build()();

  v129[3] = type metadata accessor for DialogLocation();
  v0 = v156;

  *v129 = v138;
  v139 = enum case for IntentParameter.directAssignment(_:);
  v140 = type metadata accessor for IntentParameter();
  (*(*(v140 - 8) + 104))(v129, v139, v140);
LABEL_70:
  v142 = v0[14];
  v141 = v0[15];
  v144 = v0[12];
  v143 = v0[13];
  v146 = v0[10];
  v145 = v0[11];
  v148 = v0[8];
  v147 = v0[9];
  v150 = v0[6];
  v149 = v0[7];
  v155 = v0[5];
  v157 = v0[4];

  v151 = v0[1];

  return v151();
}

_OWORD *closure #1 in static InformationSuggestion.containsParameterForLogging()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v7);
  outlined init with copy of Any?(v7, v4, &_sypSgMd, &_sypSgMR);
  if (v4[3])
  {
    outlined destroy of SpeakableString?(v4, &_sypSgMd, &_sypSgMR);
    LOBYTE(v5) = 1;
    *(&v6 + 1) = &type metadata for Bool;
    outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    return outlined init with take of Any(&v5, a2);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    *(a2 + 24) = &type metadata for Bool;
    *a2 = 0;
    result = outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    if (*(&v6 + 1))
    {
      return outlined destroy of SpeakableString?(&v5, &_sypSgMd, &_sypSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in InformationSuggestion.intentMatcher.getter(void *a1, char a2)
{
  v3 = specialized static InformationSuggestion.suggestionMatched(_:)(a1);
  if (v3 == 25)
  {
    v4 = 0;
  }

  else
  {
    v5 = InformationSuggestion.rawValue.getter(v3);
    v7 = v6;
    if (v5 == InformationSuggestion.rawValue.getter(a2) && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppBundleIdentifier(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestion@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized InformationSuggestion.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InformationSuggestion@<X0>(unint64_t *a1@<X8>)
{
  result = InformationSuggestion.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t one-time initialization function for calendar()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.calendar = result;
  return result;
}

uint64_t one-time initialization function for deviceLocked()
{
  type metadata accessor for Signal();
  result = static Signal.DeviceLocked.getter();
  static InformationSuggestionSignals.deviceLocked = result;
  return result;
}

uint64_t one-time initialization function for fallback()
{
  type metadata accessor for Signal();
  result = static Signal.Fallback.getter();
  static InformationSuggestionSignals.fallback = result;
  return result;
}

uint64_t one-time initialization function for homescreen()
{
  type metadata accessor for Signal();
  result = static Signal.HomeScreen.getter();
  static InformationSuggestionSignals.homescreen = result;
  return result;
}

uint64_t one-time initialization function for safari()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.safari = result;
  return result;
}

uint64_t one-time initialization function for weather()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.weather = result;
  return result;
}

uint64_t one-time initialization function for maps(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for Signal();
  v4 = type metadata accessor for CoreSignalTypes();
  v7[3] = v4;
  v7[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v7);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v4);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  *a3 = result;
  return result;
}

uint64_t one-time initialization function for signals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_Say0dF3Kit6SignalCGtGMd, &_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_Say0dF3Kit6SignalCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B5A0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B5B0;
  if (one-time initialization token for deviceLocked != -1)
  {
    swift_once();
  }

  *(v1 + 32) = static InformationSuggestionSignals.deviceLocked;
  v2 = one-time initialization token for fallback;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = static InformationSuggestionSignals.fallback;
  v3 = one-time initialization token for homescreen;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static InformationSuggestionSignals.homescreen;
  *(v1 + 48) = static InformationSuggestionSignals.homescreen;
  v5 = one-time initialization token for safari;

  if (v5 != -1)
  {
    swift_once();
    v4 = static InformationSuggestionSignals.homescreen;
  }

  v6 = static InformationSuggestionSignals.safari;
  *(v1 + 56) = static InformationSuggestionSignals.safari;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B5C0;
  v8 = static InformationSuggestionSignals.deviceLocked;
  v9 = static InformationSuggestionSignals.fallback;
  *(v7 + 32) = static InformationSuggestionSignals.deviceLocked;
  *(v7 + 40) = v9;
  *(v7 + 48) = v4;
  *(inited + 56) = v7;
  *(inited + 64) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B5C0;
  *(v10 + 32) = v9;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(inited + 72) = v10;
  *(inited + 80) = 3;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B5D0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v4;
  *(inited + 88) = v11;
  *(inited + 96) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B5B0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v4;
  *(v12 + 56) = v6;
  *(inited + 104) = v12;
  *(inited + 112) = 5;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B5C0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = v4;
  *(inited + 120) = v13;
  *(inited + 128) = 6;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B5D0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v4;
  *(inited + 136) = v14;
  *(inited + 144) = 7;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B5C0;
  v16 = one-time initialization token for calendar;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static InformationSuggestionSignals.fallback;
  *(v15 + 32) = static InformationSuggestionSignals.calendar;
  *(v15 + 40) = v17;
  v18 = static InformationSuggestionSignals.homescreen;
  *(v15 + 48) = static InformationSuggestionSignals.homescreen;
  *(inited + 152) = v15;
  *(inited + 160) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B5B0;
  v20 = static InformationSuggestionSignals.deviceLocked;
  *(v19 + 32) = static InformationSuggestionSignals.deviceLocked;
  *(v19 + 40) = v17;
  v21 = static InformationSuggestionSignals.safari;
  *(v19 + 48) = v18;
  *(v19 + 56) = v21;
  *(inited + 168) = v19;
  *(inited + 176) = 9;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B5B0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v17;
  *(v22 + 48) = v18;
  *(v22 + 56) = v21;
  *(inited + 184) = v22;
  *(inited + 192) = 10;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B5E0;
  *(v23 + 32) = v20;
  *(v23 + 40) = v17;
  *(v23 + 48) = v18;
  v24 = one-time initialization token for maps;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  if (v24 != -1)
  {
    swift_once();
    v21 = static InformationSuggestionSignals.safari;
    v20 = static InformationSuggestionSignals.deviceLocked;
    v17 = static InformationSuggestionSignals.fallback;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  v25 = static InformationSuggestionSignals.maps;
  *(v23 + 56) = static InformationSuggestionSignals.maps;
  *(v23 + 64) = v21;
  *(inited + 200) = v23;
  *(inited + 208) = 11;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B5B0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v17;
  *(v26 + 48) = v18;
  *(v26 + 56) = v21;
  *(inited + 216) = v26;
  *(inited + 224) = 12;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B5B0;
  *(v27 + 32) = v20;
  *(v27 + 40) = v17;
  *(v27 + 48) = v18;
  *(v27 + 56) = v25;
  *(inited + 232) = v27;
  *(inited + 240) = 13;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B5D0;
  *(v28 + 32) = v17;
  *(v28 + 40) = v18;
  *(inited + 248) = v28;
  *(inited + 256) = 14;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B5B0;
  *(v29 + 32) = v20;
  *(v29 + 40) = v17;
  *(v29 + 48) = v18;
  v30 = one-time initialization token for news;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v30 != -1)
  {
    swift_once();
    v20 = static InformationSuggestionSignals.deviceLocked;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  *(v29 + 56) = static InformationSuggestionSignals.news;
  *(inited + 264) = v29;
  *(inited + 272) = 15;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B5C0;
  *(v31 + 32) = v20;
  *(v31 + 40) = v18;
  v32 = one-time initialization token for weather;

  if (v32 != -1)
  {
    swift_once();
    v20 = static InformationSuggestionSignals.deviceLocked;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  v33 = static InformationSuggestionSignals.weather;
  *(v31 + 48) = static InformationSuggestionSignals.weather;
  *(inited + 280) = v31;
  *(inited + 288) = 16;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B5F0;
  *(v34 + 32) = v33;
  *(v34 + 40) = v20;
  v35 = static InformationSuggestionSignals.fallback;
  *(v34 + 48) = v18;
  *(v34 + 56) = v35;
  v36 = static InformationSuggestionSignals.calendar;
  *(v34 + 64) = static InformationSuggestionSignals.safari;
  *(v34 + 72) = v36;
  *(inited + 296) = v34;
  *(inited + 304) = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1B5C0;
  *(v37 + 32) = v20;
  *(v37 + 40) = v18;
  *(v37 + 48) = v35;
  *(inited + 312) = v37;
  *(inited + 320) = 18;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B5C0;
  *(v38 + 32) = v20;
  *(v38 + 40) = v18;
  *(v38 + 48) = v35;
  *(inited + 328) = v38;
  *(inited + 336) = 19;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B5C0;
  *(v39 + 32) = v20;
  *(v39 + 40) = v18;
  *(v39 + 48) = v35;
  *(inited + 344) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC32SiriInformationSuggestionsPlugin0D10SuggestionO_Say0cE3Kit6SignalCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriInformationSuggestionsPlugin0B10SuggestionO_Say0aC3Kit6SignalCGtMd, &_s32SiriInformationSuggestionsPlugin0B10SuggestionO_Say0aC3Kit6SignalCGtMR);
  result = swift_arrayDestroy();
  static InformationSuggestionSignals.signals = v40;
  return result;
}

uint64_t SuggestionOverrideDialog.init(catId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000001C0A0;
  *(v2 + 48) = 1;
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 72) = 0xD000000000000010;
  *(v2 + 80) = 0x800000000001C0A0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  *(v2 + 112) = 0x7470697263736564;
  *(v2 + 120) = 0xEB000000006E6F69;
  *(v2 + 128) = 0;
  swift_bridgeObjectRetain_n();
  return v2;
}

void __swiftcall SuggestionOverrideDialog.OverrideDialogCallback.init(templateIdentifier:sectionIdentifier:isSpeakable:)(SiriInformationSuggestionsPlugin::SuggestionOverrideDialog::OverrideDialogCallback *__return_ptr retstr, Swift::String templateIdentifier, Swift::String sectionIdentifier, Swift::Bool isSpeakable)
{
  retstr->templateIdentifier = templateIdentifier;
  retstr->sectionIdentifier = sectionIdentifier;
  retstr->isSpeakable = isSpeakable;
}

uint64_t SuggestionOverrideDialog.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.getDisplayedDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v6 = *(v1 + 72);
  v5 = *(v1 + 80);
  v7 = *(v1 + 88);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.getDescriptionCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  v7 = *(v1 + 128);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getTemplateLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  URL.init(string:)();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.templateIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return _swift_task_switch(SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  v1 = *(v0 + 168);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v3 = dispatch thunk of DialogProperties.getParameters()();
  v4 = static SuggestionConstants.paramUtteranceOverride.getter();
  if (!*(v3 + 16))
  {

    goto LABEL_8;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v6, v0 + 56);

  type metadata accessor for INInformationUseCaseUtterance();
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 152);
    if (*(*(v0 + 192) + 32))
    {
      v10 = [*(v0 + 152) spokenString];
      if (v10)
      {
LABEL_14:
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27 = *(v0 + 8);

        return v27(v24, v26);
      }

      v11 = [v9 displayString];
    }

    else
    {
      v11 = [*(v0 + 152) displayString];
    }

    v10 = v11;
    goto LABEL_14;
  }

LABEL_9:
  v12 = *(v0 + 192);
  v13 = *(v0 + 160);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  *(v0 + 88) = *v12;
  *(v0 + 104) = *(v12 + 16);
  *(v0 + 40) = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  *(v0 + 48) = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v16 = swift_allocObject();
  *(v0 + 16) = v16;
  v17 = *(v12 + 32);
  v18 = *(v12 + 16);
  *(v16 + 16) = *v12;
  *(v16 + 32) = v18;
  *(v16 + 48) = v17;
  outlined init with copy of String(v0 + 88, v0 + 120);
  outlined init with copy of String(v0 + 104, v0 + 136);
  v19 = async function pointer to dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)[1];
  v20 = swift_task_alloc();
  *(v0 + 200) = v20;
  *v20 = v0;
  v20[1] = SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  return dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(v0 + 16, v23, v21, v22, v14, v15);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[26];

  return v1();
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {

    return _swift_task_switch(SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to DialogCallback.getText(dialog:dialogProperties:environment:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback;

  return DialogCallback.getText(dialog:dialogProperties:environment:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(v4 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback;

  return SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 56);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for CATDialogProvider.sectionIdentifier.getter in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();

  return DialogIdProvider.sectionIdentifier.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();

  return DialogProvider.description.getter(a1, v2);
}

void *SuggestionOverrideDialog.deinit()
{
  v1 = v0[3];
  v2 = v0[5];

  v3 = v0[8];
  v4 = v0[10];

  v5 = v0[13];
  v6 = v0[15];

  return v0;
}

uint64_t SuggestionOverrideDialog.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[5];

  v3 = v0[8];
  v4 = v0[10];

  v5 = v0[13];
  v6 = v0[15];

  return _swift_deallocClassInstance(v0, 129, 7);
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_SDySS0dF3Kit19ResolvableParameterCGtGMd, &_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_SDySS0dF3Kit19ResolvableParameterCGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriInformationSuggestionsPlugin0B10SuggestionO_SDySS0aC3Kit19ResolvableParameterCGtMd, &_s32SiriInformationSuggestionsPlugin0B10SuggestionO_SDySS0aC3Kit19ResolvableParameterCGtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v41 = *v27;
      v28 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v41;
      *(v19 + 8) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
  v36 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_34;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 64;
  while (v13)
  {
    v22 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_17:
    v25 = v22 | (v9 << 6);
    v26 = *(*(v5 + 48) + v25);
    v27 = *(*(v5 + 56) + 8 * v25);
    if ((v36 & 1) == 0)
    {
    }

    v28 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v16 = Hasher._finalize()();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = (-1 << v18) & ~*(v15 + 8 * (v18 >> 6));
    if (v20)
    {
      v21 = __clz(__rbit64(v20)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v30 && (v29 & 1) != 0)
        {
          goto LABEL_37;
        }

        v31 = v19 == v30;
        if (v19 == v30)
        {
          v19 = 0;
        }

        v29 |= v31;
        v32 = *(v15 + 8 * v19);
      }

      while (v32 == -1);
      v21 = __clz(__rbit64(~v32)) + (v19 << 6);
    }

    *(v15 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v8 + 48) + v21) = v26;
    *(*(v8 + 56) + 8 * v21) = v27;
    ++*(v8 + 16);
  }

  v23 = v9;
  while (1)
  {
    v9 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      JUMPOUT(0x160B0);
    }

    if (v9 >= v14)
    {
      break;
    }

    v24 = v10[v9];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v13 = (v24 - 1) & v24;
      goto LABEL_17;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
LABEL_34:

    goto LABEL_35;
  }

  v3 = v35;
LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *(v25 + 8);
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = v24[7] + 16 * v13;
  *v29 = a1;
  *(v29 + 8) = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriSuggestionsKit19ResolvableParameterCGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit19ResolvableParameterCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}