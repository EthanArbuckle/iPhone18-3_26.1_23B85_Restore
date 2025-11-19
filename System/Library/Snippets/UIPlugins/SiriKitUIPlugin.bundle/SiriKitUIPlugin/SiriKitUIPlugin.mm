uint64_t SiriNeedsLocationAccessErrorView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriNeedsLocationAccessErrorView() + 20);
  v4 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SiriNeedsLocationAccessErrorView()
{
  result = type metadata singleton initialization cache for SiriNeedsLocationAccessErrorView;
  if (!type metadata singleton initialization cache for SiriNeedsLocationAccessErrorView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriNeedsLocationAccessErrorView.body.getter()
{
  v1 = *(type metadata accessor for SiriNeedsLocationAccessErrorView() - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  outlined init with copy of SiriNeedsLocationAccessErrorView(v0, v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  outlined init with take of SiriNeedsLocationAccessErrorView(v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB008RFButtonE0VQo_MR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v6 = type metadata accessor for RFButtonStyle();
  v7 = lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v8 = lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  return ComponentStack.init(content:)();
}

uint64_t outlined init with copy of SiriNeedsLocationAccessErrorView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNeedsLocationAccessErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SiriNeedsLocationAccessErrorView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNeedsLocationAccessErrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SiriNeedsLocationAccessErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriNeedsLocationAccessErrorView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return SiriNeedsLocationAccessErrorView.button()(a1);
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

uint64_t SiriNeedsLocationAccessErrorView.button()@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = type metadata accessor for RFButtonStyle();
  v2 = *(v17[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for SiriNeedsLocationAccessErrorView() - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v17 - v11;
  outlined init with copy of SiriNeedsLocationAccessErrorView(v1, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  outlined init with take of SiriNeedsLocationAccessErrorView(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v15 = v17[0];
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v5, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in SiriNeedsLocationAccessErrorView.button()()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v34 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = type metadata accessor for Command();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v34 - v11;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v34 - v14;
  v16 = type metadata accessor for StandardActionHandler();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionHandler.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    return outlined destroy of StandardActionHandler?(v15, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  v34 = v2;
  (*(v17 + 32))(v20, v15, v16);
  v22 = [objc_allocWithZone(SAUIAppPunchOut) init];
  URL.init(string:)();
  v23 = type metadata accessor for URL();
  v25 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v23) != 1)
  {
    URL._bridgeToObjectiveC()(v24);
    v25 = v26;
    (*(*(v23 - 8) + 8))(v12, v23);
  }

  [v22 setPunchOutUri:v25];

  *v9 = v22;
  v9[8] = 1;
  v27 = v35;
  (*(v35 + 104))(v9, enum case for Command.aceCommand(_:), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_6B40;
  *(v28 + 56) = v6;
  *(v28 + 64) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  (*(v27 + 16))(boxed_opaque_existential_1, v9, v6);
  v30 = v22;
  ActionProperty.init(_:)();
  v31 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
  v32 = type metadata accessor for InteractionType();
  v33 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v32);
  StandardActionHandler.perform(_:interactionType:)();

  outlined destroy of StandardActionHandler?(v33, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v5, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v27 + 8))(v9, v6);
  return (*(v17 + 8))(v20, v16);
}

uint64_t closure #1 in closure #2 in SiriNeedsLocationAccessErrorView.button()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SiriNeedsLocationAccessErrorView() + 20);
  SiriKitUIModel.SiriNeedsLocationAccessErrorModel.buttonLabel.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t SiriNeedsLocationAccessErrorView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = *(type metadata accessor for SiriNeedsLocationAccessErrorView() + 20);
  v5 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 32);

  return v7(a2 + v4, a1);
}

uint64_t variable initialization expression of LocationAccessPromptView.buttonTextBlue()
{
  v0 = [objc_opt_self() _carSystemFocusColor];

  return Color.init(uiColor:)();
}

uint64_t sub_2350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for SiriNeedsLocationAccessErrorView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for SiriNeedsLocationAccessErrorView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v1[7];
  v8 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in SiriNeedsLocationAccessErrorView.button()()
{
  v0 = *(*(type metadata accessor for SiriNeedsLocationAccessErrorView() - 8) + 80);

  return closure #1 in SiriNeedsLocationAccessErrorView.button()();
}

uint64_t lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t LocationAccessPromptView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationAccessPromptView() + 20);
  v4 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for LocationAccessPromptView()
{
  result = type metadata singleton initialization cache for LocationAccessPromptView;
  if (!type metadata singleton initialization cache for LocationAccessPromptView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationAccessPromptView.buttonTextBlue.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationAccessPromptView() + 24));

  return _swift_retain(v1);
}

uint64_t LocationAccessPromptView.body.getter()
{
  v1 = type metadata accessor for LocationAccessPromptView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  outlined init with copy of LocationAccessPromptView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of LocationAccessPromptView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>?, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LocationAccessPromptView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v99 = a1;
  v111 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMd, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v106 = &v98 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v110 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v117 = &v98 - v9;
  v120 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v105 = *(v120 - 8);
  v10 = *(v105 + 64);
  v11 = __chkstk_darwin(v120);
  v98 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v98 - v13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v14 = *(*(v112 - 8) + 64);
  v15 = __chkstk_darwin(v112);
  v109 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v121 = &v98 - v18;
  v19 = __chkstk_darwin(v17);
  v115 = (&v98 - v20);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v104 = type metadata accessor for SeparatorStyle();
  v102 = *(v104 - 8);
  v23 = *(v102 + 64);
  __chkstk_darwin(v104);
  v101 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SimpleItemStandardView();
  v119 = *(v103 - 8);
  v25 = *(v119 + 8);
  __chkstk_darwin(v103);
  v100 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo_MR);
  v107 = *(v27 - 8);
  v108 = v27;
  v28 = *(v107 + 64);
  v29 = __chkstk_darwin(v27);
  v118 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v98 - v31;
  v113 = *(type metadata accessor for LocationAccessPromptView() + 20);
  v137 = SiriKitUIModel.LocationAccessCarPlayPromptModel.titlePrompt.getter();
  v138 = v33;
  lazy protocol witness table accessor for type String and conformance String();
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  KeyPath = swift_getKeyPath();
  v137 = v34;
  v138 = v36;
  v42 = v38 & 1;
  v139 = v38 & 1;
  v140 = v40;
  v141 = KeyPath;
  v142 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v43 = View.eraseToAnyView()();
  outlined consume of Text.Storage(v34, v36, v42);
  v44 = v120;

  v45 = v99;

  v141 = &protocol witness table for AnyView;
  v140 = &type metadata for AnyView;
  v136 = 0;
  v137 = v43;
  v134 = 0u;
  v135 = 0u;
  v133 = 0;
  v131 = 0u;
  v132 = 0u;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v46 = v100;
  SimpleItemStandardView.init(text1:text2:text3:text4:text5:text6:)();
  v47 = v101;
  v48 = v102;
  v49 = v104;
  (*(v102 + 104))(v101, enum case for SeparatorStyle.none(_:), v104);
  lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(&lazy protocol witness table cache variable for type SimpleItemStandardView and conformance SimpleItemStandardView, &type metadata accessor for SimpleItemStandardView);
  v116 = v32;
  v50 = v103;
  View.separators(_:isOverride:)();
  (*(v48 + 8))(v47, v49);
  (*(v119 + 1))(v46, v50);
  v51 = v114;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowOnce.getter();
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirilK0VQo_AKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirilK0VQo_AKtGGMR);
  closure #1 in LocationAccessPromptView.button(info:)(v45, v51, &v22[*(v52 + 44)]);
  LOBYTE(v47) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v53 = *(v112 + 36);
  v119 = v22;
  v54 = &v22[v53];
  *v54 = v47;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  v59 = v105;
  v60 = *(v105 + 8);
  v60(v51, v44);
  v61 = v106;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowWhileUsingApp.getter();
  v62 = v61;
  if (__swift_getEnumTagSinglePayload(v61, 1, v44) == 1)
  {
    outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v61, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMd, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMR);
    v63 = 1;
    v64 = v117;
    v65 = v115;
    v66 = v112;
  }

  else
  {
    v67 = v98;
    v68 = v120;
    (*(v59 + 32))(v98, v62, v120);
    v69 = static VerticalAlignment.center.getter();
    v70 = v115;
    *v115 = v69;
    v70[1] = 0;
    *(v70 + 16) = 1;
    closure #1 in LocationAccessPromptView.button(info:)(v45, v67, (v70 + *(v52 + 44)));
    v71 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v72 = v112;
    v73 = v70 + *(v112 + 36);
    *v73 = v71;
    *(v73 + 1) = v74;
    *(v73 + 2) = v75;
    *(v73 + 3) = v76;
    *(v73 + 4) = v77;
    v73[40] = 0;
    v60(v67, v68);
    v64 = v117;
    sub_4748(v70, v117);
    v63 = 0;
    v65 = v70;
    v66 = v72;
  }

  v78 = v60;
  __swift_storeEnumTagSinglePayload(v64, v63, 1, v66);
  v79 = v64;
  v80 = v114;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonDontAllow.getter();
  *v65 = static VerticalAlignment.center.getter();
  v65[1] = 0;
  *(v65 + 16) = 1;
  closure #1 in LocationAccessPromptView.button(info:)(v45, v80, (v65 + *(v52 + 44)));
  v81 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v82 = v65 + *(v66 + 36);
  *v82 = v81;
  *(v82 + 1) = v83;
  *(v82 + 2) = v84;
  *(v82 + 3) = v85;
  *(v82 + 4) = v86;
  v82[40] = 0;
  v78(v80, v120);
  v88 = v107;
  v87 = v108;
  v89 = v65;
  v90 = *(v107 + 16);
  v91 = v118;
  v90(v118, v116, v108);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v119, v121, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v92 = v110;
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v79, v110, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  v93 = v109;
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v89, v109, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v94 = v111;
  v90(v111, v91, v87);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6SpacerV_AcAE06buttonJ0yQrqd__AA06ButtonJ0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_AD0m4SiritJ0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6SpacerV_AcAE06buttonJ0yQrqd__AA06ButtonJ0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_AD0m4SiritJ0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v121, &v94[v95[12]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v92, &v94[v95[16]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v93, &v94[v95[20]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v115, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v117, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v119, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v96 = *(v88 + 8);
  v96(v116, v87);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v93, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v92, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v121, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  return (v96)(v118, v87);
}

uint64_t outlined init with copy of LocationAccessPromptView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessPromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3534()
{
  v2 = type metadata accessor for LocationAccessPromptView();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v0 + 28);
  v11 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 8))(v1 + v5 + v10);
  v13 = *(v1 + v5 + *(v0 + 32));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t outlined init with take of LocationAccessPromptView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessPromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LocationAccessPromptView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationAccessPromptView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in LocationAccessPromptView.body.getter(v4, a1);
}

uint64_t closure #1 in LocationAccessPromptView.button(info:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for StandardSiriButtonStyle();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (__chkstk_darwin)();
  v40 = *(type metadata accessor for LocationAccessPromptView() - 8);
  v12 = *(v40 + 64);
  (__chkstk_darwin)();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v15 = *(v14 - 8);
  v46 = v14;
  v47 = v15;
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v41 = &v40 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB0012StandardSirifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB0012StandardSirifE0VQo_MR);
  v43 = *(v45 - 8);
  v18 = *(v43 + 64);
  v19 = (__chkstk_darwin)();
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v42 = &v40 - v21;
  outlined init with copy of LocationAccessPromptView(a1, v13);
  (*(v10 + 16))(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v23 = (v12 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = swift_allocObject();
  outlined init with take of LocationAccessPromptView(v13, v24 + v22);
  (*(v10 + 32))(v24 + v23, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v52 = a2;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  v25 = v41;
  Button.init(action:label:)();
  v26 = v48;
  static ButtonStyle<>.standardSiriButton(bold:hideIcon:isPressed:)();
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(&lazy protocol witness table cache variable for type StandardSiriButtonStyle and conformance StandardSiriButtonStyle, &type metadata accessor for StandardSiriButtonStyle);
  v27 = v42;
  v28 = v46;
  v29 = v49;
  View.buttonStyle<A>(_:)();
  (*(v50 + 8))(v26, v29);
  (*(v47 + 8))(v25, v28);
  v30 = v43;
  v31 = v44;
  v32 = *(v43 + 16);
  v33 = v45;
  v32(v44, v27, v45);
  v34 = v51;
  *v51 = 0x403E000000000000;
  *(v34 + 8) = 0;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE11buttonStyleyQrqd__AA06ButtonF0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirigF0VQo_ACtMd, &_s7SwiftUI6SpacerV_AA4ViewPAAE11buttonStyleyQrqd__AA06ButtonF0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirigF0VQo_ACtMR);
  v32(&v35[*(v36 + 48)], v31, v33);
  v37 = &v35[*(v36 + 64)];
  *v37 = 0x403E000000000000;
  v37[8] = 0;
  v38 = *(v30 + 8);
  v38(v27, v33);
  return (v38)(v31, v33);
}

uint64_t closure #1 in closure #1 in LocationAccessPromptView.button(info:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v24 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for Command();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = type metadata accessor for StandardActionHandler();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionHandler.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v12, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  (*(v14 + 32))(v17, v12, v13);
  SiriKitUIModel.ButtonInfo.directInvocationId.getter();
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_6B40;
  *(v19 + 56) = v6;
  *(v19 + 64) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  v21 = v25;
  (*(v25 + 16))(boxed_opaque_existential_1, v9, v6);
  ActionProperty.init(_:)();
  v22 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v22);
  v23 = type metadata accessor for InteractionType();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v23);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v2, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v5, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v21 + 8))(v9, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in closure #2 in closure #1 in LocationAccessPromptView.button(info:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  SiriKitUIModel.ButtonInfo.label.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + *(type metadata accessor for LocationAccessPromptView() + 24));
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  outlined consume of Text.Storage(v4, v6, v8 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t LocationAccessPromptView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for LocationAccessPromptView();
  v5 = *(v4 + 20);
  v6 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2 + v5, a1);
  v8 = *(v4 + 24);
  v9 = [objc_opt_self() _carSystemFocusColor];
  result = Color.init(uiColor:)();
  *(a2 + v8) = result;
  return result;
}

uint64_t sub_42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = OUTLINED_FUNCTION_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  v12 = OUTLINED_FUNCTION_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_43C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = OUTLINED_FUNCTION_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
    result = OUTLINED_FUNCTION_3(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata completion function for LocationAccessPromptView()
{
  result = type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_4578@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
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

uint64_t outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_4748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_47B0()
{
  v2 = type metadata accessor for LocationAccessPromptView();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v4 | v10;
  v14 = v1 + v5;
  v15 = type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_0(v15);
  (*(v16 + 8))(v1 + v5);
  v17 = *(v0 + 28);
  v18 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0_0(v18);
  (*(v19 + 8))(v14 + v17);
  v20 = *(v14 + *(v0 + 32));

  (*(v9 + 8))(v1 + v11, v8);

  return _swift_deallocObject(v1, v11 + v12, v13 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LocationAccessPromptView.button(info:)()
{
  v1 = *(type metadata accessor for LocationAccessPromptView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SiriKitUIModel.ButtonInfo() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in LocationAccessPromptView.button(info:)();
}

uint64_t partial apply for closure #2 in closure #1 in LocationAccessPromptView.button(info:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #2 in closure #1 in LocationAccessPromptView.button(info:)();
}

uint64_t lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for voiceCommands()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.voiceCommands);
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

  __swift_destroy_boxed_opaque_existential_0(v11);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

Swift::Int SiriKitUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriKitUIPlugin.Error()
{
  Hasher.init(_seed:)();
  SiriKitUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *SiriKitUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriKitUIModel();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v64 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v67 = &v64 - v25;
  __chkstk_darwin(v24);
  v27 = &v64 - v26;
  v28 = v19[2];
  v66 = a1;
  v28(&v64 - v26, a1, v16);
  v29 = v19[11];
  v30 = OUTLINED_FUNCTION_1_0();
  v32 = v31(v30);
  if (v32 == enum case for SiriKitUIModel.locationAccessCarPlayPrompt(_:))
  {
    v33 = v19[12];
    v34 = OUTLINED_FUNCTION_1_0();
    v35(v34);
    (*(v11 + 32))(v15, v27, v8);
    v36 = type metadata accessor for LocationAccessPromptView();
    v72 = v36;
    v73 = lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(&lazy protocol witness table cache variable for type LocationAccessPromptView and conformance LocationAccessPromptView, type metadata accessor for LocationAccessPromptView);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v11 + 16))(boxed_opaque_existential_1 + *(v36 + 20), v15, v8);
    ActionHandler.init()();
    v38 = *(v36 + 24);
    v39 = [objc_opt_self() _carSystemFocusColor];
    *(boxed_opaque_existential_1 + v38) = Color.init(uiColor:)();
    (*(v11 + 8))(v15, v8);
LABEL_5:
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v49 = View.eraseToAnyView()();
    __swift_destroy_boxed_opaque_existential_0(v71);
    return v49;
  }

  if (v32 == enum case for SiriKitUIModel.siriNeedsLocationAccessError(_:))
  {
    v40 = v19[12];
    v41 = OUTLINED_FUNCTION_1_0();
    v42(v41);
    v43 = v68;
    v44 = v65;
    v45 = v27;
    v46 = v69;
    (*(v68 + 32))(v65, v45, v69);
    v47 = type metadata accessor for SiriNeedsLocationAccessErrorView();
    v72 = v47;
    v73 = lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(&lazy protocol witness table cache variable for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView, type metadata accessor for SiriNeedsLocationAccessErrorView);
    v48 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v43 + 16))(v48 + *(v47 + 20), v44, v46);
    ActionHandler.init()();
    (*(v43 + 8))(v44, v46);
    goto LABEL_5;
  }

  if (one-time initialization token for siriKitUI != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.siriKitUI);
  v51 = v67;
  v28(v67, v66, v16);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74 = v70;
    *v54 = 136315138;
    LODWORD(v69) = v53;
    v28(v64, v51, v16);
    v55 = String.init<A>(describing:)();
    v56 = v51;
    v58 = v57;
    v59 = v19[1];
    v59(v56, v16);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v58, &v74);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_0, v52, v69, "Unhandled pluginModel: %s", v54, 0xCu);
    v49 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
  }

  else
  {

    v61 = v19[1];
    v49 = v19 + 1;
    v59 = v61;
    v61(v51, v16);
  }

  lazy protocol witness table accessor for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error();
  swift_allocError();
  swift_willThrow();
  v62 = OUTLINED_FUNCTION_1_0();
  (v59)(v62);
  return v49;
}

uint64_t protocol witness for SnippetProviding.init() in conformance SiriKitUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error()
{
  result = lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SiriKitUIPlugin.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriKitUIPlugin.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x63D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}