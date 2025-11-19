uint64_t PromptHeaderView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = static HorizontalAlignment.leading.getter();
  __dst[0] = a1;
  __dst[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.headline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  LOBYTE(v5) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(__dst[0]) = 0;
  __src[0] = 0;
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v36 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v37[7], __src, 0x70uLL);
  v34[0] = v4;
  v34[1] = 0x4010000000000000;
  LOBYTE(v34[2]) = 0;
  v34[3] = v10;
  v34[4] = v12;
  LOBYTE(v34[5]) = v14 & 1;
  v34[6] = v16;
  LOBYTE(v34[7]) = v5;
  v34[8] = v18;
  v34[9] = v20;
  v34[10] = v22;
  v34[11] = v24;
  LOBYTE(v34[12]) = 0;
  LOBYTE(v34[13]) = v7;
  v34[14] = v26;
  v34[15] = v28;
  v34[16] = v30;
  v34[17] = v32;
  LOBYTE(v34[18]) = 0;
  memcpy(&v34[18] + 1, v37, 0x77uLL);
  LOWORD(v34[33]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  View.ambientDrawable(renderWithDrawingGroup:)();
  memcpy(__dst, v34, 0x10AuLL);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout>(__dst);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<Text> and conformance VStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<Text> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA4TextVGMd, &_s7SwiftUI6VStackVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for View.body.getter in conformance PromptHeaderView()
{
  v1 = v0[2];
  v2 = v0[3];
  return PromptHeaderView.body.getter(*v0, v0[1]);
}

unint64_t lazy protocol witness table accessor for type Context and conformance Context()
{
  result = lazy protocol witness table cache variable for type Context and conformance Context;
  if (!lazy protocol witness table cache variable for type Context and conformance Context)
  {
    type metadata accessor for Context();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Context and conformance Context);
  }

  return result;
}

void *default argument 1 of static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  v0 = [objc_opt_self() standardClient];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &_s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATu;
  *(v2 + 24) = v1;
  return &_sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATu;
}

uint64_t sub_21E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATQ0_;

  return _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_();
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATQ0_(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTA()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATQ0_;

  return _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR();
}

uint64_t variable initialization expression of EnableTCCView._context()
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptHeaderView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PromptHeaderView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for CustomIntentErrorView()
{
  result = type metadata singleton initialization cache for CustomIntentErrorView;
  if (!type metadata singleton initialization cache for CustomIntentErrorView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomIntentErrorView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RFButtonStyle();
  v3 = OUTLINED_FUNCTION_2_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustomIntentErrorView();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v13 = OUTLINED_FUNCTION_2_0(v12);
  v30 = v14;
  v31 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v28 - v17;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v28 = v9;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "#CustomIntentErrorView", v22, 2u);
    v9 = v28;
  }

  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(v1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  v25 = outlined init with take of CustomIntentErrorView(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  __chkstk_darwin(v25);
  *(&v28 - 2) = v1;
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v26 = v31;
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v9, v2);
  return (*(v30 + 8))(v18, v26);
}

uint64_t closure #1 in CustomIntentErrorView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Command();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionElement();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + *(type metadata accessor for CustomIntentErrorView() + 20);
  v23 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  *v16 = CodableAceObject.wrappedValue.getter();
  v16[8] = 1;
  (*(v13 + 104))(v16, enum case for Command.aceCommand(_:), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v24 = type metadata accessor for _ProtoIdiom();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v37 = xmmword_43980;
  *(v28 + 16) = xmmword_43980;
  (*(v25 + 104))(v28 + v27, enum case for _ProtoIdiom.default(_:), v24);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v28);
  ActionElement.init(_:text:idioms:)();
  ActionHandler.wrappedValue.getter();
  v29 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v11, 1, v29) == 1)
  {
    (*(v18 + 8))(v21, v17);
    return outlined destroy of StandardActionHandler?(v11, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = v37;
    *(v31 + 56) = v17;
    *(v31 + 64) = &protocol witness table for ActionElement;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    (*(v18 + 16))(boxed_opaque_existential_1, v21, v17);
    v33 = v38;
    ActionProperty.init(_:)();
    v34 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    v35 = type metadata accessor for InteractionType();
    v36 = v39;
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v35);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v36, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v33, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v18 + 8))(v21, v17);
    return (*(*(v29 - 8) + 8))(v11, v29);
  }
}

uint64_t closure #2 in CustomIntentErrorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CustomIntentErrorView() + 20));
  v17 = *v3;
  v18 = v3[1];
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.headline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t CustomIntentErrorView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for CustomIntentErrorView();
  return outlined init with take of CustomIntentErrorView(a1, a2 + *(v4 + 20));
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_34F0()
{
  v1 = (type metadata accessor for CustomIntentErrorView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = *(v7 + 8);

  v9 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 8))(v7 + v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in CustomIntentErrorView.body.getter()
{
  v1 = *(type metadata accessor for CustomIntentErrorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in CustomIntentErrorView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle()
{
  result = lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle;
  if (!lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle)
  {
    type metadata accessor for RFButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle);
  }

  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t outlined init with take of CustomIntentErrorView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_38EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_0();
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for CustomIntentErrorView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_3A38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of StandardActionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t DisambiguateItemsView.model.getter(uint64_t a1)
{

  return a1;
}

uint64_t DisambiguateItemsView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguationTitle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);

  DisambiguationTitle.init(text1:thumbnail:)();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  type metadata accessor for DisambiguationItemsComponent();
  lazy protocol witness table accessor for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent();

  return DisambiguationView.init(title:content:)();
}

double closure #1 in DisambiguateItemsView.body.getter@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  ActionHandler.init()();
  v4 = type metadata accessor for DisambiguationItemsComponent();
  v5 = (a2 + *(v4 + 20));
  State.init(wrappedValue:)();
  result = v7;
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_3DC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

double partial apply for closure #1 in DisambiguateItemsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in DisambiguateItemsView.body.getter(v1[4], a1);
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent;
  if (!lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent)
  {
    type metadata accessor for DisambiguationItemsComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguateItemsView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for DisambiguateItemsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>()
{
  result = lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>;
  if (!lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9SnippetUI18DisambiguationViewVy16SiriLinkUIPlugin0C14ItemsComponentVGMd, &_s9SnippetUI18DisambiguationViewVy16SiriLinkUIPlugin0C14ItemsComponentVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>);
  }

  return result;
}

uint64_t CodableOption.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CodableOption.init(from:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CodableOption.CodingKeys();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = OUTLINED_FUNCTION_2_0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v33[0];
    v21 = v33[1];
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_43B30;
    *(v23 + 32) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
    *(v23 + 40) = a2;
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v33[3])
    {
      type metadata accessor for Array();
      v24 = v21;
      if (swift_dynamicCast())
      {
        v25 = OUTLINED_FUNCTION_3();
        v26(v25);
        outlined consume of Data._Representation(v22, v21);
        v19 = v32;
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of Any?(v33);
      v24 = v21;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Failed to decode array of LNChoiceOption", v30, 2u);
    }

    type metadata accessor for CodableOption.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v22, v24);
    v9 = OUTLINED_FUNCTION_3();
    v10(v9);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Failed to decode LNChoiceOption; Error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v19 = Array.init()();

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CodableOption.encode(to:)(void *a1)
{
  type metadata accessor for CodableOption.CodingKeys();
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  v2 = type metadata accessor for KeyedEncodingContainer();
  v3 = OUTLINED_FUNCTION_2_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v20 - v8;
  v10 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23[0] = 0;
  v12 = [v10 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v23];

  v13 = v23[0];
  if (v12)
  {
    v21 = v5;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v23[0] = v14;
    v23[1] = v16;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v9, v2);
    return outlined consume of Data._Representation(v14, v16);
  }

  else
  {
    v19 = v13;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableOption.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableOption.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableOption<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableOption.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableOption<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CodableOption.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int SiriLinkUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableOption<A>.Error()
{
  Hasher.init(_seed:)();
  SiriLinkUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableOption<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CodableOption.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CodableOption<A>(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return CodableOption.encode(to:)(a1);
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
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
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
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata instantiation function for CodableOption()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableOption.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CodableOption.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x55BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t SimpleItemStandard.init(text:action:)(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of TextPropertyConvertible(a1, v21);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  outlined init with copy of TextPropertyConvertible(a2, v5);
  SimpleItemStandard.init(text1:text2:text3:text4:text5:text6:action:componentName:linkIdentifier:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t outlined init with copy of TextPropertyConvertible(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SimpleItemStandard@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemStandard.id.getter();
  *a1 = result;
  return result;
}

uint64_t SimpleItemRich.init(text:action:)(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of TextPropertyConvertible(a1, v30);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  outlined init with copy of TextPropertyConvertible(a2, v5);
  SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t SimpleItemStandard.id.getter(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for TextProperty();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  v8 = TextProperty.hashValue.getter();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SimpleItemRich@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRich.id.getter();
  *a1 = result;
  return result;
}

uint64_t ConfirmationBinaryButtonView.confirmLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for ConfirmationBinaryButtonView() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ConfirmationBinaryButtonView()
{
  result = type metadata singleton initialization cache for ConfirmationBinaryButtonView;
  if (!type metadata singleton initialization cache for ConfirmationBinaryButtonView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationBinaryButtonView.confirmLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_3_0() + 20));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ConfirmationBinaryButtonView.cancelLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for ConfirmationBinaryButtonView() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ConfirmationBinaryButtonView.cancelLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_3_0() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ConfirmationBinaryButtonView.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationBinaryButtonView() + 28);
  v4 = type metadata accessor for ButtonItemButtonStyle();
  v5 = OUTLINED_FUNCTION_0_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ConfirmationBinaryButtonView.buttonStyle.setter()
{
  v2 = *(OUTLINED_FUNCTION_5() + 28);
  v3 = type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ConfirmationBinaryButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for ConfirmationBinaryButtonView();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v49 = v6;
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v54 = OUTLINED_FUNCTION_2_0(v8);
  v55 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  v43 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_07SnippetB00f4ItemfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_07SnippetB00f4ItemfE0VQo_MR);
  v50 = OUTLINED_FUNCTION_2_0(v14);
  v51 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v48 = 0x800000000004B3A0;
  v21 = v3[7];
  v53 = v1;
  v22 = (v1 + v21);
  v23 = v22[1];
  v57 = *v22;
  v58 = v23;
  v44 = v7;
  outlined init with copy of ConfirmationBinaryButtonView(v1, v7);
  v24 = *(v4 + 80);
  v46 = (v24 + 32) & ~v24;
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD00000000000003DLL;
  *(v25 + 24) = 0x800000000004B3A0;
  outlined init with take of ConfirmationBinaryButtonView(v7, v25 + ((v24 + 32) & ~v24));
  v47 = lazy protocol witness table accessor for type String and conformance String();

  v26 = v43;
  Button<>.init<A>(_:action:)();
  v27 = v3[9];
  v28 = type metadata accessor for ButtonItemButtonStyle();
  v29 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  v30 = lazy protocol witness table accessor for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle(&lazy protocol witness table cache variable for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle, &type metadata accessor for ButtonItemButtonStyle);
  v31 = v54;
  View.buttonStyle<A>(_:)();
  v45 = *(v55 + 8);
  v45(v26, v31);
  v57 = v31;
  v58 = v28;
  v59 = v29;
  v60 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v50;
  v33 = View.eraseToAnyView()();
  (*(v51 + 8))(v20, v32);
  v34 = (v53 + v3[8]);
  v35 = v34[1];
  v57 = *v34;
  v58 = v35;
  v36 = v44;
  outlined init with copy of ConfirmationBinaryButtonView(v53, v44);
  v37 = v46;
  v38 = swift_allocObject();
  *(v38 + 16) = 0xD00000000000003DLL;
  *(v38 + 24) = v48;
  outlined init with take of ConfirmationBinaryButtonView(v36, v38 + v37);

  v39 = v26;
  Button<>.init<A>(_:action:)();
  v60 = &type metadata for AnyView;
  v61 = &protocol witness table for AnyView;
  v57 = v33;
  v40 = v54;
  v56[3] = v54;
  v56[4] = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(v55 + 16))(boxed_opaque_existential_1, v39, v40);
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  return (v45)(v39, v40);
}

uint64_t outlined init with copy of ConfirmationBinaryButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationBinaryButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ConfirmationBinaryButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationBinaryButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConfirmationBinaryButtonView.body.getter()
{
  return partial apply for closure #1 in ConfirmationBinaryButtonView.body.getter();
}

{
  v3 = OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(v3);
  return closure #1 in ConfirmationBinaryButtonView.body.getter(*(v1 + 16), *(v1 + 24), v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v0);
}

uint64_t closure #1 in ConfirmationBinaryButtonView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  OUTLINED_FUNCTION_4(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  v24 = type metadata accessor for ActionProperty();
  v25 = OUTLINED_FUNCTION_2_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v32 = swift_allocObject();
  v40 = xmmword_43980;
  *(v32 + 16) = xmmword_43980;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, "h~");
  inited = swift_initStackObject();
  *(inited + 16) = v40;
  strcpy(v45, "confirmation");
  HIBYTE(v45[6]) = 0;
  v45[7] = -5120;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  v34 = v41;
  *(inited + 72) = a4;
  *(inited + 80) = v34;
  Dictionary.init(dictionaryLiteral:)();
  *(v32 + 56) = type metadata accessor for Command();
  *(v32 + 64) = &protocol witness table for Command;
  __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  ActionHandler.wrappedValue.getter();
  v35 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v23, 1, v35) == 1)
  {
    (*(v27 + 8))(v31, v24);
    return outlined destroy of StandardActionHandler?(v23, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    (*(v27 + 16))(v17, v31, v24);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
    v37 = enum case for InteractionType.buttonTapped(_:);
    v38 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_1(v38);
    (*(v39 + 104))(v11, v37, v38);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v11, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v17, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v27 + 8))(v31, v24);
    return (*(*(v35 - 8) + 8))(v23, v35);
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ConfirmationBinaryButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = *(v0 + v3 + v1[7] + 8);

  v9 = *(v0 + v3 + v1[8] + 8);

  v10 = v1[9];
  v11 = type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1(v11);
  (*(v12 + 8))(v0 + v3 + v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationBinaryButtonView.init(confirmLabel:cancelLabel:buttonStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  ActionHandler.init()();
  v12 = type metadata accessor for ConfirmationBinaryButtonView();
  v13 = (a6 + v12[5]);
  *v13 = a1;
  v13[1] = a2;
  v14 = (a6 + v12[6]);
  *v14 = a3;
  v14[1] = a4;
  v15 = v12[7];
  v16 = type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1(v16);
  v18 = *(v17 + 32);

  return v18(a6 + v15, a5);
}

uint64_t sub_69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for ButtonItemButtonStyle();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_6A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for ButtonItemButtonStyle();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for ConfirmationBinaryButtonView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ButtonItemButtonStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return type metadata accessor for ConfirmationBinaryButtonView();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return type metadata accessor for ConfirmationBinaryButtonView();
}

uint64_t LinkMultiChoiceView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkMultiChoiceView() + 20);

  return outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v3, a1);
}

uint64_t type metadata accessor for LinkMultiChoiceView()
{
  result = type metadata singleton initialization cache for LinkMultiChoiceView;
  if (!type metadata singleton initialization cache for LinkMultiChoiceView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkMultiChoiceView.body.getter()
{
  v1 = type metadata accessor for LinkMultiChoiceView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of LinkMultiChoiceView(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  outlined init with take of LinkMultiChoiceView(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LinkMultiChoiceView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for LinkMultiChoiceView();
  v4 = v3 - 8;
  v33 = *(v3 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA7AnyViewVGMd, _s7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA7AnyViewVGMR);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v35 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &KeyPath - v11;
  v12 = type metadata accessor for LinkActionView();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = (&KeyPath - v18);
  v20 = (a1 + *(v4 + 28));
  memcpy(__dst, v20, 0x50uLL);
  outlined init with copy of WorkflowDataModels.LinkActionModel(__dst, v37);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
  *v19 = EnvironmentObject.init()();
  v19[1] = v21;
  v22 = v19 + *(v13 + 28);
  InteractionDelegate.init()();
  memcpy(v19 + *(v13 + 32), __dst, 0x50uLL);
  v37[0] = v20[10];
  KeyPath = swift_getKeyPath();
  outlined init with copy of LinkMultiChoiceView(a1, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkMultiChoiceView);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  outlined init with take of LinkMultiChoiceView(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNChoiceOptionCGMd, &_sSaySo14LNChoiceOptionCGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [LNChoiceOption] and conformance [A], &_sSaySo14LNChoiceOptionCGMd, &_sSaySo14LNChoiceOptionCGMR);
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v25 = v34;
  ForEach<>.init(_:id:content:)();
  outlined init with copy of LinkMultiChoiceView(v19, v17, type metadata accessor for LinkActionView);
  v26 = v7[2];
  v27 = v35;
  v26(v35, v25, v6);
  v28 = v36;
  outlined init with copy of LinkMultiChoiceView(v17, v36, type metadata accessor for LinkActionView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin0B10ActionViewV_7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAD03AnyE0VGtMd, &_s16SiriLinkUIPlugin0B10ActionViewV_7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAD03AnyE0VGtMR);
  v26((v28 + *(v29 + 48)), v27, v6);
  v30 = v7[1];
  v30(v25, v6);
  outlined destroy of LinkActionView(v19);
  v30(v27, v6);
  return outlined destroy of LinkActionView(v17);
}

uint64_t outlined init with take of LinkMultiChoiceView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkMultiChoiceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LinkMultiChoiceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkMultiChoiceView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in LinkMultiChoiceView.body.getter(v4, a1);
}

void key path getter for LNChoiceOption.identifier : LNChoiceOption(id *a1)
{
  v1 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t closure #1 in closure #1 in LinkMultiChoiceView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = LinkMultiChoiceView.createButton(option:)(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t LinkMultiChoiceView.createButton(option:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for RFButtonStyle();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v74 = v5;
  v75 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LinkMultiChoiceView();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v9 - 8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v11 = OUTLINED_FUNCTION_2_0(v64);
  v68 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v63 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_MR);
  v17 = OUTLINED_FUNCTION_2_0(v72);
  v69 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAcAE0eI0yQrqd__AA09PrimitivegI0Rd__lFQOyAA0G0VyAA4TextVG_AD08RFButtonI0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAcAE0eI0yQrqd__AA09PrimitivegI0Rd__lFQOyAA0G0VyAA4TextVG_AD08RFButtonI0VQo__Qo_MR);
  v24 = OUTLINED_FUNCTION_2_0(v23);
  v70 = v25;
  v71 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v66 = &v63 - v28;
  v29 = type metadata accessor for ButtonItemButtonStyle.Role();
  v30 = OUTLINED_FUNCTION_2_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [a1 style];
  v38 = *(v32 + 104);
  if (v37 > 2)
  {
    v39 = &enum case for ButtonItemButtonStyle.Role.standard(_:);
  }

  else
  {
    v39 = *(&off_59FF8 + v37);
  }

  v40 = *v39;
  v67 = v29;
  v38(v36, v40, v29);
  v41 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([a1 title]);
  if (v42)
  {
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v45 = [a1 title];
    v46 = [v45 key];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v47;
  }

  v77 = v43;
  v78 = v44;
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of LinkMultiChoiceView(v65, &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
  v49 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  outlined init with take of LinkMultiChoiceView(&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v50 + v49);
  lazy protocol witness table accessor for type String and conformance String();
  v51 = a1;
  Button<>.init<A>(_:action:)();
  v52 = v73;
  static PrimitiveButtonStyle<>.rfButton.getter();
  v53 = lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v54 = lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, &type metadata accessor for RFButtonStyle);
  v55 = v64;
  v56 = v75;
  View.buttonStyle<A>(_:)();
  (*(v74 + 8))(v52, v56);
  (*(v68 + 8))(v16, v55);
  v77 = v55;
  v78 = v56;
  v79 = v53;
  v80 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v66;
  v59 = v72;
  View.buttonRole(_:)();
  (*(v69 + 8))(v22, v59);
  v77 = v59;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v60 = v71;
  v61 = View.eraseToAnyView()();
  (*(v70 + 8))(v58, v60);
  result = (*(v32 + 8))(v36, v67);
  *v76 = v61;
  return result;
}

uint64_t closure #1 in LinkMultiChoiceView.createButton(option:)(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Command();
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = *(v42 + 64);
  __chkstk_darwin(v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, "h~");
  inited = swift_initStackObject();
  v38 = xmmword_43980;
  *(inited + 16) = xmmword_43980;
  v44 = 0x65756C6176;
  v45 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v23 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v14 + 8))(v17, v13);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionHandler.wrappedValue.getter();
  v27 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
    (*(v42 + 8))(v21, v43);
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v12, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = v38;
    v30 = v43;
    *(v29 + 56) = v43;
    *(v29 + 64) = &protocol witness table for Command;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
    v32 = v42;
    (*(v42 + 16))(boxed_opaque_existential_1, v21, v30);
    v33 = v39;
    ActionProperty.init(_:)();
    v34 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    v35 = enum case for InteractionType.buttonTapped(_:);
    v36 = type metadata accessor for InteractionType();
    v37 = v40;
    (*(*(v36 - 8) + 104))(v40, v35, v36);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
    StandardActionHandler.perform(_:interactionType:)();
    _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v37, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v33, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v32 + 8))(v21, v30);
    return (*(*(v27 - 8) + 8))(v12, v27);
  }
}

void *LinkMultiChoiceView.init(model:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = (a2 + *(type metadata accessor for LinkMultiChoiceView() + 20));

  return memcpy(v4, a1, 0x58uLL);
}

uint64_t outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter(void *a1)
{
  v2 = [a1 defaultValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_80FC()
{
  v2 = type metadata accessor for LinkMultiChoiceView();
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  v8 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v1 + v5 + *(v0 + 28);
  v11 = *(v10 + 8);

  v12 = *(v10 + 24);

  v13 = *(v10 + 40);

  v14 = *(v10 + 56);
  if (v14 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v10 + 48), v14);
  }

  v15 = *(v10 + 80);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t partial apply for closure #1 in LinkMultiChoiceView.createButton(option:)()
{
  v1 = *(type metadata accessor for LinkMultiChoiceView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in LinkMultiChoiceView.createButton(option:)(v2, v3);
}

uint64_t sub_82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_8370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for LinkMultiChoiceView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v2 = type metadata accessor for LinkMultiChoiceView();
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v1 + v5 + *(v0 + 28);
  v11 = *(v10 + 8);

  v12 = *(v10 + 24);

  v13 = *(v10 + 40);

  v14 = *(v10 + 56);
  if (v14 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v10 + 48), v14);
  }

  v15 = *(v10 + 80);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkMultiChoiceView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(type metadata accessor for LinkMultiChoiceView() - 8) + 80);

  return closure #1 in closure #1 in LinkMultiChoiceView.body.getter(a1, a2);
}

uint64_t lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of LinkMultiChoiceView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LinkActionView(uint64_t a1)
{
  v2 = type metadata accessor for LinkActionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnableTCCView.model.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t EnableTCCView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  v3 = OUTLINED_FUNCTION_0_1(v43);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_2_3();
  v45 = v6;
  __chkstk_darwin(v7);
  v44 = &v41 - v8;
  v9 = type metadata accessor for SimpleItemRichView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_2_3();
  v42 = v16;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = v2[2];
  v21 = v2[3];
  v22 = v2[5];
  v41 = v2[4];
  v23 = v2[7];
  if (v23)
  {
    v24 = v2[6];
    v68[3] = &type metadata for String;
    v68[4] = &protocol witness table for String;
    v68[0] = v24;
    v68[1] = v23;
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    (*(v10 + 32))(v19, v13, v9);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v25, 1, v9);
  *&v65 = v20;
  *(&v65 + 1) = v21;
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_1_3(v26);
  *(v27 + 80) = v20;
  *(v27 + 88) = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  *(&v70 + 1) = v28;
  v29 = lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v71 = v29;
  __swift_allocate_boxed_opaque_existential_1(&v69);
  swift_bridgeObjectRetain_n();
  outlined init with copy of EnableTCCView(v2, v68);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v30 = v41;
  *&v62 = v41;
  *(&v62 + 1) = v22;
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_1_3(v31);
  *(v32 + 80) = v30;
  *(v32 + 88) = v22;
  *(&v66 + 1) = v28;
  v67 = v29;
  __swift_allocate_boxed_opaque_existential_1(&v65);

  outlined init with copy of EnableTCCView(v2, v68);

  Button<>.init<A>(_:action:)();
  v33 = v44;
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  KeyPath = swift_getKeyPath();
  v35 = v42;
  v36 = (v33 + *(v43 + 36));
  *v36 = KeyPath;
  v36[1] = 5;
  outlined init with copy of SimpleItemRichView?(v19, v35, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v37 = v45;
  outlined init with copy of SimpleItemRichView?(v33, v45, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  v38 = v46;
  outlined init with copy of SimpleItemRichView?(v35, v46, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB015ModifiedContentVyAA012BinaryButtonF0VAE30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGtMd, &_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB015ModifiedContentVyAA012BinaryButtonF0VAE30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGtMR);
  outlined init with copy of SimpleItemRichView?(v37, v38 + *(v39 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  outlined destroy of StandardActionHandler?(v33, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  outlined destroy of StandardActionHandler?(v19, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  outlined destroy of StandardActionHandler?(v37, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  return outlined destroy of StandardActionHandler?(v35, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
}

void closure #1 in EnableTCCView.createButton(label:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    v5 = *a1;
    v6 = dispatch thunk of Context.perform(machineUtterance:)();

    if ((v6 & 1) == 0)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.voiceCommands);

      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v13 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v13);
        _os_log_impl(&dword_0, oslog, v8, "#EnableTCCView failed to issue machineUtterance: '%s'", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_9060@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.visualResponseLocation.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of SimpleItemRichView?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

__n128 EnableTCCView.init(model:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1[1];
  v8 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  *a2 = EnvironmentObject.init()();
  *(a2 + 8) = v5;
  result = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance EnableTCCView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return EnableTCCView.body.getter(a1);
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

uint64_t getEnumTagSinglePayload for EnableTCCView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for EnableTCCView(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t LinkConfirmationView.body.getter()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x71uLL);
  outlined init with copy of LinkConfirmationView(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(LinkActionView, ConfirmationBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LinkConfirmationView.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for ButtonItemButtonStyle();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfirmationBinaryButtonView();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for LinkActionView();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = (&v31 - v22);
  memcpy(v37, a1, sizeof(v37));
  v24 = a1[112];
  memcpy(__dst, a1, 0x50uLL);
  outlined init with copy of WorkflowDataModels.LinkActionModel(__dst, v36);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  *v23 = EnvironmentObject.init()();
  v23[1] = v25;
  v26 = v23 + *(v17 + 28);
  InteractionDelegate.init()();
  memcpy(v23 + *(v17 + 32), __dst, 0x50uLL);
  v36[0] = v37[5];
  v38 = v37[6];
  outlined init with copy of String(v36, v35);
  outlined init with copy of String(&v38, v35);
  v27 = v31;
  if (v24)
  {
    static ButtonStyle<>.buttonItemPreferredAndDestructive.getter();
  }

  else
  {
    static ButtonStyle<>.buttonItemPreferred.getter();
  }

  ActionHandler.init()();
  *&v13[v6[5]] = v36[0];
  *&v13[v6[6]] = v38;
  (*(v32 + 32))(&v13[v6[7]], v27, v33);
  outlined init with take of ConfirmationBinaryButtonView(v13, v15);
  outlined init with copy of LinkActionView(v23, v21, type metadata accessor for LinkActionView);
  outlined init with copy of LinkActionView(v15, v10, type metadata accessor for ConfirmationBinaryButtonView);
  v28 = v34;
  outlined init with copy of LinkActionView(v21, v34, type metadata accessor for LinkActionView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin0B10ActionViewV_AA024ConfirmationBinaryButtonE0VtMd, &_s16SiriLinkUIPlugin0B10ActionViewV_AA024ConfirmationBinaryButtonE0VtMR);
  outlined init with copy of LinkActionView(v10, v28 + *(v29 + 48), type metadata accessor for ConfirmationBinaryButtonView);
  outlined destroy of ConfirmationBinaryButtonView(v15, type metadata accessor for ConfirmationBinaryButtonView);
  outlined destroy of ConfirmationBinaryButtonView(v23, type metadata accessor for LinkActionView);
  outlined destroy of ConfirmationBinaryButtonView(v10, type metadata accessor for ConfirmationBinaryButtonView);
  return outlined destroy of ConfirmationBinaryButtonView(v21, type metadata accessor for LinkActionView);
}

uint64_t sub_97EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 64), v4);
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for LinkConfirmationView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for LinkConfirmationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of LinkActionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ConfirmationBinaryButtonView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t one-time initialization function for voiceCommands()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.voiceCommands);
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for linkUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkUI);
  __swift_project_value_buffer(v0, static Logger.linkUI);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriKitUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriKitUI);
  __swift_project_value_buffer(v0, static Logger.siriKitUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.voiceCommands.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.voiceCommands.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v33 = a6;
  v34 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, v7, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  outlined init with copy of Logger?(v17, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    outlined destroy of Logger?(v15);
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a3;
      v23 = v22;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v30 = v20;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v33;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
      v27 = v21;
      v28 = v30;
      _os_log_impl(&dword_0, v30, v27, "FatalError at %s:%lu - %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v19 + 8))(v15, v18);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

id static LNSnippetEnvironment.make(size:)(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = objc_allocWithZone(LNSnippetEnvironment);
  return @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v7, -1, -1, -1, -1, -1, -1, 0, a1, a2, 1.0, 0, 0, 0);
}

id static LNSnippetEnvironment.make(from:localeIdentifier:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = [a1 estimatedVisibleSnippetDisplaySize];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 width];
  v9 = [v7 height];

  Locale.init(identifier:)();
  v10 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v11 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_dynamicTypeSize);
  v37 = static LNSnippetEnvironmentDynamicTypeSize.make(from:)(v11, v12);

  v13 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_textLegibilityWeight);
  v36 = static LNSnippetEnvironmentLegibilityWeight.make(from:)(v13, v14);

  v15 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_textDirection);
  v17 = static LNSnippetEnvironmentLayoutDirection.make(from:)(v15, v16);

  v18 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayColorScheme);
  v20 = static LNSnippetEnvironmentColorScheme.make(from:)(v18, v19);

  v21 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayContrast);
  v23 = static LNSnippetEnvironmentColorSchemeContrast.make(from:)(v21, v22);

  [v7 scale];
  v25 = v24;
  v26 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayGamut);
  v28 = static LNSnippetEnvironmentDisplayGamut.make(from:)(v26, v27);

  v29 = [a1 accessibilityDifferentiateWithoutColor];
  v30 = [a1 accessibilityInvertColors];
  v31 = [a1 accessibilityReduceMotion];
  v32 = [a1 accessibilityReduceTransparency];
  v33 = objc_allocWithZone(LNSnippetEnvironment);
  v34 = @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v5, v37, v36, v17, v20, v23, v28, v29, v8, v9, v25, v30, v31, v32);

  return v34;
}

uint64_t static LNSnippetEnvironmentDynamicTypeSize.make(from:)(uint64_t a1, uint64_t a2)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v5 == a1 && v6 == a2)
    {
LABEL_124:

      return -1;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return -1;
    }
  }

  else
  {
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v8 == a1 && v9 == a2)
    {

      return 1;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 1;
    }
  }

  else
  {
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v11 == a1 && v12 == a2)
    {

      return 2;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 2;
    }
  }

  else
  {
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v15 == a1 && v16 == a2)
    {

      return 0;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 0;
    }
  }

  else
  {
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v18 == a1 && v19 == a2)
    {

      return 3;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 3;
    }
  }

  else
  {
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v21 == a1 && v22 == a2)
    {

      return 4;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 4;
    }
  }

  else
  {
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v24 == a1 && v25 == a2)
    {

      return 5;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 5;
    }
  }

  else
  {
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v27 == a1 && v28 == a2)
    {

      return 6;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 6;
    }
  }

  else
  {
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v30 == a1 && v31 == a2)
    {

      return 7;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 7;
    }
  }

  else
  {
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v33 == a1 && v34 == a2)
    {

      return 8;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 8;
    }
  }

  else
  {
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v36 == a1 && v37 == a2)
    {

      return 9;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 9;
    }
  }

  else
  {
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v39 == a1 && v40 == a2)
    {

      return 10;
    }

    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 10;
    }
  }

  else
  {
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_124;
  }

  if (v42 != a1 || v43 != a2)
  {
    v45 = OUTLINED_FUNCTION_0_4();

    if (v45)
    {
      return 11;
    }

    return -1;
  }

  return 11;
}

uint64_t static LNSnippetEnvironmentLegibilityWeight.make(from:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v10 == a1 && v11 == a2)
    {
LABEL_27:

      return -1;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return -1;
    }
  }

  else
  {
  }

  v14 = *a4;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v15 == a1 && v16 == a2)
    {

      return 0;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      return 0;
    }
  }

  else
  {
  }

  v19 = *a5;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_27;
  }

  if (v20 != a1 || v21 != a2)
  {
    v23 = OUTLINED_FUNCTION_0_4();

    if (v23)
    {
      return 1;
    }

    return -1;
  }

  return 1;
}

id @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = type metadata accessor for Locale();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:isa locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

uint64_t outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_5()
{
}

uint64_t CodableAction.init(from:)(uint64_t *a1)
{
  type metadata accessor for CodableAction.CodingKeys();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedDecodingContainer();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSKeyedUnarchiver();
    v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v19 = v10;
    if (v10)
    {
      v21 = OUTLINED_FUNCTION_2_5();
      v22(v21);
      outlined consume of Data._Representation(v24, v25);
      goto LABEL_9;
    }

    type metadata accessor for CodableAction.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v24, v25);
    v8 = OUTLINED_FUNCTION_2_5();
    v9(v8);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Failed to decode LNAction; Error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
  }

  v19 = 0;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v19;
}

uint64_t CodableAction.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for CodableAction.CodingKeys();
  OUTLINED_FUNCTION_0_5();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = OUTLINED_FUNCTION_2_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v25 - v10;
  v12 = objc_opt_self();
  v28[0] = a2;
  type metadata accessor for Optional();
  v13 = Optional._bridgeToObjectiveC()();
  v28[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v28];
  swift_unknownObjectRelease();
  v15 = v28[0];
  if (v14)
  {
    v26 = v7;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = a1[3];
    v20 = a1;
    v21 = v4;
    v22 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v19);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v28[0] = v16;
    v28[1] = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v21);
    return outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v24 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableAction.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAction<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAction<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CodableAction.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableAction<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  result = CodableAction.init(from:)(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

uint64_t type metadata instantiation function for CodableAction()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableAction(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAction(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CodableAction.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xBC08);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA7DividerVAA5GroupVyAIyAA15ModifiedContentVyAA0F0VyAA7ForEachVySaySSGSSAKGGAA010_FixedSizeG0VG_AIyAQyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA4LinkVyAKG_AA05PlainwU0VQo_tGSgtGGA4_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA7DividerVAA5GroupVyAIyAA15ModifiedContentVyAA0F0VyAA7ForEachVySaySSGSSAKGGAA010_FixedSizeG0VG_AIyAQyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA4LinkVyAKG_AA05PlainwU0VQo_tGSgtGGA4_tGGMR);
  closure #1 in AutoShortcutFirstRunWatchView.body.getter(v1, (a1 + *(v3 + 44)));
  v4 = static Edge.Set.horizontal.getter();
  v5 = v1[10];
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMR);
  v15 = a1 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v59 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v44 - v7;
  v61 = type metadata accessor for Divider();
  v54 = *(v61 - 8);
  v8 = v54;
  v9 = *(v54 + 64);
  v10 = __chkstk_darwin(v61);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = a1[5];
  v63 = a1[4];
  v64 = v15;
  lazy protocol witness table accessor for type String and conformance String();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.title3.getter();
  v55 = Text.font(_:)();
  v56 = v21;
  v57 = v22;
  v24 = v23;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  v25 = v14;
  v53 = v14;
  Divider.init()();
  v26 = v60;
  closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter(a1, v60);
  v27 = a1[11];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = v63;
  v51 = v65;
  v50 = v67;
  v49 = v68;
  v71 = 1;
  v70 = v64;
  v69 = v66;
  v62 = v24 & 1;
  v28 = *(v8 + 16);
  v29 = v12;
  v30 = v61;
  v28(v12, v25, v61);
  v31 = v26;
  v32 = v59;
  outlined init with copy of SimpleItemRichView?(v31, v59, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v45 = v71;
  v46 = v70;
  v47 = v69;
  v33 = v62;
  v48 = v62;
  v34 = v55;
  v35 = v56;
  v37 = v57;
  v36 = v58;
  *v58 = v55;
  v36[1] = v37;
  *(v36 + 16) = v33;
  v36[3] = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA7DividerVAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSACGGAA16_FixedSizeLayoutVG_AIyAKyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyACG_AA05PlainuS0VQo_tGSgtGGAZtMd, &_s7SwiftUI4TextV_AA7DividerVAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSACGGAA16_FixedSizeLayoutVG_AIyAKyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyACG_AA05PlainuS0VQo_tGSgtGGAZtMR);
  v28(v36 + v38[12], v29, v30);
  outlined init with copy of SimpleItemRichView?(v32, v36 + v38[16], &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v39 = v36 + v38[20];
  *v39 = 0;
  v39[8] = v45;
  *(v39 + 2) = v52;
  v39[24] = v46;
  *(v39 + 4) = v51;
  v39[40] = v47;
  v40 = v49;
  *(v39 + 6) = v50;
  *(v39 + 7) = v40;
  outlined copy of Text.Storage(v34, v37, v48);

  outlined destroy of StandardActionHandler?(v60, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v41 = *(v54 + 8);
  v42 = v61;
  v41(v53, v61);
  outlined destroy of StandardActionHandler?(v32, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v41(v29, v42);
  outlined consume of Text.Storage(v34, v37, v62);
}

uint64_t closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMR);
  v3 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v79 = (&v64 - v4);
  v76 = type metadata accessor for PlainButtonStyle();
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4LinkVyAA4TextVGMd, &_s7SwiftUI4LinkVyAA4TextVGMR);
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v73);
  v70 = &v64 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlaingE0VQo_MR);
  v77 = *(v78 - 8);
  v9 = *(v77 + 64);
  v10 = __chkstk_darwin(v78);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for URL();
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  v19 = __chkstk_darwin(v17);
  v69 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v80 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v85 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v84 = &v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27);
  v83 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v64 - v32;
  v34 = static HorizontalAlignment.leading.getter();
  v35 = a1[11];
  *v33 = v34;
  *(v33 + 1) = v35;
  v33[16] = 0;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySaySSGSSAA4TextVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySaySSGSSAA4TextVGGMR) + 44);
  memcpy(__dst, a1, sizeof(__dst));
  v91 = AutoShortcutAppPhrasesViewModel.displayPhrases.getter();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  ForEach<>.init(_:id:content:)();
  *&v33[*(v28 + 44)] = 256;
  if (__dst[7])
  {
    AutoShortcutAppPhrasesViewModel.punchoutURL.getter();
    URL.init(string:)();

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      v40 = v81;
      v41 = *(v81 + 32);
      v42 = v80;
      v68 = v17;
      v41(v80, v16, v17);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v67 = v91;
      v66 = v93;
      v65 = v95;
      v64 = v96;
      v90 = 1;
      v89 = v92;
      v88 = v94;
      v43 = (*(v40 + 16))(v69, v42, v17);
      __chkstk_darwin(v43);
      v44 = v70;
      Link.init(destination:label:)();
      v45 = v74;
      PlainButtonStyle.init()();
      lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Link<Text> and conformance Link<A>, &_s7SwiftUI4LinkVyAA4TextVGMd, &_s7SwiftUI4LinkVyAA4TextVGMR);
      lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
      v46 = v82;
      v47 = v73;
      v48 = v76;
      View.buttonStyle<A>(_:)();
      (*(v75 + 8))(v45, v48);
      (*(v72 + 8))(v44, v47);
      v49 = v90;
      LOBYTE(v48) = v89;
      LOBYTE(v45) = v88;
      v50 = v77;
      v51 = *(v77 + 16);
      v52 = v71;
      v53 = v46;
      v54 = v78;
      v51(v71, v53, v78);
      v55 = v79;
      *v79 = 0;
      *(v55 + 8) = v49;
      *(v55 + 16) = v67;
      *(v55 + 24) = v48;
      *(v55 + 32) = v66;
      *(v55 + 40) = v45;
      v56 = v64;
      *(v55 + 48) = v65;
      *(v55 + 56) = v56;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainlJ0VQo_tMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainlJ0VQo_tMR);
      v51((v55 + *(v57 + 48)), v52, v54);
      v58 = *(v50 + 8);
      v58(v82, v54);
      (*(v81 + 8))(v80, v68);
      v58(v52, v54);
      v37 = v84;
      sub_D10C(v55, v84);
      v38 = v37;
      v39 = 0;
      goto LABEL_6;
    }

    outlined destroy of StandardActionHandler?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v37 = v84;
  v38 = v84;
  v39 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v86);
  v59 = v83;
  outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(v33, v83);
  v60 = v85;
  outlined init with copy of SimpleItemRichView?(v37, v85, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  v61 = v87;
  outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(v59, v87);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AA9TupleViewVyACyAA6SpacerVAA06_FrameK0VG_AA0M0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA4LinkVyAJG_AA05PlainsQ0VQo_tGSgtMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AA9TupleViewVyACyAA6SpacerVAA06_FrameK0VG_AA0M0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA4LinkVyAJG_AA05PlainsQ0VQo_tGSgtMR);
  outlined init with copy of SimpleItemRichView?(v60, v61 + *(v62 + 48), &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  outlined destroy of StandardActionHandler?(v37, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  outlined destroy of StandardActionHandler?(v33, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  outlined destroy of StandardActionHandler?(v60, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  return outlined destroy of StandardActionHandler?(v59, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *a1;
  v6 = a1[1];
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  v9._countAndFlagsBits = v7;
  v9._object = v6;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  LOBYTE(v7) = v14;
  static Font.body.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  outlined consume of Text.Storage(v11, v13, v7 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double AutoShortcutFirstRunWatchView.init(model:)@<D0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  memcpy(a2, __src, 0x50uLL);
  result = 12.0;
  a2[5] = xmmword_446D0;
  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunWatchView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutFirstRunWatchView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAEyAA15ModifiedContentVyACyAA7ForEachVySaySSGSSAGGGAA16_FixedSizeLayoutVG_AEyAMyAA6SpacerVAA06_FrameO0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAGG_AA05PlainuS0VQo_tGSgtGGAZtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAEyAA15ModifiedContentVyACyAA7ForEachVySaySSGSSAGGGAA16_FixedSizeLayoutVG_AEyAMyAA6SpacerVAA06_FrameO0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAGG_AA05PlainuS0VQo_tGSgtGGAZtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #2 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t sub_D10C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMR);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t static InputCompletionConverter.toUserData(state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    if (a3 != 1)
    {
      v95 = &type metadata for String;
      *&v94 = 0x6C65636E6163;
      *(&v94 + 1) = 0xE600000000000000;
      OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, v91, v92, v93, v94);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_5_0(v67, v68, v69, v70, v71, v72, v73, v74, v83, v90, v91);
      return v89;
    }

    *&v94 = 0x497375636F666E75;
    *(&v94 + 1) = 0xEF786F427475706ELL;
    OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, v91, v92, v93, v94);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_5_0(v14, v15, v16, v17, v18, v19, v20, v21, v77, v85, v91);
    v22 = v86;
    v95 = &type metadata for String;
    OUTLINED_FUNCTION_8();
    *&v94 = v23;
    *(&v94 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v24, v25, v26, v27, v28, v29, v30, v31, v78, v86, v91, v92, v93, v94);
    v32 = a1;
    v33 = a2;
    v34 = 1;
  }

  else
  {
    *&v94 = 1701736292;
    *(&v94 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, v91, v92, v93, v94);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_5_0(v35, v36, v37, v38, v39, v40, v41, v42, v80, v87, v91);
    v22 = v88;
    v95 = &type metadata for String;
    OUTLINED_FUNCTION_8();
    *&v94 = v43;
    *(&v94 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v44, v45, v46, v47, v48, v49, v50, v51, v81, v88, v91, v92, v93, v94);
    v32 = a1;
    v33 = a2;
    v34 = 0;
  }

  outlined copy of InputCompletionState(v32, v33, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v91, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v95 = &type metadata for String;
  *&v94 = a1;
  *(&v94 + 1) = a2;
  OUTLINED_FUNCTION_4_0(v53, v54, v55, v56, v57, v58, v59, v60, v79, v22, v91, v92, v93, v94);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_0(v61, 0x7475706E69, v62, v61, v63, v64, v65, v66, v82, v22, v91);
  return v89;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static InputCompletionConverter.toInputCompletionState(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574617473, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, &v55);
  if ((OUTLINED_FUNCTION_1_6() & 1) == 0)
  {
    return 0;
  }

  v4 = v47 == 1701736292 && v52 == 0xE400000000000000;
  if (!v4 && (OUTLINED_FUNCTION_7() & 1) == 0)
  {
    v24 = v47 == 0x6C65636E6163 && v52 == 0xE600000000000000;
    if (v24 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 0;
    }

    if (v47 == 0x497375636F666E75 && v52 == 0xEF786F427475706ELL)
    {
    }

    else
    {
      v27 = OUTLINED_FUNCTION_7();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3_3(v28, v29, v30, v31, v32, v33, v34, v35, v47, v52, v55);
    if (v56)
    {
      if ((OUTLINED_FUNCTION_1_6() & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_8();
      if (v50 == v36 && v54 == 0xE400000000000000)
      {
      }

      else
      {
        v38 = OUTLINED_FUNCTION_6();

        if ((v38 & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_2_6(v39, v40, v41, v42, v43, v44, v45, v46, v50, v54, v55);
      if (v56)
      {
        if (OUTLINED_FUNCTION_1_6())
        {
          return v51;
        }

        return 0;
      }
    }

LABEL_46:
    outlined destroy of Any?(&v55);
    return 0;
  }

  OUTLINED_FUNCTION_3_3(v5, v6, v7, v8, v9, v10, v11, v12, v47, v52, v55);
  if (!v56)
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_1_6())
  {
    OUTLINED_FUNCTION_8();
    if (v48 == v13 && v53 == 0xE400000000000000)
    {
    }

    else
    {
      v15 = OUTLINED_FUNCTION_6();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_2_6(v16, v17, v18, v19, v20, v21, v22, v23, v48, v53, v55);
    if (v56)
    {
      if (OUTLINED_FUNCTION_1_6())
      {
        return v49;
      }

      return 0;
    }

    goto LABEL_46;
  }

  return 0;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    outlined destroy of AnyHashable(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

uint64_t outlined copy of InputCompletionState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
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

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(0x7475706E69, 0xE500000000000000, v11, &a11);
}

double OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, v11, &a11);
}

_OWORD *OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of Any(&a14, &a11);
}

_OWORD *OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&a11, a2, 0xE500000000000000, a4);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *LinkActionView.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for LinkActionView();
  v6 = a2 + *(v5 + 20);
  InteractionDelegate.init()();
  v7 = a2 + *(v5 + 24);

  return memcpy(v7, a1, 0x50uLL);
}

uint64_t type metadata accessor for LinkActionView()
{
  result = type metadata singleton initialization cache for LinkActionView;
  if (!type metadata singleton initialization cache for LinkActionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkActionView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkActionView() + 24);

  return outlined init with copy of WorkflowDataModels.LinkActionModel(v3, a1);
}

uint64_t LinkActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for LinkActionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  v5 = OUTLINED_FUNCTION_0_1(v25);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_MR);
  v26 = OUTLINED_FUNCTION_2_0(v10);
  v27 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v24 = &v23 - v14;
  _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkActionView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  outlined init with take of LinkActionView(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMR);
  ComponentStack.init(content:)();
  v17 = v25;
  v9[*(v25 + 36)] = 0;
  _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v23, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkActionView);
  v18 = swift_allocObject();
  outlined init with take of LinkActionView(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15);
  v19 = lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  v20 = v24;
  View.onTapGesture(count:perform:)();

  outlined destroy of StandardActionHandler?(v9, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  v29 = v17;
  v30 = v19;
  OUTLINED_FUNCTION_2_7();
  swift_getOpaqueTypeConformance2();
  v21 = v26;
  View.ambientDrawable(renderWithDrawingGroup:)();
  return (*(v27 + 8))(v20, v21);
}

uint64_t closure #1 in LinkActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = type metadata accessor for ArchivedView();
  v3 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0G19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAN12ArchivedViewV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0G19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAN12ArchivedViewV_GMR);
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v50 - v6;
  v7 = type metadata accessor for LinkActionView();
  v8 = v7 - 8;
  v52 = *(v7 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v7);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
  v10 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = type metadata accessor for SimpleItemRichView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v59 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v50 - v28;
  v30 = *(v8 + 32);
  v54 = a1;
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 40);
  if (v32)
  {
    v33 = v31[4];
    *(&__dst[1] + 1) = &type metadata for String;
    *&__dst[2] = &protocol witness table for String;
    *&__dst[0] = v33;
    *(&__dst[0] + 1) = v32;
    *&v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0;
    v62 = 0u;
    v63 = 0u;

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    (*(v20 + 32))(v29, v23, v19);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v34, 1, v19);
  memcpy(__dst, v31, sizeof(__dst));
  if (WorkflowDataModels.LinkActionModel.renderModel.getter())
  {

    ArchiveRenderer.init(model:)();
    v35 = v53;
    _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v54, v53, type metadata accessor for LinkActionView);
    v36 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v37 = swift_allocObject();
    outlined init with take of LinkActionView(v35, v37 + v36);
    v38 = v57;
    v39 = &v12[*(v56 + 36)];
    *v39 = partial apply for closure #1 in closure #1 in LinkActionView.body.getter;
    v39[1] = v37;
    outlined init with copy of SimpleItemRichView?(v12, v38, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ArchivedView and conformance ArchivedView, type metadata accessor for ArchivedView);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of StandardActionHandler?(v12, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
LABEL_9:
    v41 = 0;
    goto LABEL_10;
  }

  v40 = v31[7];
  if (v40 >> 60 != 15)
  {
    v42 = v31[6];
    *&v83 = v42;
    *(&v83 + 1) = v40;
    v84 = __dst[0];
    v85 = __dst[1];
    outlined copy of Data?(v42, v40);

    outlined copy of Data._Representation(v42, v40);

    v43 = v51;
    ArchivedView.init(model:)(&v83, v51);
    _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v43, v57, type metadata accessor for ArchivedView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ArchivedView and conformance ArchivedView, type metadata accessor for ArchivedView);
    _ConditionalContent<>.init(storage:)();
    outlined consume of Data._Representation(v42, v40);

    outlined destroy of ArchivedView(v43);
    goto LABEL_9;
  }

  v41 = 1;
LABEL_10:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGMR);
  __swift_storeEnumTagSinglePayload(v18, v41, 1, v44);
  v45 = v59;
  outlined init with copy of SimpleItemRichView?(v29, v59, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v46 = v60;
  outlined init with copy of SimpleItemRichView?(v18, v60, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  v47 = v61;
  outlined init with copy of SimpleItemRichView?(v45, v61, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB019_ConditionalContentVyAE08ModifiedI0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAO08ArchivedF0VGSgtMd, &_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB019_ConditionalContentVyAE08ModifiedI0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAO08ArchivedF0VGSgtMR);
  outlined init with copy of SimpleItemRichView?(v46, v47 + *(v48 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  outlined destroy of StandardActionHandler?(v18, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  outlined destroy of StandardActionHandler?(v29, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  outlined destroy of StandardActionHandler?(v46, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  return outlined destroy of StandardActionHandler?(v45, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
}

uint64_t outlined init with take of LinkActionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkActionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LinkActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkActionView();
  OUTLINED_FUNCTION_4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in LinkActionView.body.getter(v5, a1);
}

uint64_t closure #1 in closure #1 in LinkActionView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionDelegateWrapper();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  if (one-time initialization token for linkUI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.linkUI);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Tapped snippet archive renderer", v16, 2u);
  }

  v17 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined init with copy of SimpleItemRichView?(a1, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = type metadata accessor for URL();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) != 1)
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(*(v18 - 8) + 8))(v12, v18);
  }

  [v17 setPunchOutUri:v20];

  v22 = a2 + *(type metadata accessor for LinkActionView() + 20);
  InteractionDelegate.wrappedValue.getter();
  v23 = v17;
  InteractionDelegateWrapper.perform(aceCommand:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ArchiveRenderer.onLinkActionTap(_:)()
{
  OUTLINED_FUNCTION_1_7();
  swift_getWitnessTable();
  return View.modifier<A>(_:)();
}

uint64_t closure #2 in LinkActionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for linkUI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.linkUI);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Tapped snippet LinkActionView", v10, 2u);
  }

  v11 = (a1 + *(type metadata accessor for LinkActionView() + 24));
  v12 = *v11;
  v13 = v11[1];
  if (v11[3])
  {
    v14 = v11[2];
    v15 = v11[3];
  }

  v16 = v11[1];

  AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  if (*a1)
  {
    v17 = *a1;
    dispatch thunk of Context.perform(appPunchout:)();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v19 = *(a1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #2 in LinkActionView.body.getter()
{
  v1 = type metadata accessor for LinkActionView();
  OUTLINED_FUNCTION_4(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return closure #2 in LinkActionView.body.getter(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAA014SimpleItemRichG0VSg_AD19_ConditionalContentVyAD08ModifiedL0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedG0VGSgtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAA014SimpleItemRichG0VSg_AD19_ConditionalContentVyAD08ModifiedL0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedG0VGSgtGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t SnippetTapHandlingModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SnippetTapHandlingModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
  View.onTapGesture(count:perform:)();

  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMR) + 36));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
  v11 = *(v10 + 28);

  OpenURLAction.init(handler:)();
  *v9 = KeyPath;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMR) + 36));
  v15 = *(v10 + 28);

  result = OpenURLAction.init(handler:)();
  *v14 = v12;
  return result;
}

uint64_t closure #1 in SnippetTapHandlingModifier.body(content:)(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  a1(v5);
  return outlined destroy of StandardActionHandler?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t key path setter for EnvironmentValues._openURL : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for OpenURLAction();
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  return a5(v12);
}

uint64_t closure #2 in SnippetTapHandlingModifier.body(content:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 16))(v9, a1, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  a2(v9);
  outlined destroy of StandardActionHandler?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return static OpenURLAction.Result.systemAction.getter();
}

uint64_t sub_F3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InteractionDelegate();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_F4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InteractionDelegate();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for LinkActionView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

uint64_t sub_F694()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  OUTLINED_FUNCTION_2_7();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_F724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ArchiveRenderer();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1_7();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier()
{
  result = lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier;
  if (!lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetTapHandlingModifier(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for SnippetTapHandlingModifier(uint64_t result, int a2, int a3)
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

uint64_t sub_F8A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArchiveRenderer<LNAction> and conformance ArchiveRenderer<A>, &_s9SnippetUI15ArchiveRendererVySo8LNActionCGMd, &_s9SnippetUI15ArchiveRendererVySo8LNActionCGMR);
    lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ArchivedView(uint64_t a1)
{
  v2 = type metadata accessor for ArchivedView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LinkActionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for InteractionDelegate();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 8))(v0 + v3 + v5);
  v8 = v0 + v3 + v1[8];
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = *(v8 + 40);

  v12 = *(v8 + 56);
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v8 + 48), v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkActionView.body.getter(uint64_t a1)
{
  v3 = type metadata accessor for LinkActionView();
  OUTLINED_FUNCTION_4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in LinkActionView.body.getter(a1, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SnippetTapHandlingModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ArchivedViewModel.viewData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_2_8();
  outlined copy of Data._Representation(v3, v4);
  return OUTLINED_FUNCTION_2_8();
}

uint64_t AutoShortcutAppPhrasesViewModel.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t AutoShortcutAppPhrasesViewModel.prompt.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_8();
}

uint64_t ArchivedViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961)
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

Swift::Int ArchivedViewModel.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ArchivedViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x6C70736944707061;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchivedViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ArchivedViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ArchivedViewModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArchivedViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMR);
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  v22 = v21;
  v20[23] = 0;
  outlined init with copy of Data(&v22, v20);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v21, *(&v21 + 1));
  if (!v2)
  {
    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    OUTLINED_FUNCTION_1_8(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 4);
    v17 = *(v3 + 5);
    OUTLINED_FUNCTION_1_8(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

uint64_t ArchivedViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMR);
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = a2;
  v15 = v28;
  v14 = v29;
  OUTLINED_FUNCTION_4_1(1);
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v16;
  OUTLINED_FUNCTION_4_1(2);
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v20 = v17;
  (*(v8 + 8))(v12, v5);
  outlined copy of Data._Representation(v15, v14);

  v21 = v26;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v15, v14);

  v23 = v27;
  *v27 = v15;
  v23[1] = v14;
  v23[2] = v25;
  v23[3] = v21;
  v23[4] = v20;
  v23[5] = v19;
  return result;
}

void __swiftcall WorkflowDataModels.EnableTCCModel.init(confirmLabel:cancelLabel:prompt:)(SiriLinkUIPlugin::WorkflowDataModels::EnableTCCModel *__return_ptr retstr, Swift::String confirmLabel, Swift::String cancelLabel, Swift::String_optional prompt)
{
  retstr->confirmLabel = confirmLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->prompt = prompt;
}

double protocol witness for Decodable.init(from:) in conformance ArchivedViewModel@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ArchivedViewModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
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

uint64_t getEnumTagSinglePayload for ArchivedViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ArchivedViewModel(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ArchivedViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArchivedViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10A94);
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

uint64_t INImage.convertToVisualProperty()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR) - 8) + 64);
  v2[25] = OUTLINED_FUNCTION_6_0();
  v4 = type metadata accessor for ImageElement.AspectRatio();
  v2[26] = v4;
  OUTLINED_FUNCTION_3_4(v4);
  v2[27] = v5;
  v7 = *(v6 + 64);
  v2[28] = OUTLINED_FUNCTION_6_0();
  v8 = type metadata accessor for ImageElement.ImageStyle();
  v2[29] = v8;
  OUTLINED_FUNCTION_3_4(v8);
  v2[30] = v9;
  v11 = *(v10 + 64);
  v2[31] = OUTLINED_FUNCTION_6_0();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR) - 8) + 64);
  v2[32] = OUTLINED_FUNCTION_6_0();
  v13 = type metadata accessor for ImageElement.RenderingMode();
  v2[33] = v13;
  OUTLINED_FUNCTION_3_4(v13);
  v2[34] = v14;
  v16 = *(v15 + 64);
  v2[35] = OUTLINED_FUNCTION_6_0();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR) - 8) + 64);
  v2[36] = OUTLINED_FUNCTION_6_0();
  v18 = type metadata accessor for ImageElement();
  v2[37] = v18;
  OUTLINED_FUNCTION_3_4(v18);
  v2[38] = v19;
  v21 = *(v20 + 64);
  v2[39] = OUTLINED_FUNCTION_6_0();

  return _swift_task_switch(INImage.convertToVisualProperty(), 0, 0);
}

uint64_t INImage.convertToVisualProperty()()
{
  if ([*(v0 + 192) _isSystem])
  {
    outlined bridged method (pb) of @objc INImage._name.getter(*(v0 + 192));
    if (v1)
    {
      v63 = *(v0 + 296);
      v65 = *(v0 + 304);
      v2 = *(v0 + 272);
      v3 = *(v0 + 280);
      v53 = v3;
      v54 = *(v0 + 288);
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v57 = *(v0 + 312);
      v59 = v4;
      v6 = *(v0 + 240);
      v7 = *(v0 + 248);
      v8 = *(v0 + 232);
      v51 = v8;
      v61 = *(v0 + 184);
      type metadata accessor for Color();
      v9 = OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      (*(v2 + 104))(v3, enum case for ImageElement.RenderingMode.template(_:), v4);
      v11 = type metadata accessor for ImageElement.Background();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
      (*(v6 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v12 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_2_0(v12);
      v14 = v13;
      v16 = *(v15 + 72);
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_43980;
      (*(v14 + 104))(v18 + v17, enum case for _ProtoIdiom.default(_:), v12);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v18);
      static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:punchesThroughBackground:)();

      (*(v6 + 8))(v7, v51);
      outlined destroy of ImageElement.AspectRatio?(v5, &_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
      (*(v2 + 8))(v53, v59);
      outlined destroy of ImageElement.AspectRatio?(v54, &_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
      VisualPropertyConvertible<>.asVisualProperty()();
      (*(v65 + 8))(v57, v63);
      type metadata accessor for VisualProperty();
      v19 = OUTLINED_FUNCTION_9();
      goto LABEL_14;
    }
  }

  if (![*(v0 + 192) _requiresRetrieval])
  {
    v23 = *(v0 + 192);
    v24 = outlined bridged method (pb) of @objc INImage._imageData.getter(v23);
    v64 = v25;
    v66 = v24;
    if (v25 >> 60 == 15)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11(&dword_0, v29, v30, "image data is empty");
        OUTLINED_FUNCTION_7_0();

        outlined consume of Data?(v66, v64);
      }

      else
      {

        v27 = v23;
      }

      v48 = *(v0 + 184);

      type metadata accessor for VisualProperty();
      v19 = OUTLINED_FUNCTION_9();
      v47 = 1;
      goto LABEL_17;
    }

    v60 = *(v0 + 304);
    v62 = *(v0 + 296);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v52 = *(v0 + 312);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v58 = v35;
    v37 = *(v0 + 200);
    v55 = v33;
    v56 = *(v0 + 184);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_13();
    ImageElement.AspectRatio.init(width:height:)();
    (*(v35 + 16))(v37, v33, v36);
    OUTLINED_FUNCTION_10();
    v38 = OUTLINED_FUNCTION_8_0();
    v39(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v40 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_2_0(v40);
    v42 = v41;
    v44 = *(v43 + 72);
    v45 = OUTLINED_FUNCTION_4_2();
    *(v45 + 16) = xmmword_43980;
    (*(v42 + 104))(v45 + v32, enum case for _ProtoIdiom.default(_:), v40);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v45);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_12();

    (*(v31 + 8))(v32, v34);
    outlined destroy of ImageElement.AspectRatio?(v37, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_43980;
    *(v46 + 56) = type metadata accessor for VisualElement();
    *(v46 + 64) = &protocol witness table for VisualElement;
    __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    ImageElement.asVisualElement()();
    VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
    outlined consume of Data?(v66, v64);

    (*(v60 + 8))(v52, v62);
    (*(v58 + 8))(v55, v36);
    v20 = type metadata accessor for VisualProperty();
    v19 = v56;
LABEL_14:
    v47 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v19, v47, 1, v20);
    OUTLINED_FUNCTION_2_9();

    v49 = *(v0 + 8);

    return v49();
  }

  v21 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = INImage.convertToVisualProperty();
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v22;
  [v21 _retrieveImageDataWithReply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = INImage.convertToVisualProperty();
  }

  else
  {
    v3 = INImage.convertToVisualProperty();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INImage._imageData.getter(v2);
    v43 = v4;
    v44 = v3;
    if (v4 >> 60 != 15)
    {
      v41 = v0[38];
      v42 = v0[37];
      v17 = v0[30];
      v18 = v0[31];
      v19 = v0[28];
      v20 = v0[29];
      v37 = v0[39];
      v22 = v0[26];
      v21 = v0[27];
      v40 = v21;
      v23 = v0[25];
      v38 = v19;
      v39 = v0[23];
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_13();
      ImageElement.AspectRatio.init(width:height:)();
      (*(v21 + 16))(v23, v19, v22);
      OUTLINED_FUNCTION_10();
      v24 = OUTLINED_FUNCTION_8_0();
      v25(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v26 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_2_0(v26);
      v28 = v27;
      v30 = *(v29 + 72);
      v31 = OUTLINED_FUNCTION_4_2();
      *(v31 + 16) = xmmword_43980;
      (*(v28 + 104))(v31 + v18, enum case for _ProtoIdiom.default(_:), v26);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v31);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12();

      (*(v17 + 8))(v18, v20);
      outlined destroy of ImageElement.AspectRatio?(v23, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_43980;
      *(v32 + 56) = type metadata accessor for VisualElement();
      *(v32 + 64) = &protocol witness table for VisualElement;
      __swift_allocate_boxed_opaque_existential_1((v32 + 32));
      ImageElement.asVisualElement()();
      VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
      outlined consume of Data?(v44, v43);

      (*(v41 + 8))(v37, v42);
      (*(v40 + 8))(v38, v22);
      v15 = type metadata accessor for VisualProperty();
      v16 = v39;
      v33 = 0;
      goto LABEL_16;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11(&dword_0, v8, v9, "image data is empty");
      OUTLINED_FUNCTION_7_0();

      outlined consume of Data?(v44, v43);
    }

    else
    {

      v6 = v2;
    }

    v34 = v0[23];

    type metadata accessor for VisualProperty();
    v16 = OUTLINED_FUNCTION_9();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Can't retrieve image;", v13, 2u);
      OUTLINED_FUNCTION_7_0();
    }

    v14 = v0[23];

    v15 = type metadata accessor for VisualProperty();
    v16 = v14;
  }

  v33 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v16, v33, 1, v15);
  OUTLINED_FUNCTION_2_9();

  v35 = v0[1];

  return v35();
}

{
  v21 = v0;
  v1 = v0[40];
  swift_willThrow();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = v0[40];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[20];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Error retrieving image data %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
  }

  v16 = v0[23];
  v17 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  OUTLINED_FUNCTION_2_9();

  v18 = v0[1];

  return v18();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, v6);
  }

  else
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, a2);
  }
}

uint64_t ImageElement.convertToVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_43980;
  *(v0 + 56) = type metadata accessor for VisualElement();
  *(v0 + 64) = &protocol witness table for VisualElement;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  ImageElement.asVisualElement()();
  return VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  v3 = OUTLINED_FUNCTION_2_0(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v32 - v10;
  if (!*(a1 + 16))
  {
    v12 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v40 = result + 56;
  v14 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v14 + 32) & ~v14);
  v39 = v37 + 16;
  v15 = (v37 + 8);
  v33 = (v37 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v37 + 72);
    v38 = v13 + 1;
    v17 = *(v37 + 16);
    v17(v41, v35 + v16 * v13, v2);
    v18 = v12[5];
    lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom);
    v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v40 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v9, v12[6] + v21 * v16, v2);
      lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *v15;
      (*v15)(v9, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v28 = v41;
    *(v40 + 8 * v22) = v24 | v23;
    result = (*v33)(v12[6] + v21 * v16, v28, v2);
    v29 = v12[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v12[2] = v31;
LABEL_12:
    v13 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc INImage._imageData.getter(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined bridged method (pb) of @objc INImage._name.getter(void *a1)
{
  v1 = [a1 _name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of ImageElement.AspectRatio?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ProtoIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[25];
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_7_0()
{
}

uint64_t OUTLINED_FUNCTION_10()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();
}

id OUTLINED_FUNCTION_13()
{
  v3 = *(v1 + 704);

  return [v0 v3];
}

double DisambiguationItemsComponent.init(items:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for DisambiguationItemsComponent();
  v5 = (a2 + *(v4 + 20));
  State.init(wrappedValue:)();
  result = v7;
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t type metadata accessor for DisambiguationItemsComponent()
{
  result = type metadata singleton initialization cache for DisambiguationItemsComponent;
  if (!type metadata singleton initialization cache for DisambiguationItemsComponent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationItemsComponent.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for DisambiguationItemsComponent() + 24));
}

uint64_t DisambiguationItemsComponent.body.getter()
{
  v1 = type metadata accessor for DisambiguationItemsComponent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v9[3] = *(v0 + *(__chkstk_darwin(v1 - 8) + 32));
  outlined init with copy of DisambiguationItemsComponent(v0, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of DisambiguationItemsComponent(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkflowDataModels.DisambiguationItemModel] and conformance [A], &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  v6 = type metadata accessor for SimpleItemRichView();
  v7 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView);
  v9[1] = v6;
  v9[2] = v7;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel and conformance WorkflowDataModels.DisambiguationItemModel, type metadata accessor for WorkflowDataModels.DisambiguationItemModel);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in DisambiguationItemsComponent.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for DisambiguationItemsComponent();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for SimpleItemRichView();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = &protocol witness table for String;
  v14 = *(*a1 + 16);
  v13 = *(*a1 + 24);
  v55 = &type metadata for String;
  v56 = &protocol witness table for String;
  v53 = v14;
  v54 = v13;
  v15 = *(v11 + 40);
  if (v15)
  {
    v16 = *(v11 + 32);
    v17 = &type metadata for String;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v12 = 0;
    v50 = 0;
  }

  v48 = v16;
  v49 = v15;
  v51 = v17;
  v52 = v12;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v18 = OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_thumbnail;

  DisambiguationItemsComponent.getThumbnail(_:)(v11 + v18, v29);
  v28 = v29[0];
  v19 = View.eraseToAnyView()();

  v29[3] = &type metadata for AnyView;
  v29[4] = &protocol witness table for AnyView;
  v29[0] = v19;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  outlined init with copy of DisambiguationItemsComponent(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  outlined init with take of DisambiguationItemsComponent(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView);

  v22 = v26;
  View.componentTapped(isNavigation:perform:)();

  return (*(v25 + 8))(v10, v22);
}

uint64_t outlined init with copy of DisambiguationItemsComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemsComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DisambiguationItemsComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemsComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DisambiguationItemsComponent.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in DisambiguationItemsComponent.body.getter(a1, v7, a2);
}

uint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for DisambiguationItemsComponent();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for VisualProperty();
  v15 = OUTLINED_FUNCTION_2_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3_5();
  v22 = v21 - v20;
  v40 = 0;
  LOBYTE(v41) = 1;
  v23 = View.eraseToAnyView()();
  outlined init with copy of SimpleItemRichView?(a1, v13, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    outlined destroy of StandardActionHandler?(v13, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  }

  else
  {
    (*(v17 + 32))(v22, v13, v14);
    v24 = VisualProperty.asAnyView()();
    outlined init with copy of DisambiguationItemsComponent(v39, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v26 = swift_allocObject();
    outlined init with take of DisambiguationItemsComponent(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v27 = static Alignment.center.getter();
    v40 = v24;
    v41 = partial apply for closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
    v42 = v26;
    v43 = v27;
    v44 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>();
    v29 = View.eraseToAnyView()();

    (*(v17 + 8))(v22, v14);
    v23 = v29;
  }

  v30 = (v39 + *(v37 + 20));
  v31 = *v30;
  v32 = v30[1];
  v40 = v31;
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v40 = v23;
  v41 = v46;
  LOBYTE(v42) = v47;
  v43 = v48;
  LOBYTE(v44) = v49;
  v45 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v33 = View.eraseToAnyView()();

  *v38 = v33;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DisambiguationItemsComponent.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - v4;
  ActionHandler.wrappedValue.getter();
  static DisambiguationItemsComponent.performAction(item:actionHandler:)(a1, v5);
  return outlined destroy of StandardActionHandler?(v5, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
}

void static DisambiguationItemsComponent.performAction(item:actionHandler:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  OUTLINED_FUNCTION_4(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Command();
  v56 = OUTLINED_FUNCTION_2_0(v15);
  v57 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_3_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  OUTLINED_FUNCTION_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v25);
  v27 = &v55 - v26;
  v28 = type metadata accessor for StandardActionHandler();
  v29 = OUTLINED_FUNCTION_2_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_3_5();
  v36 = v35 - v34;
  outlined init with copy of SimpleItemRichView?(a2, v27, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
  {
    (*(v31 + 32))(v36, v27, v28);
    v41 = *(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);
    v42 = *(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16);
    if (*(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24))
    {
      if (*(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24) != 1)
      {
        *v21 = *(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
        *(v21 + 8) = v41;
        *(v21 + 16) = 1;
        v48 = v56;
        v47 = v57;
        (*(v57 + 104))(v21, enum case for Command.machineUtterance(_:), v56);

        goto LABEL_13;
      }

      v43 = *(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v44);
    }

    else
    {
      v45 = *(v58 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v46);
    }

    static Command.directInvocation(identifier:payload:isNavigation:)();

    v48 = v56;
    v47 = v57;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_43980;
    *(v49 + 56) = v48;
    *(v49 + 64) = &protocol witness table for Command;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v49 + 32));
    (*(v47 + 16))(boxed_opaque_existential_1, v21, v48);
    ActionProperty.init(_:)();
    v51 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v51);
    v52 = enum case for InteractionType.componentTapped(_:);
    v53 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_1(v53);
    (*(v54 + 104))(v8, v52, v53);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v53);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v8, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v14, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v47 + 8))(v21, v48);
    (*(v31 + 8))(v36, v28);
    return;
  }

  outlined destroy of StandardActionHandler?(v27, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.voiceCommands);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "#DisambiguateItemsComponent missing ActionHandler", v40, 2u);
  }
}

uint64_t closure #1 in DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DisambiguationItemsComponent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Color.clear.getter();
  outlined init with copy of DisambiguationItemsComponent(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = outlined init with take of DisambiguationItemsComponent(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  a2[1] = specialized implicit closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
  a2[2] = 0;
  a2[3] = partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
  a2[4] = v9;
  return result;
}

uint64_t partial apply for closure #1 in DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(v5, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAA5ColorVAA01_e6ActionD0VySo6CGSizeVAMSQ12CoreGraphicsyHCg_GGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAA5ColorVAA01_e6ActionD0VySo6CGSizeVAMSQ12CoreGraphicsyHCg_GGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized implicit closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for DisambiguationItemsComponent() + 20));
  v4 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return State.wrappedValue.setter();
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
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v15 = *v14;
    v16 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    outlined copy of Data._Representation(v15, v16);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v7[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v2[6] + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = outlined init with take of Any(v34, (v2[7] + 32 * v20));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v7[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v2[6] + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = outlined init with take of Any(v34, (v2[7] + 32 * v20));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_13FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_14064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for DisambiguationItemsComponent()
{
  type metadata accessor for ActionHandler();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<CGFloat>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [WorkflowDataModels.DisambiguationItemModel]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for State<CGFloat>()
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

void type metadata accessor for [WorkflowDataModels.DisambiguationItemModel]()
{
  if (!lazy cache variable for type metadata for [WorkflowDataModels.DisambiguationItemModel])
  {
    type metadata accessor for WorkflowDataModels.DisambiguationItemModel(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [WorkflowDataModels.DisambiguationItemModel]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGSOAA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAL06Simplel4RichN0V_Qo_GMd, &_s7SwiftUI7ForEachVySay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGSOAA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAL06Simplel4RichN0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v2 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v1 + v5 + *(v0 + 28) + 8);

  v11 = *(v1 + v5 + *(v0 + 32));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(a1, v5);
}

uint64_t sub_1448C()
{
  v2 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = *(v1 + v5 + *(v0 + 28) + 8);

  v12 = *(v1 + v5 + *(v0 + 32));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.body.getter()
{
  v1 = type metadata accessor for DisambiguationItemsComponent();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return closure #1 in closure #1 in DisambiguationItemsComponent.body.getter(v4);
}

uint64_t type metadata accessor for CustomIntentHandledView()
{
  result = type metadata singleton initialization cache for CustomIntentHandledView;
  if (!type metadata singleton initialization cache for CustomIntentHandledView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomIntentHandledView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentHandledView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentHandledView", v8, 2u);
  }

  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CustomIntentHandledView(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(CustomIntentView, (<<opaque return type of View.buttonStyle<A>(_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for RFButtonStyle();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CustomIntentHandledView();
  v7 = v6 - 8;
  v44 = *(v6 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_MR);
  v46 = *(v52 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v52);
  v45 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v22 = type metadata accessor for CustomIntentView();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v44 - v28;
  v30 = a1 + *(v7 + 28);
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v30, &v44 + *(v27 + 28) - v28);
  ActionHandler.init()();
  if (*(v30 + *(type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0) + 28)) == 1)
  {
    outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(a1, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v32 = swift_allocObject();
    v33 = outlined init with take of CustomIntentHandledView(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
    __chkstk_darwin(v33);
    *(&v44 - 2) = a1;
    Button.init(action:label:)();
    v34 = v49;
    static PrimitiveButtonStyle<>.rfButton.getter();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
    v35 = v45;
    v36 = v48;
    v37 = v51;
    View.buttonStyle<A>(_:)();
    (*(v50 + 8))(v34, v37);
    (*(v47 + 8))(v12, v36);
    v38 = v52;
    (*(v46 + 32))(v21, v35, v52);
    v39 = 0;
    v40 = v38;
  }

  else
  {
    v39 = 1;
    v40 = v52;
  }

  __swift_storeEnumTagSinglePayload(v21, v39, 1, v40);
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v29, v26);
  sub_159A0(v21, v19);
  v41 = v53;
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v26, v53);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin16CustomIntentViewV_7SwiftUI0F0PADE11buttonStyleyQrqd__AD015PrimitiveButtonJ0Rd__lFQOyAD0L0VyAD4TextVG_07SnippetH008RFButtonJ0VQo_SgtMd, &_s16SiriLinkUIPlugin16CustomIntentViewV_7SwiftUI0F0PADE11buttonStyleyQrqd__AD015PrimitiveButtonJ0Rd__lFQOyAD0L0VyAD4TextVG_07SnippetH008RFButtonJ0VQo_SgtMR);
  sub_159A0(v19, v41 + *(v42 + 48));
  sub_15A08(v21);
  outlined destroy of CustomIntentView(v29);
  sub_15A08(v19);
  return outlined destroy of CustomIntentView(v26);
}

uint64_t partial apply for closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomIntentHandledView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CustomIntentHandledView.body.getter(v4, a1);
}

uint64_t closure #1 in closure #1 in CustomIntentHandledView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v54 = &v49 - v10;
  v11 = type metadata accessor for Command();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ActionElement();
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v52);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v49 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  v53 = *(v24 - 8);
  v25 = *(v53 + 64);
  __chkstk_darwin(v24);
  v27 = &v49 - v26;
  v28 = a1 + *(type metadata accessor for CustomIntentHandledView() + 20);
  v29 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  outlined init with copy of CodableAceObject<SAStartLocalRequest>?(v28 + *(v29 + 24), v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    v30 = &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd;
    v31 = &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR;
    v32 = v23;
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v32, v30, v31);
  }

  (*(v53 + 32))(v27, v23, v24);
  *v15 = CodableAceObject.wrappedValue.getter();
  v15[8] = 1;
  (*(v12 + 104))(v15, enum case for Command.aceCommand(_:), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v33 = type metadata accessor for _ProtoIdiom();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v49 = xmmword_43980;
  *(v37 + 16) = xmmword_43980;
  (*(v34 + 104))(v37 + v36, enum case for _ProtoIdiom.default(_:), v33);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v37);
  ActionElement.init(_:text:idioms:)();
  v38 = v54;
  ActionHandler.wrappedValue.getter();
  v39 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    (*(v16 + 8))(v19, v52);
    (*(v53 + 8))(v27, v24);
    v30 = &_s9SnippetUI21StandardActionHandlerVSgMd;
    v31 = "B}";
    v32 = v54;
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v32, v30, v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v41 = swift_allocObject();
  *(v41 + 16) = v49;
  v42 = v52;
  *(v41 + 56) = v52;
  *(v41 + 64) = &protocol witness table for ActionElement;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 32));
  (*(v16 + 16))(boxed_opaque_existential_1, v19, v42);
  v44 = v50;
  ActionProperty.init(_:)();
  v45 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  v46 = type metadata accessor for InteractionType();
  v47 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v46);
  v48 = v54;
  StandardActionHandler.perform(_:interactionType:)();
  _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v47, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
  _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v44, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v16 + 8))(v19, v42);
  (*(v53 + 8))(v27, v24);
  return (*(*(v39 - 8) + 8))(v48, v39);
}

uint64_t closure #2 in closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CustomIntentHandledView() + 20);
  v4 = (v3 + *(type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0) + 20));
  v18 = *v4;
  v19 = v4[1];
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.headline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t CustomIntentHandledView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for CustomIntentHandledView();
  return outlined init with take of CustomIntentHandledView(a1, a2 + *(v4 + 20));
}

uint64_t outlined init with take of CustomIntentHandledView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_15730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_157DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_0();
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for CustomIntentHandledView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_159A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_15A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  OUTLINED_FUNCTION_2_2(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined destroy of CustomIntentView(uint64_t a1)
{
  v2 = type metadata accessor for CustomIntentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for CustomIntentHandledView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_2_2(v8);
  (*(v9 + 8))(v7);
  v10 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v11 = v10[5];
  v12 = type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_2_2(v12);
  (*(v13 + 8))(v7 + v11);
  v14 = v10[6];
  v15 = type metadata accessor for VisualProperty();
  if (!__swift_getEnumTagSinglePayload(v7 + v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  v16 = *(v7 + v10[7] + 8);

  v17 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v18 = *(v7 + *(v17 + 20) + 8);

  v19 = *(v17 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  if (!__swift_getEnumTagSinglePayload(v7 + v19, 1, v20))
  {
    (*(*(v20 - 8) + 8))(v7 + v19, v20);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CustomIntentHandledView.body.getter()
{
  v1 = *(type metadata accessor for CustomIntentHandledView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in CustomIntentHandledView.body.getter(v2);
}

uint64_t outlined init with copy of CodableAceObject<SAStartLocalRequest>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *SiriLinkViewModel.encoder.unsafeMutableAddressor()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  return &static SiriLinkViewModel.encoder;
}

uint64_t one-time initialization function for encoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *SiriLinkViewModel.decoder.unsafeMutableAddressor()
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_9_0();
    swift_once();
  }

  return &static SiriLinkViewModel.decoder;
}

uint64_t static SiriLinkViewModel.encoder.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

void *static SiriLinkViewModel.decode(from:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_9_0();
    swift_once();
  }

  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  result = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    return memcpy(a1, __src, 0x51uLL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriLinkViewModel.base64EncodedString()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
    outlined consume of Data._Representation(v6, v7);
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t SiriLinkViewModel.encoded()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  return dispatch thunk of PropertyListEncoder.encode<A>(_:)();
}

uint64_t SiriLinkViewModel.asPatternParams(with:)(uint64_t a1)
{
  v3 = v2;
  v5 = one-time initialization token for encoder;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v1, 0x51uLL);
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  v9 = v6;
  v10 = v7;
  v11 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v9, v10);
  v15 = &type metadata for String;
  v14 = v11;
  outlined init with take of Any(&v14, __dst);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, 0x61645F6C65646F6DLL, 0xEA00000000006174, isUniquelyReferenced_nonNull_native);
  return a1;
}

uint64_t SiriLinkViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000004B640 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000000004B660 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x800000000004B680 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000000004B6A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x800000000004B6C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x654874706D6F7270 && a2 == 0xEC00000072656461)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SiriLinkViewModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x654874706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s16SiriLinkUIPlugin0aB9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOs0J3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static SiriLinkUIPlugin.Error.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.description.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.description.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriLinkViewModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriLinkViewModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  v5 = OUTLINED_FUNCTION_2_0(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_11_0();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  v12 = OUTLINED_FUNCTION_2_0(v11);
  v79 = v13;
  v80 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_11_0();
  v77 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  v19 = OUTLINED_FUNCTION_2_0(v18);
  v75 = v20;
  v76 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_11_0();
  v74 = v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v73);
  v72 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_11_0();
  v71 = v29;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v70);
  v69[1] = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v33);
  v35 = v69 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v36);
  v69[0] = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v40);
  v42 = v69 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  v83 = OUTLINED_FUNCTION_2_0(v43);
  v84 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v47);
  v49 = v69 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v51 = *v2;
  v52 = v2[1];
  switch(*(v2 + 80))
  {
    case 1:
      v85 = 1;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      v64 = v83;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v65 = v70;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0(&v87);
      v66(v35, v65);
      return (*(v84 + 8))(v49, v64);
    case 2:
      v85 = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      v59 = v71;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v60 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0(&v88);
      v61(v59, v60);
      v62 = *(v84 + 8);
      v63 = v49;
      return v62(v63, v35);
    case 3:
      v85 = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      v56 = v74;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v57 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v58 = v75;
      goto LABEL_6;
    case 4:
      v85 = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      v56 = v77;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v57 = v80;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v58 = v79;
LABEL_6:
      v53 = *(v58 + 8);
      v54 = v56;
      goto LABEL_9;
    case 5:
      v85 = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v68 = v78;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v82;
      KeyedEncodingContainer.encode(_:forKey:)();
      v53 = *(v81 + 8);
      v54 = v68;
LABEL_9:
      v55 = v57;
      break;
    default:
      v85 = 0;
      lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0(&v86);
      v54 = v42;
      v55 = v36;
      break;
  }

  v53(v54, v55);
  v62 = *(v84 + 8);
  v63 = v49;
  return v62(v63, v35);
}

__n128 SiriLinkViewModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = a2;
  *&v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v112);
  v106 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_11_0();
  v111 = v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v100);
  v105 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_11_0();
  v110 = v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v99);
  v104 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_11_0();
  v109 = v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v98);
  v103 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_11_0();
  v108 = v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v97);
  v102 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v26);
  v28 = v95 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v29);
  v101 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v33);
  v35 = v95 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v41);
  v43 = v95 - v42;
  v44 = a1[3];
  v45 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  v46 = v113.n128_u64[0];
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
LABEL_8:
    v58 = v120;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return result;
  }

  v95[2] = v35;
  v95[1] = v29;
  v95[3] = v28;
  v96 = 0;
  v48 = v111;
  v47 = v112;
  v113.n128_u64[0] = v38;
  v49 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin0jK9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLO_Tt1g5Tm(v49, 0);
  if (v52 == v53 >> 1)
  {
    goto LABEL_7;
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
    JUMPOUT(0x17C40);
  }

  v54 = *(v51 + v52);
  specialized ArraySlice.subscript.getter(v52 + 1, v53 >> 1, v50, v51, v52, v53);
  v56 = v55;
  v58 = v57;
  swift_unknownObjectRelease();
  if (v56 != v58 >> 1)
  {
LABEL_7:
    v59 = type metadata accessor for DecodingError();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v61 = &type metadata for SiriLinkViewModel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v59 - 8) + 104))(v61, enum case for DecodingError.typeMismatch(_:), v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_2_10();
    v64(v63);
    goto LABEL_8;
  }

  switch(v54)
  {
    case 1:
      LOBYTE(v114) = 1;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      OUTLINED_FUNCTION_3_6();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v85 = 0;
      v69 = v113.n128_u64[0];
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_4_4(&v121);
      v87(v86);
      (*(v69 + 8))(v43, v36);
      OUTLINED_FUNCTION_13_0();
      v58 = v120;
      goto LABEL_20;
    case 2:
      LOBYTE(v114) = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v85 = 0;
      OUTLINED_FUNCTION_16();
      v76 = &v122;
      goto LABEL_18;
    case 3:
      LOBYTE(v114) = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v85 = 0;
      OUTLINED_FUNCTION_16();
      v76 = &v123;
      goto LABEL_18;
    case 4:
      LOBYTE(v114) = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v85 = 0;
      OUTLINED_FUNCTION_16();
      v76 = &v124;
LABEL_18:
      v77 = OUTLINED_FUNCTION_4_4(v76);
      v78(v77);
      v79 = OUTLINED_FUNCTION_2_10();
      v80(v79);
      OUTLINED_FUNCTION_13_0();
      goto LABEL_20;
    case 5:
      LOBYTE(v114) = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v66 = v96;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_15();
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_2_10();
        v68(v67);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v85 = v48;
      v70 = v47;
      v71 = KeyedDecodingContainer.decode(_:forKey:)();
      v110 = v72;
      if (v43)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_10_0(&v125);
        v73(v48, v47);
        v74 = OUTLINED_FUNCTION_2_10();
        v75(v74);
        goto LABEL_9;
      }

      v47 = v71;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10_0(&v125);
      v88(v48, v70);
      v89 = OUTLINED_FUNCTION_2_10();
      v91 = v90(v89);
      v91.n128_u64[0] = v110;
      v113 = v91;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v92 = v107;
      *v107 = v47;
      v93 = v112;
      *(v92 + 1) = v113;
      v92[3] = v85;
      result = v118;
      v94 = v119;
      *(v92 + 2) = v93;
      *(v92 + 3) = result;
      *(v92 + 4) = v94;
      *(v92 + 80) = v54;
      break;
    default:
      LOBYTE(v114) = 0;
      lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_16();
      v81 = OUTLINED_FUNCTION_4_4(&v120);
      v82(v81);
      v83 = OUTLINED_FUNCTION_2_10();
      v84(v83);
      v47 = v114;
      v85 = v116;
      v112 = v117;
      v113 = v115;
      goto LABEL_20;
  }

  return result;
}

void protocol witness for Decodable.init(from:) in conformance SiriLinkViewModel(uint64_t *a1@<X0>, void *a2@<X8>)
{
  SiriLinkViewModel.init(from:)(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x51uLL);
  }
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel()
{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin0jK9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLO_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 81))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x182B0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.ArchivedViewModelCodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x183D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}