uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = v4[3];
  v10 = v4[4];
  v11 = __swift_project_boxed_opaque_existential_1(v4, v9);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:));
  v17 = v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_19_4(v13);
  *v14 = v15;
  v14[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return v17(v8, v11, v2, v0, v6, v9, v7, v10);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(v4, v1, v2, v3);
}

void static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0;
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19_4(v5);
  *v6 = v7;
  v6[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);
  OUTLINED_FUNCTION_45();

  __asm { BR              X8 }
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  OUTLINED_FUNCTION_13_4();

  return v7(v2);
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_8();
  static AppIntentsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:dialogProvider:)(*(v0 + 24), *(v0 + 32), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void static AppIntentsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:dialogProvider:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_3_3();
  v82 = v7;
  v83 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_2();
  v84 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v78 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v75 - v17;
  v80 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_3_3();
  v77 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_5_2();
  v79 = v24 - v23;
  v25 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_3_3();
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_5_2();
  v33 = v32 - v31;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.appIntentAction.getter(v91);
  v94 = v91[0];
  v95 = v91[1];
  v96 = v92;
  v97 = v93;
  if (!*(&v91[0] + 1))
  {
    a3[3] = &type metadata for String;
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    return;
  }

  v81 = a3;
  v35 = *(&v92 + 1);
  type metadata accessor for ViewContext();
  v90 = ViewContext.__allocating_init()();
  (*(*a2 + 104))(v85, &v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit14DialogCallback_pMd, &_s18SiriSuggestionsKit14DialogCallback_pMR);
  v36 = swift_dynamicCast();
  p_ivar_base_size = (&AutoShortcutsSuggestionsOwnerDefinitionFactory + 8);
  v76 = v35;
  if (!v36)
  {
    *&v88 = 0;
    v86 = 0u;
    v87 = 0u;
    outlined destroy of CoreSignalTypes?(&v86, &_s25SiriLinkSuggestionsPlugin23AppIntentDialogCallbackVSgMd, &_s25SiriLinkSuggestionsPlugin23AppIntentDialogCallbackVSgMR);
LABEL_10:
    if (*(p_ivar_base_size + 432) != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.appIntentsSuggestions);
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v89 = v97;
    outlined init with copy of SuggestionAppIntent(&v86, v85);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    outlined destroy of CoreSignalTypes?(v91, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = p_ivar_base_size;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85[0] = v52;
      *v51 = 136315138;
      v53 = [v35 identifier];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v85);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_0, v48, v49, "Unable to get text from app intent for: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_11();
      p_ivar_base_size = v50;
      OUTLINED_FUNCTION_11();
    }

    v46 = v81;
    v45 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  static Locale.current.getter();
  v38 = AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(a1);
  v40 = v39;
  (*(v27 + 8))(v33, v25);
  outlined destroy of AppIntentDialogCallback(&v86);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    p_ivar_base_size = &AutoShortcutsSuggestionsOwnerDefinitionFactory.ivar_base_size;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  v42 = *(type metadata accessor for TemplatingSection() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 1) = xmmword_3EFC0;
  TemplatingText.init(text:speakableTextOverride:)();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v80);
  TemplatingSection.init(id:content:caption:spokenOnly:)();

  v46 = v81;
  p_ivar_base_size = (&AutoShortcutsSuggestionsOwnerDefinitionFactory + 8);
LABEL_15:
  if (*(p_ivar_base_size + 432) != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.appIntentsSuggestions);
  outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v91, &v86, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  outlined destroy of CoreSignalTypes?(v91, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *&v86 = swift_slowAlloc();
    *v61 = 136315394;
    v62 = [v76 identifier];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v86);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    v67 = v78;
    specialized Collection.first.getter(v45, &type metadata accessor for TemplatingSection, v78);

    v68 = type metadata accessor for TemplatingSection();
    if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
    {
      outlined destroy of CoreSignalTypes?(v67, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
      v69 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v71 = v79;
      TemplatingSection.content.getter();
      OUTLINED_FUNCTION_15(v68);
      (*(v72 + 8))(v67, v68);
      v69 = TemplatingText.text.getter();
      v70 = v73;
      (*(v77 + 8))(v71, v80);
    }

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v86);

    *(v61 + 14) = v74;
    _os_log_impl(&dword_0, v59, v60, "Using dialog for %s as: %s", v61, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v46 = v81;
  }

  else
  {
  }

  (*(v82 + 104))(v84, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v83);
  v46[3] = type metadata accessor for TemplatingResult();
  __swift_allocate_boxed_opaque_existential_1(v46);
  TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
  outlined destroy of CoreSignalTypes?(v91, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
}

uint64_t closure #2 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v94 = a4;
  v96 = a2;
  v6 = type metadata accessor for VersionedInvocation();
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v79 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for InvocationType();
  v10 = *(v90 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v90);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v89 = &v79 - v15;
  v16 = __chkstk_darwin(v14);
  v84 = (&v79 - v17);
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  __chkstk_darwin(v18);
  v21 = &v79 - v20;
  v95 = type metadata accessor for IntentType();
  v22 = *(v95 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v95);
  v92 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v91 = a1[5];
  v85 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v85);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AppIntentsSuggestionsOwnerDefinitionFactory.getAppIntentResolvers(linkClient:toolClient:)(a3, v94);
  static Resolvers.unionResolvers(type:resolvers:)();

  static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()();
  v30 = v90;
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of CoreSignalTypes?(v98, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  (*(v26 + 8))(v29, v25);
  v31 = a1[3];
  v96 = a1[5];
  v81 = a1;
  v94 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v94);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AppIntentFilter.builder()();
  v36 = v92;
  dispatch thunk of AppIntentFilter.Builder.build()();

  v37 = v95;
  (*(v22 + 104))(v36, enum case for IntentType.appIntent(_:), v95);
  dispatch thunk of SuggestionDetailsBuilder.intentIdentifier(_:)();
  (*(v22 + 8))(v36, v37);
  (*(v32 + 8))(v35, v31);
  result = static InvocationType.allCases.getter();
  v39 = result;
  v40 = 0;
  v94 = *(result + 16);
  v96 = v10 + 16;
  v92 = (v10 + 88);
  LODWORD(v91) = enum case for InvocationType.assistantTurn(_:);
  v95 = (v10 + 8);
  v80 = (v10 + 96);
  v83 = (v10 + 32);
  v85 = _swiftEmptyArrayStorage;
  v82 = v10;
  while (v94 != v40)
  {
    if (v40 >= *(v39 + 16))
    {
      __break(1u);
      return result;
    }

    v41 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v42 = v39;
    v43 = v39 + v41;
    v44 = v30;
    v45 = *(v10 + 72);
    v46 = *(v10 + 16);
    v47 = v21;
    v46(v21, v43 + v45 * v40, v44);
    v48 = v93;
    v46(v93, v47, v44);
    v49 = (*(v10 + 88))(v48, v44);
    if (v49 == v91)
    {
      (*v80)(v48, v44);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit18AssistantTurnStateO5state_AA18InvocationModalityO8modalitytMd, &_s18SiriSuggestionsKit18AssistantTurnStateO5state_AA18InvocationModalityO8modalitytMR) + 48);
      v52 = type metadata accessor for InvocationModality();
      (*(*(v52 - 8) + 8))(&v48[v51], v52);
      v53 = type metadata accessor for AssistantTurnState();
      (*(*(v53 - 8) + 8))(v48, v53);
      v54 = *v83;
      (*v83)(v84, v47, v44);
      v55 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v55;
      v98[0] = v55;
      v21 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 16) + 1, 1);
        v57 = v98[0];
      }

      v39 = v42;
      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        v57 = v98[0];
      }

      ++v40;
      *(v57 + 16) = v59 + 1;
      v85 = v57;
      v60 = v57 + v41 + v59 * v45;
      v30 = v90;
      result = v54(v60, v84, v90);
      v10 = v82;
    }

    else
    {
      v50 = *v95;
      (*v95)(v48, v44);
      result = v50(v47, v44);
      ++v40;
      v30 = v44;
      v21 = v47;
      v39 = v42;
    }
  }

  outlined init with copy of SiriHelpSuggestionDetailsBuilderExtension & SuggestionDetailsBuilder(v81, v98);
  v61 = v99;
  v92 = v100;
  v84 = __swift_project_boxed_opaque_existential_1(v98, v99);
  v93 = &v79;
  v91 = *(v61 - 8);
  v62 = *(v91 + 64);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v85[2];
  if (v64)
  {
    v81 = v61;
    v97 = _swiftEmptyArrayStorage;
    v65 = v85;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
    v66 = v97;
    v67 = v65 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v68 = *(v10 + 72);
    v69 = *(v10 + 16);
    v94 = (v88 + 32);
    v70 = v79;
    do
    {
      v71 = v89;
      v72 = v90;
      v69(v89, v67, v90);
      v69(v86, v71, v72);
      VersionedInvocation.init(invocationType:versions:)();
      (*v95)(v71, v72);
      v97 = v66;
      v74 = v66[2];
      v73 = v66[3];
      if (v74 >= v73 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1);
        v66 = v97;
      }

      v66[2] = v74 + 1;
      (*(v88 + 32))(v66 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v74, v70, v87);
      v67 += v68;
      --v64;
    }

    while (v64);

    v10 = v82;
    v30 = v90;
    v61 = v81;
  }

  else
  {

    v75 = *(v88 + 72);
    v76 = *(v88 + 80);
    v66 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, "0<");
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_3EFC0;
  (*(v10 + 104))(v89, enum case for InvocationType.siriHelp(_:), v30);
  VersionedInvocation.init(invocationType:versions:)();
  v97 = v66;
  specialized Array.append<A>(contentsOf:)(v77);
  v78 = v83;
  dispatch thunk of SuggestionDetailsBuilder.validForInvocationTypes(_:)();

  (*(v91 + 8))(v78, v61);
  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.getAppIntentResolvers(linkClient:toolClient:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_3EFC0;
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v9);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a2, v8);
  v5 = type metadata accessor for MetaDataSourcedAppIntentResolver();
  swift_allocObject();
  v6 = MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(v9, v8);
  *(v4 + 56) = v5;
  *(v4 + 64) = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(&lazy protocol witness table cache variable for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver, type metadata accessor for MetaDataSourcedAppIntentResolver);
  *(v4 + 32) = v6;
  return v4;
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14SuggestionsKit6IntentOAD0F9ParameterOGMd, &_s13SiriUtilities11TransformerVy0A14SuggestionsKit6IntentOAD0F9ParameterOGMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  type metadata accessor for Intent();
  type metadata accessor for IntentParameter();
  Transformer.init(transform:)();
  v5 = type metadata accessor for ResolvableParameter();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
}

double closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v30);
  if (swift_dynamicCast())
  {
    v32[0] = v26;
    v32[1] = v27;
    v32[2] = v28;
    v32[3] = v29;
    v4 = [*(&v28 + 1) identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *&v26 = v5;
    *(&v26 + 1) = v7;
    v8._countAndFlagsBits = 95;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = *(&v27 + 1);
    v9._object = v28;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 95;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = static AppIntentsSuggestionsOwnerDefinitionFactory.getParameterLoggingId(_:)(v32);
    String.append(_:)(v11);

    v12 = v26;
    *(a2 + 24) = &type metadata for String;
    outlined destroy of SuggestionAppIntent(v32);
    *a2 = v12;
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.appIntentsSuggestions);
    outlined init with copy of Any(a1, v32);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      outlined init with copy of Any(v32, &v26);
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(&v26, &v30, &_sypSgMd, &_sypSgMR);
      if (v31)
      {
        outlined init with take of Any(&v30, v24);
        outlined init with copy of Any(v24, v23);
        v19 = String.init<A>(describing:)();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_1(v24);
        outlined destroy of CoreSignalTypes?(&v26, &_sypSgMd, &_sypSgMR);
      }

      else
      {
        outlined destroy of CoreSignalTypes?(&v26, &_sypSgMd, &_sypSgMR);
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v15, v16, "Unable to get parameter of type AppIntentAction. found value of type: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t closure #2 in static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Intent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = *(v5 + 16);
  v30 = a1;
  v12(&v29 - v10, a1, v4);
  v13 = *(v5 + 88);
  if (v13(v11, v4) == enum case for Intent.appIntentV2(_:))
  {
    (*(v5 + 96))(v11, v4);
    v14 = *v11;
    v15 = *(v11 + 2);

    a2[3] = type metadata accessor for LNAction();
    *a2 = v14;
    v16 = enum case for IntentParameter.context(_:);
    v17 = type metadata accessor for IntentParameter();
    return (*(*(v17 - 8) + 104))(a2, v16, v17);
  }

  else
  {
    v29 = a2;
    v19 = v11;
    v20 = *(v5 + 8);
    v20(v19, v4);
    v12(v9, v30, v4);
    if (v13(v9, v4) == enum case for Intent.appIntent(_:))
    {
      (*(v5 + 96))(v9, v4);
      v21 = *v9;
      v22 = *(v9 + 2);

      v23 = type metadata accessor for LNAction();
      v24 = v29;
      v29[3] = v23;
      *v24 = v21;
      v25 = enum case for IntentParameter.context(_:);
      v26 = type metadata accessor for IntentParameter();
      return (*(*(v26 - 8) + 104))(v24, v25, v26);
    }

    else
    {
      v20(v9, v4);
      v27 = enum case for IntentParameter.ignore(_:);
      v28 = type metadata accessor for IntentParameter();
      return (*(*(v28 - 8) + 104))(v29, v27, v28);
    }
  }
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_15_0();
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v1 = v0[7];
  v2 = static LinkSuggestionsOwners.appIntentsOwner;
  v0[5] = type metadata accessor for DefaultOwner();
  OUTLINED_FUNCTION_0_8();
  v0[6] = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v3, v4);
  v0[2] = v2;

  v9 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v7 = v0[8];

  return v9(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  v3 = *(v1 + 80);
  v9 = *v0;
  *(v2 + 88) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[11];
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v4 = v3;
  v0[12] = refreshed;
  v5 = [objc_allocWithZone(LNMetadataProvider) init];
  v6 = [objc_allocWithZone(LNSuggestionsProvider) init];
  type metadata accessor for LinkRegistryObserver();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = LinkRegistryObserver.init(refreshableService:)(v7, v4);
  type metadata accessor for DefaultLinkClient();
  swift_allocObject();
  v9 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v5, v6, v8);
  v0[13] = v9;
  type metadata accessor for DefaultToolClient();
  swift_allocObject();
  v10 = DefaultToolClient.init()();
  v0[14] = v10;

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v12 = v0[11];
  v13 = v0[9];

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(v9, v10, v12, v13);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 120);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v7 + 128) = v6;

  v8 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_4();
  v6 = v0[16];

  return v5(v6);
}

void DialogProperties.appIntentAction.getter(_OWORD *a1@<X8>)
{
  v2 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD000000000000010, 0x8000000000042970, v2, &v12);

  if (v13)
  {
    swift_dynamicCast();
    *&v3 = OUTLINED_FUNCTION_18_2();
    if (v7)
    {
      v3 = v8;
      v4 = v9;
      v5 = v10;
      v6 = v11;
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(&v12, &_sypSgMd, &_sypSgMR);
    *&v3 = OUTLINED_FUNCTION_18_2();
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance AppIntentsSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

void *Context.getAppIntentDetails()()
{
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v0 = static LinkSuggestionsOwners.appIntentsOwner;
  v1 = type metadata accessor for DefaultOwner();
  v8[3] = v1;
  OUTLINED_FUNCTION_0_8();
  v4 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v2, v3);
  v8[4] = v4;
  v8[0] = v0;
  __swift_project_boxed_opaque_existential_1(v8, v1);
  v7[3] = v1;
  v7[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_15(v1);
  (*(v5 + 16))();

  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
    if (swift_dynamicCast())
    {
      return v8[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v9, &_sypSgMd, &_sypSgMR);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall Context.setAppIntentDetails(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v2 = static LinkSuggestionsOwners.appIntentsOwner;
  v3 = type metadata accessor for DefaultOwner();
  v10[3] = v3;
  OUTLINED_FUNCTION_0_8();
  v6 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v4, v5);
  v10[4] = v6;
  v10[0] = v2;
  __swift_project_boxed_opaque_existential_1(v10, v3);
  v9[3] = v3;
  v9[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_15(v3);
  (*(v7 + 16))();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
  v8[0] = a1._rawValue;

  Context.setParam(for:key:value:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:), 0, 0);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[12];
  v0[5] = type metadata accessor for DefaultLinkClient();
  v0[6] = &protocol witness table for DefaultLinkClient;
  v0[2] = v1;
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0((v0 + 2), (v0 + 7));
  type metadata accessor for AppIntentsDialogProvider();
  v2 = swift_allocObject();
  v0[16] = v2;
  outlined init with take of LinkClient(v0 + 7, v2 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v10 = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  return v10(v8, v7, v5, v2, v6);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  OUTLINED_FUNCTION_13_4();

  return v8(v2);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  OUTLINED_FUNCTION_3_3();
  v12 = v11;
  v8[8] = v11;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v8[9] = v15;
  OUTLINED_FUNCTION_3_3();
  v17 = v16;
  v8[10] = v16;
  v19 = *(v18 + 64) + 15;
  v8[11] = swift_task_alloc();
  (*(v17 + 16))();
  (*(v12 + 16))(v15, a2, a6);
  v20 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v20, v21, v22);
}

void specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_8();
  v0[12] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(v0[11], v0[3], v0[4], v0[6]);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v12 = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v11 = v0[7];

  __asm { BR              X8 }
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v8 = v3[9];
  v9 = v3[8];
  v10 = v3[5];
  v11 = v3[4];
  v12 = *v1;
  OUTLINED_FUNCTION_7();
  *v13 = v12;

  (*(v7 + 8))(v6, v11);
  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_13_4();

  return v14(a1);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v10, v9);
  type metadata accessor for AppIntentsDialogProvider();
  v7 = swift_allocObject();
  outlined init with take of LinkClient(v9, v7 + 16);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[22] = a3;
  v8 = type metadata accessor for DialogDetails();
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[5] = type metadata accessor for DefaultLinkClient();
  v5[6] = &protocol witness table for DefaultLinkClient;
  v5[2] = a1;
  v5[10] = type metadata accessor for DefaultToolClient();
  v5[11] = &protocol witness table for DefaultToolClient;
  v5[7] = a2;

  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

void specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_21_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *v0 = &async function pointer to partial apply for closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);
  v0[1] = v8;
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_24_1(v11);
  OUTLINED_FUNCTION_10_1();

  (*(v6 + 8))(v0, v5);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v3, v2 + 136);
  v12 = type metadata accessor for OnRequestAppIntents();
  v13 = swift_allocObject();
  outlined init with take of LinkClient(v2 + 136, v13 + 16);
  *(v2 + 120) = v12;
  OUTLINED_FUNCTION_4_4();
  v16 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v14, v15);
  OUTLINED_FUNCTION_25_1(v16);

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  *(swift_allocObject() + 16) = xmmword_3EFC0;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_21_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *v0 = &closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply;
  v0[1] = v8;
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_24_1(v11);
  OUTLINED_FUNCTION_10_1();

  (*(v6 + 8))(v0, v5);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v3, v2 + 136);
  v12 = type metadata accessor for OnRequestAppIntents();
  v13 = swift_allocObject();
  outlined init with take of LinkClient(v2 + 136, v13 + 16);
  *(v2 + 120) = v12;
  OUTLINED_FUNCTION_4_4();
  v16 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v14, v15);
  OUTLINED_FUNCTION_25_1(v16);

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  *(swift_allocObject() + 16) = xmmword_3EFC0;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a3;
  v14 = type metadata accessor for DialogDetails();
  v8[25] = v14;
  v15 = *(v14 - 8);
  v8[26] = v15;
  v16 = *(v15 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[5] = a6;
  v8[6] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  v8[10] = a7;
  v8[11] = v21;
  v18 = __swift_allocate_boxed_opaque_existential_1(v8 + 7);
  (*(*(a7 - 8) + 16))(v18, a2, a7);

  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

uint64_t sub_27908()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t partial apply for closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_3(v4);

  return closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(v6, v7, v8, v9);
}

uint64_t _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of SiriHelpSuggestionDetailsBuilderExtension & SuggestionDetailsBuilder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for LNAction()
{
  result = lazy cache variable for type metadata for LNAction;
  if (!lazy cache variable for type metadata for LNAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNAction);
  }

  return result;
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_3(v4);

  return closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)(0xD000000000000013, v2 | 0x8000000000000000, v1, v0, v3);
}

void OUTLINED_FUNCTION_11_3()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[22];
}

uint64_t OUTLINED_FUNCTION_24_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{
  *(v1 + 128) = a1;
  *(v1 + 96) = v2;

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.withConfiguratorProvider(_:)(v1 + 96);
}

uint64_t static DefaultLinkDialogIdProvider.canDialog(action:)(uint64_t a1)
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v2 = *(a1 + 32);
  if (specialized Set.contains(_:)(v2, static DefaultLinkDialogIdProvider.supportedSystemProtocols))
  {
    if (static DefaultLinkDialogIdProvider.validDialogParameters(for:)(a1))
    {
      return 1;
    }

    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(a1, v27);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v17 = 136315394;
      v18 = [v2 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      LinkSuggestedAction.rawDialogParmaters.getter();
      v23 = Dictionary.description.getter();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v27);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_0, v15, v16, "Invalid dialog parameters in canDialog for protocol: %s, parameters: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }
  }

  else
  {
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(a1, v27);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(a1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 136315138;
      v9 = [v2 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v27);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_0, v5, v6, "Unknown system protocol in canDialog: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }
  }

  return 0;
}

BOOL specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    type metadata accessor for LNSystemProtocol();
    v6 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = static NSObject.== infix(_:_:)();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t DialogDetails.templateIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DialogDetails.sectionIdentifier.getter()
{
  if (*(v0 + 24))
  {
    result = 0x7470697263736564;
  }

  else
  {
    result = 0x6974736567677573;
  }

  *(v0 + 24);
  return result;
}

Swift::String __swiftcall DialogType.getSectionId()()
{
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 0x7470697263736564;
  }

  else
  {
    v2 = 0x6974736567677573;
  }

  if (v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v3 = 0xEB000000006E6F69;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t DialogDetails.templateLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogDetails(0) + 28);
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_1_5(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DialogDetails.init(dialogId:dialogParams:dialogType:templateLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  v8 = *(type metadata accessor for DialogDetails(0) + 28);
  v9 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 32);

  return v11(a6 + v8, a5);
}

uint64_t protocol witness for CATDialogProvider.isSpeakable.getter in conformance DialogDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails);

  return DialogIdProvider.isSpeakable.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DialogDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails);

  return DialogProvider.description.getter(a1, v2);
}

void one-time initialization function for supportedSystemProtocols()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40AB0;
  v1 = objc_opt_self();
  *(inited + 32) = [v1 openEntitySystemProtocol];
  *(inited + 40) = [v1 cancelProtocol];
  *(inited + 48) = [v1 createEntitySystemProtocol];
  *(inited + 56) = [v1 searchSystemProtocol];
  *(inited + 64) = [v1 closeEntityProtocol];
  *(inited + 72) = [v1 navigateSequentiallyProtocol];
  *(inited + 80) = [v1 changeBinarySettingSystemProtocol];
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5(inited);
  static DefaultLinkDialogIdProvider.supportedSystemProtocols = v2;
}

uint64_t *DefaultLinkDialogIdProvider.supportedSystemProtocols.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  return &static DefaultLinkDialogIdProvider.supportedSystemProtocols;
}

uint64_t static DefaultLinkDialogIdProvider.supportedSystemProtocols.getter()
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }
}

uint64_t DefaultLinkDialogIdProvider.__allocating_init(templateDir:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  v7 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t DefaultLinkDialogIdProvider.init(templateDir:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t static DefaultLinkDialogIdProvider.validDialogParameters(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  v4 = [v3 openEntitySystemProtocol];
  type metadata accessor for LNSystemProtocol();
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 1;
  }

  v6 = [v3 cancelProtocol];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 1;
  }

  v9 = [v3 createEntitySystemProtocol];
  v10 = static NSObject.== infix(_:_:)();

  v11 = &LNSuggestedActionDialogParameterKeyEntityType;
  if (v10)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_3EFC0;
    v13 = *v11;
    *(v12 + 32) = *v11;
    v14 = v13;
    v15 = 32;
    while (v15 != 40)
    {
      if (*(*(a1 + 40) + 16))
      {
        v16 = *(v12 + v15);
        specialized __RawDictionaryStorage.find<A>(_:)();
        v18 = v17;

        v15 += 8;
        if (v18)
        {
          continue;
        }
      }

      return 0;
    }

    return 1;
  }

  v19 = [v3 searchSystemProtocol];
  v20 = static NSObject.== infix(_:_:)();

  if (v20)
  {
    return 1;
  }

  v21 = [v3 closeEntityProtocol];
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_40AC0;
    v24 = LNSuggestedActionDialogParameterKeyEntityType;
    v25 = LNSuggestedActionDialogParameterKeyEntityName;
    *(inited + 32) = LNSuggestedActionDialogParameterKeyEntityType;
    *(inited + 40) = v25;
    v26 = v24;
    v27 = v25;
    for (i = 32; ; i += 8)
    {
      if (i == 48)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        return 0;
      }

      if (*(*(a1 + 40) + 16))
      {
        v29 = *(inited + i);
        specialized __RawDictionaryStorage.find<A>(_:)();
        v31 = v30;

        if (v31)
        {
          break;
        }
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return 1;
  }

  v32 = [v3 navigateSequentiallyProtocol];
  v33 = static NSObject.== infix(_:_:)();

  if (v33)
  {
    return 1;
  }

  v34 = [v3 changeBinarySettingSystemProtocol];
  v35 = static NSObject.== infix(_:_:)();

  if (v35)
  {
    v11 = &LNSuggestedActionDialogParameterKeyEntityName;
    goto LABEL_5;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.linkSuggestions);
  outlined init with copy of LinkSuggestedAction(a1, v46);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  outlined destroy of LinkSuggestedAction(a1);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v39 = 136315138;
    v41 = [v2 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v46);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Unknown system protocol in validDialogParameters: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return 0;
}

uint64_t DefaultLinkDialogIdProvider.getDialogId(linkAction:dialogType:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = DefaultLinkDialogIdProvider.dialogId(for:)(a1);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = DefaultLinkDialogIdProvider.extractDialogParam(linkAction:)(a1);
    v12 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
    v13 = type metadata accessor for DialogDetails(0);
    v14 = *(v13 + 28);
    v15 = type metadata accessor for URL();
    OUTLINED_FUNCTION_1_5(v15);
    (*(v16 + 16))(a3 + v14, v3 + v12);
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = a2 & 1;
    v17 = a3;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v19 = type metadata accessor for DialogDetails(0);
    v17 = a3;
    v18 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

unint64_t DefaultLinkDialogIdProvider.dialogId(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  v4 = [v3 openEntitySystemProtocol];
  type metadata accessor for LNSystemProtocol();
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 0xD000000000000010;
  }

  v7 = [v3 cancelProtocol];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 0xD000000000000012;
  }

  v9 = [v3 createEntitySystemProtocol];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    return 0xD000000000000012;
  }

  v11 = [v3 searchSystemProtocol];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    return 0xD000000000000012;
  }

  v14 = [v3 closeEntityProtocol];
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    return 0xD000000000000011;
  }

  v16 = [v3 navigateSequentiallyProtocol];
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    v18 = LinkSuggestedAction.rawDialogParmaters.getter();
    v19 = specialized Dictionary.subscript.getter(0x6F69746365726964, 0xE90000000000006ELL, v18);
    v21 = v20;

    v22 = DefaultLinkDialogIdProvider.navigateSequentiallyDialogId(for:)(v19, v21);
LABEL_16:
    v6 = v22;

    return v6;
  }

  v23 = [v3 changeBinarySettingSystemProtocol];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {
    v25 = LinkSuggestedAction.rawDialogParmaters.getter();
    v26 = specialized Dictionary.subscript.getter(0x704F65676E616863, 0xEF6E6F6974617265, v25);
    v28 = v27;

    v22 = DefaultLinkDialogIdProvider.changeBinarySettingDialogId(for:)(v26, v28);
    goto LABEL_16;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.linkSuggestions);
  outlined init with copy of LinkSuggestedAction(a1, v39);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  outlined destroy of LinkSuggestedAction(a1);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136315138;
    v34 = [v2 identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v39);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "Unknown system protocol in dialogId: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  return 0;
}

uint64_t DefaultLinkDialogIdProvider.extractDialogParam(linkAction:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);

  v5 = static SAAppInfoFactory.createAppInfo(appIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, "*1");
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_3FB80;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000000042A70;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (!v5)
  {
    v10 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    goto LABEL_5;
  }

  v8 = outlined bridged method (ob) of @objc SAAppInfo.displayAppName.getter(v5);
  v10 = (v7 + 96);
  *(v7 + 120) = &type metadata for String;
  if (!v9)
  {
LABEL_5:
    *v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v10 = v8;
LABEL_6:
  *(v7 + 104) = v9;
  *(v7 + 128) = 0xD000000000000013;
  *(v7 + 136) = 0x8000000000042A90;
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = ((v3 | v4) & 1) == 0;
  v11 = Dictionary.init(dictionaryLiteral:)();
  v12 = LinkSuggestedAction.rawDialogParmaters.getter();
  v13 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

  v14 = specialized Dictionary.merging(_:uniquingKeysWith:)(v13, v11);

  return v14;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t DefaultLinkDialogIdProvider.navigateSequentiallyDialogId(for:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000010;
  if (a2)
  {
    v5 = a1 == 1954047342 && a2 == 0xE400000000000000;
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v4;
    }

    v6 = a1 == 0x73756F6976657270 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000014;
    }
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.linkSuggestions);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Unknown direction in navigateSequentiallyDialogId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000042B50;
  *(inited + 16) = xmmword_40AC0;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x8000000000042B70;
  v4 = specialized Collection.randomElement<A>(using:)(inited, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v4;
}

unint64_t DefaultLinkDialogIdProvider.changeBinarySettingDialogId(for:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000012;
  if (!a2)
  {
    goto LABEL_20;
  }

  v5 = a1 == 0x656C62616E65 && a2 == 0xE600000000000000;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v6 = a1 == 0x656C6261736964 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000013;
    }

    v7 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:
      if (one-time initialization token for linkSuggestions != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.linkSuggestions);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v13 = String.init<A>(describing:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v9, v10, "Unknown changeOperation in changeBinarySettingDialogId: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3FB80;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x8000000000042B90;
      *(inited + 48) = 0xD000000000000013;
      *(inited + 56) = 0x8000000000042BB0;
      *(inited + 64) = 0xD000000000000012;
      *(inited + 72) = 0x8000000000042BD0;
      v4 = specialized Collection.randomElement<A>(using:)(inited, inited);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  return v4;
}

uint64_t DefaultLinkDialogIdProvider.deinit()
{
  v1 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t DefaultLinkDialogIdProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogDetails(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DialogType and conformance DialogType()
{
  result = lazy protocol witness table cache variable for type DialogType and conformance DialogType;
  if (!lazy protocol witness table cache variable for type DialogType and conformance DialogType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogType and conformance DialogType);
  }

  return result;
}

uint64_t sub_29CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_29D6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for DialogDetails()
{
  type metadata accessor for [String : Any]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DialogType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x29FB8);
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

uint64_t type metadata accessor for DialogDetails(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DefaultLinkDialogIdProvider()
{
  result = type metadata accessor for URL();
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

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      outlined consume of [String : Any].Iterator._Variant();
    }

    v8 = v29;
    outlined init with take of Any(v30, v28);
    v9 = *a5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, "01");
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
      v16 = *a5;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        outlined init with copy of Any(v28, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
        outlined init with take of Any(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    outlined init with take of Any(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any(a4, a1);

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = specialized RandomNumberGenerator.next<A>(upperBound:)(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc SAAppInfo.displayAppName.getter(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    outlined init with take of Any(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return outlined destroy of (key: String, value: Any)(v19);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of (key: String, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, "41");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t AppIntentsDialogProvider.__allocating_init(linkClient:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5();
  v2 = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.appIntentAction.getter(v8);
  if (*(&v8[0] + 1))
  {
    v2 = v9;

    outlined destroy of SuggestionAppIntent?(v8);
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Unable to find appIntentAction parameter", v6, 2u);
    }

    return 0;
  }

  return v2;
}

uint64_t AppIntentsDialogProvider.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for AppIntentDialogCallback;
  a1[4] = lazy protocol witness table accessor for type AppIntentDialogCallback and conformance AppIntentDialogCallback();
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of AppIntentDialogCallback(v1 + 16, v3 + 16);
}

double AppIntentsDialogProvider.getDescriptionCallback(context:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AppIntentsDialogProvider.__deallocating_deinit()
{
  outlined destroy of AppIntentDialogCallback(v0 + 16);
  v1 = OUTLINED_FUNCTION_4_5();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = type metadata accessor for Locale();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v7 = AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(v5);
  v9 = v8;
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v7, v9);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to DialogCallback.getText(dialog:dialogProperties:environment:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance AppIntentDialogCallback;

  return DialogCallback.getText(dialog:dialogProperties:environment:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback;

  return AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(v6, a2, a3);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2)
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

void *LNAction.getNonNilParameterSet()()
{
  v14 = &_swiftEmptySetSingleton;
  v1 = [v0 parameters];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNProperty, LNProperty_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 value];
        if (v8)
        {

          v9 = [v7 identifier];
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          specialized Set._Variant.insert(_:)(&v13, v10, v12);
        }

        else
        {
        }
      }

      return v14;
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t outlined destroy of SuggestionAppIntent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppIntentDialogCallback and conformance AppIntentDialogCallback()
{
  result = lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback;
  if (!lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback);
  }

  return result;
}

uint64_t sub_2B0D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_4_5();

  return _swift_deallocObject(v1, v2, v3);
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        specialized _NativeSet.resize(capacity:)(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_5(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v2 + 16))
  {
LABEL_24:

    *v1 = v5;
    return;
  }

  v27 = v1;
  v28 = v2;
  v6 = 0;
  v8 = (v2 + 56);
  v7 = *(v2 + 56);
  v9 = *(v2 + 32);
  OUTLINED_FUNCTION_0_10();
  if (!v4)
  {
LABEL_4:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v6 >= v3)
      {
        break;
      }

      ++v12;
      if (v8[v6])
      {
        OUTLINED_FUNCTION_12_0();
        v4 = v14 & v13;
        goto LABEL_9;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v1 = v27;
    *(v2 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_9_4();
LABEL_9:
    v15 = (*(v2 + 48) + (v10 | (v6 << 6)) * v11);
    v16 = *v15;
    v17 = v15[1];
    OUTLINED_FUNCTION_7_2(v15);
    String.hash(into:)();
    v18 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_3(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_18:
    OUTLINED_FUNCTION_1_6(v20);
    *v25 = v16;
    v25[1] = v17;
    OUTLINED_FUNCTION_3_4(v25, v27, v28, *v29, v29[4]);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (v1[v21] != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = 3 * (v14 | (v8 << 6));
        v19 = *(v2 + 48) + 8 * v18;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 17);
        v23 = *(v4 + 48) + 8 * v18;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22;
        *(v23 + 17) = v19;
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_0();
        v12 = v17 & v16;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_5(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v2 + 16))
  {
    v25 = v1;
    v26 = v2;
    v6 = 0;
    v7 = *(v2 + 56);
    v8 = *(v2 + 32);
    OUTLINED_FUNCTION_0_10();
    if (v4)
    {
      while (1)
      {
        OUTLINED_FUNCTION_9_4();
LABEL_9:
        v14 = (*(v2 + 48) + (v9 | (v6 << 6)) * v10);
        v15 = *v14;
        v16 = v14[1];
        OUTLINED_FUNCTION_7_2(v14);

        String.hash(into:)();
        v17 = Hasher._finalize()();
        OUTLINED_FUNCTION_2_3(v17);
        if (v18)
        {
          break;
        }

        OUTLINED_FUNCTION_6_1();
LABEL_18:
        OUTLINED_FUNCTION_1_6(v19);
        *v24 = v15;
        v24[1] = v16;
        OUTLINED_FUNCTION_3_4(v24, v25, v26, *v27, v27[4]);
        if (!v4)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_5_1();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (v1[v20] != -1)
        {
          OUTLINED_FUNCTION_4_1();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v6;
      while (1)
      {
        v6 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v6 >= v3)
        {

          v1 = v25;
          goto LABEL_22;
        }

        ++v11;
        if (*(v2 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_12_0();
          v4 = v13 & v12;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v1 = v5;
  }
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = NSObject._rawHashValue(seed:)(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
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

uint64_t getEnumTagSinglePayload for AppIntentDialogCallback(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for AppIntentDialogCallback(uint64_t result, int a2, int a3)
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

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1);
        }

        v18 = v8;
        specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

void OUTLINED_FUNCTION_3_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(a1 + 16) = v5;
  *(a1 + 17) = a5;
  ++*(v6 + 16);
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v6 = *(a1 + 17);
  v4 = *(v1 + 40);

  return Hasher.init(_seed:)();
}

uint64_t OnRequestAppIntents.getAppIntentsForSignal(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CoreSignalTypes();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v39[-v18];
  __chkstk_darwin(v17);
  v21 = &v39[-v20];
  v41 = a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v21, v22 ^ 1u, 1, v2);
  (*(v3 + 104))(v19, enum case for CoreSignalTypes.app(_:), v2);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v23 = *(v8 + 56);
  outlined init with copy of CoreSignalTypes?(v21, v11);
  outlined init with copy of CoreSignalTypes?(v19, &v11[v23]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
  {
    outlined init with copy of CoreSignalTypes?(v11, v16);
    if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v11[v23], v2);
      _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v3 + 8);
      v25(v6, v2);
      outlined destroy of NSObject?(v19, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      v25(v16, v2);
      outlined destroy of NSObject?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of NSObject?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      if (v40)
      {
        goto LABEL_9;
      }

      return 0;
    }

    outlined destroy of NSObject?(v19, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v3 + 8))(v16, v2);
LABEL_6:
    outlined destroy of NSObject?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of NSObject?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    return 0;
  }

  outlined destroy of NSObject?(v19, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of NSObject?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of NSObject?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
LABEL_9:
  v24 = v41;
  v26 = Signal.signalValue.getter();
  v28 = v27;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.appIntentsSuggestions);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);
    _os_log_impl(&dword_0, v30, v31, "Getting app specific AppIntent suggestions for %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_3EFC0;
  v35 = type metadata accessor for AppIntentCandidateSuggestionConfigurator();
  v36 = swift_allocObject();
  v36[4] = 0xD000000000000013;
  v36[5] = 0x80000000000421A0;
  v36[2] = v26;
  v36[3] = v28;
  *(v34 + 56) = v35;
  *(v34 + 64) = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type AppIntentCandidateSuggestionConfigurator and conformance AppIntentCandidateSuggestionConfigurator, v37, type metadata accessor for AppIntentCandidateSuggestionConfigurator);
  *(v34 + 32) = v36;

  return v24;
}

void *AppIntentCandidateSuggestionConfigurator.__allocating_init(appBundleId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0xD000000000000013;
  result[5] = 0x80000000000421A0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *OnRequestAppIntents.getConfigurators(for:)(uint64_t a1)
{
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_4_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appIntentsSuggestions);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    type metadata accessor for Signal();
    v7 = Array.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Determining valid app intents for signals: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v10 = specialized Array.count.getter(a1);
  v11 = 0;
  v23 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v14 = OnRequestAppIntents.getAppIntentsForSignal(_:)(v12);
    v16 = v15;

    ++v11;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = v23[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v20;
      }

      v17 = v23[2];
      if (v17 >= v23[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v21;
      }

      v23[2] = v17 + 1;
      v18 = &v23[2 * v17];
      v18[4] = v14;
      v18[5] = v16;
      v11 = v13;
    }
  }

  return _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt0g5(v23);
}

uint64_t AppIntentCandidateSuggestionConfigurator.suggestionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *AppIntentCandidateSuggestionConfigurator.init(appBundleId:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0xD000000000000013;
  v2[5] = 0x80000000000421A0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Party();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for IntentType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

uint64_t AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)()
{
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.appIntentsSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating app intent context", v4, 2u);
    OUTLINED_FUNCTION_11();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[2];
  v9 = v0[3];

  v0[10] = *v8;
  v10 = v8[1];
  v0[11] = v10;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  static AppIntentFilter.builder()();
  v0[13] = *(v9 + 16);
  v0[14] = *(v9 + 24);
  dispatch thunk of AppIntentFilter.Builder.withAppId(_:)();

  dispatch thunk of AppIntentFilter.Builder.build()();

  (*(v6 + 104))(v5, enum case for IntentType.appIntent(_:), v7);
  v12 = async function pointer to Context.setIntentType(_:)[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:);
  v14 = v0[9];

  return Context.setIntentType(_:)(v14, ObjectType, v10);
}

{
  OUTLINED_FUNCTION_13();
  v2 = v1[15];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  default argument 1 of Context.setAppId(_:party:)(v0[6]);
  v4 = *(*(v2 + 8) + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), v6, v5);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  Context.setAppId(_:party:)();
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t default argument 1 of Context.setAppId(_:party:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Party.unknown(_:);
  v3 = type metadata accessor for Party();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppIntentCandidateSuggestionConfigurator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AppIntentCandidateSuggestionConfigurator.__deallocating_deinit()
{
  AppIntentCandidateSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.suggestionId.getter in conformance AppIntentCandidateSuggestionConfigurator()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator;

  return AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type AppIntentCandidateSuggestionConfigurator and conformance AppIntentCandidateSuggestionConfigurator, a2, type metadata accessor for AppIntentCandidateSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t one-time initialization function for linkSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkSuggestions);
  __swift_project_value_buffer(v0, static Logger.linkSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for autoshortcutsSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.autoshortcutsSuggestions);
  __swift_project_value_buffer(v0, static Logger.autoshortcutsSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.linkSuggestions.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for appIntentsSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appIntentsSuggestions);
  __swift_project_value_buffer(v0, static Logger.appIntentsSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.linkSuggestions.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

__n128 ActionParameter.init(displayRepresentable:metaData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t SuggestionAppIntent.init(appIntentAction:details:dialog:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t SuggestionAppIntent.appIntentAction.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t SuggestionAppIntent.details.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v3;
  return v1;
}

uint64_t SuggestionAppIntent.dialog.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t static AppIntentDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

Swift::Int AppIntentDetails.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppIntentDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return AppIntentDetails.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppIntentDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return AppIntentDetails.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppIntentDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  AppIntentDetails.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AppIntentDetails and conformance AppIntentDetails()
{
  result = lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails;
  if (!lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionAppIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SuggestionAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ActionParameter(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ActionParameter(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t LinkLoggingActionKeyMapper.map(suggestion:resolvedParams:)(uint64_t a1, uint64_t a2)
{
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, a2, &v10);
  if (!v11)
  {
    outlined destroy of NSObject?(&v10, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v2 = 0;
    v3 = 0;
    v8 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v2 = v12;
  v3 = v13;
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v7 = 256;
  if (!BYTE1(v14))
  {
    v7 = 0;
  }

  v8 = v7 | v14;
LABEL_8:
  v12 = v2;
  v13 = v3;
  v14 = v8;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  LinkLoggingActionKeyMapper.mappedParamaters(for:)(&v12);
  Action.init(actionId:params:)();
  return outlined consume of LinkSuggestedAction?(v2, v3, v8, v4, v5);
}

uint64_t LinkLoggingActionKeyMapper.mappedParamaters(for:)(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v4 = a1[2];
    v3 = a1[3];
    v5 = *a1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_40AC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000000042590;
    *&v14 = v5;
    *(&v14 + 1) = v1;
    v15 = v4;
    *(inited + 48) = v14;
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x8000000000042DC0;
    outlined init with copy of LinkSuggestedAction?(a1, v13);
    outlined init with copy of LinkSuggestedActionsRequest(&v14, v13);
    v7 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 80) = v8;
    *(inited + 88) = v10;
    v11 = Dictionary.init(dictionaryLiteral:)();
    outlined destroy of NSObject?(a1, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMd, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMR);
    return v11;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t outlined consume of LinkSuggestedAction?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined init with copy of LinkSuggestedAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMd, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LinkViewProvider.__allocating_init(dialogIdProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for LinkInvocationActionProvider();
  *(v2 + 56) = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t LinkViewProvider.init(dialogIdProvider:)(uint64_t a1)
{
  type metadata accessor for LinkInvocationActionProvider();
  *(v1 + 56) = swift_allocObject();
  outlined init with take of LinkClient(a1, v1 + 16);
  return v1;
}

uint64_t LinkViewProvider.getInvocationActionProvider(context:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = type metadata accessor for LinkInvocationActionProvider();
  a1[4] = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider, 255, type metadata accessor for LinkInvocationActionProvider);
  *a1 = v3;
}

uint64_t CATLinkDialogCallback.__allocating_init(dialogIdProvider:dialogType:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(a1, v4 + 16);
  *(v4 + 56) = a2 & 1;
  return v4;
}

uint64_t LinkViewProvider.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v9);
  v3 = type metadata accessor for CATLinkDialogCallback();
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(v9, v4 + 16);
  *(v4 + 56) = 0;
  a1[3] = v3;
  OUTLINED_FUNCTION_0_12();
  result = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(v5, v6, v7);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkViewProvider.getDescriptionCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v9);
  v3 = type metadata accessor for CATLinkDialogCallback();
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(v9, v4 + 16);
  *(v4 + 56) = 1;
  a1[3] = v3;
  OUTLINED_FUNCTION_0_12();
  result = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(v5, v6, v7);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkViewProvider.getAssets(context:suggestion:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (v24 - v5);
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = dispatch thunk of CandidateSuggestion.params.getter();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v8, &v25);

  if (!v26)
  {
    outlined destroy of Any?(&v25, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v18 = type metadata accessor for Image();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
    return Assets.init(icon:)();
  }

  v27[0] = v24[0];
  v27[1] = v24[1];
  v27[2] = v24[2];
  v9 = LinkSuggestedAction.iconSystemImageName.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_18SiriSuggestionsKit5ColorOSg04tintE0tMd, &_sSS4name_18SiriSuggestionsKit5ColorOSg04tintE0tMR) + 48);
    *v6 = v11;
    v6[1] = v12;
    v14 = type metadata accessor for Color();
    __swift_storeEnumTagSinglePayload(v6 + v13, 1, 1, v14);
    v15 = enum case for Image.symbol(_:);
    v16 = type metadata accessor for Image();
    OUTLINED_FUNCTION_1_5(v16);
    (*(v17 + 104))(v6, v15, v16);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v16);
  }

  else
  {
    v20 = *(&v27[0] + 1);
    *v6 = *&v27[0];
    v6[1] = v20;
    v21 = enum case for Image.appIcon(_:);
    v22 = type metadata accessor for Image();
    OUTLINED_FUNCTION_1_5(v22);
    (*(v23 + 104))(v6, v21, v22);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v22);
  }

  Assets.init(icon:)();
  return outlined destroy of LinkSuggestedAction(v27);
}

uint64_t LinkViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t LinkViewProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t CATLinkDialogCallback.init(dialogIdProvider:dialogType:)(uint64_t a1, char a2)
{
  outlined init with take of LinkClient(a1, v2 + 16);
  *(v2 + 56) = a2 & 1;
  return v2;
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[47] = a4;
  v5[48] = v4;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMd, &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMR) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v7 = type metadata accessor for DialogDetails(0);
  v5[50] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[51] = swift_task_alloc();

  return _swift_task_switch(CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  v46 = v0;
  v1 = *(v0 + 360);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v3, (v0 + 320));

  if (!*(v0 + 344))
  {
    outlined destroy of Any?(v0 + 320, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v20 = *(v0 + 360);
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.linkSuggestions);
    outlined init with copy of LinkClient(v20, v0 + 160);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315138;
      outlined init with copy of LinkClient(v0 + 160, v0 + 200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16DialogProperties_pMd, &_s18SiriSuggestionsKit16DialogProperties_pMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v45);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "CATLinkDialogCallback Link action retrieval failed: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
    }

    goto LABEL_15;
  }

  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v7;
  *(v0 + 48) = *(v0 + 96);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v8);
  (*(v9 + 8))(v0 + 16, *(v6 + 56), v8, v9);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    outlined destroy of Any?(*(v0 + 392), &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMd, &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMR);
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(v0 + 16, v0 + 112);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(v0 + 16);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45 = v14;
      *v13 = 136315138;
      v15 = [*(v0 + 40) identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v45);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_0, v11, v12, "CATLinkDialogCallback Dialog details retrieval failed: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    outlined destroy of LinkSuggestedAction(v0 + 16);
LABEL_15:
    v30 = *(v0 + 408);
    v31 = *(v0 + 392);

    v32 = *(v0 + 8);

    return v32(0, 0xE000000000000000);
  }

  v35 = *(v0 + 400);
  v34 = *(v0 + 408);
  v36 = *(v0 + 352);
  outlined init with take of DialogDetails(*(v0 + 392), v34);
  v37 = v36[3];
  v38 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v37);
  *(v0 + 264) = v35;
  *(v0 + 272) = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, 255, type metadata accessor for DialogDetails);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  outlined init with copy of DialogDetails(v34, boxed_opaque_existential_1);
  *(v0 + 304) = v35;
  *(v0 + 312) = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, 255, type metadata accessor for DialogDetails);
  v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 280));
  outlined init with copy of DialogDetails(v34, v40);
  v41 = async function pointer to dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)[1];
  v42 = swift_task_alloc();
  *(v0 + 416) = v42;
  *v42 = v0;
  v42[1] = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  v43 = *(v0 + 368);
  v44 = *(v0 + 376);

  return dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(v0 + 240, v0 + 280, v43, v44, v37, v38);
}

{
  v1 = v0[51];
  outlined destroy of LinkSuggestedAction((v0 + 2));
  outlined destroy of DialogDetails(v1);
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[51];
  v5 = v0[49];

  v6 = v0[1];

  return v6(v3, v2);
}

{
  v1 = v0[51];
  v2 = v0[49];
  outlined destroy of LinkSuggestedAction((v0 + 2));
  outlined destroy of DialogDetails(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);

  v3 = v0[1];
  v4 = v0[53];

  return v3();
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = (*v3)[52];
  v8 = *v3;
  (*v3)[53] = v2;

  if (v2)
  {
    v9 = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  }

  else
  {
    v6[54] = a2;
    v6[55] = a1;
    __swift_destroy_boxed_opaque_existential_1(v6 + 35);
    __swift_destroy_boxed_opaque_existential_1(v6 + 30);
    v9 = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t CATLinkDialogCallback.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_3_6();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance CATLinkDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback;

  return CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of DialogDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DialogDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DialogDetails(uint64_t a1)
{
  v2 = type metadata accessor for DialogDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t LinkActionResolver.__allocating_init(linkClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_0_13();
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v3 + 32);
  return v2;
}

uint64_t LinkActionResolver.init(linkClient:)()
{
  OUTLINED_FUNCTION_0_13();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  outlined init with take of SiriSuggestions.DisplayRepresentable(v3, v0 + 32);
  return v0;
}

uint64_t LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v1 = v0[2];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = dispatch thunk of CandidateSuggestion.context.getter();
  v5 = v4;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), v8, v7);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[7] = Context.getSuggestedActionsRequests()();
  swift_unknownObjectRelease();

  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin0C23SuggestedActionsRequestV_ShyAFGTt0g5(v1);
  v4 = (*(v3 + 16))();

  v5 = specialized _arrayForceCast<A, B>(_:)(v4);

  v6 = v0[1];

  return v6(v5);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = v4[2];
      v6 = v4[3];
      v12 = *(v4 - 1);
      v13 = *v4;
      v14 = *(v4 + 8);
      v15 = *(v4 + 9);
      v16 = v4[4];

      v7 = v5;
      v8 = v6;

      swift_dynamicCast();
      v18 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v2 = v18;
      }

      v4 += 6;
      v2[2] = v10 + 1;
      outlined init with take of Any(&v17, &v2[4 * v10 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 64);
    do
    {
      v5 = *v4;
      v10 = *(v4 - 4);
      v11 = *(v4 - 3);
      v12 = *(v4 - 2);
      v13 = *(v4 - 1);

      v6 = v5;
      swift_dynamicCast();
      v15 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v15;
      }

      v2[2] = v8 + 1;
      outlined init with take of Any(&v14, &v2[4 * v8 + 4]);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v20 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
      v18 = v7;
      v8 = lazy protocol witness table accessor for type LinkActionResolver and conformance LinkActionResolver(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, 255, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);
      v19 = v8;
      v20 = v3;
      v17[0] = v6;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v7 = v18;
        v11 = v19;
      }

      else
      {
        v11 = v8;
      }

      ++v5;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
      v13 = *(*(v7 - 8) + 64);
      __chkstk_darwin(v12);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v15, &v20, v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LinkActionResolver.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t LinkActionResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance LinkActionResolver(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository;

  return LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v6, a2);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of SiriSuggestions.DisplayRepresentable(&v12, v10 + 40 * a1 + 32);
}

uint64_t lazy protocol witness table accessor for type LinkActionResolver and conformance LinkActionResolver(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for VersionedInvocation();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double one-time initialization function for linkClientOverride()
{
  qword_57A18 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride = 0u;
  unk_57A08 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  OUTLINED_FUNCTION_4_6();
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride, a1, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.setter()
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.modify())()
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  OUTLINED_FUNCTION_5_4();
  return static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify;
}

double one-time initialization function for toolClientOverride()
{
  qword_57A40 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride = 0u;
  *algn_57A30 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_4_6();
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride, a1, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.setter()
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify())()
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_5_4();
  return static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify;
}

uint64_t key path getter for static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride : LinkSuggestionsOwnerDefinitionFactory.Type@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  a1();
  swift_beginAccess();
  return outlined init with copy of LinkClient?(a2, a5, a3, a4);
}

uint64_t key path setter for static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride : LinkSuggestionsOwnerDefinitionFactory.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  a5();
  swift_beginAccess();
  outlined assign with copy of LinkClient?(a1, a6, a7, a8);
  return swift_endAccess();
}

double one-time initialization function for clockOverride()
{
  qword_57A68 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.clockOverride = 0u;
  unk_57A58 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.clockOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.clockOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.clockOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_4_6();
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.clockOverride, a1, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
}

uint64_t outlined init with copy of LinkClient?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_5(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.clockOverride.setter()
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t outlined assign with copy of LinkClient?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_5(v6);
  (*(v7 + 24))(v4, v5);
  return v4;
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.clockOverride.modify())()
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_5_4();
  return static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  v3 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[54] = v1;
  __swift_project_value_buffer(v1, static Logger.linkSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_4(&dword_0, v4, v5, "Initializing SiriLinkSuggestionsPlugin");
  }

  v0[51] = _swiftEmptyArrayStorage;
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    swift_once();
  }

  v6 = v0[52];
  v7 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v8 = type metadata accessor for DefaultOwner();
  v0[55] = v8;
  v0[5] = v8;
  v9 = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner();
  v0[56] = v9;
  v0[6] = v9;
  v0[2] = v7;

  OUTLINED_FUNCTION_3_7();
  v15 = v10;
  v11 = *(v6 + 4);
  v12 = swift_task_alloc();
  v0[57] = v12;
  *v12 = v0;
  v12[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v13 = v0[53];

  return v15(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  v5 = *(v4 + 456);
  *v3 = *v0;
  *(v2 + 464) = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v7 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 464);
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v4 = v3;
  *(v0 + 472) = refreshed;
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  swift_beginAccess();
  outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride, v0 + 96, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
  if (*(v0 + 120))
  {
    outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 96), v0 + 56);
  }

  else
  {
    v5 = [objc_allocWithZone(LNMetadataProvider) init];
    v6 = [objc_allocWithZone(LNSuggestionsProvider) init];
    type metadata accessor for LinkRegistryObserver();
    swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v8 = LinkRegistryObserver.init(refreshableService:)(v7, v4);
    v9 = type metadata accessor for DefaultLinkClient();
    swift_allocObject();
    v10 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v5, v6, v8);
    *(v0 + 80) = v9;
    *(v0 + 88) = &protocol witness table for DefaultLinkClient;
    *(v0 + 56) = v10;
    if (*(v0 + 120))
    {
      outlined destroy of Any?(v0 + 96, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
    }
  }

  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_4_6();
  outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.clockOverride, v0 + 176, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
  if (*(v0 + 200))
  {
    outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 176), v0 + 136);
  }

  else
  {
    static Clocks.getSystemClock()();
    if (*(v0 + 200))
    {
      outlined destroy of Any?(v0 + 176, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
    }
  }

  type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory();
  v11 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  *v12 = v0;
  v12[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v13 = *(v0 + 464);

  return specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)();
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  v5 = *(v4 + 480);
  *v3 = *v0;
  *(v2 + 488) = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v7 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v7, v8, v9);
}

{
  specialized Array.append<A>(contentsOf:)(*(v0 + 488));
  if ((SiriLinkSuggestionsFeatureFlags.isEnabled.getter(1) & 1) != 0 && AFDeviceSupportsSystemAssistantExperience())
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 432), static Logger.appIntentsSuggestions);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_4(&dword_0, v3, v4, "adding appIntentsSuggestions");
    }

    if (one-time initialization token for toolClientOverride != -1)
    {
      OUTLINED_FUNCTION_0_15();
    }

    OUTLINED_FUNCTION_4_6();
    outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride, v0 + 256, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
    if (*(v0 + 280))
    {
      outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 256), v0 + 216);
    }

    else
    {
      v10 = type metadata accessor for DefaultToolClient();
      swift_allocObject();
      v11 = DefaultToolClient.init()();
      *(v0 + 240) = v10;
      *(v0 + 248) = &protocol witness table for DefaultToolClient;
      *(v0 + 216) = v11;
      if (*(v0 + 280))
      {
        outlined destroy of Any?(v0 + 256, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
      }
    }

    *(v0 + 496) = type metadata accessor for AppIntentsSuggestionsOwnerDefinitionFactory();
    if (one-time initialization token for appIntentsOwner != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 416);
    v13 = static LinkSuggestionsOwners.appIntentsOwner;
    *(v0 + 320) = *(v0 + 440);
    *(v0 + 296) = v13;

    OUTLINED_FUNCTION_3_7();
    v18 = v14;
    v15 = *(v12 + 4);
    v16 = swift_task_alloc();
    *(v0 + 504) = v16;
    *v16 = v0;
    v16[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
    v17 = *(v0 + 424);

    return v18(v0 + 296);
  }

  else
  {
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v7 = *(v0 + 408);
    v8 = *(v0 + 8);

    return v8(v7);
  }
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v4 = *(v3 + 520);
  v5 = *(v3 + 512);
  v6 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v9 + 528) = v8;

  v10 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = v0[58];
  v1 = v0[59];
  specialized Array.append<A>(contentsOf:)(v0[66]);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[51];
  v4 = v0[1];

  return v4(v3);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;
  v5 = v2[63];
  v6 = *v1;
  *v4 = *v1;
  v3[64] = v7;

  __swift_destroy_boxed_opaque_existential_1(v3 + 37);
  v8 = v2[10];
  v9 = v2[11];
  v10 = __swift_project_boxed_opaque_existential_1(v3 + 7, v8);
  v11 = v2[30];
  v12 = v2[31];
  v13 = __swift_project_boxed_opaque_existential_1(v3 + 27, v11);
  v14 = swift_task_alloc();
  v3[65] = v14;
  *v14 = v6;
  v14[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v15 = v2[62];

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(v10, v13, a1, v15, v8, v11, v9, v12);
}

unint64_t lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner()
{
  result = lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner;
  if (!lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner)
  {
    type metadata accessor for DefaultOwner();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner);
  }

  return result;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory;

  return static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return outlined assign with copy of LinkClient?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return outlined destroy of Any?(v0, v1, v2);
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

SiriLinkSuggestionsPlugin::LinkSuggestedActionsRequest __swiftcall LinkSuggestedActionsRequest.init(bundleIdentifier:onScreen:explicitRequest:)(SiriLinkSuggestionsPlugin::LinkSuggestedActionsRequest bundleIdentifier, Swift::Bool onScreen, Swift::Bool explicitRequest)
{
  if (explicitRequest)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFE | onScreen;
  bundleIdentifier.onScreen = v4;
  bundleIdentifier.explicitRequest = HIBYTE(v4);
  return bundleIdentifier;
}

id LinkSuggestedActionsRequest.suggestionsRequest.getter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = (a3 >> 8) & 1;
  type metadata accessor for LNSuggestionsRequest();

  return LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(a1, a2, v3 & 1, v6);
}

unint64_t type metadata accessor for LNSuggestionsRequest()
{
  result = lazy cache variable for type metadata for LNSuggestionsRequest;
  if (!lazy cache variable for type metadata for LNSuggestionsRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSuggestionsRequest);
  }

  return result;
}

uint64_t LinkSuggestedActionsRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000000042590 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746963696C707865 && a2 == 0xEF74736575716552)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t LinkSuggestedActionsRequest.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6E65657263536E6FLL;
  }

  return 0x746963696C707865;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkSuggestedActionsRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LinkSuggestedActionsRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance LinkSuggestedActionsRequest.CodingKeys@<W0>(Swift::Int a1@<X0>, SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional *a2@<X8>)
{
  result.value = AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkSuggestedActionsRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkSuggestedActionsRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static LinkSuggestedActionsRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if ((a3 ^ a6))
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && ((a3 ^ a6) & 1) == 0)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t LinkSuggestedActionsRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMR);
  v7 = OUTLINED_FUNCTION_14_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

Swift::Int LinkSuggestedActionsRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LinkSuggestedActionsRequest.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMR);
  v4 = OUTLINED_FUNCTION_14_0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_9();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_1_9();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_1_9();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = OUTLINED_FUNCTION_0_16();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LinkSuggestedActionsRequest()
{
  v1 = *v0;
  v2 = v0[1];
  return LinkSuggestedActionsRequest.hashValue.getter();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkSuggestedActionsRequest()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  LinkSuggestedActionsRequest.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance LinkSuggestedActionsRequest@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LinkSuggestedActionsRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance LinkSuggestedActionsRequest(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return LinkSuggestedActionsRequest.encode(to:)(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkSuggestedActionsRequest(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return static LinkSuggestedActionsRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), v3 | *(a1 + 16), *a2, *(a2 + 8), v4 | *(a2 + 16));
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedActionsRequest(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LinkSuggestedActionsRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestedActionsRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x332D8);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);

  return (specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:))(v9, a2, a3, v3, v7, v8);
}

void static AutoShortcutsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BehaviorAfterSpeaking();
  v5 = OUTLINED_FUNCTION_14_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_5_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_15(v17);
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_5_2();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.resolvedPhrase.getter(v28);
  if (v28[1])
  {
    v25 = v28[0];
    v27 = v30;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
    v22 = *(type metadata accessor for TemplatingSection() - 8);
    v23 = *(v22 + 72);
    v24 = *(v22 + 80);
    v26 = v4;
    *(swift_allocObject() + 16) = xmmword_3EFC0;

    TemplatingText.init(text:speakableTextOverride:)();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    TemplatingSection.init(id:content:caption:spokenOnly:)();
    (*(v7 + 104))(v12, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v26);
    a2[3] = type metadata accessor for TemplatingResult();
    __swift_allocate_boxed_opaque_existential_1(a2);
    TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();

    v32 = v31;
    outlined destroy of String(&v32);
  }

  else
  {
    a2[3] = &type metadata for String;
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a1[3];
  v40 = a1[5];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a2, &v42);
  v14 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver();
  v15 = swift_allocObject();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(&v42);
  v43 = v14;
  v44 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver, v16, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver);
  *&v42 = v15;
  static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(v41);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v10 + 8))(v13, v8);
  outlined destroy of CoreSignalTypes?(&v42, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v17 = a1[3];
  v41 = a1[5];
  v40 = __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v40);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x8000000000041870;
  v43 = v22;
  v44 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver, v24, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver);
  *&v42 = v23;
  type metadata accessor for ResolvableParameter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v18 + 8))(v21, v17);
  outlined destroy of CoreSignalTypes?(&v42, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v25 = a1[3];
  v41 = a1[5];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v31 = type metadata accessor for DeviceType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_3FB80;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, enum case for DeviceType.iPhone(_:), v31);
  v37(v36 + v33, enum case for DeviceType.iPad(_:), v31);
  v37(v36 + 2 * v33, enum case for DeviceType.visionPro(_:), v31);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  return (*(v27 + 8))(v30, v25);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.__allocating_init(linkClient:)()
{
  OUTLINED_FUNCTION_6_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(v1);
  return v0;
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - v8;
  __chkstk_darwin(v7);
  type metadata accessor for ResolvableParameter();
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v16);
  v10 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v16, v10 + 16);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v16);
  v11 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v16, v11 + 16);
  static SuggestionTransformers.obfuscateParametersForLogging(numCharacters:rngFactory:currentDate:)();

  (*(v3 + 16))(v6, v9, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  (*(v3 + 8))(v9, v2);
  return ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.__allocating_init()()
{
  OUTLINED_FUNCTION_21_1();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x8000000000041870;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.__allocating_init(linkClient:)()
{
  OUTLINED_FUNCTION_6_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.init(linkClient:)(v1);
  return v0;
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.stripOutPhrase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return outlined init with copy of Any(a1, a2);
  }

  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v4 = Transformer.transform.getter();
  v11 = v7;
  v12 = v8;

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  String.append(_:)(v9);

  v9._object = &type metadata for String;
  v7 = v11;
  v8 = v12;
  v4(&v7);

  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = dispatch thunk of Clock.getCurrentTime()();

  return Date.init(timeIntervalSince1970:)(v2);
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.rngFactory(_:)@<X0>(char a1@<W1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v4 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    dispatch thunk of Clock.getCurrentTime()();
  }

  a3[3] = type metadata accessor for SimpleRNG();
  a3[4] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SimpleRNG and conformance SimpleRNG, 255, &type metadata accessor for SimpleRNG);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return SimpleRNG.init(seed:)();
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_6();
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_15_0();
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  v1 = v0[12];
  v2 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v0[5] = type metadata accessor for DefaultOwner();
  OUTLINED_FUNCTION_1_10();
  v0[6] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v3, 255, v4);
  v0[2] = v2;

  v9 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v7 = v0[13];

  return v9(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v0;
  *(v2 + 128) = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v7 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_40_1();
  v1 = v0[16];
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v4 = v3;
  v0[17] = refreshed;
  v5 = [objc_allocWithZone(LNMetadataProvider) init];
  v6 = [objc_allocWithZone(LNSuggestionsProvider) init];
  type metadata accessor for LinkRegistryObserver();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = LinkRegistryObserver.init(refreshableService:)(v7, v4);
  type metadata accessor for DefaultLinkClient();
  swift_allocObject();
  v9 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v5, v6, v8);
  v0[18] = v9;
  static Clocks.getSystemClock()();
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v11 = v0[16];
  v12 = v0[14];

  return specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(v9, v11, (v0 + 7), v12);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v0;
  *(v2 + 160) = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v7 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_4();
  v5 = v0[20];

  return v4(v5);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[6];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_14();
  v3 = dispatch thunk of CandidateSuggestion.context.getter();
  v5 = v4;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v7 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = Context.getCandidateApplicationDetails()();
  v6 = v5;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v7;
  v0[5] = v8;
  swift_unknownObjectRelease();
  v0[10] = v6;
  v9 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_3EFC0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
  }

  else
  {
    if (one-time initialization token for autoshortcutsSuggestions != -1)
    {
      OUTLINED_FUNCTION_9_5();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.autoshortcutsSuggestions);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_34_0(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_11();
    }
  }

  OUTLINED_FUNCTION_13_4();

  return v14();
}

uint64_t Context.getCandidateApplicationDetails()()
{
  OUTLINED_FUNCTION_39_1();
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  v0 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v1 = type metadata accessor for DefaultOwner();
  v8[3] = v1;
  OUTLINED_FUNCTION_1_10();
  v4 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v2, 255, v3);
  v8[4] = v4;
  v8[0] = v0;
  __swift_project_boxed_opaque_existential_1(v8, v1);
  v7[3] = v1;
  v7[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_15(v1);
  (*(v5 + 16))();

  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v9, &_sypSgMd, &_sypSgMR);
  }

  return OUTLINED_FUNCTION_36_0();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000019;
  *(v0 + 24) = 0x8000000000041870;
  return result;
}

uint64_t _s25SiriLinkSuggestionsPlugin013AutoShortcutsC22OwnerDefinitionFactoryC0E22ShortcutPhraseResolverC0aC3Kit08InternalL0AafGP19resolverTypeOperandSSvgTW_0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v4, a2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(__int128 *a1)
{
  *(v1 + 16) = 0xD00000000000001ALL;
  *(v1 + 24) = 0x8000000000041850;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v1 + 32);
  return v1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  return OUTLINED_FUNCTION_6();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_40_1();
  v22 = v0;
  if (one-time initialization token for autoshortcutsSuggestions != -1)
  {
    OUTLINED_FUNCTION_9_5();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v1, static Logger.autoshortcutsSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_34_0(v3))
  {
    v4 = OUTLINED_FUNCTION_46();
    v5 = OUTLINED_FUNCTION_47();
    v21 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x8000000000042F80, &v21);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 148;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v11 = v0[10];
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  OUTLINED_FUNCTION_14();
  v13 = dispatch thunk of CandidateSuggestion.context.getter();
  v15 = v14;
  v0[13] = v13;
  v0[14] = v14;
  v0[15] = swift_getObjectType();
  v16 = *(*(v15 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v17 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = Context.getCandidateApplicationDetails()();
  v6 = v5;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v7;
  v0[5] = v8;
  swift_unknownObjectRelease();
  v0[16] = v4;
  v0[17] = v6;
  v9 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v2[23];
  v6 = *v1;
  OUTLINED_FUNCTION_26_1();
  *v7 = v6;
  v3[24] = v8;
  v3[25] = v0;

  v9 = v2[22];
  if (v0)
  {
    v10 = v3[21];

    v11 = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  else
  {

    v11 = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  return _swift_task_switch(v11, 0, 0);
}

void AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v156 = v0;
  v1 = v0[17];
  if (!v1)
  {
    v34 = v0[12];
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_34_0(v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_11();
    }

LABEL_66:
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_44_1();

    __asm { BRAA            X2, X16 }
  }

  v2 = v0[16];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[11];
  v6 = v0[12];
  v0[18] = v4;
  v0[19] = v3;
  v7 = v5[7];
  v8 = v5[8];
  v147 = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 4, v7);
  v9 = (*(v8 + 32))(v2, v1, v7, v8);
  v0[20] = v9;
  v0[9] = v9;

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v148 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[16];
    v14 = OUTLINED_FUNCTION_46();
    v15 = OUTLINED_FUNCTION_47();
    v155[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = specialized Array.count.getter(v9);
    *(v14 + 12) = 2080;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v1, v155);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_0, v11, v12, "Retrieved %ld AppShortcuts for bundle identifier: %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v151 = v0;
  if (![objc_opt_self() isConditionallyEnabledIntentsEnabled])
  {
    goto LABEL_18;
  }

  v17 = specialized Array.count.getter(v9);
  v18 = _swiftEmptyArrayStorage;
  v152 = v9;
  if (v17)
  {
    v19 = v17;
    v155[0] = _swiftEmptyArrayStorage;
    v20 = v17 & ~(v17 >> 63);

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    if (v19 < 0)
    {
      goto LABEL_74;
    }

    v21 = v9;
    v22 = 0;
    v18 = v155[0];
    v23 = v21 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v152 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v25 actionIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v155[0] = v18;
      v31 = v18[2];
      v30 = v18[3];
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_19_2(v30);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v31 + 1, 1);
        v18 = v155[0];
      }

      ++v22;
      v18[2] = v31 + 1;
      v32 = &v18[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
    }

    while (v19 != v22);
  }

  v54 = 0;
  v55 = v18[2];
  v56 = LNSystemProtocolIdentifierConditionallyEnabled;
  v57 = v18 + 5;
  v146 = _swiftEmptyArrayStorage;
LABEL_21:
  for (i = &v57[2 * v54]; ; i += 2)
  {
    if (v55 == v54)
    {
      v72 = v151[12];

      v73 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v146);
      v151[21] = v73;

      v74 = v148;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = v151[16];
        v78 = OUTLINED_FUNCTION_46();
        v155[0] = swift_slowAlloc();
        *v78 = 136315394;

        v79 = OUTLINED_FUNCTION_38_1();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v81);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2080;
        v83 = Set.description.getter();
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v155);

        *(v78 + 14) = v85;
        _os_log_impl(&dword_0, v75, v76, "AppShortcut-participating ConditionallyEnabledIntents for %s: %s", v78, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      if (*(v73 + 16))
      {
        v86 = v147[8];
        __swift_project_boxed_opaque_existential_1(v147 + 4, v147[7]);

        v151[22] = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v87);
        v88 = *(v86 + 56);
        v153 = v88 + *v88;
        v89 = v88[1];
        v90 = swift_task_alloc();
        v151[23] = v90;
        *v90 = v151;
        v90[1] = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
        v91 = v151[16];
        OUTLINED_FUNCTION_44_1();

        __asm { BRAA            X6, X16 }
      }

      v0 = v151;
      v144 = v151[21];
      swift_bridgeObjectRetain_n();

      v155[0] = specialized Array._copyToContiguousArray()(v152);
      specialized MutableCollection<>.sort(by:)(v155, v144);
      v145 = v151[21];

      swift_bridgeObjectRelease_n();
      v9 = v155[0];
LABEL_18:
      v42 = v0[18];
      v43 = v0[19];
      OUTLINED_FUNCTION_31_1();

      v44 = v42;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v48 = v0[16];
        v47 = v0[17];
        v49 = OUTLINED_FUNCTION_46();
        v50 = OUTLINED_FUNCTION_47();
        v155[0] = v50;
        *v49 = 134218242;
        *(v49 + 4) = specialized Array.count.getter(v9);

        *(v49 + 12) = 2080;

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v155);

        *(v49 + 14) = v51;
        OUTLINED_FUNCTION_46_1(&dword_0, v52, v53, "%ld AppShortcuts eligible for suggestions in %s");
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }

      v94 = specialized Array.count.getter(v9);
      v95 = v9 & 0xC000000000000001;
      v96 = v9 & 0xFFFFFFFFFFFFFF8;
      v97 = v9;

      v98 = 0;
      v154 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v94 == v98)
        {
          v119 = v151;
          v120 = v151[18];
          v121 = v151[19];
          v122 = v151[17];
          v123 = v151[12];

          v124 = v120;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v128 = v151[16];
            v127 = v151[17];
            v129 = OUTLINED_FUNCTION_46();
            v130 = OUTLINED_FUNCTION_47();
            v155[0] = v130;
            *v129 = 134218242;
            *(v129 + 4) = v154[2];

            *(v129 + 12) = 2080;

            v138 = OUTLINED_FUNCTION_34_1(v131, v132, v133, v134, v135, v136, v137);

            *(v129 + 14) = v138;
            _os_log_impl(&dword_0, v125, v126, "%ld AppShortcut resolved phrases for %s", v129, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v130);
            v119 = v151;
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v139 = v119[18];
          v140 = v119[19];
          v141 = v119[17];
          specialized _arrayForceCast<A, B>(_:)(v154);

          goto LABEL_66;
        }

        if (v95)
        {
          v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v98 >= *(v96 + 16))
          {
            goto LABEL_71;
          }

          v99 = *(v97 + 8 * v98 + 32);
        }

        v100 = v99;
        v101 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v102 = [v99 orderedPhrases];
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
        v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v103 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_53;
          }

LABEL_50:

          ++v98;
        }

        else
        {
          if (!*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_50;
          }

LABEL_53:
          if ((v103 & 0xC000000000000001) != 0)
          {
            v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_73;
            }

            v104 = *(v103 + 32);
          }

          v105 = v104;
          v106 = v151[17];

          v107 = [v105 localizedPhrase];

          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = v109;
          v150 = v108;

          v110 = v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = v154[2];
            OUTLINED_FUNCTION_28_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v110 = v117;
          }

          v112 = v110[2];
          v111 = v110[3];
          v154 = v110;
          if (v112 >= v111 >> 1)
          {
            OUTLINED_FUNCTION_19_2(v111);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v154 = v118;
          }

          v114 = v151[16];
          v113 = v151[17];
          v154[2] = v112 + 1;
          v115 = &v154[5 * v112];
          v115[4] = v150;
          v115[5] = v149;
          v115[6] = v114;
          v115[7] = v113;
          v115[8] = v100;
          v98 = v101;
        }
      }
    }

    if (v54 >= v18[2])
    {
      break;
    }

    if (*(v3 + 16))
    {
      v59 = *(i - 1);
      v60 = *i;

      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
      if (v62)
      {
        if (*(*(*(v3 + 56) + 8 * v61) + 16))
        {
          v63 = *(*(v3 + 56) + 8 * v61);

          specialized __RawDictionaryStorage.find<A>(_:)(v56);
          v65 = v64;

          if (v65)
          {
            v66 = v146;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v155[0] = v146;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146[2] + 1, 1);
              v66 = v155[0];
            }

            v69 = *(v66 + 16);
            v68 = *(v66 + 24);
            if (v69 >= v68 >> 1)
            {
              v71 = OUTLINED_FUNCTION_19_2(v68);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71, v69 + 1, 1);
              v66 = v155[0];
            }

            ++v54;
            *(v66 + 16) = v69 + 1;
            v146 = v66;
            v70 = v66 + 16 * v69;
            *(v70 + 32) = v59;
            *(v70 + 40) = v60;
            v57 = v18 + 5;
            goto LABEL_21;
          }
        }
      }
    }

    ++v54;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

{
  v126 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  OUTLINED_FUNCTION_31_1();

  v4 = v2;

  v5 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.debug.getter();

  v124 = v0;
  if (os_log_type_enabled(v5, v2))
  {
    v6 = v0[24];
    v7 = v0[17];
    v8 = v0[16];
    v9 = OUTLINED_FUNCTION_46();
    v125[0] = swift_slowAlloc();
    *v9 = 136315394;

    v17 = OUTLINED_FUNCTION_34_1(v10, v11, v12, v13, v14, v15, v16);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v18 = Dictionary.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v125);

    *(v9 + 14) = v20;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v118 = v0[24];
  v26 = v0[20];
  v27 = v0[21];
  v28 = specialized Array.count.getter(v26);
  v120 = v26 & 0xFFFFFFFFFFFFFF8;
  v122 = v26 & 0xC000000000000001;
  v119 = v26 + 32;

  v29 = 0;
  while (1)
  {
LABEL_4:
    if (v29 == v28)
    {
      v55 = v0[24];
      v56 = v0[20];

      swift_beginAccess();
      v0[9] = _swiftEmptyArrayStorage;

      v57 = v0[25];
      v58 = v0[21];
      swift_bridgeObjectRetain_n();

      v125[0] = specialized Array._copyToContiguousArray()(_swiftEmptyArrayStorage);
      specialized MutableCollection<>.sort(by:)(v125, v58);
      if (v57)
      {

        return;
      }

      v59 = v0[21];

      swift_bridgeObjectRelease_n();
      v60 = v125[0];
      v61 = v0[18];
      v62 = v0[19];
      OUTLINED_FUNCTION_31_1();

      v63 = v61;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v67 = v0[16];
        v66 = v0[17];
        v68 = OUTLINED_FUNCTION_46();
        v69 = OUTLINED_FUNCTION_47();
        v125[0] = v69;
        *v68 = 134218242;
        *(v68 + 4) = specialized Array.count.getter(v60);

        *(v68 + 12) = 2080;

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v125);

        *(v68 + 14) = v70;
        _os_log_impl(&dword_0, v64, v65, "%ld AppShortcuts eligible for suggestions in %s", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }

      v71 = specialized Array.count.getter(v60);

      v72 = 0;
      v123 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v71 == v72)
        {
          v92 = v124[18];
          v93 = v124[19];
          v94 = v124[17];
          v95 = v124[12];

          v96 = v92;

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v97, v98))
          {
            v100 = v124[16];
            v99 = v124[17];
            v101 = OUTLINED_FUNCTION_46();
            v102 = OUTLINED_FUNCTION_47();
            v125[0] = v102;
            *v101 = 134218242;
            *(v101 + 4) = v123[2];

            *(v101 + 12) = 2080;

            v110 = OUTLINED_FUNCTION_34_1(v103, v104, v105, v106, v107, v108, v109);

            *(v101 + 14) = v110;
            OUTLINED_FUNCTION_46_1(&dword_0, v111, v112, "%ld AppShortcut resolved phrases for %s");
            __swift_destroy_boxed_opaque_existential_1(v102);
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v114 = v124[18];
          v113 = v124[19];
          v115 = v124[17];
          v116 = specialized _arrayForceCast<A, B>(_:)(v123);

          OUTLINED_FUNCTION_13_4();

          v117(v116);
          return;
        }

        if ((v60 & 0xC000000000000001) != 0)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v72 >= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_61;
          }

          v73 = *(v60 + 8 * v72 + 32);
        }

        v74 = v73;
        v75 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_60;
        }

        v76 = [v73 orderedPhrases];
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
        v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v77 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_43;
          }

LABEL_40:

          ++v72;
        }

        else
        {
          if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

LABEL_43:
          if ((v77 & 0xC000000000000001) != 0)
          {
            v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_62;
            }

            v78 = *(v77 + 32);
          }

          v79 = v78;
          v80 = v124[17];

          v81 = [v79 localizedPhrase];

          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v121 = v83;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = v123[2];
            OUTLINED_FUNCTION_28_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v123 = v90;
          }

          v85 = v123[2];
          v84 = v123[3];
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_19_2(v84);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v123 = v91;
          }

          v87 = v124[16];
          v86 = v124[17];
          v123[2] = v85 + 1;
          v88 = &v123[5 * v85];
          v88[4] = v82;
          v88[5] = v121;
          v88[6] = v87;
          v88[7] = v86;
          v88[8] = v74;
          v72 = v75;
        }
      }
    }

    if (v122)
    {
      v54 = v0[20];
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v120 + 16))
      {
        goto LABEL_59;
      }

      v30 = *(v119 + 8 * v29);
    }

    v31 = v30;
    if (__OFADD__(v29++, 1))
    {
      break;
    }

    v33 = v0[21];
    v34 = [v30 actionIdentifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (*(v33 + 16))
    {
      v38 = *(v27 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v41 = v39 & v40;
        if (((*(v27 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v42 = (*(v27 + 48) + 16 * v41);
        if (*v42 != v35 || v42[1] != v37)
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v39 = v41 + 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }
        }

        v45 = [v31 actionIdentifier];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        if (!*(v118 + 16))
        {

          v0 = v124;
          goto LABEL_4;
        }

        v49 = v124[24];
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v48);
        v52 = v51;

        if ((v52 & 1) == 0 || (*(*(v118 + 56) + v50) & 1) == 0)
        {

          v0 = v124;
          goto LABEL_4;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v53 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v0 = v124;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_45_0();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v24 = v20[18];
  v23 = v20[19];
  v25 = v20[17];
  v26 = v20[12];

  v27 = v24;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[19];
  v31 = v20[20];
  v33 = v20[17];
  v34 = v20[18];
  if (v30)
  {
    v35 = v20[16];
    v36 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_47();
    a9 = v37;
    *v36 = 136315138;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v33, &a9);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_0, v28, v29, "Could not retrieve AppIntents state from '%s'", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(phrase:bundleIdentifier:autoShortcut:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = OUTLINED_FUNCTION_6_7();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v6, a2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.init(_:)(void *a1)
{
  v2 = [a1 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
  _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera25SiriLinkSuggestionsPlugin013AutoShortcutsH22OwnerDefinitionFactoryC06SystemD8MetadataVGMd, &_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera25SiriLinkSuggestionsPlugin013AutoShortcutsH22OwnerDefinitionFactoryC06SystemD8MetadataVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = *(*(v3 + 56) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v16;
      *(v5[7] + 8 * v15) = v17;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v5[2] = v20;
      v21 = v16;
      result = swift_unknownObjectRetain();
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        return v5;
      }

      v14 = *(v3 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(uint64_t result, uint64_t a2)
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
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo26LNSystemProtocolIdentifiera_25SiriLinkSuggestionsPlugin013AutoShortcutsG22OwnerDefinitionFactoryC06SystemC8MetadataVTt1g5(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
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

    v11 = *(v3 + 64 + 8 * v4);
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo26LNSystemProtocolIdentifiera_25SiriLinkSuggestionsPlugin013AutoShortcutsG22OwnerDefinitionFactoryC06SystemC8MetadataVTt1g5(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + 8 * v12);
    swift_unknownObjectRetain();
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v18 = [*(*(a2 + 56) + 8 * v15) isEqual:v13];
    result = swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
      return 0;
    }
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

    v11 = *(v3 + 64 + 8 * v4);
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

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_1();
  specialized Dictionary<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.init(bundleIdentifier:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Collection.first.getter(a3);
  if (v5)
  {
    v25 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVGMR);
    result = static _DictionaryStorage.copy(original:)();
    v7 = result;
    v8 = 0;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 64);
    v12 = (v9 + 63) >> 6;
    v26 = result + 64;
    if (v11)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_11:
        v16 = v13 | (v8 << 6);
        v17 = (*(a3 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a3 + 56) + 8 * v16);

        result = AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.init(_:)(v20);
        *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v21 = (v7[6] + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(v7[7] + 8 * v16) = result;
        v22 = v7[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          break;
        }

        v7[2] = v24;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v8;
      while (1)
      {
        v8 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          return v25;
        }

        v15 = *(a3 + 64 + 8 * v8);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v11 = (v15 - 1) & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 == a5 && a2 == a6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(a3, a7) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hash(into:)()
{
  String.hash(into:)();
  v0 = OUTLINED_FUNCTION_38_1();
  specialized Dictionary<>.hash(into:)(v0, v1);
  return NSObject.hash(into:)();
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_35_1();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, a3);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.configuratorPerBundleIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.configuratorPerBundleIdentifier.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.init(linkClient:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 64) = [objc_allocWithZone(NSLock) init];
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v1 + 24);
  return v1;
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()()
{
  v1 = v0;
  v2 = v0[8];
  [v2 lock];
  swift_beginAccess();
  v3 = v0[2];
  if (v3)
  {
  }

  else
  {
    v4 = v1[6];
    v5 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v3 = &_swiftEmptyDictionarySingleton;
    if (v6)
    {
      v7 = v6;
      v10 = &_swiftEmptyDictionarySingleton;

      specialized Sequence.forEach(_:)(v7, v1, &v10);

      v3 = v10;
      v8 = v1[2];
      v1[2] = v10;
    }
  }

  [v2 unlock];
  return v3;
}

char *AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getCandidateApplicationDetails(for:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_39_1();
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_38_1();
  v8 = v7(v6);
  if (specialized Array.count.getter(v8))
  {
    v9 = specialized Array.count.getter(v8);
    if (!v9)
    {

LABEL_13:
      v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(_swiftEmptyArrayStorage);
      _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v23);
      v24 = v3[7];
      __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
      v25 = *(v24 + 40);
      v26 = OUTLINED_FUNCTION_38_1();
      v28 = v27(v26);

      return AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.init(bundleIdentifier:actionMetadata:)(v2, v0, v28);
    }

    v10 = v9;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v8 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v14 actionIdentifier];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          v22 = OUTLINED_FUNCTION_19_2(v19);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v20 + 1, 1);
        }

        ++v12;
        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
      }

      while (v10 != v12);

      v3 = v1;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {

    return OUTLINED_FUNCTION_36_0();
  }

  return result;
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.__allocating_init(candidateApplicationDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD000000000000016;
  result[7] = 0x8000000000042200;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  if (!v4)
  {
  }

  while (1)
  {
    v6 = *(v5 - 1);
    v7 = *v5;

    v8 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getCandidateApplicationDetails(for:)();
    if (!v9)
    {

      goto LABEL_13;
    }

    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v39 = v5;
    v40 = v4;
    type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
    v16 = swift_allocObject();
    v16[5] = v15;
    v16[6] = 0xD000000000000016;
    v16[7] = 0x8000000000042200;
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;

    v38 = v15;
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v41 = *v3;
    v20 = v6;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v23 = v19[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC0G39ShortcutCandidateSuggestionConfiguratorCGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC0G39ShortcutCandidateSuggestionConfiguratorCGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v7);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_17;
      }

      v26 = v28;
    }

    if (v27)
    {
      v30 = v41[7];
      v31 = *(v30 + 8 * v26);
      *(v30 + 8 * v26) = v16;
    }

    else
    {
      v41[(v26 >> 6) + 8] |= 1 << v26;
      v32 = (v41[6] + 16 * v26);
      *v32 = v20;
      v32[1] = v7;
      *(v41[7] + 8 * v26) = v16;
      v33 = v41[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_16;
      }

      v41[2] = v35;
    }

    v3 = a3;
    *a3 = v41;

    v5 = v39;
    v4 = v40;
LABEL_13:
    v5 += 2;
    if (!--v4)
    {
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)(uint64_t a1)
{
  v3 = specialized Array.count.getter(a1);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v15 = v6;
    closure #1 in AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)(&v15, v1, v14);

    if (v14[0])
    {
      v13 = *v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = v5[2];
        OUTLINED_FUNCTION_28_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v11;
      }

      v8 = v5[2];
      v7 = v5[3];
      v9 = v13;
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v7);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v13;
        v5 = v12;
      }

      v5[2] = v8 + 1;
      *&v5[2 * v8 + 4] = v9;
    }

    ++v4;
  }

  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt0g5(v5);
}

uint64_t closure #1 in AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v56 = a2;
  v4 = type metadata accessor for CoreSignalTypes();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v54[-v20];
  __chkstk_darwin(v19);
  v23 = &v54[-v22];
  v57 = *a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v24 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v23, v24 ^ 1u, 1, v4);
  (*(v5 + 104))(v21, enum case for CoreSignalTypes.app(_:), v4);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v4);
  v25 = *(v10 + 56);
  outlined init with copy of CoreSignalTypes?(v23, v13);
  outlined init with copy of CoreSignalTypes?(v21, &v13[v25]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v4) == 1)
    {
      outlined destroy of CoreSignalTypes?(v13, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      v26 = v57;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  outlined init with copy of CoreSignalTypes?(v13, v18);
  if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v4) == 1)
  {
    outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v5 + 8))(v18, v4);
LABEL_6:
    outlined destroy of CoreSignalTypes?(v13, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    v26 = v57;
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v13[v25], v4);
  _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v5 + 8);
  v37(v8, v4);
  outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v37(v18, v4);
  outlined destroy of CoreSignalTypes?(v13, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v26 = v57;
  if (v55)
  {
LABEL_14:
    if (one-time initialization token for autoshortcutsSuggestions != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.autoshortcutsSuggestions);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59[0] = v42;
      *v41 = 136315138;
      v59[6] = v26;
      type metadata accessor for Signal();
      _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type Signal and conformance Signal, 255, &type metadata accessor for Signal);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v59);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_0, v39, v40, "Getting app specific autoshortcuts suggestions for %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    v46 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()();
    v47 = Signal.signalValue.getter();
    v49 = specialized Dictionary.subscript.getter(v47, v48, v46);

    if (v49)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_3EFC0;
      *(v50 + 56) = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
      *(v50 + 64) = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, v51, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);
      *(v50 + 32) = v49;
      v52 = v58;
      *v58 = v26;
      v52[1] = v50;
    }

    goto LABEL_20;
  }

LABEL_7:
  type metadata accessor for Signal();
  static Signal.HomeScreenTier1.getter();
  v27 = static Signal.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
LABEL_20:
    v53 = v58;
    *v58 = 0;
    v53[1] = 0;
    return result;
  }

  if (one-time initialization token for autoshortcutsSuggestions != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.autoshortcutsSuggestions);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Getting homescreen tier 1 autoshortcuts suggestions", v32, 2u);
  }

  v33 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()();

  v34 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC0F39ShortcutCandidateSuggestionConfiguratorC_SD6ValuesVySSAH_GTt0g5(v33);
  v35 = specialized _arrayForceCast<A, B>(_:)(v34);

  v36 = v58;
  *v58 = v26;
  v36[1] = v35;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.__deallocating_deinit()
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.deinit();
  v0 = OUTLINED_FUNCTION_6_7();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.candidateApplicationDetails.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v3;
  return v1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.suggestionId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.init(candidateApplicationDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000016;
  v4[7] = 0x8000000000042200;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return LinkSuggestionsOwnerDefinitionFactory.deinit();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *v1;
  v3 = v1[1];
  v0[5] = v3;
  v0[6] = swift_getObjectType();
  v0[7] = v2[2];
  v0[8] = v2[3];
  v0[9] = v2[4];
  v0[10] = v2[5];
  v4 = *(*(v3 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v5 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  Context.setCandidateApplicationDetails(_:)(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t Context.setCandidateApplicationDetails(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  v8 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v9 = type metadata accessor for DefaultOwner();
  v19[3] = v9;
  OUTLINED_FUNCTION_1_10();
  v12 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v10, 255, v11);
  v19[4] = v12;
  v19[0] = v8;
  __swift_project_boxed_opaque_existential_1(v19, v9);
  v18[3] = v9;
  v18[4] = *(v12 + 8);
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_15(v9);
  (*(v13 + 16))();
  v17[3] = &type metadata for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails;
  v14 = swift_allocObject();
  v17[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;

  v15 = a4;
  Context.setParam(for:key:value:)();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = a2[4];
  v4 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(v2, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  OUTLINED_FUNCTION_13_0();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.__deallocating_deinit()
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.suggestionId.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply;

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_13();
  v8 = *(v7 + 16);
  v9 = *v0;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(v6, v4, v2);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, a2, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.phrase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional __swiftcall AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x657361726870 && stringValue._object == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_1_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 0xD000000000000010 && 0x8000000000042590 == object;
    if (v5 || (OUTLINED_FUNCTION_1_3() & 1) != 0)
    {

      return 1;
    }

    else if (countAndFlagsBits == 0x726F68536F747561 && object == 0xEC00000074756374)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_1_3();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}