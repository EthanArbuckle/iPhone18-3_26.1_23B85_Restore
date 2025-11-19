uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = v3;
  v4[19] = a3;
  v4[18] = a2;
  v4[17] = a1;
  v4[12] = v4;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v21 = *v3;
  v4[21] = *v3;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[23] = v6;
  v15 = *(v6 - 8);
  v4[24] = v15;
  v7 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[26] = v8;
  v16 = *(v8 - 8);
  v4[27] = v16;
  v9 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for NLContextUpdate();
  v4[29] = v10;
  v17 = *(v10 - 8);
  v4[30] = v17;
  v11 = *(v17 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = v20;
  v4[33] = *(v21 + 80);
  v13 = v4[12];

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)()
{
  v3 = v0[32];
  v0[12] = v0;
  type metadata accessor for DisambiguationCATsModern();
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[34] = CATWrapperSimple.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  *(v4 + 280) = v1;
  *v1 = *(v4 + 96);
  v1[1] = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);

  return DisambiguationCATsModern.intentDisambiguationPrompt()();
}

{
  v1 = v0[36];
  v12 = v0[33];
  v18 = v0[31];
  v16 = v0[28];
  v15 = v0[27];
  v17 = v0[26];
  v19 = v0[25];
  v20 = v0[22];
  v11 = v0[21];
  v21 = v0[20];
  v14 = v0[18];
  v0[12] = v0;
  v0[16] = v1;
  outlined init with copy of GlobalsProviding(v21 + 112, (v0 + 2));
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v13 = *(v11 + 88);
  v2 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)(v14, v16, v12, v13, v2 & 1, v18);
  (*(v15 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v18;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of GlobalsProviding(v21 + 112, (v0 + 7));
  v3 = swift_task_alloc();
  v22[38] = v3;
  *v3 = v22[12];
  v3[1] = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  v4 = v22[36];
  v5 = v22[25];
  v6 = v22[19];
  v7 = v22[18];
  v8 = v22[17];

  return static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)(v8, v7, v6, v5, v4, (v0 + 7));
}

{
  v7 = *v1;
  v2 = (*v1)[38];
  v7[12] = *v1;
  v8 = v7 + 12;
  v7[39] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7 + 7);
    v3 = *v8;
    v4 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[31];
  v6 = v0[30];
  v7 = v0[29];
  v11 = v0[28];
  v12 = v0[25];
  v1 = v0[24];
  v2 = v0[23];
  v13 = v0[22];
  v0[12] = v0;
  (*(v1 + 8))();
  (*(v6 + 8))(v10, v7);
  MEMORY[0x277D82BD8](v8);

  v3 = *(v0[12] + 8);
  v4 = v0[12];

  return v3();
}

{
  v1 = v0[34];
  v0[12] = v0;

  v2 = v0[37];
  v3 = v0[32];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[22];

  v4 = *(v0[12] + 8);
  v5 = v0[12];

  return v4();
}

{
  v12 = v0[36];
  v10 = v0[31];
  v9 = v0[30];
  v11 = v0[29];
  v7 = v0[25];
  v6 = v0[24];
  v8 = v0[23];
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v6 + 8))(v7, v8);
  (*(v9 + 8))(v10, v11);
  MEMORY[0x277D82BD8](v12);
  v1 = v0[39];
  v2 = v0[32];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[22];

  v3 = *(v0[12] + 8);
  v4 = v0[12];

  return v3();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 280);
  v10[12] = *v2;
  v11 = v10 + 12;
  v10[36] = a1;
  v10[37] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  else
  {
    v5 = v10[34];

    v6 = *v11;
    v7 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v9 = a2;
  v21 = 0;
  v20 = 0;
  v7 = 0;
  v18 = type metadata accessor for ResponseType();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v19 = &v6 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v13 = &v6 - v8;
  v21 = a1;
  v20 = v3;
  v12 = type metadata accessor for NLContextUpdate();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  (*(v10 + 16))(v13, v9);
  v4 = *(v10 + 56);
  v14 = 1;
  v4(v13, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, v14 & 1);
  OutputGenerationManifest.responseViewId.setter();
  (*(v16 + 104))(v19, *MEMORY[0x277D5BC50], v18);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  *(v3 + 592) = a1;
  *(v3 + 536) = v3;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  *(v3 + 568) = 0;
  *(v3 + 576) = 0;
  *(v3 + 584) = 0;
  *(v3 + 784) = 0;
  v18 = *v2;
  *(v3 + 616) = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 624) = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  *(v3 + 632) = v5;
  v13 = *(v5 - 8);
  *(v3 + 640) = v13;
  v6 = *(v13 + 64) + 15;
  *(v3 + 648) = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  *(v3 + 656) = v7;
  v14 = *(v7 - 8);
  *(v3 + 664) = v14;
  v8 = *(v14 + 64) + 15;
  *(v3 + 672) = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  *(v3 + 680) = v9;
  v15 = *(v9 - 8);
  *(v3 + 688) = v15;
  v10 = *(v15 + 64) + 15;
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 544) = a2;
  *(v3 + 552) = v17;
  *(v3 + 704) = *(v18 + 80);
  v11 = *(v3 + 536);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)()
{
  v36 = v0[76];
  v1 = v0[75];
  v0[67] = v0;
  v0[70] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  v37 = Sequence.sorted(by:)();
  v0[89] = v37;
  v33 = *(v35 + 696);
  v32 = *(v35 + 680);
  v29 = *(v35 + 608);
  v31 = *(v35 + 688);

  *(v35 + 568) = v37;
  outlined init with copy of GlobalsProviding(v29 + 112, v35 + 16);
  v30 = *(v35 + 48);
  __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  v34 = static AppResolutionResponse.makeDisambiguationList(apps:inLocale:)();
  *(v35 + 720) = v34;
  v2 = *(v31 + 8);
  *(v35 + 728) = v2;
  *(v35 + 736) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v33, v32);
  __swift_destroy_boxed_opaque_existential_0((v35 + 16));
  *(v35 + 576) = v34;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v3 = swift_task_alloc();
    *(v35 + 744) = v3;
    *v3 = *(v35 + 536);
    v3[1] = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
    v4 = *(v35 + 608);
    v5 = *(v35 + 592);

    return PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(v5, v37, v34);
  }

  outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 56);
  v27 = *(v35 + 88);
  __swift_project_boxed_opaque_existential_1((v35 + 56), *(v35 + 80));
  v28 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0((v35 + 56));
  if ((v28 & 1) == 0)
  {
    outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 96);
    v24 = *(v35 + 128);
    __swift_project_boxed_opaque_existential_1((v35 + 96), *(v35 + 120));
    v25 = dispatch thunk of DeviceState.isPhone.getter();

    if (v25)
    {
      v23 = *(v35 + 608);

      __swift_destroy_boxed_opaque_existential_0((v35 + 96));
    }

    else
    {
      outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 136);
      v20 = *(v35 + 168);
      __swift_project_boxed_opaque_existential_1((v35 + 136), *(v35 + 160));
      v22 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0((v35 + 136));
      v21 = *(v35 + 608);

      __swift_destroy_boxed_opaque_existential_0((v35 + 96));

      if ((v22 & 1) == 0)
      {
        outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 176);
        v16 = *(v35 + 208);
        __swift_project_boxed_opaque_existential_1((v35 + 176), *(v35 + 200));
        v18 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0((v35 + 176));
        v17 = *(v35 + 608);

        if ((v18 & 1) == 0)
        {
          v15 = 0;
          goto LABEL_14;
        }

LABEL_12:
        outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 456);
        v13 = *(v35 + 488);
        __swift_project_boxed_opaque_existential_1((v35 + 456), *(v35 + 480));
        v14 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
        __swift_destroy_boxed_opaque_existential_0((v35 + 456));
        v15 = v14;
LABEL_14:
        v11 = *(v35 + 608);

        *(v35 + 784) = v15 & 1;
        type metadata accessor for SAUIAssistantUtteranceView();
        _allocateUninitializedArray<A>(_:)();
        outlined init with copy of GlobalsProviding(v11 + 112, v35 + 216);
        v12 = static AppResolutionResponse.makeDisambiguationViews(apps:utteranceViews:disambiguationList:deviceState:compact:)();
        __swift_destroy_boxed_opaque_existential_0((v35 + 216));

        *(v35 + 584) = v12;
        goto LABEL_15;
      }
    }

    v19 = *(v35 + 608);

    goto LABEL_12;
  }

  outlined init with copy of GlobalsProviding(*(v35 + 608) + 112, v35 + 496);
  v7 = default argument 3 of static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)();
  v26 = static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(0, v34, (v35 + 496), v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v35 + 496));
  *(v35 + 584) = v26;
LABEL_15:
  *(v35 + 760) = *(*(v35 + 608) + 152);

  v9 = swift_task_alloc();
  *(v35 + 768) = v9;
  *v9 = *(v35 + 536);
  v9[1] = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  v10 = *(v35 + 672);

  return PaymentsBaseCATs.disambiguateApp()(v10);
}

{
  v8 = *v1;
  v7 = (v8 + 536);
  v2 = *(*v1 + 744);
  *(v8 + 536) = *v1;
  *(v8 + 752) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  else
  {
    v3 = *v7;
    v4 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[90];
  v6 = v0[89];
  v0[67] = v0;

  v2 = v0[87];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[78];

  v3 = *(v0[67] + 8);
  v4 = v0[67];

  return v3();
}

{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 536);
  v2 = *(*v1 + 768);
  *(v10 + 536) = *v1;
  *(v10 + 776) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  else
  {
    v3 = *(v8 + 744);

    v4 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v13 = v0[92];
  v14 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v9 = v0[88];
  v11 = v0[87];
  v12 = v0[85];
  v24 = v0[84];
  v23 = v0[83];
  v25 = v0[82];
  v21 = v0[81];
  v20 = v0[80];
  v22 = v0[79];
  v18 = v0[78];
  v8 = v0[77];
  v15 = v0[76];
  v17 = v0[74];
  v0[67] = v0;
  v19 = v0[73];

  outlined init with copy of GlobalsProviding(v15 + 112, (v0 + 32));
  v6 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isWatch.getter();
  PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  outlined init with copy of GlobalsProviding(v15 + 112, (v0 + 37));
  v7 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v10 = *(v8 + 88);
  v1 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)(v27, v11, v9, v10, v1 & 1, v21);
  v14(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  outlined init with copy of GlobalsProviding(v15 + 112, (v0 + 42));
  outlined init with copy of GlobalsProviding(v15 + 112, (v0 + 47));
  v16 = v0[51];
  __swift_project_boxed_opaque_existential_1(v0 + 47, v0[50]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v20 + 16))(v18, v21, v22);
  (*(v20 + 56))(v18, 0, 1, v22);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v17[3] = type metadata accessor for AceOutput();
  v17[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v17);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v18);

  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  (*(v20 + 8))(v21, v22);
  (*(v23 + 8))(v24, v25);
  outlined destroy of [SFCardSection](v0 + 73);

  v2 = v0[87];
  v28 = v0[84];
  v29 = v0[81];
  v30 = v0[78];

  v3 = *(v0[67] + 8);
  v4 = v0[67];

  return v3();
}

{
  v1 = v0[90];
  v7 = v0[89];
  v0[67] = v0;

  v2 = v0[94];
  v3 = v0[87];
  v8 = v0[84];
  v9 = v0[81];
  v10 = v0[78];

  v4 = *(v0[67] + 8);
  v5 = v0[67];

  return v4();
}

{
  v1 = v0[95];
  v7 = v0[90];
  v8 = v0[89];
  v0[67] = v0;

  outlined destroy of [SFCardSection](v0 + 73);

  v2 = v0[97];
  v3 = v0[87];
  v9 = v0[84];
  v10 = v0[81];
  v11 = v0[78];

  v4 = *(v0[67] + 8);
  v5 = v0[67];

  return v4();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v15 = a1;
  v12 = a2;
  v26 = a3;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v45._countAndFlagsBits = 0;
  v45._object = 0;
  v41._countAndFlagsBits = 0;
  v41._object = 0;
  v16 = *a3;
  v11 = a3;
  v13 = 0;
  v32 = type metadata accessor for Locale();
  v21 = *(v32 - 8);
  v22 = v32 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v31 = v8 - v14;
  v17 = *v15;
  v52 = v17;
  v25 = *v3;
  v51 = v25;
  v50 = v4;
  v49 = *(v16 + 80);
  v20 = type metadata accessor for AppInformationResolver();

  v24 = AppInformationResolver.__allocating_init(app:)();
  v23 = v46;
  outlined init with copy of GlobalsProviding((v26 + 14), v46);
  v19 = v47;
  v18 = v48;
  __swift_project_boxed_opaque_existential_1(v23, v47);
  dispatch thunk of DeviceState.siriLocale.getter();
  v36._countAndFlagsBits = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v36._object = v5;
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v30(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v23);

  v45 = v36;

  v34 = AppInformationResolver.__allocating_init(app:)();
  v33 = v42;
  outlined init with copy of GlobalsProviding((v26 + 14), v42);
  v28 = v43;
  v27 = v44;
  __swift_project_boxed_opaque_existential_1(v33, v43);
  dispatch thunk of DeviceState.siriLocale.getter();
  v35._countAndFlagsBits = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v35._object = v6;
  v30(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v33);

  v41 = v35;

  v39 = v36;
  if (v36._object)
  {
    v40 = v39;
  }

  else
  {
    v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v39._object)
    {
      outlined destroy of String.UTF8View(&v39);
    }
  }

  v10 = v40;

  v37 = v35;
  if (v35._object)
  {
    v38 = v37;
  }

  else
  {
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v37._object)
    {
      outlined destroy of String.UTF8View(&v37);
    }
  }

  v8[1] = v38._object;
  v9 = MEMORY[0x26D620720](v10._countAndFlagsBits, v10._object, v38._countAndFlagsBits);

  return v9 & 1;
}

uint64_t PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)(uint64_t a1)
{
  v2[35] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[23] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[36] = v3;
  v10 = *(v3 - 8);
  v2[37] = v10;
  v11 = *(v10 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedAppStatus.AppState();
  v2[41] = v4;
  v12 = *(v4 - 8);
  v2[42] = v12;
  v5 = *(v12 + 64) + 15;
  v2[43] = swift_task_alloc();
  v6 = type metadata accessor for ProtectedAppStatus();
  v2[44] = v6;
  v13 = *(v6 - 8);
  v2[45] = v13;
  v7 = *(v13 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;
  v8 = v2[17];

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)()
{
  v46 = v0[35];
  v0[17] = v0;
  type metadata accessor for App();
  v0[20] = Array.init()();
  type metadata accessor for ProtectedAppCheck();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  static ProtectedAppCheck.client(for:)();

  v0[21] = v46;
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  Collection<>.makeIterator()();
  v47 = 0;
  while (1)
  {
    *(v45 + 384) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMd, &_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMR);
    IndexingIterator.next()();
    v44 = *(v45 + 176);
    *(v45 + 392) = v44;
    if (!v44)
    {
      break;
    }

    *(v45 + 184) = v44;
    v1 = App.appIdentifier.getter();
    v41 = v1;
    v42 = v2;
    *(v45 + 400) = v2;
    if (v2)
    {
      *(v45 + 88) = v1;
      *(v45 + 96) = v2;
      v39 = *(v45 + 40);
      v40 = *(v45 + 48);
      __swift_project_boxed_opaque_existential_1((v45 + 16), v39);
      v3 = *(MEMORY[0x277D5BFC0] + 4);
      v4 = swift_task_alloc();
      *(v45 + 408) = v4;
      *v4 = *(v45 + 136);
      v4[1] = PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
      v5 = *(v45 + 368);

      return MEMORY[0x2821BB7C0](v5, v41, v42, v39, v40);
    }

    v6 = *(v45 + 304);
    v30 = *(v45 + 288);
    v29 = *(v45 + 296);
    v7 = Logger.payments.unsafeMutableAddressor();
    (*(v29 + 16))(v6, v7, v30);

    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v31 + 24) = v44;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v35 + 24) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v36 = v8;

    *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[1] = v33;

    v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[3] = v34;

    v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[5] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v37, v38))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0);
      v28 = createStorage<A>(capacity:type:)(1);
      *(v45 + 200) = buf;
      *(v45 + 208) = v27;
      *(v45 + 216) = v28;
      serialize(_:at:)(2, (v45 + 200));
      serialize(_:at:)(1, (v45 + 200));
      *(v45 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v45 + 80) = v33;
      closure #1 in osLogInternal(_:log:type:)(v45 + 72, v45 + 200, v45 + 208, v45 + 216);
      *(v45 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v45 + 80) = v34;
      closure #1 in osLogInternal(_:log:type:)(v45 + 72, v45 + 200, v45 + 208, v45 + 216);
      *(v45 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v45 + 80) = v35;
      closure #1 in osLogInternal(_:log:type:)(v45 + 72, v45 + 200, v45 + 208, v45 + 216);
      _os_log_impl(&dword_2686B1000, v37, v38, "#PaymentsAppResolutionFlowStrategy %s has no bundleID, but not filtering it out", buf, 0xCu);
      destroyStorage<A>(_:count:)(v27, 0, v25);
      destroyStorage<A>(_:count:)(v28, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

      v23 = 0;
      v24 = 0;
    }

    else
    {

      v23 = v47;
      v24 = v43;
    }

    v22 = *(v45 + 376);
    v20 = *(v45 + 304);
    v21 = *(v45 + 288);
    v19 = *(v45 + 296);
    MEMORY[0x277D82BD8](v37);
    (*(v19 + 8))(v20, v21);

    *(v45 + 192) = v44;
    Array.append(_:)();
    v9 = *(v45 + 392);

    v47 = v23;
    v43 = v24;
  }

  v13 = *(v45 + 368);
  v14 = *(v45 + 344);
  v15 = *(v45 + 320);
  v16 = *(v45 + 312);
  v17 = *(v45 + 304);
  outlined destroy of [SFCardSection]((v45 + 56));
  v18 = *(v45 + 160);

  __swift_destroy_boxed_opaque_existential_0((v45 + 16));
  outlined destroy of [SFCardSection]((v45 + 160));

  v10 = *(*(v45 + 136) + 8);
  v11 = *(v45 + 136);

  return v10(v18);
}

{
  v4 = *v0;
  v1 = *(*v0 + 408);
  *(v4 + 136) = *v0;

  v2 = *(v4 + 136);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:), 0);
}

{
  v1 = v0[46];
  v105 = v0[43];
  v104 = v0[42];
  v106 = v0[41];
  v0[17] = v0;
  ProtectedAppStatus.state.getter();
  if ((*(v104 + 88))(v105, v106) == *MEMORY[0x277D5BDF8])
  {
    v7 = *(v103 + 320);
    v88 = *(v103 + 288);
    v89 = *(v103 + 392);
    v87 = *(v103 + 296);
    v8 = Logger.payments.unsafeMutableAddressor();
    (*(v87 + 16))(v7, v8, v88);

    v90 = swift_allocObject();
    *(v90 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v90 + 24) = v89;

    oslog = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v93 = swift_allocObject();
    *(v93 + 16) = 8;
    v91 = swift_allocObject();
    *(v91 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v91 + 24) = v90;
    v94 = swift_allocObject();
    *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v94 + 24) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v95 = v9;

    *v95 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95[1] = v92;

    v95[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v95[3] = v93;

    v95[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v95[5] = v94;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v97))
    {
      v10 = *(v103 + 384);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v85 = createStorage<A>(capacity:type:)(0);
      v86 = createStorage<A>(capacity:type:)(1);
      *(v103 + 256) = buf;
      *(v103 + 264) = v85;
      *(v103 + 272) = v86;
      serialize(_:at:)(2, (v103 + 256));
      serialize(_:at:)(1, (v103 + 256));
      *(v103 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 128) = v92;
      closure #1 in osLogInternal(_:log:type:)(v103 + 120, v103 + 256, v103 + 264, v103 + 272);
      if (v10)
      {
        goto LABEL_24;
      }

      *(v103 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 128) = v93;
      closure #1 in osLogInternal(_:log:type:)(v103 + 120, v103 + 256, v103 + 264, v103 + 272);
      *(v103 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 128) = v94;
      closure #1 in osLogInternal(_:log:type:)(v103 + 120, v103 + 256, v103 + 264, v103 + 272);
      _os_log_impl(&dword_2686B1000, oslog, v97, "#PaymentsAppResolutionFlowStrategy %s is hidden", buf, 0xCu);
      destroyStorage<A>(_:count:)(v85, 0, v83);
      destroyStorage<A>(_:count:)(v86, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

      v82 = 0;
      v81 = 0;
    }

    else
    {

      v82 = *(v103 + 384);
    }

    v77 = *(v103 + 320);
    v78 = *(v103 + 288);
    v76 = *(v103 + 296);
    MEMORY[0x277D82BD8](oslog);
    (*(v76 + 8))(v77, v78);
    v79 = v82;
    v80 = v81;
    goto LABEL_19;
  }

  v11 = *(v103 + 312);
  v66 = *(v103 + 288);
  v67 = *(v103 + 392);
  v65 = *(v103 + 296);
  v12 = Logger.payments.unsafeMutableAddressor();
  (*(v65 + 16))(v11, v12, v66);

  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
  *(v68 + 24) = v67;

  log = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v70 = swift_allocObject();
  *(v70 + 16) = 32;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v69 + 24) = v68;
  v72 = swift_allocObject();
  *(v72 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v72 + 24) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v73 = v13;

  *v73 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73[1] = v70;

  v73[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v73[3] = v71;

  v73[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v73[5] = v72;
  _finalizeUninitializedArray<A>(_:)();

  if (!os_log_type_enabled(log, v75))
  {

    v60 = *(v103 + 384);
    goto LABEL_18;
  }

  v14 = *(v103 + 384);
  v62 = static UnsafeMutablePointer.allocate(capacity:)();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v63 = createStorage<A>(capacity:type:)(0);
  v64 = createStorage<A>(capacity:type:)(1);
  *(v103 + 232) = v62;
  *(v103 + 240) = v63;
  *(v103 + 248) = v64;
  serialize(_:at:)(2, (v103 + 232));
  serialize(_:at:)(1, (v103 + 232));
  *(v103 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v103 + 112) = v70;
  closure #1 in osLogInternal(_:log:type:)(v103 + 104, v103 + 232, v103 + 240, v103 + 248);
  if (v14)
  {
LABEL_24:
  }

  *(v103 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v103 + 112) = v71;
  closure #1 in osLogInternal(_:log:type:)(v103 + 104, v103 + 232, v103 + 240, v103 + 248);
  *(v103 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v103 + 112) = v72;
  closure #1 in osLogInternal(_:log:type:)(v103 + 104, v103 + 232, v103 + 240, v103 + 248);
  _os_log_impl(&dword_2686B1000, log, v75, "#PaymentsAppResolutionFlowStrategy %s is not hidden", v62, 0xCu);
  destroyStorage<A>(_:count:)(v63, 0, v61);
  destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D620BD0](v62, MEMORY[0x277D84B78]);

  v60 = 0;
  v59 = 0;
LABEL_18:
  v55 = *(v103 + 376);
  v57 = *(v103 + 344);
  v58 = *(v103 + 328);
  v52 = *(v103 + 312);
  v53 = *(v103 + 288);
  v54 = *(v103 + 392);
  v56 = *(v103 + 336);
  v51 = *(v103 + 296);
  MEMORY[0x277D82BD8](log);
  (*(v51 + 8))(v52, v53);

  *(v103 + 224) = v54;
  Array.append(_:)();
  (*(v56 + 8))(v57, v58);
  v79 = v60;
  v80 = v59;
LABEL_19:
  v48 = *(v103 + 400);
  (*(*(v103 + 360) + 8))(*(v103 + 368), *(v103 + 352));

  v49 = v79;
  for (i = v80; ; i = v33)
  {
    v18 = *(v103 + 392);

    *(v103 + 384) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMd, &_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMR);
    IndexingIterator.next()();
    v100 = *(v103 + 176);
    *(v103 + 392) = v100;
    if (!v100)
    {
      v22 = *(v103 + 368);
      v23 = *(v103 + 344);
      v24 = *(v103 + 320);
      v25 = *(v103 + 312);
      v26 = *(v103 + 304);
      outlined destroy of [SFCardSection]((v103 + 56));
      v27 = *(v103 + 160);

      __swift_destroy_boxed_opaque_existential_0((v103 + 16));
      outlined destroy of [SFCardSection]((v103 + 160));

      v19 = *(*(v103 + 136) + 8);
      v20 = *(v103 + 136);

      return v19(v27);
    }

    *(v103 + 184) = v100;
    v2 = App.appIdentifier.getter();
    v101 = v2;
    v102 = v3;
    *(v103 + 400) = v3;
    if (v3)
    {
      break;
    }

    v15 = *(v103 + 304);
    v39 = *(v103 + 288);
    v38 = *(v103 + 296);
    v16 = Logger.payments.unsafeMutableAddressor();
    (*(v38 + 16))(v15, v16, v39);

    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v40 + 24) = v100;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v41 + 24) = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v44 + 24) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v45 = v17;

    *v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v45[1] = v42;

    v45[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v45[3] = v43;

    v45[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v45[5] = v44;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v46, v47))
    {
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0);
      v37 = createStorage<A>(capacity:type:)(1);
      *(v103 + 200) = v35;
      *(v103 + 208) = v36;
      *(v103 + 216) = v37;
      serialize(_:at:)(2, (v103 + 200));
      serialize(_:at:)(1, (v103 + 200));
      *(v103 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 80) = v42;
      closure #1 in osLogInternal(_:log:type:)(v103 + 72, v103 + 200, v103 + 208, v103 + 216);
      if (v49)
      {
        goto LABEL_24;
      }

      *(v103 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 80) = v43;
      closure #1 in osLogInternal(_:log:type:)(v103 + 72, v103 + 200, v103 + 208, v103 + 216);
      *(v103 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v103 + 80) = v44;
      closure #1 in osLogInternal(_:log:type:)(v103 + 72, v103 + 200, v103 + 208, v103 + 216);
      _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsAppResolutionFlowStrategy %s has no bundleID, but not filtering it out", v35, 0xCu);
      destroyStorage<A>(_:count:)(v36, 0, v34);
      destroyStorage<A>(_:count:)(v37, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v35, MEMORY[0x277D84B78]);

      v32 = 0;
      v33 = 0;
    }

    else
    {

      v32 = v49;
      v33 = i;
    }

    v31 = *(v103 + 376);
    v29 = *(v103 + 304);
    v30 = *(v103 + 288);
    v28 = *(v103 + 296);
    MEMORY[0x277D82BD8](v46);
    (*(v28 + 8))(v29, v30);

    *(v103 + 192) = v100;
    Array.append(_:)();
    v49 = v32;
  }

  *(v103 + 88) = v2;
  *(v103 + 96) = v3;
  v98 = *(v103 + 40);
  v99 = *(v103 + 48);
  __swift_project_boxed_opaque_existential_1((v103 + 16), v98);
  v4 = *(MEMORY[0x277D5BFC0] + 4);
  v5 = swift_task_alloc();
  *(v103 + 408) = v5;
  *v5 = *(v103 + 136);
  v5[1] = PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
  v6 = *(v103 + 368);

  return MEMORY[0x2821BB7C0](v6, v101, v102, v98, v99);
}

uint64_t implicit closure #1 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t PaymentsAppResolutionFlowStrategy.finalizeAppsForDisambiguation(_:)(uint64_t *a1)
{
  v16 = 0;
  v15 = 0;
  v11 = 0;
  v2 = *v1;
  v16 = a1;
  v15 = v1;
  v14 = *(v2 + 80);
  v9 = *a1;

  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  Collection.firstIndex(where:)();
  result = outlined destroy of [SFCardSection](v12);
  if ((v13 & 1) == 0)
  {
    v11 = v12[1];
    v5 = *a1;
    type metadata accessor for App();
    Array.subscript.getter();
    v6 = App.appIdentifier.getter();
    v7 = v4;

    v10[0] = v6;
    v10[1] = v7;
    result = outlined destroy of String.UTF8View(v10);
    if (!v7)
    {
      Array.remove(at:)();

      static AppUtil.walletApp.getter();
      return Array.append(_:)();
    }
  }

  return result;
}

id PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(uint64_t a1)
{
  v14 = 0;
  v13 = 0;
  v11 = 0;
  v2 = *v1;
  v14 = a1;
  v13 = v1;
  v12 = *(v2 + 80);
  v3 = App.appIdentifier.getter();
  v8 = static PaymentsDirectInvocations.selectionInvocation(appIdentifier:)(v3, v4);

  v11 = v8;
  v6 = objc_opt_self();
  outlined init with copy of GlobalsProviding((v1 + 14), v10);
  v7 = SKIDirectInvocationPayload.toRSKE(deviceState:)(v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v9 = [v6 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)()
{
  v2 = *(*v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  lazy protocol witness table accessor for type [SAAceView] and conformance [A]();
  Sequence.forEach(_:)();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(id *a1, char a2, uint64_t a3, void *a4)
{
  v171 = a4;
  v172 = a3;
  v173 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v182 = 0;
  v177 = 0;
  v176 = 0;
  v4 = *a4;
  v174 = *a1;
  v191 = v174;
  v190 = a2;
  v189 = a3;
  v188 = a4;
  v187 = *(v4 + 80);
  if (a2)
  {
    v5 = v174;
    objc_opt_self();
    v169 = swift_dynamicCastObjCClass();
    if (v169)
    {
      v168 = v169;
    }

    else
    {

      v168 = 0;
    }

    v167 = v168;
    if (v168)
    {
      v166 = v167;
      v164 = v167;
      v177 = v167;
      v6 = [v167 templateItems];
      v165 = v6;
      if (v6)
      {
        v163 = v165;
        v160 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        v161 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v162 = v161;
      }

      else
      {
        v162 = 0;
      }

      v159 = v162;
      if (v162)
      {
        v158 = v159;
        v155 = v159;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        type metadata accessor for SASTColumnDataListItem();
        v156 = _arrayConditionalCast<A, B>(_:)();

        v157 = v156;
      }

      else
      {
        v157 = 0;
      }

      v153 = v157;
      if (v157)
      {
        v152 = v153;
        v140 = v153;
        v149 = v170;
        v176 = v153;
        v175[3] = v153;
        v175[2] = v172;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22SASTColumnDataListItemCGMd, &_sSaySo22SASTColumnDataListItemCGMR);
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
        v143 = lazy protocol witness table accessor for type [SASTColumnDataListItem] and conformance [A]();
        lazy protocol witness table accessor for type [App] and conformance [A]();
        zip<A, B>(_:_:)();
        v175[0] = v175[4];
        v175[1] = v175[5];

        v144 = v38;
        MEMORY[0x28223BE20](v38);
        v146 = v34;
        v36 = partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
        v37 = v7;
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMd, &_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMR);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        v145 = v148;
        v8 = lazy protocol witness table accessor for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>();
        v9 = v149;
        v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed SAUIListItem, @guaranteed App) -> (@owned SAUIListItem), v146, v147, v148, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
        v150 = v9;
        v151 = v11;
        if (!v9)
        {
          v137 = v151;

          outlined destroy of Zip2Sequence<[SAUIListItem], [App]>(v175);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v164 setTemplateItems_];

          result = v150;
          v139 = v150;
          return result;
        }

        __break(1u);
        goto LABEL_70;
      }
    }
  }

  v13 = v174;
  objc_opt_self();
  v136 = swift_dynamicCastObjCClass();
  if (v136)
  {
    v135 = v136;
  }

  else
  {

    v135 = 0;
  }

  v134 = v135;
  if (!v135)
  {
    goto LABEL_53;
  }

  v133 = v134;
  v129 = v134;
  v183 = v134;
  v126 = 0;
  v127 = type metadata accessor for SFCard();
  v128 = v127;
  v130 = type metadata accessor for _SFPBCard();
  v131 = v130;
  v14 = [v134 cardData];
  v132 = v14;
  if (v14)
  {
    v125 = v132;
    v120 = v132;
    v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v15;

    v123 = v121;
    v124 = v122;
  }

  else
  {
    v123 = 0;
    v124 = 0xF000000000000000;
  }

  v119 = _SFPBCard.__allocating_init(data:)(v123, v124);
  if (v119)
  {
    v118 = v119;
  }

  else
  {
    LODWORD(v36) = 0;
    v35 = 348;
    v34[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v117 = SFCard.__allocating_init(protobuf:)(v118);
  if (!v117)
  {

LABEL_53:
    v26 = v174;
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65)
    {
      v64 = v65;
    }

    else
    {

      v64 = 0;
    }

    v63 = v64;
    if (v64)
    {
      v62 = v63;
      v59 = v63;
      v186 = v63;
      v27 = [v63 items];
      v60 = v27;
      if (v27)
      {
        v58 = v60;
        v55 = v60;
        v54 = type metadata accessor for SAUIListItem();
        v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      v53 = v57;
      if (v57)
      {
        v52 = v53;
        v40 = v53;
        v49 = v170;
        v185 = v53;
        v184[3] = v53;
        v184[2] = v172;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12SAUIListItemCGMd, &_sSaySo12SAUIListItemCGMR);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
        v43 = lazy protocol witness table accessor for type [SAUIListItem] and conformance [A]();
        lazy protocol witness table accessor for type [App] and conformance [A]();
        zip<A, B>(_:_:)();
        v184[0] = v184[4];
        v184[1] = v184[5];

        v44 = v38;
        MEMORY[0x28223BE20](v38);
        v46 = v34;
        v36 = partial apply for closure #4 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
        v37 = v28;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMd, &_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMR);
        v48 = type metadata accessor for SAUIListItem();
        v45 = v48;
        v29 = lazy protocol witness table accessor for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>();
        v30 = v49;
        v32 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed SAUIListItem, @guaranteed App) -> (@owned SAUIListItem), v46, v47, v48, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
        v50 = v30;
        v51 = v32;
        if (v30)
        {
          goto LABEL_72;
        }

        v38[1] = v51;

        outlined destroy of Zip2Sequence<[SAUIListItem], [App]>(v184);
        v39 = Array._bridgeToObjectiveC()().super.isa;

        [v59 setItems_];

        v61 = v50;
      }

      else
      {

        v61 = v170;
      }
    }

    else
    {
      v61 = v170;
    }

    v67 = v61;
LABEL_68:
    result = v67;
    v139 = v67;
    return result;
  }

  v116 = v117;
  v109 = v117;
  v113 = v170;
  v182 = v117;
  v181[1] = v172;

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v110 = v112;
  v16 = lazy protocol witness table accessor for type [App] and conformance [A]();
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:), v171, v111, v112, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  v114 = v170;
  v115 = v18;
  if (v170)
  {
LABEL_70:

    __break(1u);
    goto LABEL_71;
  }

  v106 = v115;

  v107 = Array._bridgeToObjectiveC()().super.isa;

  [v129 setReferencedCommands_];

  v108 = [v109 cardSections];
  if (v108)
  {
    v105 = v108;
    v102 = v108;
    v101 = type metadata accessor for SFCardSection();
    v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v180 = v104;
  if (!v104)
  {
    outlined destroy of [SFCardSection](&v180);
    v100 = v114;
LABEL_42:
    v89 = v100;
    v23 = v109;
    v90 = _SFPBCard.__allocating_init(facade:)(v109);
    if (v90)
    {
      v88 = v90;
      v84 = v90;
      v24 = [v90 data];
      v85 = v24;
      if (v24)
      {
        v83 = v85;
        v78 = v85;
        v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v25;

        v81 = v79;
        v82 = v80;
      }

      else
      {
        v81 = 0;
        v82 = 0xF000000000000000;
      }

      v77 = v82;
      v76 = v81;

      v86 = v76;
      v87 = v77;
    }

    else
    {
      v86 = 0;
      v87 = 0xF000000000000000;
    }

    v74 = v87;
    v75 = v86;
    if (v87 >> 60 == 15)
    {
      v71 = 0;
    }

    else
    {
      v72 = v75;
      v73 = v74;
      v68 = v74;
      v69 = v75;
      v70 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v69, v68);
      v71 = v70;
    }

    v66 = v71;
    [v129 setCardData_];

    v67 = v89;
    goto LABEL_68;
  }

  v98 = v114;
  v91 = v180;

  outlined destroy of [SFCardSection](&v180);
  v179 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  v19 = lazy protocol witness table accessor for type [SFCardSection] and conformance [A]();
  v93 = &v179;
  MEMORY[0x26D620820](v181, v92, v19);
  outlined destroy of [SFCardSection](&v179);
  v178 = v181[0];
  v20 = v129;
  v94 = v38;
  MEMORY[0x28223BE20](v38);
  v36 = v129;
  v95 = v34;
  MEMORY[0x28223BE20](v34);
  v96 = v33;
  v33[2] = partial apply for closure #3 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
  v33[3] = v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMd, &_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMR);
  lazy protocol witness table accessor for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>();
  v22 = v98;
  Sequence.forEach(_:)();
  v99 = v22;
  if (!v22)
  {

    outlined destroy of [SFCardSection](&v178);
    v100 = v99;
    goto LABEL_42;
  }

LABEL_71:

  __break(1u);
LABEL_72:

  __break(1u);
  return result;
}

void *closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *(*a3 + 80);
  v10 = App.appIdentifier.getter();
  v11 = v3;
  if (v3)
  {
    type metadata accessor for SASTCommandTemplateAction();
    type metadata accessor for INIntent();
    v6 = SAUIAppPunchOut.__allocating_init()();

    v12 = SASTCommandTemplateAction.init(intent:appId:)(v6, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    _allocateUninitializedArray<A>(_:)();
    *v4 = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(a2);
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setCommands_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BE0](v12);
    [a1 setAction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BE0](a1);
  return a1;
}

uint64_t thunk for @callee_guaranteed (@guaranteed SASTColumnDataListItem, @guaranteed App) -> (@owned SASTTemplateItem)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v36 = a2;
  v81 = a3;
  v72 = a4;
  v45 = a5;
  v80 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Unexpectedly found nil while unwrapping an Optional value";
  v41 = "Swift/Sequence.swift";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v83[3] = a3;
  v83[2] = a4;
  v83[1] = a5;
  v73 = 0;
  v57 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](0);
  v50 = &v23 - v49;
  v51 = *(v9 - 8);
  v52 = v9 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v23 - v53;
  v55 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v56 = &v23 - v55;
  v58 = type metadata accessor for Optional();
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v73);
  v60 = &v23 - v59;
  v61 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v23 - v61;
  v63 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v23 - v63;
  v65 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v23 - v65;
  v76 = *(v18 - 8);
  v77 = v18 - 8;
  v67 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v75 = &v23 - v67;
  v68 = swift_getAssociatedTypeWitness();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v79 = &v23 - v71;
  v82 = dispatch thunk of Sequence.underestimatedCount.getter();
  v83[0] = ContiguousArray.init()();
  v74 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v82);
  (*(v76 + 16))(v75, v78, v81);
  dispatch thunk of Sequence.makeIterator()();
  result = v82;
  if (v82 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v82)
    {
      v33 = 0;
      for (i = v37; ; i = v29)
      {
        v31 = i;
        v32 = v33;
        if (v33 < 0 || v32 >= v82)
        {
          break;
        }

        if (v82 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          break;
        }

        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        if ((*(v47 + 48))(v62, 1, AssociatedTypeWitness) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v21 = v31;
        v35(v62, v56);
        v29 = v21;
        if (v21)
        {
          (*(v69 + 8))(v79, v68);
          outlined destroy of ContiguousArray<A1>(v83);
          (*(v51 + 32))(v38, v56, v45);
          (*(v47 + 8))(v62, AssociatedTypeWitness);
          return v23;
        }

        (*(v47 + 8))(v62, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        if (v30 == v82)
        {
          v28 = v29;
          goto LABEL_21;
        }

        result = v29;
        v33 = v30;
      }

      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v28 = v37;
LABEL_21:
    for (j = v28; ; j = v24)
    {
      v26 = j;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(v47 + 48))(v60, 1, AssociatedTypeWitness) == 1)
      {
        (*(v69 + 8))(v79, v68);
        outlined destroy of A.Element?(v60, AssociatedTypeWitness);
        v25 = v83[0];

        return v25;
      }

      (*(v47 + 32))(v50, v60, AssociatedTypeWitness);
      v22 = v26;
      v35(v50, v54);
      v24 = v22;
      if (v22)
      {
        break;
      }

      (*(v47 + 8))(v50, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
    }

    (*(v47 + 8))(v50, AssociatedTypeWitness);
    (*(v69 + 8))(v79, v68);
    outlined destroy of ContiguousArray<A1>(v83);
    (*(v51 + 32))(v38, v54, v45);
    return v23;
  }

  return result;
}

id closure #2 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(*a2 + 80);
  result = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(*a1);
  *a3 = result;
  return result;
}

uint64_t *closure #3 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(uint64_t a1, id a2, void *a3)
{
  v32[3] = a1;
  v32[2] = a2;
  v32[1] = a3;
  v26 = [a2 commands];
  if (v26)
  {
    type metadata accessor for SFAbstractCommand();
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v26);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v32[0] = v24;
  if (!v24)
  {
    return outlined destroy of [SFCardSection](v32);
  }

  v21 = v32[0];

  outlined destroy of [SFCardSection](v32);
  v31 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SFAbstractCommandCGMd, &_sSaySo17SFAbstractCommandCGMR);
  lazy protocol witness table accessor for type [SFAbstractCommand] and conformance [A]();
  Collection.first.getter();
  v22 = v30;

  if (v30)
  {
    v4 = [v30 value];
    v29 = v4;
    if (v4)
    {
      v20 = v29;
      MEMORY[0x277D82BE0](v29);
      outlined destroy of SFRichText?(&v29);
      MEMORY[0x277D82BD8](v22);
      v28 = [v20 referentialCommand];
      if (v28)
      {
        v18 = v28;
        MEMORY[0x277D82BE0](v28);
        outlined destroy of SFRichText?(&v28);
        MEMORY[0x277D82BD8](v20);
        v19 = [a3 referencedCommands];
        if (v19)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          MEMORY[0x277D82BD8](v19);
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (!v17)
        {
          LOBYTE(v6) = 2;
          v7 = 356;
          LODWORD(v8) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
        Array.subscript.getter();
        swift_getObjectType();
        v15 = [v27 aceId];
        if (v15)
        {
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v5;
          MEMORY[0x277D82BD8](v15);
          v13 = v11;
          v14 = v12;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        if (v14)
        {
          v9 = MEMORY[0x26D620690](v13);

          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        [v18 setReferenceIdentifier_];
        MEMORY[0x277D82BD8](v10);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v18);
      }

      else
      {
        outlined destroy of SFRichText?(&v28);
        return MEMORY[0x277D82BD8](v20);
      }
    }

    else
    {
      outlined destroy of SFRichText?(&v29);
      return MEMORY[0x277D82BD8](v22);
    }
  }

  return result;
}

void *closure #4 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*a3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  _allocateUninitializedArray<A>(_:)();
  *v3 = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(a2);
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setCommands_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](a1);
  return a1;
}

uint64_t PaymentsAppResolutionFlowStrategy.deinit()
{
  v5 = *(*v0 + 80);
  outlined destroy of [SFCardSection](v0 + 2);
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v2 = v0[19];

  return v4;
}

uint64_t PaymentsAppResolutionFlowStrategy.__deallocating_deinit()
{
  v2 = *(*v0 + 80);
  PaymentsAppResolutionFlowStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.resolveApp(input:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsAppResolutionFlowStrategy.resolveApp(input:)(a1);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B620] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B628] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA008](a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B630] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationPrompt(app:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)(a1, a2);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C030] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C038] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C020] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C028] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5C018] + 4);
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(a1, a2);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C078] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C080] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C070] + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5C068] + 4);
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v5 = isa;
  }

  v3 = [v8 initWithData_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

id @nonobjc SFCard.init(protobuf:)(uint64_t a1)
{
  v4 = [v1 initWithProtobuf_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc _SFPBCard.init(facade:)(uint64_t a1)
{
  v4 = [v1 initWithFacade_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_268708490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687084D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708510()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

void *outlined init with copy of AppResolutionResult.AppResolutionResultError?(const void *a1, void *a2)
{
  v6 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of AppResolutionResult.AppResolutionResultError?(uint64_t a1)
{
  v3 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2687087E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v1 = lazy protocol witness table accessor for type [App] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [App] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268708970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687089B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708BAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708C44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708C84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708D1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708D5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708E34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708E74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708F0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268708F4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709020()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687090A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_268709218()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(v2);
}

uint64_t sub_2687093A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687093E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687094B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687094F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v3 = type metadata accessor for ConfirmationResponse();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of ConfirmationResponse?(const void *a1, void *a2)
{
  v6 = type metadata accessor for ConfirmationResponse();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268709708()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687097A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687097E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709820()
{
  v3 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(v2);
}

uint64_t sub_2687099A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687099E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined consume of PaymentsDirectInvocations(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_268709A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709C34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709CB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for SAUIAssistantUtteranceView()
{
  v2 = lazy cache variable for type metadata for SAUIAssistantUtteranceView;
  if (!lazy cache variable for type metadata for SAUIAssistantUtteranceView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIAssistantUtteranceView);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268709E18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for App();
  v1 = lazy protocol witness table accessor for type App and conformance App();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
  v1 = lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for RRCandidate();
  v1 = lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type App and conformance App()
{
  v2 = lazy protocol witness table cache variable for type App and conformance App;
  if (!lazy protocol witness table cache variable for type App and conformance App)
  {
    type metadata accessor for App();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type App and conformance App);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268709F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268709FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A00C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A0A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A0E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A1BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870A1FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SAAceView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAAceView] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SAAceView] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsAppResolutionFlowStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t lazy protocol witness table accessor for type [SAUIListItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12SAUIListItemCGMd, &_sSaySo12SAUIListItemCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIListItem()
{
  v2 = lazy cache variable for type metadata for SAUIListItem;
  if (!lazy cache variable for type metadata for SAUIListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMd, &_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of Zip2Sequence<[SAUIListItem], [App]>(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

unint64_t type metadata accessor for SFCard()
{
  v2 = lazy cache variable for type metadata for SFCard;
  if (!lazy cache variable for type metadata for SFCard)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFCard);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for _SFPBCard()
{
  v2 = lazy cache variable for type metadata for _SFPBCard;
  if (!lazy cache variable for type metadata for _SFPBCard)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for _SFPBCard);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SFCardSection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SFCardSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SFCardSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SFCardSection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMd, &_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SASTColumnDataListItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22SASTColumnDataListItemCGMd, &_sSaySo22SASTColumnDataListItemCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMd, &_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INIntent()
{
  v2 = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SFAbstractCommand] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17SFAbstractCommandCGMd, &_sSaySo17SFAbstractCommandCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of ContiguousArray<A1>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t outlined destroy of A.Element?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  v2 = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Input and conformance Input);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of [App](uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26870AC00()
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v7 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  (*(v5 + 8))(v0 + v6, v7);
  v3 = *(v0 + v8);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t *a1)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + ((v2 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(a1, v3, v4, v1 + v2, v5);
}

void *outlined init with copy of Result<AppResolutionResult, Error>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, &_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    MEMORY[0x26D621420]();
    *a2 = v4;
  }

  else
  {
    v2 = type metadata accessor for AppResolutionResult();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26870AF48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870AF88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined assign with take of AppResolutionResult.AppResolutionResultError?(const void *a1, void *a2)
{
  v7 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_26870B1F0()
{
  v3 = *(type metadata accessor for AppResolutionResult.AppResolutionResultError() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v1 = *(type metadata accessor for AppResolutionResult.AppResolutionResultError() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)();
}

uint64_t sub_26870B378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26870B3B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError()
{
  v2 = lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError;
  if (!lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError)
  {
    type metadata accessor for AppResolutionResult.AppResolutionResultError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.disabledSurfIntent(), 0);
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  v8 = *v1;
  v2 = *(*v1 + 64);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[9] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.disabledSurfIntent(), 0);
  }

  else
  {
    v3 = v8[7];
    v7 = v8[6];

    v4 = *(*v9 + 8);

    return v4();
  }
}

{
  v1 = v0[7];
  v7 = v0[6];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[9];

  return v3();
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.unsupportedSurfIntent(), 0);
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsUnsupportedIntentCATs()
{
  v1 = type metadata singleton initialization cache for PaymentsUnsupportedIntentCATs;
  if (!type metadata singleton initialization cache for PaymentsUnsupportedIntentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for PaymentsUnsupportedIntentCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsUnsupportedIntentCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return PaymentsUnsupportedIntentCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t PaymentsUnsupportedIntentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapper.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemOffered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(gaveOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

uint64_t Siri_Nlu_External_SystemPrompted.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v24 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v8 - v10;
  v11 = 0;
  v27 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11);
  v13 = &v8 - v12;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v15 = &v8 - v14;
  v31 = &v8 - v14;
  v23 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v17 = *(v19 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v24);
  v22 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v21 = &v8 - v18;
  v30 = &v8 - v18;
  v29 = v6;
  Siri_Nlu_External_SystemPrompted.init()();
  (*(v19 + 32))(v21, v22, v23);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v28);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  }

  else
  {
    (*(v25 + 32))(v15, v28, v27);
    (*(v25 + 16))(v13, v15, v27);
    Siri_Nlu_External_SystemPrompted.target.setter();
    (*(v25 + 8))(v15, v27);
  }

  (*(v19 + 16))(v9, v21, v23);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v24);
  return (*(v19 + 8))(v21, v23);
}

void *outlined init with copy of Siri_Nlu_External_UsoGraph?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_UsoGraph?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v18 = a1;
  v28 = 0;
  v27 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v21 = &v11 - v13;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v18);
  v15 = &v11 - v14;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v23 = &v11 - v16;
  v28 = &v11 - v16;
  v27 = v5;
  v25 = 0;
  v20 = type metadata accessor for UsoTaskBuilder();
  v17 = _allocateUninitializedArray<A>(_:)();
  v19 = v6;

  v7 = v17;
  *v19 = v18;
  _finalizeUninitializedArray<A>(_:)();
  v22 = v7;
  v8 = type metadata accessor for UsoBuilderOptions();
  (*(*(v8 - 8) + 56))(v21, 1);
  v24 = MEMORY[0x26D61F5F0](v22, v21);
  outlined destroy of UsoBuilderOptions?(v21);

  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v26 = 0;

  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v9 - 8) + 56))(v23, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v23, v15);
  Siri_Nlu_External_SystemPrompted.init(_:)(v15, v12);
  return outlined destroy of Siri_Nlu_External_UsoGraph?(v23);
}

uint64_t Siri_Nlu_External_SystemOffered.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_SystemOffered.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v9 = a1;
  v15 = 0;
  v5[1] = 0;
  v8 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v11 = *(v8 - 8);
  v7 = v8 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = v5 - v6;
  v10 = (*(*(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v14 = v5 - v10;
  v15 = v3;
  (*(v11 + 16))(v2);
  Siri_Nlu_External_UserDialogAct.init(_:)(v12, v14);
  return Siri_Nlu_External_SystemOffered.init(_:)(v14, v13);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

{
  v13 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  v6 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v7;
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = *(v18 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v11 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v10;
  v20 = &v6 - v10;
  v23 = &v6 - v10;
  v22 = v3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v18 + 32))(v4, v11, v21);
  (*(v14 + 16))(v12, v17, v16);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  (*(v18 + 16))(v13, v20, v21);
  (*(v14 + 8))(v17, v16);
  return (*(v18 + 8))(v20, v21);
}

uint64_t Siri_Nlu_External_SystemGaveOptions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v10 = a1;
  v17 = 0;
  v16 = 0;
  v14 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v7 = *(v12 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10);
  v9 = &v6 - v6;
  v8 = v6;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v6 - v8;
  v15 = &v6 - v8;
  v17 = &v6 - v8;
  v16 = v3;
  Siri_Nlu_External_SystemGaveOptions.init()();
  (*(v12 + 32))(v4, v9, v14);
  MEMORY[0x26D61F470](v10);
  (*(v12 + 16))(v11, v15, v14);
  return (*(v12 + 8))(v15, v14);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v24 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v8 - v10;
  v11 = 0;
  v27 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11);
  v13 = &v8 - v12;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v15 = &v8 - v14;
  v31 = &v8 - v14;
  v23 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v17 = *(v19 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v24);
  v22 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v21 = &v8 - v18;
  v30 = &v8 - v18;
  v29 = v6;
  Siri_Nlu_External_UserStatedTask.init()();
  (*(v19 + 32))(v21, v22, v23);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v28);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  }

  else
  {
    (*(v25 + 32))(v15, v28, v27);
    (*(v25 + 16))(v13, v15, v27);
    Siri_Nlu_External_UserStatedTask.task.setter();
    (*(v25 + 8))(v15, v27);
  }

  (*(v19 + 16))(v9, v21, v23);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v24);
  return (*(v19 + 8))(v21, v23);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v16 = a1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v12 = &v10 - v11;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v11);
  v21 = &v10 - v13;
  v27 = &v10 - v13;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16);
  v19 = &v10 - v14;
  v26 = v4;
  v23 = 0;
  v18 = type metadata accessor for UsoTaskBuilder();
  v15 = _allocateUninitializedArray<A>(_:)();
  v17 = v5;

  v6 = v15;
  *v17 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = type metadata accessor for UsoBuilderOptions();
  (*(*(v7 - 8) + 56))(v19, 1);
  v22 = MEMORY[0x26D61F5F0](v20, v19);
  outlined destroy of UsoBuilderOptions?(v19);

  v25 = v22;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v24 = 0;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v8 - 8) + 56))(v21, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v21, v12);
  Siri_Nlu_External_UserStatedTask.init(_:)(v12, v10);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v21);
}

uint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
  lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
  Collection.first.getter();

  return v1;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v25 = 0;
  v27 = closure #1 in Siri_Nlu_External_UserDialogAct.contactId.getter;
  v29 = 0;
  v11 = 0;
  v21 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = &v4 - v12;
  v18 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v4 - v13;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v24 = &v4 - v14;
  v29 = v0;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v15 + 8))(v17, v18);
  v23 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v19 + 8))(v22, v21);
  v28 = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMd, &_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]();
  Sequence.first(where:)();
  outlined destroy of [SFCardSection](&v28);
  v8 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  if ((*(v9 + 48))(v24, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoEntityIdentifier?(v24);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v5 = v2;
    (*(v9 + 8))(v24, v8);
    v6 = v4;
    v7 = v5;
  }

  return v6;
}

uint64_t closure #1 in Siri_Nlu_External_UserDialogAct.contactId.getter(uint64_t a1)
{
  v14 = a1;
  v25 = 0;
  v15 = type metadata accessor for Google_Protobuf_StringValue();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v19 = &v8 - v18;
  v25 = a1;
  v20 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
  v23 = v2;
  v3 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
  v21 = *v3;
  v22 = *(v3 + 1);

  v24 = MEMORY[0x26D620740](v20, v23, v21, v22);

  if (v24)
  {
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v9 = Google_Protobuf_StringValue.value.getter();
    v11 = v4;
    (*(v16 + 8))(v19, v15);
    v5 = UsoIdentifierNamespace.rawValue.getter(0);
    v10 = v6;
    v12 = MEMORY[0x26D620740](v9, v11, v5);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMd, &_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Siri_Nlu_External_UsoEntityIdentifier?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t Siri_Nlu_External_UserDialogAct.appId.getter()
{
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v46 = 0;
  v45 = 0;
  v39 = 0;
  v38 = 0;
  v72 = v0;
  if (Siri_Nlu_External_UserDialogAct.usoTask.getter())
  {
    UsoTask.eraseToAny.getter();
  }

  else
  {
    memset(v69, 0, sizeof(v69));
    v70 = 0;
  }

  if (!v70)
  {
    outlined destroy of FlowActivity?(v69);
    return 0;
  }

  outlined init with take of Any(v69, v71);
  outlined init with copy of Any(v71, v68);
  type metadata accessor for UsoTask_noVerb_common_Payment();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast())
    {
      v45 = v66;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v43[1])
      {
        v23 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v43[0] = v24;

      if (v24)
      {
        v44 = v43[0];
      }

      else
      {

        dispatch thunk of Uso_VerbTemplate_Target.target.getter();

        if (v42 && (v22 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v22))
        {
          v20 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v41 = v21;

        if (v21)
        {
          v44 = v41;
        }

        else
        {

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v40 && (v19 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v19))
          {
            v44 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
          }

          else
          {
            v44 = 0;
          }
        }

        if (v43[0])
        {
          outlined destroy of ContiguousArray<A1>(v43);
        }
      }

      if (v44)
      {
        v39 = v44;
        v18 = UsoEntity_common_App.appIdentifier.getter();

        __swift_destroy_boxed_opaque_existential_0(v68);
        __swift_destroy_boxed_opaque_existential_0(v71);
        return v18;
      }

      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    else
    {
      type metadata accessor for UsoTask_requestMoney_common_Payment();
      if (swift_dynamicCast())
      {
        v52 = v65;

        dispatch thunk of Uso_VerbTemplate_Target.target.getter();

        if (v50[1])
        {
          v16 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v50[0] = v17;

        if (v17)
        {
          v51 = v50[0];
        }

        else
        {

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v49 && (v15 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v15))
          {
            v13 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v48 = v14;

          if (v14)
          {
            v51 = v48;
          }

          else
          {

            dispatch thunk of Uso_VerbTemplate_Target.target.getter();

            if (v47 && (v12 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v12))
            {
              v51 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
            }

            else
            {
              v51 = 0;
            }
          }

          if (v50[0])
          {
            outlined destroy of ContiguousArray<A1>(v50);
          }
        }

        if (v51)
        {
          v46 = v51;
          v11 = UsoEntity_common_App.appIdentifier.getter();

          __swift_destroy_boxed_opaque_existential_0(v68);
          __swift_destroy_boxed_opaque_existential_0(v71);
          return v11;
        }

        __swift_destroy_boxed_opaque_existential_0(v68);
      }

      else
      {
        type metadata accessor for UsoTask_request_common_PaymentAccount();
        if (swift_dynamicCast())
        {
          v55 = v64;

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

          if (v54)
          {
            v9 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            v53 = v10;
            v8 = UsoEntity_common_App.appIdentifier.getter();

            __swift_destroy_boxed_opaque_existential_0(v68);
            __swift_destroy_boxed_opaque_existential_0(v71);
            return v8;
          }
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_PaymentAccount();
          if (swift_dynamicCast())
          {
            v58 = v63;

            dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

            if (v57)
            {
              v6 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

              v7 = v6;
            }

            else
            {
              v7 = 0;
            }

            if (v7)
            {
              v56 = v7;
              v5 = UsoEntity_common_App.appIdentifier.getter();

              __swift_destroy_boxed_opaque_existential_0(v68);
              __swift_destroy_boxed_opaque_existential_0(v71);
              return v5;
            }
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(v68);
              goto LABEL_101;
            }

            v61 = v62;

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v60)
            {
              v3 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

              v4 = v3;
            }

            else
            {
              v4 = 0;
            }

            if (v4)
            {
              v59 = v4;
              v2 = UsoEntity_common_App.appIdentifier.getter();

              __swift_destroy_boxed_opaque_existential_0(v68);
              __swift_destroy_boxed_opaque_existential_0(v71);
              return v2;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v68);
      }
    }

LABEL_101:
    __swift_destroy_boxed_opaque_existential_0(v71);
    return 0;
  }

  v38 = v67;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (v36[1])
  {
    v31 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v36[0] = v32;

  if (v32)
  {
    v37 = v36[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v35 && (v30 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v30))
    {
      v28 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v34 = v29;

    if (v29)
    {
      v37 = v34;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      if (v33 && (v27 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v27))
      {
        v37 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v37 = 0;
      }
    }

    if (v36[0])
    {
      outlined destroy of ContiguousArray<A1>(v36);
    }
  }

  if (!v37)
  {

    __swift_destroy_boxed_opaque_existential_0(v68);
    goto LABEL_101;
  }

  v25 = UsoEntity_common_App.appIdentifier.getter();

  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v71);
  return v25;
}

uint64_t Siri_Nlu_External_UserWantedToProceed.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v24 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v8 - v10;
  v11 = 0;
  v27 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11);
  v13 = &v8 - v12;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v15 = &v8 - v14;
  v31 = &v8 - v14;
  v23 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v17 = *(v19 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v24);
  v22 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v21 = &v8 - v18;
  v30 = &v8 - v18;
  v29 = v6;
  Siri_Nlu_External_UserWantedToProceed.init()();
  (*(v19 + 32))(v21, v22, v23);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v28);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  }

  else
  {
    (*(v25 + 32))(v15, v28, v27);
    (*(v25 + 16))(v13, v15, v27);
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    (*(v25 + 8))(v15, v27);
  }

  (*(v19 + 16))(v9, v21, v23);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v24);
  return (*(v19 + 8))(v21, v23);
}

uint64_t static Siri_Nlu_External_UserWantedToProceed.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v18 = a1;
  v28 = 0;
  v27 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v21 = &v11 - v13;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v18);
  v15 = &v11 - v14;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v23 = &v11 - v16;
  v28 = &v11 - v16;
  v27 = v5;
  v25 = 0;
  v20 = type metadata accessor for UsoTaskBuilder();
  v17 = _allocateUninitializedArray<A>(_:)();
  v19 = v6;

  v7 = v17;
  *v19 = v18;
  _finalizeUninitializedArray<A>(_:)();
  v22 = v7;
  v8 = type metadata accessor for UsoBuilderOptions();
  (*(*(v8 - 8) + 56))(v21, 1);
  v24 = MEMORY[0x26D61F5F0](v22, v21);
  outlined destroy of UsoBuilderOptions?(v21);

  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v26 = 0;

  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v9 - 8) + 56))(v23, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v23, v15);
  Siri_Nlu_External_UserWantedToProceed.init(_:)(v15, v12);
  return outlined destroy of Siri_Nlu_External_UsoGraph?(v23);
}

const char *Features.feature.getter(char a1)
{
  if (a1)
  {
    return "NLXFuture";
  }

  else
  {
    return "NLX";
  }
}

unint64_t lazy protocol witness table accessor for type Features and conformance Features()
{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsFeatureManager.isNLXEnabled.getter()
{
  v2[3] = &type metadata for Features;
  v2[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v2[0]) = 0;
  v1 = SiriPaymentsFeatureManager.logAndReturn(flag:)(v2);
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t SiriPaymentsFeatureManager.logAndReturn(flag:)(uint64_t a1)
{
  v52 = a1;
  v57 = partial apply for implicit closure #1 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v61 = partial apply for implicit closure #2 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v63 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v68 = partial apply for implicit closure #3 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v72 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = partial apply for closure #1 in OSLogArguments.append(_:);
  v78 = partial apply for closure #1 in OSLogArguments.append(_:);
  v80 = partial apply for closure #1 in OSLogArguments.append(_:);
  v82 = partial apply for closure #1 in OSLogArguments.append(_:);
  v84 = partial apply for closure #1 in OSLogArguments.append(_:);
  v86 = partial apply for closure #1 in OSLogArguments.append(_:);
  v88 = partial apply for closure #1 in OSLogArguments.append(_:);
  v91 = partial apply for closure #1 in OSLogArguments.append(_:);
  v105 = 0;
  v104 = 0;
  v45 = 0;
  v50 = type metadata accessor for Logger();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v36 - v46;
  v47 = v36 - v46;
  v105 = MEMORY[0x28223BE20](v52);
  v56 = isFeatureEnabled(_:)();
  v55 = 1;
  v104 = v56 & 1;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v48 + 16))(v1, v2, v50);
  v51 = v103;
  outlined init with copy of GlobalsProviding(v52, v103);
  v53 = 56;
  v70 = 7;
  v58 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v51, (v58 + 16));
  v54 = v102;
  outlined init with copy of GlobalsProviding(v52, v102);
  v62 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v54, (v62 + 16));
  v66 = 17;
  v71 = swift_allocObject();
  *(v71 + 16) = v56 & v55;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v75 = swift_allocObject();
  v65 = 32;
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  v67 = 8;
  *(v77 + 16) = 8;
  v69 = 32;
  v3 = swift_allocObject();
  v4 = v58;
  v60 = v3;
  *(v3 + 16) = v57;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v60;
  v79 = v5;
  *(v5 + 16) = v59;
  *(v5 + 24) = v6;
  v81 = swift_allocObject();
  *(v81 + 16) = v65;
  v83 = swift_allocObject();
  *(v83 + 16) = v67;
  v7 = swift_allocObject();
  v8 = v62;
  v64 = v7;
  *(v7 + 16) = v61;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v64;
  v85 = v9;
  *(v9 + 16) = v63;
  *(v9 + 24) = v10;
  v87 = swift_allocObject();
  *(v87 + 16) = v65;
  v89 = swift_allocObject();
  *(v89 + 16) = v67;
  v11 = swift_allocObject();
  v12 = v71;
  v73 = v11;
  *(v11 + 16) = v68;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v73;
  v92 = v13;
  *(v13 + 16) = v72;
  *(v13 + 24) = v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v90 = _allocateUninitializedArray<A>(_:)();
  v93 = v15;

  v16 = v75;
  v17 = v93;
  *v93 = v74;
  v17[1] = v16;

  v18 = v77;
  v19 = v93;
  v93[2] = v76;
  v19[3] = v18;

  v20 = v79;
  v21 = v93;
  v93[4] = v78;
  v21[5] = v20;

  v22 = v81;
  v23 = v93;
  v93[6] = v80;
  v23[7] = v22;

  v24 = v83;
  v25 = v93;
  v93[8] = v82;
  v25[9] = v24;

  v26 = v85;
  v27 = v93;
  v93[10] = v84;
  v27[11] = v26;

  v28 = v87;
  v29 = v93;
  v93[12] = v86;
  v29[13] = v28;

  v30 = v89;
  v31 = v93;
  v93[14] = v88;
  v31[15] = v30;

  v32 = v92;
  v33 = v93;
  v93[16] = v91;
  v33[17] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v96))
  {
    v34 = v45;
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = createStorage<A>(capacity:type:)(0);
    v40 = createStorage<A>(capacity:type:)(3);
    v41 = &v101;
    v101 = v38;
    v42 = &v100;
    v100 = v39;
    v43 = &v99;
    v99 = v40;
    serialize(_:at:)(2, &v101);
    serialize(_:at:)(3, v41);
    v97 = v74;
    v98 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v97, v41, v42, v43);
    v44 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v97 = v76;
      v98 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[6] = 0;
      v97 = v78;
      v98 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[5] = 0;
      v97 = v80;
      v98 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[4] = 0;
      v97 = v82;
      v98 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[3] = 0;
      v97 = v84;
      v98 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[2] = 0;
      v97 = v86;
      v98 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[1] = 0;
      v97 = v88;
      v98 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v36[0] = 0;
      v97 = v91;
      v98 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      _os_log_impl(&dword_2686B1000, v95, v96, "FeatureFlag: %s/%s=%s", v38, 0x20u);
      destroyStorage<A>(_:count:)(v39, 0, v37);
      destroyStorage<A>(_:count:)(v40, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v38, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v95);
  (*(v48 + 8))(v47, v50);
  return v56 & 1;
}

uint64_t SiriPaymentsFeatureManager.isNLXFutureEnabled.getter()
{
  v2[3] = &type metadata for Features;
  v2[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v2[0]) = 1;
  v1 = SiriPaymentsFeatureManager.logAndReturn(flag:)(v2);
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t implicit closure #1 in SiriPaymentsFeatureManager.logAndReturn(flag:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FeatureFlagsKey.domain.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SiriPaymentsFeatureManager.logAndReturn(flag:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FeatureFlagsKey.feature.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in SiriPaymentsFeatureManager.logAndReturn(flag:)(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("on", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("off", 3uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_26871117C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687111BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268711254()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268711294()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26871132C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26871136C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
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

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  *(v0 + 16) = v0;
  v1 = String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();
  v3 = *v1;
  v4 = *(v1 + 1);

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  *(v0 + 16) = v0;
  v1 = String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();
  v3 = *v1;
  v4 = *(v1 + 1);

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t AmountUnsupportedStrategy.deinit()
{
  result = v0;
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  return result;
}

uint64_t AmountUnsupportedStrategy.__deallocating_deinit()
{
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  AmountUnsupportedStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4C8] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for AmountUnsupportedStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t type metadata completion function for AmountUnsupportedStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
}

{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)()
{
  v12 = v0[5];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, 1);
  v0[7] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v11 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v12)
  {
    v9 = v10[5];
    v11[2]._object = type metadata accessor for PaymentsDialogConcept();
    v11[1]._countAndFlagsBits = v9;
  }

  else
  {
    v11[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v3 = *(MEMORY[0x277D55C70] + 4);
  v4 = swift_task_alloc();
  v10[9] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:);
  v5 = v10[6];

  return v8(v1._countAndFlagsBits, v1._object, v7);
}

{
  v1 = v0[8];
  v7 = v0[7];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[10];

  return v3();
}

uint64_t RequestPaymentCATsModern.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return RequestPaymentCATsModern.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t RequestPaymentCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

uint64_t RequestPaymentCATsModern.__allocating_init(useResponseMode:options:)(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return RequestPaymentCATsModern.init(useResponseMode:options:)(a1 & 1, a2);
}

uint64_t RequestPaymentCATsModern.init(useResponseMode:options:)(int a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = type metadata accessor for CATOption();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v7 = &v5 - v6;
  v15 = v8 & 1;
  v14 = v3;
  v16 = v2;
  (*(v10 + 16))();
  v13 = CATWrapperSimple.init(useResponseMode:options:)();

  v16 = v13;
  (*(v10 + 8))(v9, v12);

  return v13;
}

uint64_t SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
}

uint64_t SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)()
{
  v12 = v0[5];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  v0[7] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v11 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v12)
  {
    v9 = v10[5];
    v11[2]._object = type metadata accessor for PaymentsDialogConcept();
    v11[1]._countAndFlagsBits = v9;
  }

  else
  {
    v11[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v3 = *(MEMORY[0x277D55C70] + 4);
  v4 = swift_task_alloc();
  v10[9] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:);
  v5 = v10[6];

  return v8(v1._countAndFlagsBits, v1._object, v7);
}

uint64_t DisambiguationCATsModern.intentDisambiguationPrompt()()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](DisambiguationCATsModern.intentDisambiguationPrompt(), 0);
}

{
  v6 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  v0[5] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[6] = v8;
  v9 = (v6 + *v6);
  v2 = v6[1];
  v3 = swift_task_alloc();
  v7[7] = v3;
  *v3 = v7[2];
  v3[1] = DisambiguationCATsModern.intentDisambiguationPrompt();
  v4 = v7[4];

  return v9(v1._countAndFlagsBits, v1._object, v8);
}

{
  v1 = v0[6];
  v7 = v0[5];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[8];

  return v3();
}

uint64_t DisambiguationCATsModern.intentDisambiguationPrompt()(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 56);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[8] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](DisambiguationCATsModern.intentDisambiguationPrompt(), 0);
  }

  else
  {
    v4 = v10[6];
    v8 = v10[5];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t type metadata accessor for RequestPaymentCATsModern()
{
  v1 = type metadata singleton initialization cache for RequestPaymentCATsModern;
  if (!type metadata singleton initialization cache for RequestPaymentCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for RequestPaymentCATsModern()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for SendPaymentCATsModern()
{
  v1 = type metadata singleton initialization cache for SendPaymentCATsModern;
  if (!type metadata singleton initialization cache for SendPaymentCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SendPaymentCATsModern()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for DisambiguationCATsModern()
{
  v1 = type metadata singleton initialization cache for DisambiguationCATsModern;
  if (!type metadata singleton initialization cache for DisambiguationCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for DisambiguationCATsModern()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForCardInfoCATs.apply(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.apply()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.apply(), 0);
}

uint64_t SearchForCardInfoCATs.apply()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.goToAppleWebsite(), 0);
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.learn(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.learn()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.learn(), 0);
}

uint64_t SearchForCardInfoCATs.learn()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.openAppleWebsite(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.openAppleWebsite()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.openAppleWebsite(), 0);
}

uint64_t SearchForCardInfoCATs.openAppleWebsite()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.openWallet(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.openWallet()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.openWallet(), 0);
}

uint64_t SearchForCardInfoCATs.openWallet()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.appleCardBalance(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.appleCardBalance()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.appleCardBalance(), 0);
}

uint64_t SearchForCardInfoCATs.appleCardBalance()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unlock(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unlock()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unlock(), 0);
}

uint64_t SearchForCardInfoCATs.unlock()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unsupportedDevice(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unsupportedDevice()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unsupportedDevice(), 0);
}

uint64_t SearchForCardInfoCATs.unsupportedDevice()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unsupportedLocale(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unsupportedLocale()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unsupportedLocale(), 0);
}

uint64_t SearchForCardInfoCATs.unsupportedLocale()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for SearchForCardInfoCATs()
{
  v1 = type metadata singleton initialization cache for SearchForCardInfoCATs;
  if (!type metadata singleton initialization cache for SearchForCardInfoCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SearchForCardInfoCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForCardInfoCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return SearchForCardInfoCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t SearchForCardInfoCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapper.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

NSJSONWritingOptions default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14[10] = a1;
  v14[9] = a2;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v11 = type metadata accessor for PaymentsErrorTemplateProvider();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2, v14);
  v10 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2);
  v5 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2);
  v13 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v14, v10, v5);
  a5[3] = v11;
  WitnessTable = swift_getWitnessTable();
  result = v13;
  a5[4] = WitnessTable;
  *a5 = v13;
  return result;
}

uint64_t default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1)
{
  v2[5] = a1;
  type metadata accessor for PaymentsAppResolver();
  default argument 0 of PaymentsAppResolver.init(appLister:)(v2);
  return PaymentsAppResolver.__allocating_init(appLister:)(v2);
}

uint64_t default argument 0 of PaymentsAppResolver.init(appLister:)@<X0>(uint64_t a1@<X8>)
{
  PaymentsAppLister.init()();
  result = type metadata accessor for PaymentsAppLister();
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for PaymentsAppLister<A>;
  return result;
}

NSJSONWritingOptions default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1)
{
  v2[3] = a1;
  v2[2] = 0;
  v2[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v2[1] = v2 - v2[0];
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t FlowFactory.init(deviceState:contactResolver:)(uint64_t *a1, uint64_t *a2)
{
  v9 = 0;
  v11 = a1;
  v10 = a2;
  outlined init with copy of GlobalsProviding(a1, v8);
  outlined init with take of CommonLabelsProviding(v8, (v2 + 16));
  outlined init with copy of GlobalsProviding(a2, v7);
  outlined init with take of CommonLabelsProviding(v7, (v2 + 56));
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t FlowFactory.findFlow(for:)(uint64_t a1)
{
  v2[110] = v1;
  v2[109] = a1;
  v2[68] = v2;
  v2[69] = 0;
  v2[70] = 0;
  v2[71] = 0;
  v2[88] = 0;
  v2[93] = 0;
  v2[98] = 0;
  v2[103] = 0;
  v2[108] = 0;
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2[111] = v3;
  v11 = *(v3 - 8);
  v2[112] = v11;
  v4 = *(v11 + 64) + 15;
  v2[113] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15;
  v2[114] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[115] = v6;
  v12 = *(v6 - 8);
  v2[116] = v12;
  v13 = *(v12 + 64);
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v7 = type metadata accessor for USOParse();
  v2[126] = v7;
  v14 = *(v7 - 8);
  v2[127] = v14;
  v2[128] = *(v14 + 64);
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v8 = type metadata accessor for Parse();
  v2[131] = v8;
  v15 = *(v8 - 8);
  v2[132] = v15;
  v2[133] = *(v15 + 64);
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[69] = a1;
  v2[70] = v1;
  v9 = v2[68];

  return MEMORY[0x2822009F8](FlowFactory.findFlow(for:), 0);
}

uint64_t FlowFactory.findFlow(for:)()
{
  v288 = v0;
  v272 = v0[135];
  v270 = v0[132];
  v271 = v0[131];
  v1 = v0[109];
  v0[68] = v0;
  v269 = *(v270 + 16);
  v269();
  if ((*(v270 + 88))(v272, v271) != *MEMORY[0x277D5C160])
  {
    v76 = *(v268 + 1072);
    v74 = *(v268 + 1064);
    v77 = *(v268 + 1048);
    v39 = *(v268 + 936);
    v71 = *(v268 + 920);
    v72 = *(v268 + 872);
    v73 = *(v268 + 1056);
    v70 = *(v268 + 928);
    v40 = Logger.payments.unsafeMutableAddressor();
    (*(v70 + 16))(v39, v40, v71);
    (v269)(v76, v72, v77);
    v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v78 = swift_allocObject();
    (*(v73 + 32))(v78 + v75, v76, v77);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v80 = swift_allocObject();
    *(v80 + 16) = 32;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v79 = swift_allocObject();
    *(v79 + 16) = partial apply for implicit closure #3 in FlowFactory.findFlow(for:);
    *(v79 + 24) = v78;
    v82 = swift_allocObject();
    *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v82 + 24) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v83 = v41;

    *v83 = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[1] = v80;

    v83[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[3] = v81;

    v83[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[5] = v82;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v84, v85))
    {
      v67 = static UnsafeMutablePointer.allocate(capacity:)();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v68 = createStorage<A>(capacity:type:)(0);
      v69 = createStorage<A>(capacity:type:)(1);
      v273 = v67;
      v274 = v68;
      v275 = v69;
      serialize(_:at:)(2, &v273);
      serialize(_:at:)(1, &v273);
      v276 = partial apply for closure #1 in OSLogArguments.append(_:);
      v277 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v276, &v273, &v274, &v275);
      v276 = partial apply for closure #1 in OSLogArguments.append(_:);
      v277 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v276, &v273, &v274, &v275);
      v276 = partial apply for closure #1 in OSLogArguments.append(_:);
      v277 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v276, &v273, &v274, &v275);
      _os_log_impl(&dword_2686B1000, v84, v85, "#FlowFactory received unsupported parse: %s", v67, 0xCu);
      destroyStorage<A>(_:count:)(v68, 0, v66);
      destroyStorage<A>(_:count:)(v69, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v67, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v64 = *(v268 + 1080);
    v65 = *(v268 + 1048);
    v61 = *(v268 + 936);
    v62 = *(v268 + 920);
    v63 = *(v268 + 1056);
    v60 = *(v268 + 928);
    MEMORY[0x277D82BD8](v84);
    (*(v60 + 8))(v61, v62);
    (*(v63 + 8))(v64, v65);
    goto LABEL_93;
  }

  v250 = *(v268 + 1080);
  v2 = *(v268 + 1048);
  v254 = *(v268 + 1040);
  v257 = *(v268 + 1032);
  v255 = *(v268 + 1024);
  v258 = *(v268 + 1008);
  v3 = *(v268 + 1000);
  v252 = *(v268 + 920);
  v249 = *(v268 + 1016);
  v251 = *(v268 + 928);
  (*(*(v268 + 1056) + 96))();
  v259 = *(v249 + 32);
  v259(v254, v250, v258);
  *(v268 + 568) = v254;
  v4 = Logger.payments.unsafeMutableAddressor();
  v253 = *(v251 + 16);
  v253(v3, v4, v252);
  (*(v249 + 16))(v257, v254, v258);
  v256 = (*(v249 + 80) + 16) & ~*(v249 + 80);
  v260 = swift_allocObject();
  v259(v260 + v256, v257, v258);
  oslog = Logger.logObject.getter();
  v267 = static os_log_type_t.debug.getter();
  v262 = swift_allocObject();
  *(v262 + 16) = 32;
  v263 = swift_allocObject();
  *(v263 + 16) = 8;
  v261 = swift_allocObject();
  *(v261 + 16) = partial apply for implicit closure #1 in FlowFactory.findFlow(for:);
  *(v261 + 24) = v260;
  v264 = swift_allocObject();
  *(v264 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v264 + 24) = v261;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v265 = v5;

  *v265 = partial apply for closure #1 in OSLogArguments.append(_:);
  v265[1] = v262;

  v265[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v265[3] = v263;

  v265[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v265[5] = v264;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v267))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v247 = createStorage<A>(capacity:type:)(0);
    v248 = createStorage<A>(capacity:type:)(1);
    v283 = buf;
    v284 = v247;
    v285 = v248;
    serialize(_:at:)(2, &v283);
    serialize(_:at:)(1, &v283);
    v286 = partial apply for closure #1 in OSLogArguments.append(_:);
    v287 = v262;
    closure #1 in osLogInternal(_:log:type:)(&v286, &v283, &v284, &v285);
    v286 = partial apply for closure #1 in OSLogArguments.append(_:);
    v287 = v263;
    closure #1 in osLogInternal(_:log:type:)(&v286, &v283, &v284, &v285);
    v286 = partial apply for closure #1 in OSLogArguments.append(_:);
    v287 = v264;
    closure #1 in osLogInternal(_:log:type:)(&v286, &v283, &v284, &v285);
    _os_log_impl(&dword_2686B1000, oslog, v267, "#FlowFactory received uso parse: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v247, 0, v245);
    destroyStorage<A>(_:count:)(v248, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v6 = *(v268 + 1040);
  v235 = *(v268 + 1000);
  v236 = *(v268 + 920);
  v242 = *(v268 + 912);
  v240 = *(v268 + 904);
  v239 = *(v268 + 888);
  v234 = *(v268 + 928);
  v238 = *(v268 + 896);
  MEMORY[0x277D82BD8](oslog);
  v237 = *(v234 + 8);
  v237(v235, v236);
  v7 = USOParse.userParse.getter();
  v241 = MEMORY[0x26D61F2D0](v7);
  (*(v238 + 8))(v240, v239);
  *(v268 + 576) = v241;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v243 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v244 = *(v243 - 8);
  if ((*(v244 + 48))(v242, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v268 + 912));
  }

  else
  {
    v232 = *(v268 + 912);
    v233 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v244 + 8))(v232, v243);
    if (v233)
    {
      UsoTask.eraseToAny.getter();

      goto LABEL_10;
    }
  }

  *(v268 + 448) = 0;
  *(v268 + 456) = 0;
  *(v268 + 464) = 0;
  *(v268 + 472) = 0;
LABEL_10:
  if (*(v268 + 472))
  {
    outlined init with take of Any(v268 + 448, v268 + 416);
    outlined init with copy of Any(v268 + 416, v268 + 480);
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast())
    {
      v230 = *(v268 + 880);
      v8 = *(v268 + 872);
      v229 = *(v268 + 616);
      static AceService.currentAsync.getter();
      outlined init with copy of GlobalsProviding(v230 + 56, v268 + 376);
      v231 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v268 + 336, v268 + 376);
      __swift_destroy_boxed_opaque_existential_0((v268 + 376));
      __swift_destroy_boxed_opaque_existential_0((v268 + 336));
      if (v231)
      {
        objc_opt_self();
        v228 = swift_dynamicCastObjCClass();
        if (v228)
        {
          v227 = v228;
        }

        else
        {
          MEMORY[0x277D82BD8](v231);
          v227 = 0;
        }

        v226 = v227;
      }

      else
      {
        v226 = 0;
      }

      if (v226)
      {
        v222 = *(v268 + 1040);
        v223 = *(v268 + 1008);
        v9 = *(v268 + 880);
        v221 = *(v268 + 1016);
        *(v268 + 864) = v226;
        v224 = FlowFactory.sendPaymentFlow(intent:)(v226);
        MEMORY[0x277D82BD8](v226);

        __swift_destroy_boxed_opaque_existential_0((v268 + 480));
        __swift_destroy_boxed_opaque_existential_0((v268 + 416));
        (*(v221 + 8))(v222, v223);
        v225 = v224;
        goto LABEL_94;
      }

      v10 = *(v268 + 992);
      v217 = *(v268 + 920);
      v11 = Logger.payments.unsafeMutableAddressor();
      v253(v10, v11, v217);
      log = Logger.logObject.getter();
      v218 = static os_log_type_t.debug.getter();
      v220 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v218))
      {
        v213 = static UnsafeMutablePointer.allocate(capacity:)();
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v214 = createStorage<A>(capacity:type:)(0);
        v215 = createStorage<A>(capacity:type:)(0);
        *(v268 + 832) = v213;
        *(v268 + 840) = v214;
        *(v268 + 848) = v215;
        serialize(_:at:)(0, (v268 + 832));
        serialize(_:at:)(0, (v268 + 832));
        *(v268 + 856) = v220;
        v216 = swift_task_alloc();
        v216[2] = v268 + 832;
        v216[3] = v268 + 840;
        v216[4] = v268 + 848;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v218, "#FlowFactory couldn't create intent from parse", v213, 2u);
        destroyStorage<A>(_:count:)(v214, 0, v212);
        destroyStorage<A>(_:count:)(v215, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v213, MEMORY[0x277D84B78]);
      }

      v210 = *(v268 + 992);
      v211 = *(v268 + 920);
      MEMORY[0x277D82BD8](log);
      v237(v210, v211);

      __swift_destroy_boxed_opaque_existential_0((v268 + 480));
    }

    else
    {
      type metadata accessor for UsoTask_noVerb_common_Payment();
      if (swift_dynamicCast())
      {
        v208 = *(v268 + 880);
        v12 = *(v268 + 872);
        v207 = *(v268 + 624);
        static AceService.currentAsync.getter();
        outlined init with copy of GlobalsProviding(v208 + 56, v268 + 296);
        v209 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v268 + 256, v268 + 296);
        __swift_destroy_boxed_opaque_existential_0((v268 + 296));
        __swift_destroy_boxed_opaque_existential_0((v268 + 256));
        if (v209)
        {
          objc_opt_self();
          v206 = swift_dynamicCastObjCClass();
          if (v206)
          {
            v205 = v206;
          }

          else
          {
            MEMORY[0x277D82BD8](v209);
            v205 = 0;
          }

          v204 = v205;
        }

        else
        {
          v204 = 0;
        }

        if (v204)
        {
          v201 = *(v268 + 1040);
          v202 = *(v268 + 1008);
          v13 = *(v268 + 880);
          v200 = *(v268 + 1016);
          *(v268 + 824) = v204;
          v203 = FlowFactory.sendPaymentFlow(intent:)(v204);
          MEMORY[0x277D82BD8](v204);

          __swift_destroy_boxed_opaque_existential_0((v268 + 480));
          __swift_destroy_boxed_opaque_existential_0((v268 + 416));
          (*(v200 + 8))(v201, v202);
          v225 = v203;
          goto LABEL_94;
        }

        v14 = *(v268 + 984);
        v196 = *(v268 + 920);
        v15 = Logger.payments.unsafeMutableAddressor();
        v253(v14, v15, v196);
        v198 = Logger.logObject.getter();
        v197 = static os_log_type_t.debug.getter();
        v199 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v198, v197))
        {
          v192 = static UnsafeMutablePointer.allocate(capacity:)();
          v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v193 = createStorage<A>(capacity:type:)(0);
          v194 = createStorage<A>(capacity:type:)(0);
          *(v268 + 792) = v192;
          *(v268 + 800) = v193;
          *(v268 + 808) = v194;
          serialize(_:at:)(0, (v268 + 792));
          serialize(_:at:)(0, (v268 + 792));
          *(v268 + 816) = v199;
          v195 = swift_task_alloc();
          v195[2] = v268 + 792;
          v195[3] = v268 + 800;
          v195[4] = v268 + 808;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v198, v197, "#FlowFactory couldn't create intent from parse", v192, 2u);
          destroyStorage<A>(_:count:)(v193, 0, v191);
          destroyStorage<A>(_:count:)(v194, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v192, MEMORY[0x277D84B78]);
        }

        v189 = *(v268 + 984);
        v190 = *(v268 + 920);
        MEMORY[0x277D82BD8](v198);
        v237(v189, v190);

        __swift_destroy_boxed_opaque_existential_0((v268 + 480));
      }

      else
      {
        type metadata accessor for UsoTask_requestMoney_common_Payment();
        if (swift_dynamicCast())
        {
          v187 = *(v268 + 880);
          v16 = *(v268 + 872);
          v186 = *(v268 + 632);
          static AceService.currentAsync.getter();
          outlined init with copy of GlobalsProviding(v187 + 56, v268 + 216);
          v188 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v268 + 176, v268 + 216);
          __swift_destroy_boxed_opaque_existential_0((v268 + 216));
          __swift_destroy_boxed_opaque_existential_0((v268 + 176));
          if (v188)
          {
            objc_opt_self();
            v185 = swift_dynamicCastObjCClass();
            if (v185)
            {
              v184 = v185;
            }

            else
            {
              MEMORY[0x277D82BD8](v188);
              v184 = 0;
            }

            v183 = v184;
          }

          else
          {
            v183 = 0;
          }

          if (v183)
          {
            v180 = *(v268 + 1040);
            v181 = *(v268 + 1008);
            v17 = *(v268 + 880);
            v179 = *(v268 + 1016);
            *(v268 + 784) = v183;
            v182 = FlowFactory.requestPaymentFlow(intent:)(v183);
            MEMORY[0x277D82BD8](v183);

            __swift_destroy_boxed_opaque_existential_0((v268 + 480));
            __swift_destroy_boxed_opaque_existential_0((v268 + 416));
            (*(v179 + 8))(v180, v181);
            v225 = v182;
            goto LABEL_94;
          }

          v18 = *(v268 + 976);
          v175 = *(v268 + 920);
          v19 = Logger.payments.unsafeMutableAddressor();
          v253(v18, v19, v175);
          v177 = Logger.logObject.getter();
          v176 = static os_log_type_t.debug.getter();
          v178 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v177, v176))
          {
            v171 = static UnsafeMutablePointer.allocate(capacity:)();
            v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v172 = createStorage<A>(capacity:type:)(0);
            v173 = createStorage<A>(capacity:type:)(0);
            *(v268 + 752) = v171;
            *(v268 + 760) = v172;
            *(v268 + 768) = v173;
            serialize(_:at:)(0, (v268 + 752));
            serialize(_:at:)(0, (v268 + 752));
            *(v268 + 776) = v178;
            v174 = swift_task_alloc();
            v174[2] = v268 + 752;
            v174[3] = v268 + 760;
            v174[4] = v268 + 768;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();

            _os_log_impl(&dword_2686B1000, v177, v176, "#FlowFactory couldn't create intent from parse", v171, 2u);
            destroyStorage<A>(_:count:)(v172, 0, v170);
            destroyStorage<A>(_:count:)(v173, 0, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v171, MEMORY[0x277D84B78]);
          }

          v168 = *(v268 + 976);
          v169 = *(v268 + 920);
          MEMORY[0x277D82BD8](v177);
          v237(v168, v169);

          __swift_destroy_boxed_opaque_existential_0((v268 + 480));
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_PaymentAccount();
          if (swift_dynamicCast())
          {
            v20 = *(v268 + 1040);
            v167 = *(v268 + 640);
            if (USOParse.isRequestToSummariseAppleCardInfo.getter())
            {
              v164 = *(v268 + 1040);
              v165 = *(v268 + 1008);
              v21 = *(v268 + 880);
              v163 = *(v268 + 1016);
              v166 = FlowFactory.makeLearnAboutAppleCardFlow()();

              __swift_destroy_boxed_opaque_existential_0((v268 + 480));
              __swift_destroy_boxed_opaque_existential_0((v268 + 416));
              (*(v163 + 8))(v164, v165);
              v225 = v166;
              goto LABEL_94;
            }

            v161 = *(v268 + 880);
            v22 = *(v268 + 872);
            static AceService.currentAsync.getter();
            outlined init with copy of GlobalsProviding(v161 + 56, v268 + 136);
            v162 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v268 + 96, v268 + 136);
            __swift_destroy_boxed_opaque_existential_0((v268 + 136));
            __swift_destroy_boxed_opaque_existential_0((v268 + 96));
            if (v162)
            {
              objc_opt_self();
              v160 = swift_dynamicCastObjCClass();
              if (v160)
              {
                v159 = v160;
              }

              else
              {
                MEMORY[0x277D82BD8](v162);
                v159 = 0;
              }

              v158 = v159;
            }

            else
            {
              v158 = 0;
            }

            if (v158)
            {
              v155 = *(v268 + 1040);
              v156 = *(v268 + 1008);
              v23 = *(v268 + 880);
              v154 = *(v268 + 1016);
              *(v268 + 744) = v158;
              v157 = FlowFactory.searchForAccountsFlow(intent:)(v158);
              MEMORY[0x277D82BD8](v158);

              __swift_destroy_boxed_opaque_existential_0((v268 + 480));
              __swift_destroy_boxed_opaque_existential_0((v268 + 416));
              (*(v154 + 8))(v155, v156);
              v225 = v157;
              goto LABEL_94;
            }

            v24 = *(v268 + 968);
            v150 = *(v268 + 920);
            v25 = Logger.payments.unsafeMutableAddressor();
            v253(v24, v25, v150);
            v152 = Logger.logObject.getter();
            v151 = static os_log_type_t.debug.getter();
            v153 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v152, v151))
            {
              v146 = static UnsafeMutablePointer.allocate(capacity:)();
              v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v147 = createStorage<A>(capacity:type:)(0);
              v148 = createStorage<A>(capacity:type:)(0);
              *(v268 + 712) = v146;
              *(v268 + 720) = v147;
              *(v268 + 728) = v148;
              serialize(_:at:)(0, (v268 + 712));
              serialize(_:at:)(0, (v268 + 712));
              *(v268 + 736) = v153;
              v149 = swift_task_alloc();
              v149[2] = v268 + 712;
              v149[3] = v268 + 720;
              v149[4] = v268 + 728;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();

              _os_log_impl(&dword_2686B1000, v152, v151, "#FlowFactory couldn't create intent from parse", v146, 2u);
              destroyStorage<A>(_:count:)(v147, 0, v145);
              destroyStorage<A>(_:count:)(v148, 0, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v146, MEMORY[0x277D84B78]);
            }

            v143 = *(v268 + 968);
            v144 = *(v268 + 920);
            MEMORY[0x277D82BD8](v152);
            v237(v143, v144);

            __swift_destroy_boxed_opaque_existential_0((v268 + 480));
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
            if (swift_dynamicCast())
            {
              v26 = *(v268 + 648);

              __swift_destroy_boxed_opaque_existential_0((v268 + 480));
            }

            else
            {
              type metadata accessor for UsoTask_request_common_PaymentAccount();
              if ((swift_dynamicCast() & 1) == 0)
              {
                type metadata accessor for UsoTask_create_common_PaymentAccount();
                if (swift_dynamicCast())
                {
                  v32 = *(v268 + 1040);
                  v122 = *(v268 + 664);
                  if (USOParse.isRequestToCreateAppleCardAccount.getter())
                  {
                    v119 = *(v268 + 1040);
                    v120 = *(v268 + 1008);
                    v33 = *(v268 + 880);
                    v118 = *(v268 + 1016);
                    v121 = FlowFactory.makeApplyForAppleCardFlow()();

                    __swift_destroy_boxed_opaque_existential_0((v268 + 480));
                    __swift_destroy_boxed_opaque_existential_0((v268 + 416));
                    (*(v118 + 8))(v119, v120);
                    v225 = v121;
                    goto LABEL_94;
                  }

                  __swift_destroy_boxed_opaque_existential_0((v268 + 480));
                }

                else
                {
                  v34 = *(v268 + 952);
                  v109 = *(v268 + 920);
                  v35 = Logger.payments.unsafeMutableAddressor();
                  v253(v34, v35, v109);
                  outlined init with copy of Any(v268 + 416, v268 + 512);
                  v110 = swift_allocObject();
                  outlined init with take of Any(v268 + 512, v110 + 16);
                  v116 = Logger.logObject.getter();
                  v117 = static os_log_type_t.debug.getter();
                  v112 = swift_allocObject();
                  *(v112 + 16) = 32;
                  v113 = swift_allocObject();
                  *(v113 + 16) = 8;
                  v111 = swift_allocObject();
                  *(v111 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
                  *(v111 + 24) = v110;
                  v114 = swift_allocObject();
                  *(v114 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
                  *(v114 + 24) = v111;
                  _allocateUninitializedArray<A>(_:)();
                  v115 = v36;

                  *v115 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v115[1] = v112;

                  v115[2] = partial apply for closure #1 in OSLogArguments.append(_:);
                  v115[3] = v113;

                  v115[4] = partial apply for closure #1 in OSLogArguments.append(_:);
                  v115[5] = v114;
                  _finalizeUninitializedArray<A>(_:)();

                  if (os_log_type_enabled(v116, v117))
                  {
                    v106 = static UnsafeMutablePointer.allocate(capacity:)();
                    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    v107 = createStorage<A>(capacity:type:)(0);
                    v108 = createStorage<A>(capacity:type:)(1);
                    v278 = v106;
                    v279 = v107;
                    v280 = v108;
                    serialize(_:at:)(2, &v278);
                    serialize(_:at:)(1, &v278);
                    v281 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v282 = v112;
                    closure #1 in osLogInternal(_:log:type:)(&v281, &v278, &v279, &v280);
                    v281 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v282 = v113;
                    closure #1 in osLogInternal(_:log:type:)(&v281, &v278, &v279, &v280);
                    v281 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v282 = v114;
                    closure #1 in osLogInternal(_:log:type:)(&v281, &v278, &v279, &v280);
                    _os_log_impl(&dword_2686B1000, v116, v117, "#FlowFactory encountered unsupported task: %s", v106, 0xCu);
                    destroyStorage<A>(_:count:)(v107, 0, v105);
                    destroyStorage<A>(_:count:)(v108, 1, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x26D620BD0](v106, MEMORY[0x277D84B78]);
                  }

                  else
                  {
                  }

                  v103 = *(v268 + 952);
                  v104 = *(v268 + 920);
                  MEMORY[0x277D82BD8](v116);
                  v237(v103, v104);
                  __swift_destroy_boxed_opaque_existential_0((v268 + 480));
                }

                goto LABEL_84;
              }

              v27 = *(v268 + 656);

              __swift_destroy_boxed_opaque_existential_0((v268 + 480));
            }

            v141 = *(v268 + 880);
            v28 = *(v268 + 872);
            static AceService.currentAsync.getter();
            outlined init with copy of GlobalsProviding(v141 + 56, v268 + 56);
            v142 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v268 + 16, v268 + 56);
            __swift_destroy_boxed_opaque_existential_0((v268 + 56));
            __swift_destroy_boxed_opaque_existential_0((v268 + 16));
            if (v142)
            {
              objc_opt_self();
              v140 = swift_dynamicCastObjCClass();
              if (v140)
              {
                v139 = v140;
              }

              else
              {
                MEMORY[0x277D82BD8](v142);
                v139 = 0;
              }

              v138 = v139;
            }

            else
            {
              v138 = 0;
            }

            if (v138)
            {
              v135 = *(v268 + 1040);
              v136 = *(v268 + 1008);
              v29 = *(v268 + 880);
              v134 = *(v268 + 1016);
              *(v268 + 704) = v138;
              v137 = FlowFactory.searchForAccountsFlow(intent:)(v138);
              MEMORY[0x277D82BD8](v138);
              __swift_destroy_boxed_opaque_existential_0((v268 + 416));
              (*(v134 + 8))(v135, v136);
              v225 = v137;
              goto LABEL_94;
            }

            v30 = *(v268 + 960);
            v130 = *(v268 + 920);
            v31 = Logger.payments.unsafeMutableAddressor();
            v253(v30, v31, v130);
            v132 = Logger.logObject.getter();
            v131 = static os_log_type_t.debug.getter();
            v133 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v132, v131))
            {
              v126 = static UnsafeMutablePointer.allocate(capacity:)();
              v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v127 = createStorage<A>(capacity:type:)(0);
              v128 = createStorage<A>(capacity:type:)(0);
              *(v268 + 672) = v126;
              *(v268 + 680) = v127;
              *(v268 + 688) = v128;
              serialize(_:at:)(0, (v268 + 672));
              serialize(_:at:)(0, (v268 + 672));
              *(v268 + 696) = v133;
              v129 = swift_task_alloc();
              v129[2] = v268 + 672;
              v129[3] = v268 + 680;
              v129[4] = v268 + 688;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();

              _os_log_impl(&dword_2686B1000, v132, v131, "#FlowFactory couldn't create intent from parse", v126, 2u);
              destroyStorage<A>(_:count:)(v127, 0, v125);
              destroyStorage<A>(_:count:)(v128, 0, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v126, MEMORY[0x277D84B78]);
            }

            v123 = *(v268 + 960);
            v124 = *(v268 + 920);
            MEMORY[0x277D82BD8](v132);
            v237(v123, v124);
          }
        }
      }
    }

LABEL_84:
    v101 = *(v268 + 1040);
    v102 = *(v268 + 1008);
    v100 = *(v268 + 1016);
    __swift_destroy_boxed_opaque_existential_0((v268 + 416));
    (*(v100 + 8))(v101, v102);
LABEL_93:
    v225 = 0;
    goto LABEL_94;
  }

  v37 = *(v268 + 944);
  v96 = *(v268 + 920);
  outlined destroy of FlowActivity?((v268 + 448));
  v38 = Logger.payments.unsafeMutableAddressor();
  v253(v37, v38, v96);
  v98 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  v99 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v98, v97))
  {
    v92 = static UnsafeMutablePointer.allocate(capacity:)();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v93 = createStorage<A>(capacity:type:)(0);
    v94 = createStorage<A>(capacity:type:)(0);
    *(v268 + 584) = v92;
    *(v268 + 592) = v93;
    *(v268 + 600) = v94;
    serialize(_:at:)(0, (v268 + 584));
    serialize(_:at:)(0, (v268 + 584));
    *(v268 + 608) = v99;
    v95 = swift_task_alloc();
    v95[2] = v268 + 584;
    v95[3] = v268 + 592;
    v95[4] = v268 + 600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v98, v97, "#FlowFactory couldn't find a UsoTask for the given UsoParse", v92, 2u);
    destroyStorage<A>(_:count:)(v93, 0, v91);
    destroyStorage<A>(_:count:)(v94, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v92, MEMORY[0x277D84B78]);
  }

  v89 = *(v268 + 1040);
  v90 = *(v268 + 1008);
  v86 = *(v268 + 944);
  v87 = *(v268 + 920);
  v88 = *(v268 + 1016);
  MEMORY[0x277D82BD8](v98);
  v237(v86, v87);
  (*(v88 + 8))(v89, v90);
  v225 = 0;
LABEL_94:
  v42 = *(v268 + 1080);
  v46 = *(v268 + 1072);
  v47 = *(v268 + 1040);
  v48 = *(v268 + 1032);
  v49 = *(v268 + 1000);
  v50 = *(v268 + 992);
  v51 = *(v268 + 984);
  v52 = *(v268 + 976);
  v53 = *(v268 + 968);
  v54 = *(v268 + 960);
  v55 = *(v268 + 952);
  v56 = *(v268 + 944);
  v57 = *(v268 + 936);
  v58 = *(v268 + 912);
  v59 = *(v268 + 904);

  v43 = *(*(v268 + 544) + 8);
  v44 = *(v268 + 544);

  return v43(v225);
}

uint64_t implicit closure #3 in FlowFactory.findFlow(for:)(uint64_t a1)
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

uint64_t sub_268719070()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in FlowFactory.findFlow(for:)()
{
  v1 = *(type metadata accessor for Parse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in FlowFactory.findFlow(for:)(v2);
}

uint64_t FlowFactory.unsupportedActionFlow()()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v6 = *(v2 - 8);
  v1[11] = v6;
  v3 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[3] = v0;
  v4 = v1[2];

  return MEMORY[0x2822009F8](FlowFactory.unsupportedActionFlow(), 0);
}

{
  v1 = v0[12];
  v19 = v0[11];
  v20 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v19 + 16))(v1, v2, v20);
  v22 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v22, v21))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(0);
    *(v18 + 40) = buf;
    *(v18 + 48) = v15;
    *(v18 + 56) = v16;
    serialize(_:at:)(0, (v18 + 40));
    serialize(_:at:)(0, (v18 + 40));
    *(v18 + 64) = v23;
    v17 = swift_task_alloc();
    v17[2] = v18 + 40;
    v17[3] = v18 + 48;
    v17[4] = v18 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v22, v21, "#FlowFactory building flow for unsupportedAction", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v18 + 96);
  v8 = *(v18 + 80);
  v9 = *(v18 + 72);
  v7 = *(v18 + 88);
  MEMORY[0x277D82BD8](v22);
  (*(v7 + 8))(v11, v8);
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();

  *(v18 + 32) = v10;
  v12 = Flow.eraseToAnyFlow()();
  v3 = *(v18 + 32);

  v4 = *(*(v18 + 16) + 8);
  v5 = *(v18 + 16);

  return v4(v12);
}

uint64_t closure #1 in FlowFactory.unsupportedActionFlow()(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[23] = v5;
  v9 = *(v5 - 8);
  v2[24] = v9;
  v6 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[18] = a2;
  v7 = v2[17];

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.unsupportedActionFlow(), 0);
}

uint64_t closure #1 in FlowFactory.unsupportedActionFlow()()
{
  v4 = v0[22];
  v0[17] = v0;
  type metadata accessor for PaymentsUnsupportedIntentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[26] = CATWrapper.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  v5[27] = v1;
  *v1 = v5[17];
  v1[1] = closure #1 in FlowFactory.unsupportedActionFlow();
  v2 = v5[25];

  return PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()(v2);
}

{
  v8 = *v1;
  v2 = *(*v1 + 216);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[28] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = closure #1 in FlowFactory.unsupportedActionFlow();
  }

  else
  {
    v3 = v8[26];

    v4 = *v9;
    v5 = closure #1 in FlowFactory.unsupportedActionFlow();
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v10 = v0[25];
  v8 = v0[24];
  v9 = v0[23];
  v11 = v0[22];
  v12 = v0[21];
  v5 = v0[20];
  v7 = v0[19];
  v0[17] = v0;
  outlined init with copy of GlobalsProviding(v5 + 16, (v0 + 2));
  outlined init with copy of GlobalsProviding(v5 + 16, (v0 + 7));
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v12, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v10, v9);

  v2 = *(v0[17] + 8);
  v3 = v0[17];

  return v2();
}

{
  v1 = v0[26];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[21];
  v0[17] = v0;

  v2 = v0;
  v3 = *(v0[17] + 8);
  v4 = v0[17];
  v5 = v2[28];

  return v3();
}

uint64_t FlowFactory.unsupportedOnDeviceFlow()()
{
  v35 = 0;
  v44 = 0;
  v25 = 0;
  v32 = type metadata accessor for Logger();
  v26 = v32;
  v27 = *(v32 - 8);
  v31 = v27;
  v28 = v27;
  v29 = *(v27 + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v0 = &v6 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v44 = v1;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v31 + 16))(v0, v2, v32);
  v37 = Logger.logObject.getter();
  v33 = v37;
  v36 = static os_log_type_t.debug.getter();
  v34 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v37, v36))
  {
    v3 = v25;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = 0;
    v17 = createStorage<A>(capacity:type:)(0);
    v15 = v17;
    v18 = createStorage<A>(capacity:type:)(v14);
    v42[0] = v16;
    v41 = v17;
    v40 = v18;
    v19 = 0;
    v20 = v42;
    serialize(_:at:)(0, v42);
    serialize(_:at:)(v19, v20);
    v39 = v38;
    v21 = &v6;
    MEMORY[0x28223BE20](&v6);
    v22 = &v6 - 6;
    *(&v6 - 4) = v4;
    *(&v6 - 3) = &v41;
    *(&v6 - 2) = &v40;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v24 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v33, v34, "#FlowFactory building flow for unsupported on device", v12, 2u);
      v10 = 0;
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v18, v10, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v12, MEMORY[0x277D84B78]);

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v28 + 8))(v30, v26);
  v8 = type metadata accessor for SimpleOutputFlowAsync();

  v6 = &v43;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v7 = SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();

  v42[1] = v7;
  v9 = Flow.eraseToAnyFlow()();

  return v9;
}

uint64_t closure #1 in FlowFactory.unsupportedOnDeviceFlow()(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[23] = v5;
  v9 = *(v5 - 8);
  v2[24] = v9;
  v6 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[18] = a2;
  v7 = v2[17];

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.unsupportedOnDeviceFlow(), 0);
}

uint64_t closure #1 in FlowFactory.unsupportedOnDeviceFlow()()
{
  v4 = v0[22];
  v0[17] = v0;
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[26] = CATWrapper.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  v5[27] = v1;
  *v1 = v5[17];
  v1[1] = closure #1 in FlowFactory.unsupportedActionFlow();
  v2 = v5[25];

  return PaymentsBaseCATs.unsupportedOnWatch()(v2);
}

uint64_t FlowFactory.sendPaymentFlow(intent:)(void *a1)
{
  v14 = a1;
  v32 = 0;
  v31 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v16 = &v6 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents011SendPaymentC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents011SendPaymentC8StrategyCGMR);
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v14);
  v23 = &v6 - v7;
  v32 = v3;
  v31 = v1;
  v8 = 0;
  v18 = type metadata accessor for SendPaymentFlowStrategy();
  v9 = type metadata accessor for INSendPaymentIntent();
  v10 = type metadata accessor for INSendPaymentIntentResponse();
  v12 = v30;
  v11 = &protocol witness table for INSendPaymentIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v9, v10, v30);
  v13 = v29;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v29);
  v4 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v12, v13);
  v19 = &v28;
  v28 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo19INSendPaymentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo19INSendPaymentIntentCSo0fgH8ResponseCGMR);
  FlowFactory.sendPaymentFlowProducers(intent:)(v14, v16);
  v17 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v24 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v20 + 8))(v23, v22);
  v27 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>();
  v26 = Flow.eraseToAnyFlow()();

  return v26;
}

uint64_t FlowFactory.sendPaymentFlowProducers(intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v77 = a2;
  v96 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v78 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v80 = *(v79 - 8);
  v81 = v80;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = &v23 - v82;
  v113 = &v23 - v82;
  v93 = type metadata accessor for Logger();
  v84 = v93;
  v85 = *(v93 - 8);
  v92 = v85;
  v86 = v85;
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v96);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v4;
  v89 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64);
  v5 = MEMORY[0x28223BE20](v88);
  v91 = &v23 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v91;
  v112 = v91;
  v111 = v5;
  v110 = v6;
  v7 = SignpostName.makeSendPaymentFlowProducers.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v7, v7[1], *(v7 + 16), v91);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v92 + 16))(v4, v8, v93);
  v98 = Logger.logObject.getter();
  v94 = v98;
  v97 = static os_log_type_t.debug.getter();
  v95 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v99 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v98, v97))
  {
    v9 = v78;
    v68 = static UnsafeMutablePointer.allocate(capacity:)();
    v64 = v68;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v66 = 0;
    v69 = createStorage<A>(capacity:type:)(0);
    v67 = v69;
    v70 = createStorage<A>(capacity:type:)(v66);
    v103[0] = v68;
    v102 = v69;
    v101 = v70;
    v71 = 0;
    v72 = v103;
    serialize(_:at:)(0, v103);
    serialize(_:at:)(v71, v72);
    v100 = v99;
    v73 = &v23;
    MEMORY[0x28223BE20](&v23);
    v74 = &v23 - 6;
    *(&v23 - 4) = v10;
    *(&v23 - 3) = &v102;
    *(&v23 - 2) = &v101;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v76 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v94, v95, "#sendPaymentFlowProducers init", v64, 2u);
      v62 = 0;
      destroyStorage<A>(_:count:)(v67, 0, v65);
      destroyStorage<A>(_:count:)(v70, v62, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v64, MEMORY[0x277D84B78]);

      v63 = v76;
    }
  }

  else
  {

    v63 = v78;
  }

  (*(v86 + 8))(v87, v84);
  v58 = 0;
  v33 = type metadata accessor for INSendPaymentIntent();
  v34 = type metadata accessor for INSendPaymentIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMR);
  v35 = &protocol witness table for INSendPaymentIntent;
  v26 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33);
  v23 = v109;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33, v109);
  v24 = v108;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v108);
  v25 = &v107;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v11 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33);
  v106[6] = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v26, v23, v24, v25, v11);
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v28 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v29 = v12;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v30 = type metadata accessor for SendTCCHandleStrategy();
  v13 = v88;
  v106[5] = SendTCCHandleStrategy.__allocating_init(previousIntent:)(v88);
  lazy protocol witness table accessor for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v31 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v32 = v14;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMR);
  v36 = &protocol witness table for INSendPaymentIntentResponse;
  v37 = v106;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v33, v34, v106);
  v38 = v105;
  default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v33, v105);
  v39 = v104;
  default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v33, v34, v35, v36, v104);
  v103[7] = PaymentsContinueInAppStrategy.__allocating_init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v38, v39);
  lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>();
  v41 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v42 = v15;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v43 = type metadata accessor for SendPaymentUnsupportedValueStrategy();
  v103[6] = SendPaymentUnsupportedValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy();
  v44 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  v45 = v16;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v46 = type metadata accessor for SendPaymentNeedsValueStrategy();
  v103[5] = SendPaymentNeedsValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy();
  v47 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v48 = v17;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v49 = type metadata accessor for PayeeDisambiguationStrategy();
  v103[4] = PayeeDisambiguationStrategy.__allocating_init()();
  lazy protocol witness table accessor for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>();
  v50 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  v51 = v18;

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v52 = type metadata accessor for SendPaymentNeedsConfirmationFlowStrategy();
  v103[3] = SendPaymentNeedsConfirmationFlowStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>();
  v53 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v54 = v19;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v55 = type metadata accessor for SendPaymentConfirmIntentStrategy();
  v103[2] = SendPaymentConfirmIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy();
  v56 = static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  v57 = v20;

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v59 = type metadata accessor for SendPaymentHandleIntentStrategy();
  v103[1] = SendPaymentHandleIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v60 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v61 = v21;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (*(v81 + 32))(v77, v83, v79);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  return outlined destroy of Signpost.OpenSignpost(v90);
}

uint64_t FlowFactory.requestPaymentFlow(intent:)(void *a1)
{
  v14 = a1;
  v32 = 0;
  v31 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v16 = &v6 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents014RequestPaymentC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents014RequestPaymentC8StrategyCGMR);
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v14);
  v23 = &v6 - v7;
  v32 = v3;
  v31 = v1;
  v8 = 0;
  v18 = type metadata accessor for RequestPaymentFlowStrategy();
  v9 = type metadata accessor for INRequestPaymentIntent();
  v10 = type metadata accessor for INRequestPaymentIntentResponse();
  v12 = v30;
  v11 = &protocol witness table for INRequestPaymentIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v9, v10, v30);
  v13 = v29;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v29);
  v4 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v12, v13);
  v19 = &v28;
  v28 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INRequestPaymentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INRequestPaymentIntentCSo0fgH8ResponseCGMR);
  FlowFactory.requestPaymentFlowProducers(intent:)(v14, v16);
  v17 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v24 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v20 + 8))(v23, v22);
  v27 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>();
  v26 = Flow.eraseToAnyFlow()();

  return v26;
}

uint64_t FlowFactory.requestPaymentFlowProducers(intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v77 = a2;
  v96 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v78 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v80 = *(v79 - 8);
  v81 = v80;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = &v23 - v82;
  v113 = &v23 - v82;
  v93 = type metadata accessor for Logger();
  v84 = v93;
  v85 = *(v93 - 8);
  v92 = v85;
  v86 = v85;
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v96);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v4;
  v89 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64);
  v5 = MEMORY[0x28223BE20](v88);
  v91 = &v23 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v91;
  v112 = v91;
  v111 = v5;
  v110 = v6;
  v7 = SignpostName.makeRequestPaymentFlowProducers.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v7, v7[1], *(v7 + 16), v91);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v92 + 16))(v4, v8, v93);
  v98 = Logger.logObject.getter();
  v94 = v98;
  v97 = static os_log_type_t.debug.getter();
  v95 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v99 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v98, v97))
  {
    v9 = v78;
    v68 = static UnsafeMutablePointer.allocate(capacity:)();
    v64 = v68;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v66 = 0;
    v69 = createStorage<A>(capacity:type:)(0);
    v67 = v69;
    v70 = createStorage<A>(capacity:type:)(v66);
    v103[0] = v68;
    v102 = v69;
    v101 = v70;
    v71 = 0;
    v72 = v103;
    serialize(_:at:)(0, v103);
    serialize(_:at:)(v71, v72);
    v100 = v99;
    v73 = &v23;
    MEMORY[0x28223BE20](&v23);
    v74 = &v23 - 6;
    *(&v23 - 4) = v10;
    *(&v23 - 3) = &v102;
    *(&v23 - 2) = &v101;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v76 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v94, v95, "#requestPaymentFlowProducers init", v64, 2u);
      v62 = 0;
      destroyStorage<A>(_:count:)(v67, 0, v65);
      destroyStorage<A>(_:count:)(v70, v62, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v64, MEMORY[0x277D84B78]);

      v63 = v76;
    }
  }

  else
  {

    v63 = v78;
  }

  (*(v86 + 8))(v87, v84);
  v58 = 0;
  v33 = type metadata accessor for INRequestPaymentIntent();
  v34 = type metadata accessor for INRequestPaymentIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMR);
  v35 = &protocol witness table for INRequestPaymentIntent;
  v26 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33);
  v23 = v109;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33, v109);
  v24 = v108;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v108);
  v25 = &v107;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v11 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v33);
  v106[6] = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v26, v23, v24, v25, v11);
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v28 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v29 = v12;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v30 = type metadata accessor for RequestTCCHandleStrategy();
  v13 = v88;
  v106[5] = RequestTCCHandleStrategy.__allocating_init(previousIntent:)(v88);
  lazy protocol witness table accessor for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v31 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v32 = v14;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMR);
  v36 = &protocol witness table for INRequestPaymentIntentResponse;
  v37 = v106;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v33, v34, v106);
  v38 = v105;
  default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v33, v105);
  v39 = v104;
  default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v33, v34, v35, v36, v104);
  v103[7] = PaymentsContinueInAppStrategy.__allocating_init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v38, v39);
  lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>();
  v41 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v42 = v15;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v43 = type metadata accessor for RequestPaymentUnsupportedValueStrategy();
  v103[6] = RequestPaymentUnsupportedValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy();
  v44 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  v45 = v16;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v46 = type metadata accessor for RequestPaymentNeedsValueStrategy();
  v103[5] = RequestPaymentNeedsValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy();
  v47 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v48 = v17;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v49 = type metadata accessor for PayerDisambiguationStrategy();
  v103[4] = PayerDisambiguationStrategy.__allocating_init()();
  lazy protocol witness table accessor for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>();
  v50 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  v51 = v18;

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v52 = type metadata accessor for RequestPaymentNeedsConfirmationFlowStrategy();
  v103[3] = RequestPaymentNeedsConfirmationFlowStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>();
  v53 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v54 = v19;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v55 = type metadata accessor for RequestPaymentConfirmIntentStrategy();
  v103[2] = RequestPaymentConfirmIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy();
  v56 = static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  v57 = v20;

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v59 = type metadata accessor for RequestPaymentHandleIntentStrategy();
  v103[1] = RequestPaymentHandleIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v60 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v61 = v21;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (*(v81 + 32))(v77, v83, v79);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  return outlined destroy of Signpost.OpenSignpost(v90);
}

uint64_t FlowFactory.searchForAccountsFlow(intent:)(uint64_t a1)
{
  v14 = a1;
  v32 = 0;
  v31 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v16 = &v6 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents017SearchForAccountsC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents017SearchForAccountsC8StrategyCGMR);
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v14);
  v23 = &v6 - v7;
  v32 = v3;
  v31 = v1;
  v8 = 0;
  v18 = type metadata accessor for SearchForAccountsFlowStrategy();
  v9 = type metadata accessor for INSearchForAccountsIntent();
  v10 = type metadata accessor for INSearchForAccountsIntentResponse();
  v12 = v30;
  v11 = &protocol witness table for INSearchForAccountsIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v9, v10, v30);
  v13 = v29;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v29);
  v4 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v12, v13);
  v19 = &v28;
  v28 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo25INSearchForAccountsIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo25INSearchForAccountsIntentCSo0fghI8ResponseCGMR);
  FlowFactory.searchForAccountsFlowProducers(intent:)(v14, v16);
  v17 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v24 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v20 + 8))(v23, v22);
  v27 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>();
  v26 = Flow.eraseToAnyFlow()();

  return v26;
}

uint64_t FlowFactory.searchForAccountsFlowProducers(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v50 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v61 = *(v65 - 8);
  v62 = v65 - 8;
  v20 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v19 - v20;
  v80 = &v19 - v20;
  v79 = MEMORY[0x28223BE20](v50);
  v78 = v2;
  v56 = 0;
  v27 = type metadata accessor for INSearchForAccountsIntent();
  v52 = type metadata accessor for INSearchForAccountsIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMR);
  v21 = &protocol witness table for INSearchForAccountsIntent;
  v25 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v27);
  v22 = v77;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v27, v77);
  v23 = v76;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v76);
  v24 = &v75;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v3 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v27);
  v4 = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v25, v22, v23, v24, v3);
  v28 = &v74;
  v74 = v4;
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v29 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v30 = v5;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v31 = type metadata accessor for SearchForAccountsContinueInAppStrategy();
  v6 = SearchForAccountsContinueInAppStrategy.__allocating_init()();
  v32 = &v73;
  v73 = v6;
  lazy protocol witness table accessor for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy();
  v33 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v34 = v7;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v35 = type metadata accessor for SearchForAccountsHandleIntentStrategy();
  v8 = SearchForAccountsHandleIntentStrategy.__allocating_init()();
  v36 = &v72;
  v72 = v8;
  lazy protocol witness table accessor for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v37 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v38 = v9;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v42 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  v39 = v71;
  default argument 0 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(v71);
  v40 = default argument 1 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)();
  v41 = v70;
  default argument 2 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(v40, v70);
  v10 = SearchForAccountsNeedsConfirmationStrategy.__allocating_init(globals:catFamily:commonLabelsProvider:)(v39, v40, v41);
  v43 = &v69;
  v69 = v10;
  lazy protocol witness table accessor for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy();
  v44 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v45 = v11;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v46 = type metadata accessor for SearchForAccountsNeedsValueStrategy();
  v12 = SearchForAccountsNeedsValueStrategy.__allocating_init()();
  v47 = &v68;
  v68 = v12;
  lazy protocol witness table accessor for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy();
  v48 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v49 = v13;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v51 = type metadata accessor for SearchForAccountsTCCHandleStrategy();
  MEMORY[0x277D82BE0](v50);
  v14 = SearchForAccountsTCCHandleStrategy.__allocating_init(previousIntent:)(v50);
  v53 = &v67;
  v67 = v14;
  lazy protocol witness table accessor for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v54 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v55 = v15;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v57 = type metadata accessor for SearchForAccountsUnsupportedValueStrategy();
  v16 = SearchForAccountsUnsupportedValueStrategy.__allocating_init()();
  v58 = &v66;
  v66 = v16;
  lazy protocol witness table accessor for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy();
  v59 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
  v60 = v17;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  return (*(v61 + 32))(v63, v64, v65);
}

uint64_t default argument 0 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Globals();
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v7);
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  result = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v7, v6, v5, v4);
  a1[3] = v2;
  a1[4] = &protocol witness table for Globals;
  *a1 = result;
  return result;
}

uint64_t default argument 1 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)()
{
  v4 = 0;
  v2 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v3 = &v1 - v2;
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

NSJSONWritingOptions default argument 2 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t FlowFactory.makeApplyForAppleCardFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeApplyForAppleCardFlow()(uint64_t a1, uint64_t a2)
{
  v2[107] = a2;
  v2[106] = a1;
  v2[101] = v2;
  v2[102] = 0;
  v2[103] = 0;
  v2[104] = 0;
  v2[105] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[108] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[109] = v4;
  v10 = *(v4 - 8);
  v2[110] = v10;
  v11 = *(v10 + 64);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v2[117] = v5;
  v12 = *(v5 - 8);
  v2[118] = v12;
  v6 = *(v12 + 64) + 15;
  v2[119] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[120] = swift_task_alloc();
  v2[102] = a2;
  v8 = v2[101];

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeApplyForAppleCardFlow()()
{
  v25 = *(v0 + 960);
  v28 = *(v0 + 952);
  v27 = *(v0 + 944);
  v29 = *(v0 + 936);
  *(v0 + 808) = v0;
  type metadata accessor for SearchForCardInfoCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 968) = v26;
  *(v0 + 824) = v26;
  static Locale.current.getter();
  v30 = Locale.identifier.getter();
  v31 = v1;
  (*(v27 + 8))(v28, v29);
  *(v0 + 776) = v30;
  *(v0 + 784) = v31;
  *(v0 + 792) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v32 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 792);
  outlined destroy of String.UTF8View(v0 + 776);
  if (v32)
  {
    outlined init with copy of GlobalsProviding(v24[107] + 16, (v24 + 42));
    v22 = v24[46];
    __swift_project_boxed_opaque_existential_1(v24 + 42, v24[45]);
    v23 = dispatch thunk of DeviceState.isPhone.getter();

    if (v23)
    {
      v21 = v24[107];

      __swift_destroy_boxed_opaque_existential_0(v24 + 42);
    }

    else
    {
      outlined init with copy of GlobalsProviding(v24[107] + 16, (v24 + 47));
      v18 = v24[51];
      __swift_project_boxed_opaque_existential_1(v24 + 47, v24[50]);
      v20 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0(v24 + 47);
      v19 = v24[107];

      __swift_destroy_boxed_opaque_existential_0(v24 + 42);

      if ((v20 & 1) == 0)
      {
        outlined init with copy of GlobalsProviding(v24[107] + 16, (v24 + 52));
        v16 = v24[56];
        __swift_project_boxed_opaque_existential_1(v24 + 52, v24[55]);
        v17 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0(v24 + 52);
        v3 = v24[107];

        if ((v17 & 1) == 0)
        {
LABEL_11:
          v7 = swift_task_alloc();
          v24[126] = v7;
          *v7 = v24[101];
          v7[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
          v8 = v24[114];

          return SearchForCardInfoCATs.unsupportedDevice()(v8);
        }

LABEL_7:
        outlined init with copy of GlobalsProviding(v24[107] + 16, (v24 + 72));
        v14 = v24[76];
        __swift_project_boxed_opaque_existential_1(v24 + 72, v24[75]);
        v15 = dispatch thunk of DeviceState.isCarPlay.getter();
        __swift_destroy_boxed_opaque_existential_0(v24 + 72);
        if ((v15 & 1) == 0)
        {
          v4 = swift_task_alloc();
          v24[122] = v4;
          *v4 = v24[101];
          v4[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
          v5 = v24[116];

          return SearchForCardInfoCATs.apply()(v5);
        }

        goto LABEL_11;
      }
    }

    v2 = v24[107];

    goto LABEL_7;
  }

  outlined init with copy of GlobalsProviding(v24[107] + 16, (v24 + 2));
  v12 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v24[5]);
  v13 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v24 + 2);
  if (v13)
  {
    v9 = swift_task_alloc();
    v24[128] = v9;
    *v9 = v24[101];
    v9[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v8 = v24[113];

    return SearchForCardInfoCATs.unsupportedDevice()(v8);
  }

  v10 = swift_task_alloc();
  v24[130] = v10;
  *v10 = v24[101];
  v10[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  v11 = v24[112];

  return SearchForCardInfoCATs.unsupportedLocale()(v11);
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 808);
  v2 = *(*v1 + 976);
  *(v10 + 808) = *v1;
  *(v10 + 984) = v0;

  if (v0)
  {
    v7 = *v9;

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[122] = v3;
    *v3 = *v9;
    v3[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v4 = v8[119];
    v5 = v8[113];

    return SearchForCardInfoCATs.openWallet()(v5);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 808);
  v2 = *(*v1 + 992);
  *(v8 + 808) = *v1;
  *(v8 + 1000) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v22 = v0[121];
  v19 = v0[116];
  v18 = v0[115];
  v17 = v0[110];
  v20 = v0[109];
  v16 = v0[108];
  v13 = v0[107];
  v15 = v0[106];
  v0[101] = v0;
  type metadata accessor for SAAceView();
  v12 = _allocateUninitializedArray<A>(_:)();
  v11 = v1;
  v8 = TemplatingResult.resultSectionsAsString.getter();
  v9 = v2;
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 77));
  v10 = static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(0, v8, v9, v0 + 77);
  __swift_destroy_boxed_opaque_existential_0(v0 + 77);

  *v11 = v10;
  _finalizeUninitializedArray<A>(_:)();
  v0[105] = v12;
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 82));
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 87));
  v14 = v0[91];
  __swift_project_boxed_opaque_existential_1(v0 + 87, v0[90]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v3 = type metadata accessor for NLContextUpdate();
  (*(*(v3 - 8) + 56))(v16, 1);
  v0[92] = 0;
  v0[93] = 0;
  v0[94] = 0;
  v0[95] = 0;
  v0[96] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 92);
  outlined destroy of NLContextUpdate?(v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);

  v21 = *(v17 + 8);
  v21(v18, v20);
  v21(v19, v20);

  v4 = v0[120];
  v23 = v0[119];
  v24 = v0[116];
  v25 = v0[115];
  v26 = v0[114];
  v27 = v0[113];
  v28 = v0[112];
  v29 = v0[111];
  v30 = v0[108];

  v5 = *(v0[101] + 8);
  v6 = v0[101];

  return v5();
}

{
  v8 = *v1;
  v7 = (v8 + 808);
  v2 = *(*v1 + 1008);
  *(v8 + 808) = *v1;
  *(v8 + 1016) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v13 = v0[121];
  v11 = v0[114];
  v10 = v0[110];
  v12 = v0[109];
  v9 = v0[108];
  v6 = v0[107];
  v8 = v0[106];
  v0[101] = v0;
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 57));
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 62));
  v7 = v0[66];
  __swift_project_boxed_opaque_existential_1(v0 + 62, v0[65]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v9, 1);
  v0[67] = 0;
  v0[68] = 0;
  v0[69] = 0;
  v0[70] = 0;
  v0[71] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 67);
  outlined destroy of NLContextUpdate?(v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  (*(v10 + 8))(v11, v12);

  v2 = v0[120];
  v14 = v0[119];
  v15 = v0[116];
  v16 = v0[115];
  v17 = v0[114];
  v18 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[108];

  v3 = *(v0[101] + 8);
  v4 = v0[101];

  return v3();
}

{
  v8 = *v1;
  v7 = (v8 + 808);
  v2 = *(*v1 + 1024);
  *(v8 + 808) = *v1;
  *(v8 + 1032) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v13 = v0[121];
  v11 = v0[113];
  v10 = v0[110];
  v12 = v0[109];
  v9 = v0[108];
  v6 = v0[107];
  v8 = v0[106];
  v0[101] = v0;
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 32));
  v7 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v9, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v10 + 8))(v11, v12);

  v2 = v0[120];
  v14 = v0[119];
  v15 = v0[116];
  v16 = v0[115];
  v17 = v0[114];
  v18 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[108];

  v3 = *(v0[101] + 8);
  v4 = v0[101];

  return v3();
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 808);
  v2 = *(*v1 + 1040);
  *(v10 + 808) = *v1;
  *(v10 + 1048) = v0;

  if (v0)
  {
    v7 = *v9;

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[130] = v3;
    *v3 = *v9;
    v3[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v4 = v8[119];
    v5 = v8[109];

    return SearchForCardInfoCATs.openAppleWebsite()(v5);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 808);
  v2 = *(*v1 + 1056);
  *(v8 + 808) = *v1;
  *(v8 + 1064) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v25 = v0[121];
  v22 = v0[112];
  v21 = v0[111];
  v20 = v0[110];
  v23 = v0[109];
  v19 = v0[108];
  v16 = v0[107];
  v18 = v0[106];
  v0[101] = v0;
  type metadata accessor for SAAceView();
  v15 = _allocateUninitializedArray<A>(_:)();
  v14 = v1;
  v2 = String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();
  v10 = *v2;
  v12 = v2[1];

  v9 = TemplatingResult.resultSectionsAsString.getter();
  v11 = v3;
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 7));
  v13 = static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(v10, v12, v9, v11, v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  *v14 = v13;
  _finalizeUninitializedArray<A>(_:)();
  v0[104] = v15;
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 12));
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 17));
  v17 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v19, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v18[3] = type metadata accessor for AceOutput();
  v18[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v18);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v24 = *(v20 + 8);
  v24(v21, v23);
  v24(v22, v23);

  v5 = v0[120];
  v26 = v0[119];
  v27 = v0[116];
  v28 = v0[115];
  v29 = v0[114];
  v30 = v0[113];
  v31 = v0[112];
  v32 = v0[111];
  v33 = v0[108];

  v6 = *(v0[101] + 8);
  v7 = v0[101];

  return v6();
}

{
  v1 = v0[121];
  v0[101] = v0;

  v2 = v0[129];
  v3 = v0[120];
  v7 = v0[119];
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[113];
  v12 = v0[112];
  v13 = v0[111];
  v14 = v0[108];

  v4 = *(v0[101] + 8);
  v5 = v0[101];

  return v4();
}

{
  v1 = v0[121];
  v0[101] = v0;

  v2 = v0[131];
  v3 = v0[120];
  v7 = v0[119];
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[113];
  v12 = v0[112];
  v13 = v0[111];
  v14 = v0[108];

  v4 = *(v0[101] + 8);
  v5 = v0[101];

  return v4();
}

{
  v9 = v0[121];
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[109];
  v0[101] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[133];
  v5 = v0[120];
  v10 = v0[119];
  v11 = v0[116];
  v12 = v0[115];
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[108];

  v6 = *(v0[101] + 8);
  v7 = v0[101];

  return v6();
}

{
  v1 = v0[121];
  v0[101] = v0;

  v2 = v0[123];
  v3 = v0[120];
  v7 = v0[119];
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[113];
  v12 = v0[112];
  v13 = v0[111];
  v14 = v0[108];

  v4 = *(v0[101] + 8);
  v5 = v0[101];

  return v4();
}

{
  v9 = v0[121];
  v1 = v0[116];
  v2 = v0[110];
  v3 = v0[109];
  v0[101] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[125];
  v5 = v0[120];
  v10 = v0[119];
  v11 = v0[116];
  v12 = v0[115];
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[108];

  v6 = *(v0[101] + 8);
  v7 = v0[101];

  return v6();
}

{
  v1 = v0[121];
  v0[101] = v0;

  v2 = v0[127];
  v3 = v0[120];
  v7 = v0[119];
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[113];
  v12 = v0[112];
  v13 = v0[111];
  v14 = v0[108];

  v4 = *(v0[101] + 8);
  v5 = v0[101];

  return v4();
}

uint64_t FlowFactory.makeLearnAboutAppleCardFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()(uint64_t a1, uint64_t a2)
{
  v2[97] = a2;
  v2[96] = a1;
  v2[91] = v2;
  v2[92] = 0;
  v2[93] = 0;
  v2[94] = 0;
  v2[95] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[99] = v4;
  v10 = *(v4 - 8);
  v2[100] = v10;
  v11 = *(v10 + 64);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v2[107] = v5;
  v12 = *(v5 - 8);
  v2[108] = v12;
  v6 = *(v12 + 64) + 15;
  v2[109] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[92] = a2;
  v8 = v2[91];

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()()
{
  v19 = *(v0 + 880);
  v22 = *(v0 + 872);
  v21 = *(v0 + 864);
  v23 = *(v0 + 856);
  *(v0 + 728) = v0;
  type metadata accessor for SearchForCardInfoCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 888) = v20;
  *(v0 + 744) = v20;
  static Locale.current.getter();
  v24 = Locale.identifier.getter();
  v25 = v1;
  (*(v21 + 8))(v22, v23);
  *(v0 + 696) = v24;
  *(v0 + 704) = v25;
  *(v0 + 712) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 712);
  outlined destroy of String.UTF8View(v0 + 696);
  if (v26)
  {
    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 42));
    v16 = v18[46];
    __swift_project_boxed_opaque_existential_1(v18 + 42, v18[45]);
    v17 = dispatch thunk of DeviceState.isPhone.getter();

    if ((v17 & 1) == 0)
    {
      v3 = v18[97];

      __swift_destroy_boxed_opaque_existential_0(v18 + 42);
      goto LABEL_9;
    }

    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 82));
    v14 = v18[86];
    __swift_project_boxed_opaque_existential_1(v18 + 82, v18[85]);
    v15 = dispatch thunk of DeviceState.isCarPlay.getter();
    __swift_destroy_boxed_opaque_existential_0(v18 + 82);
    v2 = v18[97];

    __swift_destroy_boxed_opaque_existential_0(v18 + 42);
    if (v15)
    {
LABEL_9:
      v7 = swift_task_alloc();
      v18[116] = v7;
      *v7 = v18[91];
      v7[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v8 = v18[104];

      return SearchForCardInfoCATs.unsupportedDevice()(v8);
    }

    v4 = swift_task_alloc();
    v18[112] = v4;
    *v4 = v18[91];
    v4[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v5 = v18[106];

    return SearchForCardInfoCATs.learn()(v5);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 2));
    v12 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
    v13 = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    if (v13)
    {
      v9 = swift_task_alloc();
      v18[118] = v9;
      *v9 = v18[91];
      v9[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v8 = v18[103];

      return SearchForCardInfoCATs.unsupportedDevice()(v8);
    }

    v10 = swift_task_alloc();
    v18[120] = v10;
    *v10 = v18[91];
    v10[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v11 = v18[102];

    return SearchForCardInfoCATs.unsupportedLocale()(v11);
  }
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 728);
  v2 = *(*v1 + 896);
  *(v10 + 728) = *v1;
  *(v10 + 904) = v0;

  if (v0)
  {
    v7 = *v9;

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[112] = v3;
    *v3 = *v9;
    v3[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v4 = v8[109];
    v5 = v8[103];

    return SearchForCardInfoCATs.openWallet()(v5);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 728);
  v2 = *(*v1 + 912);
  *(v8 + 728) = *v1;
  *(v8 + 920) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v22 = v0[111];
  v19 = v0[106];
  v18 = v0[105];
  v17 = v0[100];
  v20 = v0[99];
  v16 = v0[98];
  v13 = v0[97];
  v15 = v0[96];
  v0[91] = v0;
  type metadata accessor for SAAceView();
  v12 = _allocateUninitializedArray<A>(_:)();
  v11 = v1;
  v8 = TemplatingResult.resultSectionsAsString.getter();
  v9 = v2;
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 62));
  v10 = static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(1u, v8, v9, v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);

  *v11 = v10;
  _finalizeUninitializedArray<A>(_:)();
  v0[95] = v12;
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 67));
  outlined init with copy of GlobalsProviding(v13 + 16, (v0 + 72));
  v14 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v3 = type metadata accessor for NLContextUpdate();
  (*(*(v3 - 8) + 56))(v16, 1);
  v0[77] = 0;
  v0[78] = 0;
  v0[79] = 0;
  v0[80] = 0;
  v0[81] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 77);
  outlined destroy of NLContextUpdate?(v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);

  v21 = *(v17 + 8);
  v21(v18, v20);
  v21(v19, v20);

  v4 = v0[110];
  v23 = v0[109];
  v24 = v0[106];
  v25 = v0[105];
  v26 = v0[104];
  v27 = v0[103];
  v28 = v0[102];
  v29 = v0[101];
  v30 = v0[98];

  v5 = *(v0[91] + 8);
  v6 = v0[91];

  return v5();
}

{
  v8 = *v1;
  v7 = (v8 + 728);
  v2 = *(*v1 + 928);
  *(v8 + 728) = *v1;
  *(v8 + 936) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v13 = v0[111];
  v11 = v0[104];
  v10 = v0[100];
  v12 = v0[99];
  v9 = v0[98];
  v6 = v0[97];
  v8 = v0[96];
  v0[91] = v0;
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 47));
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 52));
  v7 = v0[56];
  __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v9, 1);
  v0[57] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[60] = 0;
  v0[61] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 57);
  outlined destroy of NLContextUpdate?(v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  (*(v10 + 8))(v11, v12);

  v2 = v0[110];
  v14 = v0[109];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[103];
  v19 = v0[102];
  v20 = v0[101];
  v21 = v0[98];

  v3 = *(v0[91] + 8);
  v4 = v0[91];

  return v3();
}

{
  v8 = *v1;
  v7 = (v8 + 728);
  v2 = *(*v1 + 944);
  *(v8 + 728) = *v1;
  *(v8 + 952) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v13 = v0[111];
  v11 = v0[103];
  v10 = v0[100];
  v12 = v0[99];
  v9 = v0[98];
  v6 = v0[97];
  v8 = v0[96];
  v0[91] = v0;
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 32));
  v7 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v9, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v10 + 8))(v11, v12);

  v2 = v0[110];
  v14 = v0[109];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[103];
  v19 = v0[102];
  v20 = v0[101];
  v21 = v0[98];

  v3 = *(v0[91] + 8);
  v4 = v0[91];

  return v3();
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 728);
  v2 = *(*v1 + 960);
  *(v10 + 728) = *v1;
  *(v10 + 968) = v0;

  if (v0)
  {
    v7 = *v9;

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[120] = v3;
    *v3 = *v9;
    v3[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v4 = v8[109];
    v5 = v8[99];

    return SearchForCardInfoCATs.openAppleWebsite()(v5);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 728);
  v2 = *(*v1 + 976);
  *(v8 + 728) = *v1;
  *(v8 + 984) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v3 = *v7;
    v4 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v25 = v0[111];
  v22 = v0[102];
  v21 = v0[101];
  v20 = v0[100];
  v23 = v0[99];
  v19 = v0[98];
  v16 = v0[97];
  v18 = v0[96];
  v0[91] = v0;
  type metadata accessor for SAAceView();
  v15 = _allocateUninitializedArray<A>(_:)();
  v14 = v1;
  v2 = String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();
  v10 = *v2;
  v12 = v2[1];

  v9 = TemplatingResult.resultSectionsAsString.getter();
  v11 = v3;
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 7));
  v13 = static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(v10, v12, v9, v11, v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  *v14 = v13;
  _finalizeUninitializedArray<A>(_:)();
  v0[94] = v15;
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 12));
  outlined init with copy of GlobalsProviding(v16 + 16, (v0 + 17));
  v17 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v19, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v18[3] = type metadata accessor for AceOutput();
  v18[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v18);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v24 = *(v20 + 8);
  v24(v21, v23);
  v24(v22, v23);

  v5 = v0[110];
  v26 = v0[109];
  v27 = v0[106];
  v28 = v0[105];
  v29 = v0[104];
  v30 = v0[103];
  v31 = v0[102];
  v32 = v0[101];
  v33 = v0[98];

  v6 = *(v0[91] + 8);
  v7 = v0[91];

  return v6();
}

{
  v1 = v0[111];
  v0[91] = v0;

  v2 = v0[119];
  v3 = v0[110];
  v7 = v0[109];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[98];

  v4 = *(v0[91] + 8);
  v5 = v0[91];

  return v4();
}

{
  v1 = v0[111];
  v0[91] = v0;

  v2 = v0[121];
  v3 = v0[110];
  v7 = v0[109];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[98];

  v4 = *(v0[91] + 8);
  v5 = v0[91];

  return v4();
}

{
  v9 = v0[111];
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[99];
  v0[91] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[123];
  v5 = v0[110];
  v10 = v0[109];
  v11 = v0[106];
  v12 = v0[105];
  v13 = v0[104];
  v14 = v0[103];
  v15 = v0[102];
  v16 = v0[101];
  v17 = v0[98];

  v6 = *(v0[91] + 8);
  v7 = v0[91];

  return v6();
}

{
  v1 = v0[111];
  v0[91] = v0;

  v2 = v0[113];
  v3 = v0[110];
  v7 = v0[109];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[98];

  v4 = *(v0[91] + 8);
  v5 = v0[91];

  return v4();
}

{
  v9 = v0[111];
  v1 = v0[106];
  v2 = v0[100];
  v3 = v0[99];
  v0[91] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[115];
  v5 = v0[110];
  v10 = v0[109];
  v11 = v0[106];
  v12 = v0[105];
  v13 = v0[104];
  v14 = v0[103];
  v15 = v0[102];
  v16 = v0[101];
  v17 = v0[98];

  v6 = *(v0[91] + 8);
  v7 = v0[91];

  return v6();
}

{
  v1 = v0[111];
  v0[91] = v0;

  v2 = v0[117];
  v3 = v0[110];
  v7 = v0[109];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[98];

  v4 = *(v0[91] + 8);
  v5 = v0[91];

  return v4();
}

uint64_t FlowFactory.makeAppleCardBalanceOutputFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()(uint64_t a1, uint64_t a2)
{
  v2[97] = a2;
  v2[96] = a1;
  v2[91] = v2;
  v2[92] = 0;
  v2[93] = 0;
  v2[94] = 0;
  v2[95] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[99] = v4;
  v10 = *(v4 - 8);
  v2[100] = v10;
  v11 = *(v10 + 64);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v2[107] = v5;
  v12 = *(v5 - 8);
  v2[108] = v12;
  v6 = *(v12 + 64) + 15;
  v2[109] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[92] = a2;
  v8 = v2[91];

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()()
{
  v19 = *(v0 + 880);
  v22 = *(v0 + 872);
  v21 = *(v0 + 864);
  v23 = *(v0 + 856);
  *(v0 + 728) = v0;
  type metadata accessor for SearchForCardInfoCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 888) = v20;
  *(v0 + 744) = v20;
  static Locale.current.getter();
  v24 = Locale.identifier.getter();
  v25 = v1;
  (*(v21 + 8))(v22, v23);
  *(v0 + 696) = v24;
  *(v0 + 704) = v25;
  *(v0 + 712) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 712);
  outlined destroy of String.UTF8View(v0 + 696);
  if (v26)
  {
    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 42));
    v16 = v18[46];
    __swift_project_boxed_opaque_existential_1(v18 + 42, v18[45]);
    v17 = dispatch thunk of DeviceState.isPhone.getter();

    if ((v17 & 1) == 0)
    {
      v3 = v18[97];

      __swift_destroy_boxed_opaque_existential_0(v18 + 42);
      goto LABEL_9;
    }

    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 82));
    v14 = v18[86];
    __swift_project_boxed_opaque_existential_1(v18 + 82, v18[85]);
    v15 = dispatch thunk of DeviceState.isCarPlay.getter();
    __swift_destroy_boxed_opaque_existential_0(v18 + 82);
    v2 = v18[97];

    __swift_destroy_boxed_opaque_existential_0(v18 + 42);
    if (v15)
    {
LABEL_9:
      v7 = swift_task_alloc();
      v18[116] = v7;
      *v7 = v18[91];
      v7[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v8 = v18[104];

      return SearchForCardInfoCATs.unsupportedDevice()(v8);
    }

    v4 = swift_task_alloc();
    v18[112] = v4;
    *v4 = v18[91];
    v4[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v5 = v18[106];

    return SearchForCardInfoCATs.appleCardBalance()(v5);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v18[97] + 16, (v18 + 2));
    v12 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
    v13 = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    if (v13)
    {
      v9 = swift_task_alloc();
      v18[118] = v9;
      *v9 = v18[91];
      v9[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v8 = v18[103];

      return SearchForCardInfoCATs.unsupportedDevice()(v8);
    }

    v10 = swift_task_alloc();
    v18[120] = v10;
    *v10 = v18[91];
    v10[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v11 = v18[102];

    return SearchForCardInfoCATs.unsupportedLocale()(v11);
  }
}

uint64_t FlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v2;
}

uint64_t protocol witness for FlowProviding.findFlow(for:) in conformance FlowFactory(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *(**v1 + 104);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return v8(a1);
}

uint64_t protocol witness for FlowProviding.unsupportedActionFlow() in conformance FlowFactory()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *(**v0 + 120);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return v7();
}

uint64_t sub_268721F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268721F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268721F98()
{
  v3 = *(type metadata accessor for USOParse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in FlowFactory.findFlow(for:)()
{
  v1 = *(type metadata accessor for USOParse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in FlowFactory.findFlow(for:)();
}

uint64_t sub_268722120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268722160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268722370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687223B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedActionFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.unsupportedActionFlow()(a1, v5);
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedActionFlow()()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedOnDeviceFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.unsupportedOnDeviceFlow()(a1, v5);
}

unint64_t lazy protocol witness table accessor for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>)
  {
    type metadata accessor for SendPaymentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>()
{
  v2 = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>;
  if (!lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>);
    return WitnessTable;
  }

  return v2;
}