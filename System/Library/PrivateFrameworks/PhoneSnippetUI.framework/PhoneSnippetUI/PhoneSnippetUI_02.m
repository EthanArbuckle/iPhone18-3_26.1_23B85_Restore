uint64_t ListBottomView.appIconView.getter()
{
  v0 = type metadata accessor for ImageElement.ImageStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageElement();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v22[1] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB016ImageElementViewVAA30_EnvironmentKeyWritingModifierVy0E3Kit0fG0V0F5StyleOSgGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016ImageElementViewVAA30_EnvironmentKeyWritingModifierVy0E3Kit0fG0V0F5StyleOSgGGMR);
  v8 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v10 = v22 - v9;
  v22[0] = "hone";
  v11 = *MEMORY[0x277D62B70];
  v23 = *(v1 + 104);
  v23(v4, v11, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v12 = type metadata accessor for _ProtoIdiom();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25E59F720;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277D62A28], v12);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  static ImageElement.appIcon(_:imageStyle:idioms:)();

  (*(v1 + 8))(v4, v0);
  ImageElementView.init(_:)();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v24 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy10SnippetKit12ImageElementV0I5StyleOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10SnippetKit12ImageElementV0I5StyleOSgGMR) + 28);
  v23(v18 + v19, *MEMORY[0x277D62BD8], v0);
  (*(v1 + 56))(v18 + v19, 0, 1, v0);
  *v18 = KeyPath;
  lazy protocol witness table accessor for type ModifiedContent<ImageElementView, _EnvironmentKeyWritingModifier<ImageElement.ImageStyle?>> and conformance <> ModifiedContent<A, B>();
  v20 = View.eraseToAnyView()();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s7SwiftUI15ModifiedContentVy07SnippetB016ImageElementViewVAA30_EnvironmentKeyWritingModifierVy0E3Kit0fG0V0F5StyleOSgGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016ImageElementViewVAA30_EnvironmentKeyWritingModifierVy0E3Kit0fG0V0F5StyleOSgGGMR);
  return v20;
}

uint64_t closure #1 in ListBottomView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ActionProperty();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25E59F720;
  v18 = type metadata accessor for Command();
  v19 = MEMORY[0x277D63778];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  v21 = type metadata accessor for ListBottomView();
  v22 = a1;
  v23 = *(a1 + *(v21 + 28));
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63720], v18);
  v24 = v23;
  ActionProperty.init(_:)();
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.phoneSnippetUI);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25E523000, v26, v27, "#Show call history ListBottomView performing direct action", v28, 2u);
    MEMORY[0x25F8B8670](v28, -1, -1);
  }

  v29 = v22 + *(v21 + 20);
  ActionHandler.wrappedValue.getter();
  v30 = type metadata accessor for StandardActionHandler();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v11, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v33 = v36;
    (*(v13 + 16))(v36, v16, v12);
    (*(v13 + 56))(v33, 0, 1, v12);
    v34 = type metadata accessor for InteractionType();
    v35 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v35, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v13 + 8))(v16, v12);
    return (*(v31 + 8))(v11, v30);
  }
}

uint64_t outlined init with copy of ListBottomView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListBottomView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E55EA64()
{
  v1 = (type metadata accessor for ListBottomView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t outlined init with take of ListBottomView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListBottomView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ListBottomView.body.getter()
{
  v1 = *(type metadata accessor for ListBottomView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ListBottomView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E55ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25E55EE28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for ListBottomView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SABaseCommand();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
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

uint64_t sub_25E55EFD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined init with copy of ImageElement.ImageStyle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV0C5StyleOSgMd, &_s10SnippetKit12ImageElementV0C5StyleOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ListHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.title3.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  outlined consume of Text.Storage(v7, v9, v11 & 1);

  v29 = swift_allocObject();
  *(v29 + 16) = v12;
  *(v29 + 24) = v14;
  *(v29 + 32) = v16 & 1;
  *(v29 + 40) = v18;
  PrimaryHeaderStandardView.init(text1:text2:text3:addTint:)();
  LOBYTE(v12) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB025PrimaryHeaderStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB025PrimaryHeaderStandardViewVAA14_PaddingLayoutVGMR);
  v28 = a1 + *(result + 36);
  *v28 = v12;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_25E55F2B4()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t protocol witness for View.body.getter in conformance ListHeaderView@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return ListHeaderView.body.getter(a1);
}

uint64_t getEnumTagSinglePayload for ListHeaderView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ListHeaderView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimaryHeaderStandardView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimaryHeaderStandardView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimaryHeaderStandardView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB025PrimaryHeaderStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB025PrimaryHeaderStandardViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type PrimaryHeaderStandardView and conformance PrimaryHeaderStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimaryHeaderStandardView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimaryHeaderStandardView and conformance PrimaryHeaderStandardView()
{
  result = lazy protocol witness table cache variable for type PrimaryHeaderStandardView and conformance PrimaryHeaderStandardView;
  if (!lazy protocol witness table cache variable for type PrimaryHeaderStandardView and conformance PrimaryHeaderStandardView)
  {
    type metadata accessor for PrimaryHeaderStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimaryHeaderStandardView and conformance PrimaryHeaderStandardView);
  }

  return result;
}

uint64_t LocalEmergencyCallDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  v6 = a2 + *(v5 + 20);
  InteractionDelegate.init()();
  return outlined init with take of LocalEmergencyCallDisambiguationModel(a1, a2 + *(v5 + 24), type metadata accessor for LocalEmergencyCallDisambiguationModel);
}

uint64_t type metadata accessor for LocalEmergencyCallDisambiguationView()
{
  result = type metadata singleton initialization cache for LocalEmergencyCallDisambiguationView;
  if (!type metadata singleton initialization cache for LocalEmergencyCallDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalEmergencyCallDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = (&v39 - v4);
  v5 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  v6 = v5 - 8;
  v40 = *(v5 - 8);
  v46 = *(v40 + 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DisambiguationTitle();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMd, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = *(v6 + 32);
  v20 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v50 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277D63F88];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  DisambiguationTitle.init(text1:thumbnail:)();
  v41 = type metadata accessor for LocalEmergencyCallDisambiguationView;
  v21 = v45;
  outlined init with copy of LocalEmergencyCallDisambiguationView(v1, v45, type metadata accessor for LocalEmergencyCallDisambiguationView);
  v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v23 = swift_allocObject();
  v40 = type metadata accessor for LocalEmergencyCallDisambiguationView;
  outlined init with take of LocalEmergencyCallDisambiguationModel(v21, v23 + v22, type metadata accessor for LocalEmergencyCallDisambiguationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB016ForEachWithIndexVySayAD018DisambiguationItemI21DirectInvocationModelVGAA4ViewP0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAkLE15componentTapped0R10Navigation7performQrSb_yyctFQOyACyAL06Simplel4RichP0VAD07CarPlayk4ListL0VG_Qo__Qo_GAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB016ForEachWithIndexVySayAD018DisambiguationItemI21DirectInvocationModelVGAA4ViewP0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAkLE15componentTapped0R10Navigation7performQrSb_yyctFQOyACyAL06Simplel4RichP0VAD07CarPlayk4ListL0VG_Qo__Qo_GAA25_AppearanceActionModifierVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  DisambiguationView.init(title:content:)();
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type DisambiguationView<ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier>> and conformance DisambiguationView<A>, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMd, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMR);
  View.privacySensitive(_:)();
  (*(v11 + 8))(v14, v10);
  KeyPath = swift_getKeyPath();
  v25 = &v18[*(v15 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR) + 28);
  v27 = *MEMORY[0x277CDF3C8];
  v28 = type metadata accessor for ColorScheme();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = KeyPath;
  v29 = static Color.black.getter();
  v30 = v43;
  *v43 = v29;
  v31 = *MEMORY[0x277D63BB8];
  v32 = type metadata accessor for HostBackground();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v30, v31, v32);
  (*(v33 + 56))(v30, 0, 1, v32);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
  v34 = v44;
  View.requestHostBackground<A, B>(_:accepted:denied:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v30, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  sub_25E560018(v18);
  v35 = v45;
  outlined init with copy of LocalEmergencyCallDisambiguationView(v42, v45, v41);
  v36 = swift_allocObject();
  outlined init with take of LocalEmergencyCallDisambiguationModel(v35, v36 + v22, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMR);
  v38 = (v34 + *(result + 36));
  *v38 = partial apply for closure #4 in LocalEmergencyCallDisambiguationView.body.getter;
  v38[1] = v36;
  v38[2] = 0;
  v38[3] = 0;
  return result;
}

uint64_t closure #1 in LocalEmergencyCallDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(MEMORY[0x28223BE20](v4 - 8) + 32) + 16);
  outlined init with copy of LocalEmergencyCallDisambiguationView(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocalEmergencyCallDisambiguationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of LocalEmergencyCallDisambiguationModel(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LocalEmergencyCallDisambiguationView);
  *a2 = v7;
  a2[1] = partial apply for closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter;
  a2[2] = v9;
  a2[3] = closure #2 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
}

uint64_t partial apply for closure #1 in LocalEmergencyCallDisambiguationView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in LocalEmergencyCallDisambiguationView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB016ForEachWithIndexVySayAD018DisambiguationItemI21DirectInvocationModelVGAA4ViewP0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAkLE15componentTapped0R10Navigation7performQrSb_yyctFQOyACyAL06Simplel4RichP0VAD07CarPlayk4ListL0VG_Qo__Qo_GAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB016ForEachWithIndexVySayAD018DisambiguationItemI21DirectInvocationModelVGAA4ViewP0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAkLE15componentTapped0R10Navigation7performQrSb_yyctFQOyACyAL06Simplel4RichP0VAD07CarPlayk4ListL0VG_Qo__Qo_GAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0> and conformance ForEachWithIndex<A, B>, &_s14PhoneSnippetUI16ForEachWithIndexVySayAA018DisambiguationItemF21DirectInvocationModelVG05SwiftC04ViewP0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAiJE15componentTapped0P10Navigation7performQrSb_yyctFQOyAG15ModifiedContentVyAJ06Simplei4RichN0VAA07CarPlayh4ListI0VG_Qo__Qo_GMd, &_s14PhoneSnippetUI16ForEachWithIndexVySayAA018DisambiguationItemF21DirectInvocationModelVG05SwiftC04ViewP0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAiJE15componentTapped0P10Navigation7performQrSb_yyctFQOyAG15ModifiedContentVyAJ06Simplei4RichN0VAA07CarPlayh4ListI0VG_Qo__Qo_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMd, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type DisambiguationView<ModifiedContent<ForEachWithIndex<[DisambiguationItemWithDirectInvocationModel], <<opaque return type of View.separators(_:isOverride:)>>.0>, _AppearanceActionModifier>> and conformance DisambiguationView<A>, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMd, &_s9SnippetUI18DisambiguationViewVy05SwiftB015ModifiedContentVy05PhoneaB016ForEachWithIndexVySayAG0c4ItemK21DirectInvocationModelVGAD0D0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAnAE15componentTapped0R10Navigation7performQrSb_yyctFQOyAFyAA06Simplem4RichD0VAG07CarPlayc4ListM0VG_Qo__Qo_GAD25_AppearanceActionModifierVGGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ColorScheme> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E560018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void closure #4 in LocalEmergencyCallDisambiguationView.body.getter(uint64_t a1)
{
  if (*a1)
  {
    v2 = *a1;
    dispatch thunk of Context.currentIdiom.getter();

    if (VRXIdiom.isCarPlay.getter())
    {
      v3 = v2;
      dispatch thunk of Context.hideBackgroundBehindSiri()();

      v4 = *(*(a1 + *(type metadata accessor for LocalEmergencyCallDisambiguationView() + 24) + 16) + 16);
      v6 = v3;
      dispatch thunk of Context.informHostListItemCount(_:)();
    }
  }

  else
  {
    v5 = *(a1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void partial apply for closure #4 in LocalEmergencyCallDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #4 in LocalEmergencyCallDisambiguationView.body.getter(v2);
}

uint64_t LocalEmergencyCallDisambiguationView.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (!*v1)
  {
    v16 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v4 = *v1;
  dispatch thunk of Context.currentIdiom.getter();

  if ((VRXIdiom.isCarPlay.getter() & 1) != 0 && (*(v2 + *(type metadata accessor for LocalEmergencyCallDisambiguationView() + 24) + 24) & 1) == 0)
  {
    v6 = MEMORY[0x277D62F38];
  }

  else
  {
    v5 = v4;
    dispatch thunk of Context.currentIdiom.getter();

    if ((VRXIdiom.isCarPlay.getter() & 1) == 0)
    {
      v7 = v5;
      dispatch thunk of Context.currentIdiom.getter();

      LOBYTE(v7) = VRXIdiom.isWatchOS.getter();
      v8 = type metadata accessor for SeparatorStyle();
      v9 = *(*(v8 - 8) + 104);
      if (v7)
      {
        v10 = MEMORY[0x277D62F38];
      }

      else
      {
        v10 = MEMORY[0x277D62F28];
      }

      v14 = *v10;
      v13 = a1;
      goto LABEL_12;
    }

    v6 = MEMORY[0x277D62F58];
  }

  v11 = *v6;
  v12 = type metadata accessor for SeparatorStyle();
  v9 = *(*(v12 - 8) + 104);
  v8 = v12;
  v13 = a1;
  v14 = v11;
LABEL_12:

  return v9(v13, v14, v8);
}

uint64_t closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v69 = a1;
  v78 = a4;
  v79 = type metadata accessor for SeparatorStyle();
  v77 = *(v79 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v8 = v7 - 8;
  v72 = *(v7 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  v68 = *(v10 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SimpleItemRichView();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMR);
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v60 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAD014SimpleItemRichC0V05PhonedB0025CarPlayDisambiguationListM0VG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAD014SimpleItemRichC0V05PhonedB0025CarPlayDisambiguationListM0VG_Qo_MR);
  v74 = *(v71 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = &v60 - v18;
  v19 = *(v8 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  v20 = v105;
  v21 = v106;
  if (!v106)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v105 = v20;
  v106 = v21;
  lazy protocol witness table accessor for type String and conformance String();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v107 = MEMORY[0x277CE0BD0];
  v108 = MEMORY[0x277D638F0];
  v29 = swift_allocObject();
  v105 = v29;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26 & 1;
  *(v29 + 40) = v28;
  v30 = a2 + *(v8 + 28);
  v31 = a2;
  Loggable.wrappedValue.getter();
  v32 = v101;
  v33 = v102;
  if (!v102)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  v101 = v32;
  v102 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v103 = MEMORY[0x277CE0BD0];
  v104 = MEMORY[0x277D638F0];
  v41 = swift_allocObject();
  v100 = 0;
  v101 = v41;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38 & 1;
  *(v41 + 40) = v40;
  v98 = 0u;
  v99 = 0u;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v42 = v60;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  v43 = v69 == 0;
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v44 = EnvironmentObject.init()();
  v46 = v45;
  v47 = v61;
  (*(v63 + 32))(v61, v42, v64);
  v48 = v62;
  v49 = v47 + *(v62 + 36);
  *v49 = v44;
  *(v49 + 8) = v46;
  *(v49 + 16) = v43;
  v50 = v66;
  outlined init with copy of LocalEmergencyCallDisambiguationView(v75, v66, type metadata accessor for LocalEmergencyCallDisambiguationView);
  v51 = v70;
  outlined init with copy of LocalEmergencyCallDisambiguationView(v31, v70, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v52 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v53 = (v67 + *(v72 + 80) + v52) & ~*(v72 + 80);
  v54 = swift_allocObject();
  outlined init with take of LocalEmergencyCallDisambiguationModel(v50, v54 + v52, type metadata accessor for LocalEmergencyCallDisambiguationView);
  outlined init with take of LocalEmergencyCallDisambiguationModel(v51, v54 + v53, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v55 = lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
  v56 = v65;
  View.componentTapped(isNavigation:perform:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v47, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMR);
  v57 = v76;
  LocalEmergencyCallDisambiguationView.separatorStyle.getter(v76);
  v105 = v48;
  v106 = v55;
  swift_getOpaqueTypeConformance2();
  v58 = v71;
  View.separators(_:isOverride:)();
  (*(v77 + 8))(v57, v79);
  return (*(v74 + 8))(v56, v58);
}

uint64_t closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionDelegateWrapper();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.phoneSnippetUI);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25E523000, v10, v11, "#LocalEmergencyCallDisambiguationView component tapped", v12, 2u);
    MEMORY[0x25F8B8670](v12, -1, -1);
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = *(type metadata accessor for LocalEmergencyCallDisambiguationView() + 20);
    v15 = v13;
    InteractionDelegate.wrappedValue.getter();
    specialized LocalEmergencyCallDisambiguationView.selected(emergencyService:context:interactionDelegate:)(a2);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = *(a1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void closure #2 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter()
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25E523000, oslog, v1, "#LocalEmergencyCallDisambiguationView building disambiguationViewContent with SimpleItemRichView", v2, 2u);
    MEMORY[0x25F8B8670](v2, -1, -1);
  }
}

uint64_t sub_25E560DFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for InteractionDelegate();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E560F40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for InteractionDelegate();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for LocalEmergencyCallDisambiguationView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocalEmergencyCallDisambiguationModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5611D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for InteractionDelegate();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v10 = v9[7];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  v12 = v9[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
  v14 = *&v6[v9[9] + 8];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter(a1, a2, v8, a3);
}

uint64_t sub_25E561474()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t outlined init with copy of LocalEmergencyCallDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E561520()
{
  v1 = (type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
  v31 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v29 = *(*v4 + 64);
  v5 = v0 + v2;

  v6 = v1[7];
  v7 = type metadata accessor for InteractionDelegate();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v5 + v1[8];
  v9 = *(v8 + 8);

  v10 = *(v8 + 16);

  v11 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v12 = v11[7];
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 8);
  v14(v8 + v12, v13);
  v15 = v11[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v17 = *(*(v16 - 8) + 8);
  v17(v8 + v15, v16);
  v18 = *(v8 + v11[9] + 8);

  v14(v30 + v31, v13);
  v19 = v4[7];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v21 = *(*(v20 - 8) + 8);
  v21(v30 + v31 + v19, v20);
  v17(v30 + v31 + v4[8], v16);
  v22 = v4[9];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  (*(*(v23 - 8) + 8))(v30 + v31 + v22, v23);
  v21(v30 + v31 + v4[10], v20);
  v24 = v4[11];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  (*(*(v25 - 8) + 8))(v30 + v31 + v24, v25);
  v26 = v4[12];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  (*(*(v27 - 8) + 8))(v30 + v31 + v26, v27);

  return swift_deallocObject();
}

uint64_t outlined init with take of LocalEmergencyCallDisambiguationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter()
{
  v1 = *(type metadata accessor for LocalEmergencyCallDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter(v0 + v2, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMR);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized LocalEmergencyCallDisambiguationView.selected(emergencyService:context:interactionDelegate:)(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v12 = CodableAceObject.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  InteractionDelegateWrapper.perform(directInvocation:)();

  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.phoneSnippetUI);
  outlined init with copy of LocalEmergencyCallDisambiguationView(a1, v5, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = v2[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    Loggable.wrappedValue.getter();
    v19 = v25;
    if (v25)
    {
      v20 = v24;
    }

    else
    {
      v21 = &v5[v2[5]];
      Loggable.wrappedValue.getter();
      if (v25)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0x6E776F6E6B6E75;
      }

      if (v25)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0xE700000000000000;
      }
    }

    outlined destroy of DisambiguationItemWithDirectInvocationModel(v5);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v26);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_25E523000, v14, v15, "#LocalEmergencyCallDisambiguationView performing direct invocation to start emergency call to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F8B8670](v17, -1, -1);
    MEMORY[0x25F8B8670](v16, -1, -1);
  }

  else
  {

    outlined destroy of DisambiguationItemWithDirectInvocationModel(v5);
  }
}

uint64_t LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v83) = a2;
  v11 = type metadata accessor for Logger();
  v86 = *(v11 - 8);
  v12 = *(v86 + 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v84 = (&v74 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  v89 = 0;
  v90 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v20 = v90;
  v82 = v89;
  v85 = v11;
  if (a1)
  {
    v77 = *(a4 + 32);
    v78 = (a4 + 32);
    v77(a3, a4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v79 = v20;
    v80 = v15;
    if (v23)
    {
      v24 = v11;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v20;
      v28 = v26;
      v89 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v27, &v89);
      _os_log_impl(&dword_25E523000, v21, v22, "#LoggableError Trying ABC for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F8B8670](v28, -1, -1);
      MEMORY[0x25F8B8670](v25, -1, -1);

      v29 = *(v86 + 1);
      v30 = v19;
      v31 = v24;
    }

    else
    {

      v29 = *(v86 + 1);
      v30 = v19;
      v31 = v11;
    }

    v76 = v29;
    v29(v30, v31);
    v32 = v88;
    v87 = (*(a4 + 8))(a3, a4);
    v88[0] = v33;
    v34 = 0;
    v88[1] = (*(a4 + 16))(a3, a4);
    v88[2] = v35;
    v36 = MEMORY[0x277D84F90];
LABEL_6:
    v37 = &v32[2 * v34];
    while (++v34 != 3)
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v37 += 2;
      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v75 = v32;

        v41 = a5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v43 = *(v36 + 2);
        v42 = *(v36 + 3);
        if (v43 >= v42 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v36);
        }

        *(v36 + 2) = v43 + 1;
        v44 = &v36[16 * v43];
        *(v44 + 4) = v39;
        *(v44 + 5) = v38;
        a5 = v41;
        v32 = v75;
        goto LABEL_6;
      }
    }

    swift_arrayDestroy();
    v89 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v45 = BidirectionalCollection<>.joined(separator:)();
    v47 = v46;

    v48 = LoggableError.caseName.getter(a3);
    v50 = v49;
    v51 = v84;
    v77(a3, a4);
    specialized static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v48, v50, v45, v47, v51);

    v11 = v85;
    v76(v51, v85);
    v20 = v79;
    v15 = v80;
  }

  if (v83)
  {
    v52 = *(a4 + 32);
    v83 = a4 + 32;
    v78 = v52;
    v52(a3, a4);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    v55 = os_log_type_enabled(v53, v54);
    v81 = a5;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = v20;
      v58 = swift_slowAlloc();
      v89 = v58;
      *v56 = 136315138;
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v57, &v89);

      *(v56 + 4) = v59;
      _os_log_impl(&dword_25E523000, v53, v54, "#LoggableError Trying TTR for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x25F8B8670](v58, -1, -1);
      MEMORY[0x25F8B8670](v56, -1, -1);

      v60 = v85;
      v61 = *(v86 + 1);
      v82 = ((v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v62 = v15;
    }

    else
    {

      v61 = *(v86 + 1);
      v82 = ((v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v62 = v15;
      v60 = v11;
    }

    v86 = v61;
    v61(v62, v60);
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v89 = 0xD00000000000001ALL;
    v90 = 0x800000025E5A66B0;
    v63 = LoggableError.caseName.getter(a3);
    MEMORY[0x25F8B7B50](v63);

    v64 = v90;
    v80 = v89;
    v89 = (*(a4 + 8))(a3, a4);
    v90 = v65;
    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v66 = (*(a4 + 16))(a3, a4);
    MEMORY[0x25F8B7B50](v66);

    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v67 = (*(a4 + 24))(a3, a4);
    MEMORY[0x25F8B7B50](v67);

    v68 = v89;
    v69 = v90;
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x25F8B7B50](0x45656E6F68502061, 0xEE002820726F7272);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x25F8B7B50](0x6564207361772029, 0xEF2E646574636574);
    v71 = v89;
    v70 = v90;
    v72 = v84;
    v78(a3, a4);
    specialized static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v80, v64, v68, v69, v71, v70, v72);

    v86(v72, v85);
    a5 = v81;
  }

  else
  {
  }

  return (*(*(a3 - 8) + 16))(a5, v6, a3);
}

uint64_t LoggableError.caseName.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v15 == result)
  {
    v17 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v17)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v19 = v22;
      v18 = v23;
      __swift_destroy_boxed_opaque_existential_0(v24);
      if (v18)
      {
LABEL_6:
        swift_getDynamicType();
        v22 = _typeName(_:qualified:)();
        v23 = v20;
        MEMORY[0x25F8B7B50](46, 0xE100000000000000);
        MEMORY[0x25F8B7B50](v19, v18);

        return v22;
      }
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v19 = v22;
    v18 = v23;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  unk_27FCF8010 = v3;
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

unint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2))
  {
    return 0xD000000000000012;
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000017 && 0x800000025E5A66D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025E5A66F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025E5A6750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x800000025E5A6690 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    String.lowercased()();
    goto LABEL_9;
  }

  v2 = String.lowercased()();
  v3 = String.lowercased()();
  if (!v2._object)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_11;
  }

  if (v2._countAndFlagsBits == v3._countAndFlagsBits && v2._object == v3._object)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:

  return v5 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if ((specialized static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(a1, a2) & 1) == 0)
    {

      return specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2);
    }

    return 1;
  }

  if (a2 && (a1 == 0xD000000000000017 && 0x800000025E5A66D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025E5A66F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025E5A6750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x800000025E5A6690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    return 1;
  }

  return specialized static PhoneCallAppNameConstants.isFaceTime(appId:)(a1, a2);
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    if (a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeAudioServiceName];
    }

    else if (v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeVideoServiceName];
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeServiceName];
    }

    v7 = v6;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

uint64_t specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (!a2)
  {
    String.lowercased()();

    object = 0;
    goto LABEL_12;
  }

  v3 = String.lowercased()();
  v4 = String.lowercased()();
  if (!v3._object)
  {

LABEL_11:
    v9 = String.lowercased()();
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
LABEL_12:
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      swift_once();
    }

    v10 = String.lowercased()();
    if (!object)
    {
      v7 = 0;
      goto LABEL_23;
    }

    if (countAndFlagsBits != v10._countAndFlagsBits || object != v10._object)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_21:

LABEL_23:

      return v7 & 1;
    }

LABEL_20:
    v7 = 1;
    goto LABEL_21;
  }

  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {
    goto LABEL_20;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = 1;
  return v7 & 1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t specialized static PhoneCallAppNameConstants.isFaceTime(appId:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E5A2050;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000025E5A6730;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      swift_once();
    }

    v5 = unk_27FCF8010;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v5;

    v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    LOBYTE(v2) = specialized Set.contains(_:)(a1, v2, v6);
  }

  return v2 & 1;
}

uint64_t specialized static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = String.lowercased()();
    v4 = String.lowercased()();
    if (v3._object)
    {
      if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
      {
        goto LABEL_20;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v7 = String.lowercased()();
    v8 = String.lowercased()();
    if (v7._object)
    {
      if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
      {
        goto LABEL_20;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v10 = String.lowercased()();
    v11 = String.lowercased()();
    if (v10._object)
    {
      if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
      {
LABEL_20:

        v2 = 1;
        goto LABEL_21;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_25:
        v2 = 1;
        return v2 & 1;
      }
    }

    else
    {
    }

    v14 = String.lowercased()();
    v15 = String.lowercased()();
    if (!v14._object)
    {
      v2 = 0;
      goto LABEL_21;
    }

    if (v14._countAndFlagsBits != v15._countAndFlagsBits || v14._object != v15._object)
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  String.lowercased()();

  String.lowercased()();

  String.lowercased()();

  String.lowercased()();
LABEL_21:

  return v2 & 1;
}

unint64_t PhoneCallNLConstants.canonicalName.getter(char a1)
{
  _StringGuts.grow(_:)(20);

  v2 = PhoneCallNLConstants.rawValue.getter(a1);
  v4 = v3;
  specialized Collection.prefix(_:)(1, v2, v3, v5);
  v6 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL, v2, v4, v7);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  MEMORY[0x25F8B7B50](v6._countAndFlagsBits, v6._object);

  return 0xD000000000000012;
}

unint64_t PhoneCallNLConstants.rawValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x6C6143656E6F6870;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      v3 = 9;
      goto LABEL_15;
    case 6:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0x6464416C69616D65;
      break;
    case 10:
      result = 0x75466E6F73726570;
      break;
    case 11:
      result = 0x69466E6F73726570;
      break;
    case 12:
      result = 0x614C6E6F73726570;
      break;
    case 13:
      result = 0x54746361746E6F63;
      break;
    case 14:
      result = 0x69614D6563696F76;
      break;
    case 15:
      result = 0x6C6143656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall PhoneCallNLConstants.boundValue(_:)(Swift::String a1)
{
  v7 = PhoneCallNLConstants.canonicalName.getter(v1);
  v8 = v2;
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;
  MEMORY[0x25F8B7B50](countAndFlagsBits);

  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNLConstants@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallNLConstants.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNLConstants@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallNLConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t PhoneCallConfirmationSemantics.canonicalName.getter()
{
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = PhoneCallNLConstants.canonicalName.getter(6);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v0 = String.uppercased()();

  MEMORY[0x25F8B7B50](v0._countAndFlagsBits, v0._object);

  return v2;
}

uint64_t PhoneCallConfirmationSemantics.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x206D7269666E6F63;
  if (a1 != 2)
  {
    v2 = 0x63207463656A6572;
  }

  if (a1)
  {
    v1 = 28526;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallConfirmationSemantics(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0x206D7269666E6F63;
  v6 = 0xEF746361746E6F63;
  if (v3 != 2)
  {
    v5 = 0x63207463656A6572;
    v6 = 0xEE00746361746E6FLL;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE300000000000000;
  v11 = 0x206D7269666E6F63;
  v12 = 0xEF746361746E6F63;
  if (*a2 != 2)
  {
    v11 = 0x63207463656A6572;
    v12 = 0xEE00746361746E6FLL;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallConfirmationSemantics()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallConfirmationSemantics()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallConfirmationSemantics()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmationSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallConfirmationSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmationSemantics(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xEF746361746E6F63;
  v5 = 0x206D7269666E6F63;
  if (*v1 != 2)
  {
    v5 = 0x63207463656A6572;
    v4 = 0xEE00746361746E6FLL;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t VoicemailVerbSemantics.canonicalName.getter()
{
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = PhoneCallNLConstants.canonicalName.getter(14);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v0 = String.uppercased()();

  MEMORY[0x25F8B7B50](v0._countAndFlagsBits, v0._object);

  return v2;
}

uint64_t VoicemailVerbSemantics.rawValue.getter(unsigned __int8 a1)
{
  v1 = 2036427888;
  v2 = 1885956979;
  v3 = 0x6573756170;
  if (a1 != 3)
  {
    v3 = 0x656D75736572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x746165706572;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailVerbSemantics(_BYTE *a1, _BYTE *a2)
{
  v2 = 2036427888;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (v3 != 3)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x746165706572;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v10 = 2036427888;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE400000000000000;
  v14 = 0xE400000000000000;
  v15 = 1885956979;
  v16 = 0xE500000000000000;
  v17 = 0x6573756170;
  if (v5 != 3)
  {
    v17 = 0x656D75736572;
    v16 = 0xE600000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x746165706572;
    v13 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoicemailVerbSemantics()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoicemailVerbSemantics()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoicemailVerbSemantics()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailVerbSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized VoicemailVerbSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailVerbSemantics(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (v2 != 3)
  {
    v8 = 0x656D75736572;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746165706572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t PhoneCallVerbSemantics.canonicalName.getter(char a1)
{
  PhoneCallVerbSemantics.rawValue.getter(a1);
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v3 = PhoneCallNLConstants.canonicalName.getter(15);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v1 = String.uppercased()();

  MEMORY[0x25F8B7B50](v1._countAndFlagsBits, v1._object);

  return v3;
}

uint64_t PhoneCallVerbSemantics.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = 0x656D697465636166;
      break;
    case 4:
      result = 0x7072656B61657073;
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = 0x6C6169646572;
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 1852403562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallNLConstants(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerbSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallVerbSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerbSemantics@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallVerbSemantics.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneSnippetUI::PhoneCallHandleType_optional __swiftcall PhoneCallHandleType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneSnippetUI_PhoneCallHandleType_email;
  }

  else
  {
    v4.value = PhoneSnippetUI_PhoneCallHandleType_unknownDefault;
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

uint64_t PhoneCallHandleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallHandleType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C69616D65;
  }

  else
  {
    v2 = 0x656E6F6870;
  }

  if (*a2)
  {
    v3 = 0x6C69616D65;
  }

  else
  {
    v3 = 0x656E6F6870;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallHandleType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallHandleType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallHandleType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallHandleType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallHandleType(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F6870;
  if (*v1)
  {
    v2 = 0x6C69616D65;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t specialized Collection.dropFirst(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t specialized PhoneCallNLConstants.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNLConstants.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized PhoneCallConfirmationSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmationSemantics.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized VoicemailVerbSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailVerbSemantics.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized PhoneCallVerbSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallVerbSemantics.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PhoneCallNLConstants and conformance PhoneCallNLConstants()
{
  result = lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants;
  if (!lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics()
{
  result = lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics;
  if (!lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallHandleType and conformance PhoneCallHandleType()
{
  result = lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType;
  if (!lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallNLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallNLConstants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallConfirmationSemantics(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhoneCallConfirmationSemantics(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhoneCallVerbSemantics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallVerbSemantics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PhoneContactHeader.appBundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhoneContactHeader.contactId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PhoneContactHeader.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PhoneContactHeader.handle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PhoneContactHeader.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(95);
  MEMORY[0x25F8B7B50](0xD00000000000001FLL, 0x800000025E5A6A00);
  MEMORY[0x25F8B7B50](*v1, v1[1]);
  MEMORY[0x25F8B7B50](0x6361746E6F63202CLL, 0xEC0000003D644974);
  MEMORY[0x25F8B7B50](v1[2], v1[3]);
  MEMORY[0x25F8B7B50](0x616C70736964202CLL, 0xEE003D656D614E79);
  MEMORY[0x25F8B7B50](v1[4], v1[5]);
  MEMORY[0x25F8B7B50](0x656C646E6168202CLL, 0xE90000000000003DLL);
  MEMORY[0x25F8B7B50](v1[6], v1[7]);
  MEMORY[0x25F8B7B50](0xD000000000000012, 0x800000025E5A6A20);
  if (*(v0 + 64))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 64))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x25F8B7B50](v2, v3);

  MEMORY[0x25F8B7B50](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PhoneContactHeader.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C646E7542707061;
  v3 = 0x4E79616C70736964;
  v4 = 0x656C646E6168;
  if (v1 != 3)
  {
    v4 = 0x5074737269467369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49746361746E6F63;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneContactHeader.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PhoneContactHeader.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneContactHeader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v21[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v21[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = *(v3 + 64);
  v21[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

void __swiftcall PhoneContactHeader.init(appBundleId:contactId:displayName:handle:isFirstPartyApp:)(PhoneSnippetUI::PhoneContactHeader *__return_ptr retstr, Swift::String appBundleId, Swift::String contactId, Swift::String displayName, Swift::String handle, Swift::Bool isFirstPartyApp)
{
  retstr->appBundleId = appBundleId;
  retstr->contactId = contactId;
  retstr->displayName = displayName;
  retstr->handle = handle;
  retstr->isFirstPartyApp = isFirstPartyApp;
}

__n128 PhoneContactHeader.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PhoneContactHeader.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PhoneContactHeader@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PhoneContactHeader.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t specialized PhoneContactHeader.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5074737269467369 && a2 == 0xEF70704179747261)
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

uint64_t specialized PhoneContactHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v16;
  v41 = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v40 = v17 & 1;
  v19 = v31;
  v18 = v32;
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v28;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  v37 = v40;
  outlined init with copy of PhoneContactHeader(&v33, v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38[0] = v11;
  v38[1] = v18;
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v39 = v40;
  result = outlined destroy of PhoneContactHeader(v38);
  v24 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v24;
  *(a2 + 64) = v37;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactHeader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for PhoneContactHeader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PhoneSnippetDataModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DeviceIdiom();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhoneSnippetDataModels();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneSnippetDataModels(v3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v16 = *v13;
      v15 = specialized StackedButtonsModel.shouldHideSnippet(on:)(a2, v13[8]);

      return v15 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      outlined destroy of PhoneSnippetDataModels(v13, type metadata accessor for PhoneSnippetDataModels);
      v15 = 0;
      return v15 & 1;
    }
  }

  outlined destroy of PhoneSnippetDataModels(v13, type metadata accessor for PhoneSnippetDataModels);
  (*(v6 + 104))(v9, *MEMORY[0x277D61BE8], v5);
  v15 = static DeviceIdiom.== infix(_:_:)();
  (*(v6 + 8))(v9, v5);
  return v15 & 1;
}

uint64_t type metadata accessor for PhoneSnippetDataModels()
{
  result = type metadata singleton initialization cache for PhoneSnippetDataModels;
  if (!type metadata singleton initialization cache for PhoneSnippetDataModels)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PhoneSnippetDataModels(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneSnippetDataModels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t PhoneSnippetDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x69666E6F43707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0x4264656B63617473;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x747369486C6C6163;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6F56656C676E6973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneSnippetDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PhoneSnippetDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneSnippetDataModels.encode(to:)(void *a1)
{
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v112 = *(v155 - 8);
  v2 = *(v112 + 64);
  MEMORY[0x28223BE20](v155);
  v154 = &v101 - v3;
  v152 = type metadata accessor for SingleResultCallHistoryModel();
  v4 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v153 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v111 = *(v151 - 8);
  v6 = *(v111 + 64);
  MEMORY[0x28223BE20](v151);
  v150 = &v101 - v7;
  v148 = type metadata accessor for SingleResultVoicemailModel();
  v8 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v110 = *(v147 - 8);
  v10 = *(v110 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v101 - v11;
  v144 = type metadata accessor for PlayVoicemailModel();
  v12 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v109 = *(v143 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v101 - v15;
  v140 = type metadata accessor for SearchCallHistoryModel();
  v16 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v141 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v108 = *(v139 - 8);
  v18 = *(v108 + 64);
  MEMORY[0x28223BE20](v139);
  v138 = &v101 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v107 = *(v137 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v101 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v106 = *(v135 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v101 - v23;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v105 = *(v134 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v101 - v25;
  v130 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v26 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v131 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v104 = *(v129 - 8);
  v28 = *(v104 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v101 - v29;
  v126 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v30 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v103 = *(v125 - 8);
  v32 = *(v103 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v101 - v33;
  v122 = type metadata accessor for EmergencyCountdownModel();
  v34 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v102 = *(v121 - 8);
  v36 = *(v102 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v101 - v37;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v118 = *(v119 - 8);
  v38 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v101 - v39;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v115 = *(v117 - 8);
  v40 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v113 = &v101 - v41;
  v156 = type metadata accessor for YesNoConfirmationModel();
  v42 = *(*(v156 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v156);
  v114 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v101 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v101 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v101 - v51;
  v53 = type metadata accessor for PhoneSnippetDataModels();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v56 = (&v101 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v157 = *(v160 - 8);
  v57 = *(v157 + 64);
  MEMORY[0x28223BE20](v160);
  v59 = &v101 - v58;
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();
  v159 = v59;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of PhoneSnippetDataModels(v158, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v83 = *v56;
      v84 = v56[1];
      v85 = v56[2];
      LOBYTE(v161) = 1;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();
      v86 = v116;
      v88 = v159;
      v87 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v161 = v83;
      v162 = v84;
      v163 = v85;
      lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
      v89 = v119;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v118 + 8))(v86, v89);
      (*(v157 + 8))(v88, v87);

    case 2u:
      outlined init with take of SingleResultCallHistoryModel(v56, v50, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v161) = 2;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();
      v75 = v120;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v76 = v121;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v102 + 8))(v75, v76);
      v77 = type metadata accessor for YesNoConfirmationModel;
      v78 = v50;
      goto LABEL_18;
    case 3u:
      v52 = v123;
      outlined init with take of SingleResultCallHistoryModel(v56, v123, type metadata accessor for EmergencyCountdownModel);
      LOBYTE(v161) = 3;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();
      v79 = v124;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel);
      v80 = v125;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v103 + 8))(v79, v80);
      v68 = type metadata accessor for EmergencyCountdownModel;
      goto LABEL_17;
    case 4u:
      v52 = v127;
      outlined init with take of SingleResultCallHistoryModel(v56, v127, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
      LOBYTE(v161) = 4;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();
      v69 = v128;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
      v70 = v129;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v104 + 8))(v69, v70);
      v68 = type metadata accessor for ForeignEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 5u:
      v52 = v131;
      outlined init with take of SingleResultCallHistoryModel(v56, v131, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      LOBYTE(v161) = 5;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();
      v90 = v132;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      v91 = v134;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v105 + 8))(v90, v91);
      v68 = type metadata accessor for LocalEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 6u:
      v92 = *v56;
      v93 = *(v56 + 8);
      LOBYTE(v161) = 6;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();
      v94 = v133;
      v96 = v159;
      v95 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v161 = v92;
      LOBYTE(v162) = v93;
      lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
      v97 = v135;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v106 + 8))(v94, v97);
      (*(v157 + 8))(v96, v95);

    case 7u:
      outlined init with take of SingleResultCallHistoryModel(v56, v47, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v161) = 7;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();
      v81 = v136;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v82 = v137;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v107 + 8))(v81, v82);
      v77 = type metadata accessor for YesNoConfirmationModel;
      v78 = v47;
      goto LABEL_18;
    case 8u:
      v52 = v114;
      outlined init with take of SingleResultCallHistoryModel(v56, v114, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v161) = 8;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();
      v61 = v138;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v64 = v139;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v65 = &v140;
      goto LABEL_16;
    case 9u:
      v52 = v141;
      outlined init with take of SingleResultCallHistoryModel(v56, v141, type metadata accessor for SearchCallHistoryModel);
      LOBYTE(v161) = 9;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();
      v73 = v142;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel);
      v74 = v143;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v109 + 8))(v73, v74);
      v68 = type metadata accessor for SearchCallHistoryModel;
      goto LABEL_17;
    case 0xAu:
      v52 = v145;
      outlined init with take of SingleResultCallHistoryModel(v56, v145, type metadata accessor for PlayVoicemailModel);
      LOBYTE(v161) = 10;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();
      v99 = v146;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel);
      v100 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v110 + 8))(v99, v100);
      v68 = type metadata accessor for PlayVoicemailModel;
      goto LABEL_17;
    case 0xBu:
      v52 = v149;
      outlined init with take of SingleResultCallHistoryModel(v56, v149, type metadata accessor for SingleResultVoicemailModel);
      LOBYTE(v161) = 11;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();
      v66 = v150;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel);
      v67 = v151;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v111 + 8))(v66, v67);
      v68 = type metadata accessor for SingleResultVoicemailModel;
      goto LABEL_17;
    case 0xCu:
      v52 = v153;
      outlined init with take of SingleResultCallHistoryModel(v56, v153, type metadata accessor for SingleResultCallHistoryModel);
      LOBYTE(v161) = 12;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();
      v71 = v154;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel);
      v72 = v155;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v112 + 8))(v71, v72);
      v68 = type metadata accessor for SingleResultCallHistoryModel;
      goto LABEL_17;
    default:
      outlined init with take of SingleResultCallHistoryModel(v56, v52, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v161) = 0;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();
      v61 = v113;
      v63 = v159;
      v62 = v160;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v64 = v117;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v65 = &v147;
LABEL_16:
      (*(*(v65 - 32) + 8))(v61, v64);
      v68 = type metadata accessor for YesNoConfirmationModel;
LABEL_17:
      v77 = v68;
      v78 = v52;
LABEL_18:
      outlined destroy of PhoneSnippetDataModels(v78, v77);
      return (*(v157 + 8))(v63, v62);
  }
}

uint64_t PhoneSnippetDataModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v173 = *(v170 - 8);
  v3 = *(v173 + 64);
  MEMORY[0x28223BE20](v170);
  v184 = &v134 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v171 = *(v172 - 8);
  v5 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v188 = &v134 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v168 = *(v169 - 8);
  v7 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v183 = &v134 - v8;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v166 = *(v167 - 8);
  v9 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v182 = &v134 - v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v164 = *(v165 - 8);
  v11 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v181 = &v134 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v162 = *(v163 - 8);
  v13 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v180 = &v134 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v160 = *(v161 - 8);
  v15 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v179 = &v134 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v158 = *(v159 - 8);
  v17 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v178 = &v134 - v18;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v156 = *(v157 - 8);
  v19 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v177 = &v134 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v154 = *(v155 - 8);
  v21 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v187 = &v134 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v153 = *(v152 - 8);
  v23 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  v176 = &v134 - v24;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v186 = *(v151 - 8);
  v25 = *(v186 + 64);
  MEMORY[0x28223BE20](v151);
  v175 = &v134 - v26;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v149 = *(v150 - 8);
  v27 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v174 = &v134 - v28;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v189 = *(v185 - 8);
  v29 = *(v189 + 64);
  MEMORY[0x28223BE20](v185);
  v31 = &v134 - v30;
  v191 = type metadata accessor for PhoneSnippetDataModels();
  v32 = *(*(v191 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v191);
  v148 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v147 = &v134 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v146 = &v134 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v145 = &v134 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v144 = &v134 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v143 = &v134 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v140 = (&v134 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v142 = &v134 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v141 = &v134 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v134 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v134 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v134 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v134 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v134 - v63;
  v65 = a1[3];
  v66 = a1[4];
  v196 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v65);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys();
  v192 = v31;
  v67 = v193;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v67)
  {
LABEL_34:
    v91 = v196;
    return __swift_destroy_boxed_opaque_existential_0(v91);
  }

  v135 = v59;
  v136 = v62;
  v137 = v56;
  v138 = v53;
  v69 = v186;
  v68 = v187;
  v70 = v188;
  v193 = 0;
  v139 = v64;
  v71 = v190;
  v72 = v185;
  v73 = KeyedDecodingContainer.allKeys.getter();
  if (*(v73 + 16) != 1 || *(v73 + 32) == 13)
  {
    v77 = type metadata accessor for DecodingError();
    swift_allocError();
    v79 = v78;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    v81 = v192;
    *v79 = v191;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D84160], v77);
    swift_willThrow();
    (*(v189 + 8))(v81, v72);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  switch(*(v73 + 32))
  {
    case 1:
      LOBYTE(v194) = 1;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys();
      v106 = v175;
      v107 = v192;
      v108 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v108)
      {
        (*(v189 + 8))(v107, v72);
        swift_unknownObjectRelease();
        v91 = v196;
        return __swift_destroy_boxed_opaque_existential_0(v91);
      }

      lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
      v127 = v151;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v128 = v189;
      v193 = 0;
      (*(v69 + 8))(v106, v127);
      (*(v128 + 8))(v192, v72);
      swift_unknownObjectRelease();
      v133 = v135;
      *v135 = v194;
      *(v133 + 1) = v195;
      goto LABEL_39;
    case 2:
      LOBYTE(v194) = 2;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys();
      v95 = v176;
      v83 = v192;
      v96 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v96)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v97 = v137;
      v98 = v152;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v153 + 8))(v95, v98);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v129 = v97;
      goto LABEL_41;
    case 3:
      LOBYTE(v194) = 3;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys();
      v99 = v68;
      v83 = v192;
      v100 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v100)
      {
        goto LABEL_32;
      }

      type metadata accessor for EmergencyCountdownModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel);
      v101 = v138;
      v102 = v155;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v154 + 8))(v99, v102);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v130 = v139;
      outlined init with take of SingleResultCallHistoryModel(v101, v139, type metadata accessor for PhoneSnippetDataModels);
      v131 = v196;
      v71 = v190;
      goto LABEL_42;
    case 4:
      LOBYTE(v194) = 4;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys();
      v86 = v177;
      v83 = v192;
      v87 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v87)
      {
        goto LABEL_32;
      }

      type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
      v84 = v141;
      v88 = v157;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v156 + 8))(v86, v88);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 5:
      LOBYTE(v194) = 5;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys();
      v109 = v178;
      v83 = v192;
      v110 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v110)
      {
        goto LABEL_32;
      }

      type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      v84 = v142;
      v111 = v159;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v158 + 8))(v109, v111);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 6:
      LOBYTE(v194) = 6;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys();
      v112 = v179;
      v83 = v192;
      v113 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v113)
      {
        goto LABEL_32;
      }

      lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
      v114 = v161;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v115 = v189;
      v193 = 0;
      (*(v160 + 8))(v112, v114);
      (*(v115 + 8))(v83, v72);
      swift_unknownObjectRelease();
      v132 = v195;
      v133 = v140;
      *v140 = v194;
      *(v133 + 8) = v132;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v129 = v133;
      goto LABEL_41;
    case 7:
      LOBYTE(v194) = 7;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys();
      v103 = v180;
      v83 = v192;
      v104 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v104)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v84 = v143;
      v105 = v163;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v162 + 8))(v103, v105);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 8:
      LOBYTE(v194) = 8;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys();
      v119 = v181;
      v83 = v192;
      v120 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v120)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v84 = v144;
      v121 = v165;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v164 + 8))(v119, v121);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 9:
      LOBYTE(v194) = 9;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys();
      v92 = v182;
      v83 = v192;
      v93 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v93)
      {
        goto LABEL_32;
      }

      type metadata accessor for SearchCallHistoryModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel);
      v84 = v145;
      v94 = v167;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v166 + 8))(v92, v94);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0xA:
      LOBYTE(v194) = 10;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys();
      v116 = v183;
      v83 = v192;
      v117 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v117)
      {
        goto LABEL_32;
      }

      type metadata accessor for PlayVoicemailModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel);
      v84 = v146;
      v118 = v169;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v168 + 8))(v116, v118);
      (*(v189 + 8))(v83, v72);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0xB:
      LOBYTE(v194) = 11;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys();
      v83 = v192;
      v82 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v82)
      {
        type metadata accessor for SingleResultVoicemailModel();
        lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel);
        v84 = v147;
        v85 = v172;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v193 = 0;
        (*(v171 + 8))(v70, v85);
        (*(v189 + 8))(v83, v72);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

LABEL_32:
      (*(v189 + 8))(v83, v72);
      goto LABEL_33;
    case 0xC:
      LOBYTE(v194) = 12;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys();
      v90 = v192;
      v89 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v89)
      {
        (*(v189 + 8))(v90, v72);
        swift_unknownObjectRelease();
        v91 = v196;
        return __swift_destroy_boxed_opaque_existential_0(v91);
      }

      type metadata accessor for SingleResultCallHistoryModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel);
      v84 = v148;
      v123 = v170;
      v124 = v184;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v193 = 0;
      (*(v173 + 8))(v124, v123);
      (*(v189 + 8))(v90, v72);
      swift_unknownObjectRelease();
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v129 = v84;
LABEL_41:
      v130 = v139;
      outlined init with take of SingleResultCallHistoryModel(v129, v139, type metadata accessor for PhoneSnippetDataModels);
      v131 = v196;
      goto LABEL_42;
    default:
      LOBYTE(v194) = 0;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys();
      v74 = v174;
      v76 = v192;
      v75 = v193;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v75)
      {
        (*(v189 + 8))(v76, v72);
        goto LABEL_33;
      }

      type metadata accessor for YesNoConfirmationModel();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
      v125 = v136;
      v126 = v150;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v149 + 8))(v74, v126);
      (*(v189 + 8))(v76, v72);
      swift_unknownObjectRelease();
      v193 = 0;
      v131 = v196;
      swift_storeEnumTagMultiPayload();
      v130 = v139;
      outlined init with take of SingleResultCallHistoryModel(v125, v139, type metadata accessor for PhoneSnippetDataModels);
LABEL_42:
      outlined init with take of SingleResultCallHistoryModel(v130, v71, type metadata accessor for PhoneSnippetDataModels);
      result = __swift_destroy_boxed_opaque_existential_0(v131);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of PhoneSnippetDataModels(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for PhoneSnippetDataModels()
{
  result = type metadata accessor for YesNoConfirmationModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EmergencyCountdownModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ForeignEmergencyCallDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LocalEmergencyCallDisambiguationModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SearchCallHistoryModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PlayVoicemailModel();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for SingleResultVoicemailModel();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for SingleResultCallHistoryModel();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSnippetDataModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneSnippetDataModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PhoneSnippetDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69666E6F43707061 && a2 == 0xEF6E6F6974616D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025E5A6A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025E5A6A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025E5A6AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4264656B63617473 && a2 == 0xEE00736E6F747475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025E5A6B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x747369486C6C6163 && a2 == 0xEF7473694C79726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F56656C676E6973 && a2 == 0xEF6C69616D656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025E5A6B60 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = 0;
  v49 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  if (a1)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = __swift_project_value_buffer(v8, static Logger.phoneSnippetUI);

    v46 = v9;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_25E523000, v10, v11, "#LoggableError Trying ABC for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x25F8B8670](v13, -1, -1);
      MEMORY[0x25F8B8670](v12, -1, -1);
    }

    PhoneSnippetUIError.errorDescription.getter();
    v47[0] = v14;
    v15 = 0;
    v47[1] = PhoneSnippetUIError.subTypeContext.getter();
    v47[2] = v16;
    v17 = MEMORY[0x277D84F90];
LABEL_7:
    v18 = &v47[2 * v15];
    while (++v15 != 3)
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v18 += 2;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
        }

        *(v17 + 2) = v23 + 1;
        v24 = &v17[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 5) = v19;
        goto LABEL_7;
      }
    }

    swift_arrayDestroy();
    v48 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = specialized LoggableError.caseName.getter();
    specialized static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v28, v29, v25, v27, v46);
  }

  if (a2)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.phoneSnippetUI);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_25E523000, v32, v33, "#LoggableError Trying TTR for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25F8B8670](v35, -1, -1);
      MEMORY[0x25F8B8670](v34, -1, -1);
    }

    else
    {
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v48 = 0xD00000000000001ALL;
    v49 = 0x800000025E5A66B0;
    v37 = specialized LoggableError.caseName.getter();
    MEMORY[0x25F8B7B50](v37);

    v39 = v48;
    v38 = v49;
    v48 = PhoneSnippetUIError.errorDescription.getter();
    v49 = v40;
    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v41 = PhoneSnippetUIError.subTypeContext.getter();
    MEMORY[0x25F8B7B50](v41);

    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v42 = PhoneSnippetUIError.additionalContext.getter();
    MEMORY[0x25F8B7B50](v42);

    v44 = v48;
    v43 = v49;
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x25F8B7B50](0x45656E6F68502061, 0xEE002820726F7272);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x25F8B7B50](0x6564207361772029, 0xEF2E646574636574);
    specialized static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v39, v38, v44, v43, v48, v49, v31);
  }

  return outlined init with copy of PhoneSnippetUIError(v4, a3);
}

uint64_t specialized LoggableError.caseName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = &type metadata for PhoneSnippetUIError;
  v18[0] = swift_allocObject();
  outlined init with copy of PhoneSnippetUIError(v1, v18[0] + 16);
  Mirror.init(reflecting:)();
  v7 = Mirror.children.getter();
  (*(v3 + 8))(v6, v2);
  v8 = v7[2];
  v9 = v7[3];
  v10 = v7[4];
  v11 = v7[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v12 == result)
  {
    v14 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v14)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v16 = v19;
      v15 = v20;
      __swift_destroy_boxed_opaque_existential_0(v21);
      if (v15)
      {
LABEL_6:
        v19 = _typeName(_:qualified:)();
        v20 = v17;
        MEMORY[0x25F8B7B50](46, 0xE100000000000000);
        MEMORY[0x25F8B7B50](v16, v15);

        return v19;
      }
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v16 = v19;
    v15 = v20;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t PhoneSnippetUIError.errorDescription.getter()
{
  v1 = 0xD000000000000010;
  v2 = type metadata accessor for AppIntentSpecification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneSnippetUIError(v0, v14);
  if (v16)
  {
    outlined destroy of PhoneSnippetUIError(v14);
  }

  else
  {

    outlined init with take of AppIntentRepresentation(v14, v13);
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v11 = 0xD000000000000010;
    v12 = 0x800000025E5A6BA0;
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    dispatch thunk of AppIntentRepresentation.exportToSpecification()();
    v7 = AppIntentSpecification.actionIdentifier.getter();
    v9 = v8;
    (*(v3 + 8))(v6, v2);
    MEMORY[0x25F8B7B50](v7, v9);

    MEMORY[0x25F8B7B50](41, 0xE100000000000000);
    v1 = v11;
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v1;
}

uint64_t outlined init with take of AppIntentRepresentation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PhoneSnippetUIError.subTypeContext.getter()
{
  outlined init with copy of PhoneSnippetUIError(v0, v6);
  if (v7)
  {
    return v6[0];
  }

  v2 = v6[5];
  v3 = _convertErrorToNSError(_:)();
  [v3 code];

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F8B7B50](v4);

  v1 = 0x646F43726F727265;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v1;
}

uint64_t PhoneSnippetUIError.additionalContext.getter()
{
  outlined init with copy of PhoneSnippetUIError(v0, v4);
  if (v6)
  {
    outlined destroy of PhoneSnippetUIError(v4);
  }

  else
  {
    v1 = v5;
    outlined init with take of AppIntentRepresentation(v4, v3);
    _StringGuts.grow(_:)(36);
    MEMORY[0x25F8B7B50](0xD000000000000018, 0x800000025E5A6BC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0A20IntentRepresentation_pMd, &_s18AppIntentsServices0A20IntentRepresentation_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x25F8B7B50](0x3D726F7272650A2CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  return 0;
}

uint64_t PhoneSnippetUIError.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for LoggableError.logger.getter in conformance PhoneSnippetUIError@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetUIError and conformance PhoneSnippetUIError()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError;
  if (!lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PhoneSnippetUIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhoneSnippetUIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhoneSnippetUIError(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_25E56D920()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t Logger.phoneSnippetUI.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
}

uint64_t one-time initialization function for phoneSnippetUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.phoneSnippetUI);
  __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.phoneSnippetUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *PhoneStartRequestUtterances.cancelUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for cancelUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.cancelUtterance;
}

uint64_t one-time initialization function for cancelUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = type metadata accessor for MachineUtteranceBuilder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v10 = dispatch thunk of MachineUtteranceBuilder.build()();
  v12 = v11;

  *a4 = v10;
  *a5 = v12;
  return result;
}

uint64_t *PhoneStartRequestUtterances.confirmUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.confirmUtterance;
}

uint64_t static PhoneStartRequestUtterances.cancelUtterance.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t PlayVoicemailModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlayVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlayVoicemailModel.callRecords.getter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t type metadata accessor for PlayVoicemailModel()
{
  result = type metadata singleton initialization cache for PlayVoicemailModel;
  if (!type metadata singleton initialization cache for PlayVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for PlayVoicemailModel.callRecords : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for PlayVoicemailModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.callRecords : PlayVoicemailModel(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for PlayVoicemailModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.callRecords.setter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*PlayVoicemailModel.callRecords.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for PlayVoicemailModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.voicemailTitle.getter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for PlayVoicemailModel.voicemailTitle : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for PlayVoicemailModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.voicemailTitle : PlayVoicemailModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for PlayVoicemailModel() + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.voicemailTitle.setter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*PlayVoicemailModel.voicemailTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for PlayVoicemailModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.openPhoneText.getter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for PlayVoicemailModel.openPhoneText : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for PlayVoicemailModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.openPhoneText : PlayVoicemailModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for PlayVoicemailModel() + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.openPhoneText.setter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*PlayVoicemailModel.openPhoneText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for PlayVoicemailModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of PlayVoicemailModel.openPhoneAction()
{
  type metadata accessor for SABaseCommand();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t PlayVoicemailModel.openPhoneAction.getter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for PlayVoicemailModel.openPhoneAction : PlayVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for PlayVoicemailModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.openPhoneAction : PlayVoicemailModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for PlayVoicemailModel() + 32);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.openPhoneAction.setter()
{
  v0 = *(type metadata accessor for PlayVoicemailModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*PlayVoicemailModel.openPhoneAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for PlayVoicemailModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlayVoicemailModel.CodingKeys()
{
  v1 = 0x65736E6F70736572;
  v2 = 0x69616D6563696F76;
  if (*v0 != 2)
  {
    v2 = 0x6E6F68506E65706FLL;
  }

  if (*v0)
  {
    v1 = 0x6F6365526C6C6163;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlayVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlayVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for PlayVoicemailModel();
    v14 = v13[5];
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v13[6];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v13[7];
    v21 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v13[8];
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
    lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(a2, type metadata accessor for SingleVoicemailModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlayVoicemailModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v41 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v15 = v41 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMR);
  v16 = *(v47 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v47);
  v19 = v41 - v18;
  v52 = type metadata accessor for PlayVoicemailModel();
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v22 = (v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v24 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys();
  v49 = v19;
  v25 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v42 = v10;
    v51 = v16;
    v60 = 0;
    *v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v22[1] = v26;
    v41[1] = v26;
    v59 = 1;
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>);
    v27 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v54;
    v29 = v52;
    v30 = *(v52 + 20);
    v31 = *(v48 + 32);
    v41[0] = v22;
    v31(v22 + v30, v15, v27);
    v58 = 2;
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    v32 = v12;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = *(v55 + 32);
    v33(v41[0] + v29[6], v32, v28);
    v57 = 3;
    v34 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v51;
    v36 = v41[0];
    v33(v41[0] + v29[7], v34, v28);
    v56 = 4;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    v37 = v45;
    v38 = v46;
    v39 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 8))(v39, v47);
    (*(v43 + 32))(v36 + v29[8], v38, v37);
    outlined init with copy of PlayVoicemailModel(v36, v44);
    __swift_destroy_boxed_opaque_existential_0(v53);
    return outlined destroy of PlayVoicemailModel(v36);
  }
}

uint64_t lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of PlayVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayVoicemailModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlayVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for PlayVoicemailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlayVoicemailModel.init(responseViewId:callRecords:voicemailTitle:openPhoneText:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = type metadata accessor for PlayVoicemailModel();
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
  Loggable.init(wrappedValue:)();
  v5 = v3[6];
  Loggable.init(wrappedValue:)();
  v6 = v3[7];
  Loggable.init(wrappedValue:)();
  v7 = v3[8];
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance PlayVoicemailModel()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t instantiation function for generic protocol witness table for PlayVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E56F8C0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_25E56FA64(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for PlayVoicemailModel()
{
  type metadata accessor for Loggable<[SingleVoicemailModel]>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Loggable<String>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SABaseCommand>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<[SingleVoicemailModel]>()
{
  if (!lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>);
    }
  }
}

void type metadata accessor for Loggable<String>()
{
  if (!lazy cache variable for type metadata for Loggable<String>)
  {
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String>);
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseCommand>)
  {
    type metadata accessor for SABaseCommand();
    v0 = type metadata accessor for CodableAceObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>);
    }
  }
}

uint64_t specialized PlayVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616D6563696F76 && a2 == 0xEE00656C7469546CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
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

uint64_t SearchCallHistoryBinaryButtonModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchCallHistoryBinaryButtonModel.primaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryBinaryButtonModel.primaryAction()
{
  type metadata accessor for SABaseClientBoundCommand();

  return CodableAceObject.init(wrappedValue:)();
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonModel()
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for SearchCallHistoryBinaryButtonModel.primaryAction : SearchCallHistoryBinaryButtonModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.primaryAction : SearchCallHistoryBinaryButtonModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.primaryAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.secondaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SearchCallHistoryBinaryButtonModel.secondaryAction : SearchCallHistoryBinaryButtonModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryAction : SearchCallHistoryBinaryButtonModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.secondaryAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SearchCallHistoryBinaryButtonModel.init(primaryText:primaryAction:secondaryText:secondaryAction:)(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v5 = (a2 + v4[8]);
  *v5 = 0xD000000000000021;
  v5[1] = 0x800000025E5A6180;
  Loggable.init(wrappedValue:)();
  v6 = v4[5];
  type metadata accessor for SABaseClientBoundCommand();
  v7 = a1;
  CodableAceObject.init(wrappedValue:)();
  v8 = v4[6];
  Loggable.init(wrappedValue:)();
  v9 = a2 + v4[7];
  CodableAceObject.init(wrappedValue:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x547972616D697270;
  v3 = 0x7261646E6F636573;
  v4 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x417972616D697270;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryBinaryButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchCallHistoryBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v25 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v11 = v25[5];
    v29 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v13 = lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>);
    v14 = v3;
    v15 = v13;
    v24 = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23[0] = v15;
    v23[1] = v12;
    v16 = v24;
    v17 = v25[6];
    v28 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v25[7];
    v27 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = (v16 + v25[8]);
    v20 = *v19;
    v21 = v19[1];
    v26 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v52 = *(v57 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x28223BE20](v57);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMR);
  v56 = *(v59 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  v58 = v15;
  v21 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v54;
  v48 = v11;
  v49 = v16;
  v23 = v19;
  v60 = a1;
  v24 = v57;
  v65 = 0;
  v25 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  v26 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v25;
  v27 = v7;
  v28 = *(v53 + 32);
  v47 = v23;
  v28(v23, v26, v27);
  v64 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>);
  v29 = v22;
  v30 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v27;
  v44 = v28;
  v31 = (v52 + 32);
  v32 = *(v52 + 32);
  v32(v47 + v49[5], v29, v30);
  v63 = 2;
  v33 = v48;
  v55 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v32;
  v54 = v31;
  v44(v47 + v49[6], v33, v27);
  v62 = 3;
  v34 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v30;
  v36 = v56;
  v37 = v47;
  v45(v47 + v49[7], v34, v35);
  v61 = 4;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v39;
  v41 = (v37 + v49[8]);
  (*(v36 + 8))(v58, v59);
  *v41 = v38;
  v41[1] = v40;
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v37, v50);
  __swift_destroy_boxed_opaque_existential_0(v60);
  return outlined destroy of SearchCallHistoryBinaryButtonModel(v37);
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E5717B8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E571838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25E571974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for SearchCallHistoryBinaryButtonModel()
{
  type metadata accessor for Loggable<String>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseClientBoundCommand>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseClientBoundCommand>()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>)
  {
    type metadata accessor for SABaseClientBoundCommand();
    v0 = type metadata accessor for CodableAceObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>);
    }
  }
}

uint64_t specialized SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972616D697270 && a2 == 0xEB00000000747865;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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

uint64_t key path setter for SearchCallHistoryBinaryButtonView.actionHandler : SearchCallHistoryBinaryButtonView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  outlined init with copy of StandardActionHandler?(a1, &v10 - v7);
  outlined init with copy of StandardActionHandler?(v8, v6);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

uint64_t SearchCallHistoryBinaryButtonView.actionHandler.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of StandardActionHandler?(a1, &v6 - v4);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(a1, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

void (*SearchCallHistoryBinaryButtonView.actionHandler.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ActionHandler.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonView()
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonView;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonView();
  return outlined init with take of SearchCallHistoryBinaryButtonModel(a1, a2 + *(v4 + 20), type metadata accessor for SearchCallHistoryBinaryButtonModel);
}

uint64_t SearchCallHistoryBinaryButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for SearchCallHistoryBinaryButtonView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = SearchCallHistoryBinaryButtonView.primaryButton.getter();
  v13 = MEMORY[0x277D63A58];
  v20[10] = MEMORY[0x277CE11D0];
  v20[11] = MEMORY[0x277D63A58];
  v20[7] = v12;
  v14 = *(v4 + 28);
  v15 = v2 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v2, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchCallHistoryBinaryButtonView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  outlined init with take of SearchCallHistoryBinaryButtonModel(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SearchCallHistoryBinaryButtonView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  v18 = View.eraseToAnyView()();
  (*(v8 + 8))(v11, v7);
  v20[6] = v13;
  v20[5] = MEMORY[0x277CE11D0];
  v20[2] = v18;
  return BinaryButtonView.init(primaryButton:secondaryButton:)();
}

uint64_t SearchCallHistoryBinaryButtonView.primaryButton.getter()
{
  v1 = v0;
  v30 = type metadata accessor for ButtonItemButtonStyle.Role();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchCallHistoryBinaryButtonView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(v7 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchCallHistoryBinaryButtonView);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  outlined init with take of SearchCallHistoryBinaryButtonModel(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SearchCallHistoryBinaryButtonView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v22 = v30;
  (*(v2 + 104))(v5, *MEMORY[0x277D63A98], v30);
  v23 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  View.buttonRole(_:)();
  (*(v2 + 8))(v5, v22);
  (*(v27 + 8))(v13, v10);
  v31 = v10;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  v25 = View.eraseToAnyView()();
  (*(v29 + 8))(v18, v24);
  return v25;
}

void SearchCallHistoryBinaryButtonView.command(for:)(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryBinaryButtonView() + 20);
  swift_getAtKeyPath();
  v3 = [v23 dictionary];

  if (v3)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = objc_opt_self();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [v5 aceObjectWithDictionary_];

    if (v7 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
    {
      v9 = v8;
      v10 = one-time initialization token for phoneSnippetUI;
      v11 = v7;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.phoneSnippetUI);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25E523000, v13, v14, "#SearchCallHistoryBinaryButtonView tap button is SAIntentGroupRunSiriKitExecutor", v15, 2u);
        MEMORY[0x25F8B8670](v15, -1, -1);
      }

      *a1 = v9;
      *(a1 + 8) = 0;
      v16 = MEMORY[0x277D63750];
    }

    else
    {
      if (one-time initialization token for phoneSnippetUI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.phoneSnippetUI);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_25E523000, v18, v19, "#SearchCallHistoryBinaryButtonView tap button is aceCommand", v20, 2u);
        MEMORY[0x25F8B8670](v20, -1, -1);
      }

      swift_getAtKeyPath();
      *a1 = v23;
      *(a1 + 8) = 0;
      v16 = MEMORY[0x277D63720];
    }

    v21 = *v16;
    v22 = type metadata accessor for Command();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in SearchCallHistoryBinaryButtonView.primaryButton.getter(uint64_t a1, const char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.phoneSnippetUI);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25E523000, v16, v17, a2, v18, 2u);
    MEMORY[0x25F8B8670](v18, -1, -1);
  }

  ActionHandler.wrappedValue.getter();
  v19 = type metadata accessor for StandardActionHandler();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v14, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25E59F720;
  swift_getKeyPath();
  v23 = type metadata accessor for Command();
  v24 = MEMORY[0x277D63778];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  SearchCallHistoryBinaryButtonView.command(for:)(boxed_opaque_existential_1);

  ActionProperty.init(_:)();
  v26 = type metadata accessor for ActionProperty();
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  v27 = type metadata accessor for InteractionType();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v6, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v20 + 8))(v14, v19);
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = MEMORY[0x277D84F98];
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = -1 << *(v1 + 32);
    v6 = ~v9;
    v5 = v1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v1 + 64);
    v8 = v1;
    goto LABEL_13;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x25F8B7E10](a1))
  {
    goto LABEL_8;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_13:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v15 = 0;
  v34 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v26 = __CocoaDictionary.Iterator.next()();
    if (!v26 || (*&v35 = v26, type metadata accessor for NSObject(), swift_dynamicCast(), v25 = v39, v19 = v15, v21 = v7, !v39))
    {
LABEL_36:
      outlined consume of [NSObject : Swift.AnyObject].Iterator._Variant();

      return v3;
    }

LABEL_27:
    *&v43[0] = v25;
    type metadata accessor for NSObject();
    swift_dynamicCast();
    swift_dynamicCast();
    v39 = v35;
    v40 = v36;
    v41 = v37;
    outlined init with take of Any(&v38, v42);
    v35 = v39;
    v36 = v40;
    v37 = v41;
    outlined init with take of Any(v42, v43);
    result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
    v27 = -1 << *(v3 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) != 0)
    {
      v16 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v8 = v34;
    }

    else
    {
      v30 = 0;
      v31 = (63 - v27) >> 6;
      v8 = v34;
      do
      {
        if (++v29 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_37;
        }

        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        v33 = *(v13 + 8 * v29);
      }

      while (v33 == -1);
      v16 = __clz(__rbit64(~v33)) + (v29 << 6);
    }

    *(v13 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v3 + 48) + 40 * v16;
    *v17 = v35;
    *(v17 + 16) = v36;
    *(v17 + 32) = v37;
    result = outlined init with take of Any(v43, (*(v3 + 56) + 32 * v16));
    ++*(v3 + 16);
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_23:
    v21 = (v18 - 1) & v18;
    v22 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v23 = *(*(v8 + 48) + v22);
    v24 = *(*(v8 + 56) + v22);
    v25 = v23;
    swift_unknownObjectRetain();
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_36;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v34;
      goto LABEL_23;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_25E573470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25E573574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for SearchCallHistoryBinaryButtonView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SearchCallHistoryBinaryButtonModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for SearchCallHistoryBinaryButtonView() - 8);
  v12 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v2 = type metadata accessor for ActionHandler();
  (*(*(v2 - 8) + 8))(v0 + v12, v2);
  v3 = v0 + v12 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);
  v5(v3 + v6[6], v4);
  v9(v3 + v6[7], v8);
  v10 = *(v3 + v6[8] + 8);

  return swift_deallocObject();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t PhoneComponentStack.init(content:)()
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  return EnvironmentObject.init()();
}

uint64_t PhoneComponentStack.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v41 = a7;
  v10 = type metadata accessor for ComponentStack();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for VStack();
  v19 = type metadata accessor for _ConditionalContent();
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v25 = a1;
  v27 = v36;
  v26 = v37;
  v24[4] = a1;
  v24[5] = v27;
  v28 = v38;
  v24[6] = v26;
  v24[7] = v28;
  v29 = v25;

  ComponentStack.init(content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v10, WitnessTable);
  v31 = *(v11 + 8);
  v31(v15, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(second:)(v15, v18, v10);
  v31(v15, v10);
  v31(v17, v10);
  v42 = v32;
  v43 = WitnessTable;
  v33 = v39;
  v34 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v33, v34);
  return (*(v40 + 8))(v23, v33);
}

uint64_t closure #2 in PhoneComponentStack.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - v14;
  v16(v13);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a6);
  v17 = *(v8 + 8);
  v17(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v15, a5, a6);
  return (v17)(v15, a5);
}

uint64_t sub_25E573FCC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t type metadata instantiation function for PhoneComponentStack()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PhoneComponentStack(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneComponentStack(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25E57415C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for VStack();
  type metadata accessor for ComponentStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t SearchCallHistoryModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchCallHistoryModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchCallHistoryModel.appId.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t type metadata accessor for SearchCallHistoryModel()
{
  result = type metadata singleton initialization cache for SearchCallHistoryModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for SearchCallHistoryModel.appId : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.appId : SearchCallHistoryModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.appId.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.appId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.callRecords.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryModel.callRecords : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.callRecords : SearchCallHistoryModel(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.callRecords.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.callRecords.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.recentsText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.recentsText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.recentsText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.openPhoneText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.openPhoneText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryModel.shouldShowBottomView : SearchCallHistoryModel@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.shouldShowBottomView : SearchCallHistoryModel(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.shouldShowBottomView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for SearchCallHistoryModel.shouldReactOpenContact : SearchCallHistoryModel@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.shouldReactOpenContact : SearchCallHistoryModel(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.shouldReactOpenContact.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryModel.openPhoneAction()
{
  type metadata accessor for SABaseCommand();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t SearchCallHistoryModel.openPhoneAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SearchCallHistoryModel.openPhoneAction : SearchCallHistoryModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneAction : SearchCallHistoryModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.openPhoneAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.openPhoneAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SearchCallHistoryModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD000000000000016;
  v4 = 0x6E6F68506E65706FLL;
  if (v1 != 6)
  {
    v3 = 0x6E6F68506E65706FLL;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F6365526C6C6163;
  if (v1 != 2)
  {
    v5 = 0x5473746E65636572;
  }

  if (*v0)
  {
    v2 = 0x6449707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SearchCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v32 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for SearchCallHistoryModel();
    v14 = *(v13 + 20);
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v13;
    v15 = *(v13 + 24);
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v24;
    v17 = v24[7];
    v29 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v16[8];
    v28 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v16[9];
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v16[10];
    v26 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v16[11];
    v25 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
    lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(a2, type metadata accessor for SingleCallRecordModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchCallHistoryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v61 = *(v63 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v65 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v16 = *(v15 - 8);
  v76 = v15;
  v77 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMR);
  v68 = *(v26 - 8);
  v69 = v26;
  v27 = *(v68 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v56 - v28;
  v79 = type metadata accessor for SearchCallHistoryModel();
  v30 = *(*(v79 - 1) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = (v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[3];
  v33 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  v67 = v29;
  v34 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v72 = v23;
    v60 = v20;
    v87 = 0;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v78;
    *v78 = v35;
    v36[1] = v37;
    v59 = v37;
    v86 = 1;
    v38 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    v39 = v76;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v58 = v38;
    v40 = v77 + 32;
    v41 = v36 + v79[5];
    v57 = *(v77 + 32);
    v57(v41, v25, v39);
    v85 = 2;
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>);
    v42 = v71;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v74;
    v56[1] = v40;
    (*(v70 + 32))(v36 + v79[6], v14, v42);
    v84 = 3;
    v44 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v57;
    v57(v36 + v79[7], v44, v39);
    v83 = 4;
    v46 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v36;
    v45(v36 + v79[8], v46, v39);
    v82 = 5;
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>);
    v48 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v79;
    v50 = *(v75 + 32);
    v50(v47 + v79[9], v48, v43);
    v81 = 6;
    v51 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50(v47 + v49[10], v51, v43);
    v80 = 7;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    v52 = v63;
    v53 = v64;
    v54 = v67;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v68 + 8))(v54, v69);
    (*(v61 + 32))(v47 + v49[11], v53, v52);
    outlined init with copy of SearchCallHistoryModel(v47, v62);
    __swift_destroy_boxed_opaque_existential_0(v73);
    return outlined destroy of SearchCallHistoryModel(v47);
  }
}

uint64_t lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchCallHistoryModel.init(responseViewId:appId:callRecords:recentsText:openPhoneText:shouldShowBottomView:shouldReactOpenContact:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = type metadata accessor for SearchCallHistoryModel();
  v4 = v3[5];
  Loggable.init(wrappedValue:)();
  v5 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
  Loggable.init(wrappedValue:)();
  v6 = v3[7];
  Loggable.init(wrappedValue:)();
  v7 = v3[8];
  Loggable.init(wrappedValue:)();
  v8 = v3[9];
  Loggable.init(wrappedValue:)();
  v9 = v3[10];
  Loggable.init(wrappedValue:)();
  v10 = v3[11];
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E57687C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_25E576A74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for SearchCallHistoryModel()
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Loggable<[SingleCallRecordModel]>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CodableAceObject<SABaseCommand>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Loggable<[SingleCallRecordModel]>()
{
  if (!lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}