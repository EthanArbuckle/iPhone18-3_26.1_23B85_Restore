uint64_t specialized SearchCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5473746E65636572 && a2 == 0xEB00000000747865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025E5A6BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025E5A6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t YesNoConfirmationCarPlayView.body.getter()
{
  v1 = type metadata accessor for YesNoConfirmationCarPlayView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of YesNoConfirmationModel(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationCarPlayView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of YesNoConfirmationModel(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for YesNoConfirmationCarPlayView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SystemTextClarificationTitleView?, YesNoConfirmationView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  return ComponentStack.init(content:)();
}

uint64_t type metadata accessor for YesNoConfirmationCarPlayView()
{
  result = type metadata singleton initialization cache for YesNoConfirmationCarPlayView;
  if (!type metadata singleton initialization cache for YesNoConfirmationCarPlayView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in YesNoConfirmationCarPlayView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v3 = type metadata accessor for YesNoConfirmationView();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitleView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v27 - v20;
  v22 = *(type metadata accessor for YesNoConfirmationModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  if (v27[2])
  {
    v27[4] = MEMORY[0x277D837D0];
    v27[5] = MEMORY[0x277D63F88];
    SystemTextClarificationTitleView.init(text1:)();
    (*(v11 + 32))(v21, v14, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v11 + 56))(v21, v23, 1, v10);
  outlined init with copy of YesNoConfirmationModel(a1, &v9[*(v3 + 20)], type metadata accessor for YesNoConfirmationModel);
  ActionHandler.init()();
  outlined init with copy of SystemTextClarificationTitleView?(v21, v19);
  outlined init with copy of YesNoConfirmationModel(v9, v7, type metadata accessor for YesNoConfirmationView);
  v24 = v27[0];
  outlined init with copy of SystemTextClarificationTitleView?(v19, v27[0]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSg_05PhoneaB0017YesNoConfirmationG0VtMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSg_05PhoneaB0017YesNoConfirmationG0VtMR);
  outlined init with copy of YesNoConfirmationModel(v7, v24 + *(v25 + 48), type metadata accessor for YesNoConfirmationView);
  outlined destroy of YesNoConfirmationView(v9);
  outlined destroy of SystemTextClarificationTitleView?(v21);
  outlined destroy of YesNoConfirmationView(v7);
  return outlined destroy of SystemTextClarificationTitleView?(v19);
}

uint64_t outlined init with take of YesNoConfirmationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for View.body.getter in conformance YesNoConfirmationCarPlayView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of YesNoConfirmationModel(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationCarPlayView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of YesNoConfirmationModel(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for YesNoConfirmationCarPlayView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SystemTextClarificationTitleView?, YesNoConfirmationView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  return ComponentStack.init(content:)();
}

uint64_t sub_25E5779EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E577A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for YesNoConfirmationCarPlayView()
{
  result = type metadata accessor for YesNoConfirmationModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(type metadata accessor for YesNoConfirmationCarPlayView() - 8);
  v13 = *(v1 + 64);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for YesNoConfirmationModel();
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v4(v2 + v5[6], v3);
  v8(v2 + v5[7], v7);
  v9 = v5[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  (*(*(v10 - 8) + 8))(v2 + v9, v10);
  v11 = *(v2 + v5[9] + 8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in YesNoConfirmationCarPlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YesNoConfirmationCarPlayView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in YesNoConfirmationCarPlayView.body.getter(v4, a1);
}

uint64_t outlined init with copy of SystemTextClarificationTitleView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of YesNoConfirmationView(uint64_t a1)
{
  v2 = type metadata accessor for YesNoConfirmationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of SystemTextClarificationTitleView?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t Symbols.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x70752E776F727261;
  v2 = 0x69662E6F65646976;
  if (a1 != 6)
  {
    v2 = 0x6B72616D78;
  }

  v3 = 0xD000000000000019;
  if (a1 != 4)
  {
    v3 = 0x69662E656E6F6870;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x7269632E6F666E69;
  if (a1 != 2)
  {
    v4 = 0x662E656C63726963;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t static RFImage.sfSymbol(_:)()
{
  static RFImage.symbol(_:dark:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Symbols(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Symbols.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Symbols.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbols()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Symbols.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Symbols()
{
  Symbols.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbols()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Symbols.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Symbols@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Symbols.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Symbols@<X0>(unint64_t *a1@<X8>)
{
  result = Symbols.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized Symbols.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Symbols.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Symbols and conformance Symbols()
{
  result = lazy protocol witness table cache variable for type Symbols and conformance Symbols;
  if (!lazy protocol witness table cache variable for type Symbols and conformance Symbols)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbols and conformance Symbols);
  }

  return result;
}

uint64_t type metadata accessor for ShowCallHistoryListView()
{
  result = type metadata singleton initialization cache for ShowCallHistoryListView;
  if (!type metadata singleton initialization cache for ShowCallHistoryListView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowCallHistoryListView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowCallHistoryListView();
  v6 = a2 + *(v5 + 20);
  ActionHandler.init()();
  return outlined init with take of SearchCallHistoryModel(a1, a2 + *(v5 + 24), type metadata accessor for SearchCallHistoryModel);
}

uint64_t ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnevenRoundedRectangle();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v25 - v14);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E26lastComponentBottomSpacingyQrAL0k5StacklM0OFQOyAL0kN0VyAIyAkLE10separators_10isOverrideQr0I3Kit14SeparatorStyleO_SbtFQOyAkLE09componentM03top6bottomQr12CoreGraphics7CGFloatV_A0_tFQOy05PhoneiB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_A1_21SingleCallRecordModelV7elementtGSiAkLEAwxYQrA0__A0_tFQOyAA15ModifiedContentVyAkLEAR_ASQrAV_SbtFQOyA1_025ShowCallHistorySingleItemD0V_Qo_A1_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A1_04ListlD0VSgtGGMd, "<_");
  closure #1 in ShowCallHistoryListView.body.getter(v2, (a1 + *(v16 + 44)));
  LOBYTE(v2) = static Edge.Set.all.getter();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMR) + 36)) = v2;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0120], v4);
  (*(v5 + 16))(v15 + *(v9 + 20), v8, v4);
  v17 = MEMORY[0x25F8B6F50](0.0, 0.0, 20.0, 20.0);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v5 + 8))(v8, v4);
  *v15 = v17;
  *(v15 + 1) = v19;
  *(v15 + 2) = v21;
  *(v15 + 3) = v23;
  outlined init with copy of SearchCallHistoryModel(v15, v13, MEMORY[0x277CE0548]);
  LODWORD(v4) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR) + 36);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, MEMORY[0x277CE0548]);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  return outlined destroy of UnevenRoundedRectangle(v15, MEMORY[0x277CE0548]);
}

uint64_t closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a1;
  v72 = a2;
  v3 = type metadata accessor for ListBottomView();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v61 - v11;
  v64 = type metadata accessor for ComponentStackBottomSpacing();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v64);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShowCallHistoryListView();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMR);
  v20 = *(v63 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v63);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo_MR);
  v66 = *(v24 - 8);
  v67 = v24;
  v25 = *(v66 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v65 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v61 - v28;
  outlined init with copy of SearchCallHistoryModel(a1, &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistoryListView);
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = swift_allocObject();
  outlined init with take of SearchCallHistoryModel(&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for ShowCallHistoryListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ForEach<[(offset: Int, element: SingleCallRecordModel)], Int, <<opaque return type of View.componentSpacing(top:bottom:)>>.0>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMR);
  v32 = v29;
  ComponentStack.init(content:)();
  v33 = v64;
  (*(v12 + 104))(v15, *MEMORY[0x277D63EC8], v64);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ForEach<[(offset: Int, element: SingleCallRecordModel)], Int, <<opaque return type of View.componentSpacing(top:bottom:)>>.0>)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMR);
  v34 = v63;
  View.lastComponentBottomSpacing(_:)();
  (*(v12 + 8))(v15, v33);
  (*(v20 + 8))(v23, v34);
  v35 = v62 + *(v17 + 32);
  v36 = type metadata accessor for SearchCallHistoryModel();
  v37 = v36[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  if (v73 == 1)
  {
    v38 = v36[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    Loggable.wrappedValue.getter();
    v39 = v73;
    v40 = v74;
    v41 = v36[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    v42 = CodableAceObject.wrappedValue.getter();
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    v43 = EnvironmentObject.init()();
    v44 = v61;
    *v61 = v43;
    *(v44 + 8) = v45;
    v46 = v69;
    v47 = v44 + *(v69 + 20);
    ActionHandler.init()();
    v48 = (v44 + *(v46 + 24));
    *v48 = v39;
    v48[1] = v40;
    *(v44 + *(v46 + 28)) = v42;
    v49 = v68;
    outlined init with take of SearchCallHistoryModel(v44, v68, type metadata accessor for ListBottomView);
    v50 = 0;
    v51 = v46;
  }

  else
  {
    v50 = 1;
    v49 = v68;
    v51 = v69;
  }

  (*(v70 + 56))(v49, v50, 1, v51);
  v53 = v65;
  v52 = v66;
  v54 = *(v66 + 16);
  v55 = v67;
  v54(v65, v32, v67);
  v56 = v71;
  outlined init with copy of ListBottomView?(v49, v71);
  v57 = v72;
  v54(v72, v53, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo__AW0xgC0VSgtMd, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo__AW0xgC0VSgtMR);
  outlined init with copy of ListBottomView?(v56, &v57[*(v58 + 48)]);
  outlined destroy of ListBottomView?(v49);
  v59 = *(v52 + 8);
  v59(v32, v55);
  outlined destroy of ListBottomView?(v56);
  return (v59)(v53, v55);
}

uint64_t closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v63 = a2;
  v3 = type metadata accessor for ShowCallHistoryListView();
  v4 = v3 - 8;
  v58 = *(v3 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB021SingleCallRecordModelV7elementtGSiAA4ViewP0gB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA15ModifiedContentVyAkLE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE04Showi7Historyh4ItemM0V_Qo_AE29CarPlayDisambiguationListItemVG_Qo_GMd, &_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB021SingleCallRecordModelV7elementtGSiAA4ViewP0gB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA15ModifiedContentVyAkLE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE04Showi7Historyh4ItemM0V_Qo_AE29CarPlayDisambiguationListItemVG_Qo_GMR);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v50 - v10;
  v52 = type metadata accessor for SeparatorStyle();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v52);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_MR);
  v15 = *(v51 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v51);
  v18 = v50 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_MR);
  v65 = *(v59 - 8);
  v19 = v65[8];
  v20 = MEMORY[0x28223BE20](v59);
  v56 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = v50 - v22;
  v50[1] = a1 + *(v4 + 32);
  v23 = type metadata accessor for SearchCallHistoryModel();
  v24 = *(v23 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v25 = lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView();
  View.componentSpacing(top:bottom:)();

  v26 = v52;
  (*(v11 + 104))(v14, *MEMORY[0x277D62F28], v52);
  v68 = &type metadata for ListHeaderView;
  v69 = v25;
  v54 = MEMORY[0x277D63988];
  swift_getOpaqueTypeConformance2();
  v27 = v51;
  View.separators(_:isOverride:)();
  (*(v11 + 8))(v14, v26);
  (*(v15 + 8))(v18, v27);
  v28 = *(v23 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  Loggable.wrappedValue.getter();
  v29 = specialized _copySequenceToContiguousArray<A>(_:)(v68);

  v67 = v29;
  swift_getKeyPath();
  v30 = v55;
  outlined init with copy of SearchCallHistoryModel(v53, v55, type metadata accessor for ShowCallHistoryListView);
  v31 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v32 = swift_allocObject();
  outlined init with take of SearchCallHistoryModel(v30, v32 + v31, type metadata accessor for ShowCallHistoryListView);
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter;
  *(v33 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_AR025CarPlayDisambiguationListY0VG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_AR025CarPlayDisambiguationListY0VG_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SingleCallRecordModel)] and conformance [A], &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  v35 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
  v68 = v34;
  v69 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v66;
  ForEach<>.init(_:id:content:)();
  v37 = v65[2];
  v38 = v56;
  v39 = v59;
  v37(v56, v64, v59);
  v40 = v60;
  v41 = v61;
  v42 = *(v61 + 16);
  v43 = v36;
  v44 = v62;
  v42(v60, v43, v62);
  v45 = v63;
  v37(v63, v38, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AP21SingleCallRecordModelV7elementtGSiAcDEAjkLQrAO_AOtFQOyAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP04Showy7Historyx4ItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVG_Qo_GtMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AP21SingleCallRecordModelV7elementtGSiAcDEAjkLQrAO_AOtFQOyAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP04Showy7Historyx4ItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVG_Qo_GtMR);
  v42(&v45[*(v46 + 48)], v40, v44);
  v47 = *(v41 + 8);
  v47(v66, v44);
  v48 = v65[1];
  v48(v64, v39);
  v47(v40, v44);
  return (v48)(v38, v39);
}

uint64_t closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v48 = a3;
  v59 = a1;
  v60 = a4;
  v6 = type metadata accessor for SeparatorStyle();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ShowCallHistorySingleItemView();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_MR);
  v53 = *(v55 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = &v46[-v19];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  v20 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v46[-v21];
  outlined init with copy of SearchCallHistoryModel(a2, v17 + v14[8], type metadata accessor for SingleCallRecordModel);
  v22 = v4 + *(type metadata accessor for ShowCallHistoryListView() + 24);
  LODWORD(v4) = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  v47 = v61;
  v23 = type metadata accessor for Context();
  v49 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v50 = v23;
  *v17 = EnvironmentObject.init()();
  v17[1] = v24;
  v25 = v17 + v14[5];
  ActionHandler.init()();
  v26 = v14[6];
  v61 = 0x4041800000000000;
  v27 = *MEMORY[0x277CE0A60];
  v28 = *(v10 + 104);
  v28(v13, v27, v9);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v29 = v14[7];
  v61 = 0x4041800000000000;
  v28(v13, v27, v9);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v30 = v48;
  *(v17 + v14[9]) = v47;
  if (*v30)
  {
    v31 = *v30;
    dispatch thunk of Context.currentIdiom.getter();
    v32 = VRXIdiom.isCarPlay.getter();

    v34 = v56;
    v33 = v57;
    v35 = MEMORY[0x277D62F38];
    if ((v32 & 1) == 0)
    {
      v35 = MEMORY[0x277D62F28];
    }

    v36 = v58;
    (*(v57 + 104))(v56, *v35, v58);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ShowCallHistorySingleItemView and conformance ShowCallHistorySingleItemView, type metadata accessor for ShowCallHistorySingleItemView);
    v37 = v51;
    View.separators(_:isOverride:)();
    (*(v33 + 8))(v34, v36);
    outlined destroy of UnevenRoundedRectangle(v17, type metadata accessor for ShowCallHistorySingleItemView);
    v38 = EnvironmentObject.init()();
    v40 = v39;
    v41 = v52;
    (*(v53 + 32))(v52, v37, v55);
    v42 = v59 == 0;
    v43 = v41 + *(v54 + 36);
    *v43 = v38;
    *(v43 + 8) = v40;
    *(v43 + 16) = v42;
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
    View.componentSpacing(top:bottom:)();
    return sub_25E57A900(v41);
  }

  else
  {
    v45 = *(v30 + 8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E579C58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ActionHandler();
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
      v14 = type metadata accessor for SearchCallHistoryModel();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E579D9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
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
      v13 = type metadata accessor for SearchCallHistoryModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowCallHistoryListView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle> and conformance _ContainerRoundedRectangularShapeModifier<A>, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMd, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E26lastComponentBottomSpacingyQrAH0h5StackiJ0OFQOyAH0hK0VyAEyAgHE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAgHE09componentJ03top6bottomQr12CoreGraphics7CGFloatV_AXtFQOy05PhonefB0010ListHeaderE0V_Qo__Qo__AA7ForEachVySaySi6offset_AY21SingleCallRecordModelV7elementtGSiAgHEAstUQrAX_AXtFQOyAA15ModifiedContentVyAgHEAN_AOQrAR_SbtFQOyAY025ShowCallHistorySingleItemE0V_Qo_AY021CarPlayDisambiguationY4ItemVG_Qo_GtGG_Qo__AY0yiE0VSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E26lastComponentBottomSpacingyQrAH0h5StackiJ0OFQOyAH0hK0VyAEyAgHE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAgHE09componentJ03top6bottomQr12CoreGraphics7CGFloatV_AXtFQOy05PhonefB0010ListHeaderE0V_Qo__Qo__AA7ForEachVySaySi6offset_AY21SingleCallRecordModelV7elementtGSiAgHEAstUQrAX_AXtFQOyAA15ModifiedContentVyAgHEAN_AOQrAR_SbtFQOyAY025ShowCallHistorySingleItemE0V_Qo_AY021CarPlayDisambiguationY4ItemVG_Qo_GtGG_Qo__AY0yiE0VSgtGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowCallHistoryListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in ShowCallHistoryListView.body.getter(v4, a1);
}

uint64_t outlined init with copy of ListBottomView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ListBottomView?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SearchCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView()
{
  result = lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView;
  if (!lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ShowCallHistoryListView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = *(v6 + 1);

  v8 = type metadata accessor for SearchCallHistoryModel();
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(&v6[v9], v10);
  v12 = v8[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
  v11(&v6[v8[7]], v10);
  v11(&v6[v8[8]], v10);
  v14 = v8[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v16 = *(*(v15 - 8) + 8);
  v16(&v6[v14], v15);
  v16(&v6[v8[10]], v15);
  v17 = v8[11];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v18 - 8) + 8))(&v6[v17], v18);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ShowCallHistoryListView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter(a1, a2, v8, a3);
}

uint64_t sub_25E57A610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed SingleCallRecordModel) -> (@out <<opaque return type of View.componentSpacing(top:bottom:)>>.0)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
    type metadata accessor for ShowCallHistorySingleItemView();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ShowCallHistorySingleItemView and conformance ShowCallHistorySingleItemView, type metadata accessor for ShowCallHistorySingleItemView);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
    type metadata accessor for ShowPlayVoicemailSingleItemView();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ShowPlayVoicemailSingleItemView and conformance ShowPlayVoicemailSingleItemView, type metadata accessor for ShowPlayVoicemailSingleItemView);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t outlined destroy of UnevenRoundedRectangle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25E57A900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShowCallHistorySingleItemView.init(model:shouldReactOpenContact:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v18 = a1;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a3 = EnvironmentObject.init()();
  a3[1] = v9;
  v10 = type metadata accessor for ShowCallHistorySingleItemView();
  v11 = a3 + v10[5];
  ActionHandler.init()();
  v12 = v10[6];
  v20 = 0x4041800000000000;
  v13 = *MEMORY[0x277CE0A60];
  v14 = *(v5 + 104);
  v14(v8, v13, v4);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v15 = v10[7];
  v20 = 0x4041800000000000;
  v14(v8, v13, v4);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  result = outlined init with take of SingleCallRecordModel(v18, a3 + v10[8], type metadata accessor for SingleCallRecordModel);
  *(a3 + v10[9]) = v19;
  return result;
}

uint64_t type metadata accessor for ShowCallHistorySingleItemView()
{
  result = type metadata singleton initialization cache for ShowCallHistorySingleItemView;
  if (!type metadata singleton initialization cache for ShowCallHistorySingleItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ShowCallHistorySingleItemView.circleWidth.getter()
{
  v0 = *(type metadata accessor for ShowCallHistorySingleItemView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

uint64_t property wrapper backing initializer of ShowCallHistorySingleItemView.circleWidth(double a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  *&v7[1] = a1;
  (*(v5 + 104))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0A60]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

double ShowCallHistorySingleItemView.circleHeight.getter()
{
  v0 = *(type metadata accessor for ShowCallHistorySingleItemView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

uint64_t ShowCallHistorySingleItemView.body.getter()
{
  v1 = type metadata accessor for ShowCallHistorySingleItemView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowCallHistorySingleItemView.getSimpleItemRichView()(v8);
  outlined init with copy of SingleCallRecordModel(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistorySingleItemView);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShowCallHistorySingleItemView);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ShowCallHistorySingleItemView.getSimpleItemRichView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR);
  v3 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ShowCallHistorySingleItemView();
  v18 = ShowCallHistorySingleItemView.getAvatarView(contactIds:)(*(v1 + *(v6 + 32) + 80));
  v7 = ShowCallHistorySingleItemView.displayText.getter();
  v8 = MEMORY[0x277D63A58];
  v47 = MEMORY[0x277CE11D0];
  v48 = MEMORY[0x277D63A58];
  v45 = 0;
  v46 = v7;
  v43 = 0u;
  v44 = 0u;
  v9 = static VerticalAlignment.center.getter();
  LOBYTE(v37) = 0;
  closure #1 in ShowCallHistorySingleItemView.callDetailView.getter(v2, &v49);
  LOBYTE(v34) = BYTE8(v51);
  *&v40 = v9;
  *(&v40 + 1) = 0x4010000000000000;
  LOBYTE(v41[0]) = v37;
  *(v41 + 8) = v49;
  *(&v41[1] + 8) = v50;
  *(&v41[2] + 1) = v51;
  LOBYTE(v42) = BYTE8(v51);
  *(&v42 + 1) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR);
  v10 = View.eraseToAnyView()();
  v51 = v41[1];
  v52 = v41[2];
  v53 = v42;
  v49 = v40;
  v50 = v41[0];
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR);
  *&v41[1] = v8;
  v11 = MEMORY[0x277CE11D0];
  *(&v41[0] + 1) = MEMORY[0x277CE11D0];
  *&v40 = v10;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAMyAA6ZStackVyAIyAMyAA06_ShapeD0VyAA6CircleVAA012HierarchicalR5StyleVGAA06_FrameG0VG_AMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitZ8ModifierVyAA011ZIndexTraitY0VGG_Qo_AA08_PaddingG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAMyAA6ZStackVyAIyAMyAA06_ShapeD0VyAA6CircleVAA012HierarchicalR5StyleVGAA06_FrameG0VG_AMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitZ8ModifierVyAA011ZIndexTraitY0VGG_Qo_AA08_PaddingG0VGtGGMR);
  closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(v2, &v5[*(v12 + 44)]);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR);
  v13 = View.eraseToAnyView()();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR);
  v38 = v11;
  v39 = v8;
  v36 = 0;
  v37 = v13;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (v18)
  {
    v14 = MEMORY[0x277D63A58];
    v15 = MEMORY[0x277CE11D0];
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v21 = 0;
    v22 = 0;
  }

  v20 = v18;
  v23 = v15;
  v24 = v14;
  return SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
}

uint64_t closure #1 in ShowCallHistorySingleItemView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v80 - v12;
  v13 = type metadata accessor for ShowCallHistorySingleItemView();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v80 - v17;
  v18 = type metadata accessor for ActionProperty();
  v87 = *(v18 - 8);
  v88 = v18;
  v19 = *(v87 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v25 = *(a1 + *(v13 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25E59F720;
  v27 = type metadata accessor for Command();
  v28 = MEMORY[0x277D63778];
  *(v26 + 56) = v27;
  *(v26 + 64) = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  v86 = v13;
  v30 = *(v13 + 32);
  v31 = a1;
  v32 = a1 + v30;
  v33 = type metadata accessor for SingleCallRecordModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (v25 == 1)
  {
    v34 = v32 + *(v33 + 48);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    v35 = MEMORY[0x277D63750];
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, *v35, v27);
    ActionProperty.init(_:)();
    v36 = v24;
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.phoneSnippetUI);
    v38 = v31;
    v39 = v80;
    outlined init with copy of SingleCallRecordModel(v31, v80, type metadata accessor for ShowCallHistorySingleItemView);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v89 = v43;
      *v42 = 136315138;
      v44 = v86;
      v45 = v39 + *(v86 + 32);
      v46 = *(v45 + 16);
      v47 = *(v45 + 24);

      outlined destroy of ShowCallHistorySingleItemView(v39);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v89);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_25E523000, v40, v41, "#ShowCallHistorySingleItemView tapped, performing open call record direct action for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F8B8670](v43, -1, -1);
      MEMORY[0x25F8B8670](v42, -1, -1);
    }

    else
    {

      outlined destroy of ShowCallHistorySingleItemView(v39);
      v44 = v86;
    }

    v64 = v82;
    v65 = v38 + *(v44 + 20);
    ActionHandler.wrappedValue.getter();
    v66 = type metadata accessor for StandardActionHandler();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v64, 1, v66) == 1)
    {
      (*(v87 + 8))(v36, v88);
      return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v64, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    v71 = v87;
    v70 = v88;
    v72 = v84;
    (*(v87 + 16))(v84, v36, v88);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = type metadata accessor for InteractionType();
    v74 = v85;
    (*(*(v73 - 8) + 56))(v85, 1, 1, v73);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v74, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v72, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v71 + 8))(v36, v70);
  }

  else
  {
    v49 = v32 + *(v33 + 44);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    v50 = MEMORY[0x277D63750];
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, *v50, v27);
    ActionProperty.init(_:)();
    v51 = v22;
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.phoneSnippetUI);
    v53 = v31;
    v54 = v81;
    outlined init with copy of SingleCallRecordModel(v31, v81, type metadata accessor for ShowCallHistorySingleItemView);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v89 = v58;
      *v57 = 136315138;
      v59 = v86;
      v60 = v54 + *(v86 + 32);
      v61 = *(v60 + 16);
      v62 = *(v60 + 24);

      outlined destroy of ShowCallHistorySingleItemView(v54);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v89);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_25E523000, v55, v56, "#ShowCallHistorySingleItemView tapped, performing call direct action for %s on current device", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x25F8B8670](v58, -1, -1);
      MEMORY[0x25F8B8670](v57, -1, -1);
    }

    else
    {

      outlined destroy of ShowCallHistorySingleItemView(v54);
      v59 = v86;
    }

    v64 = v83;
    v68 = v53 + *(v59 + 20);
    ActionHandler.wrappedValue.getter();
    v66 = type metadata accessor for StandardActionHandler();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v64, 1, v66) == 1)
    {
      (*(v87 + 8))(v51, v88);
      return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v64, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    v76 = v87;
    v75 = v88;
    v77 = v84;
    (*(v87 + 16))(v84, v51, v88);
    (*(v76 + 56))(v77, 0, 1, v75);
    v78 = type metadata accessor for InteractionType();
    v79 = v85;
    (*(*(v78 - 8) + 56))(v85, 1, 1, v78);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v79, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v77, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v76 + 8))(v51, v75);
  }

  return (*(v67 + 8))(v64, v66);
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleCallRecordModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ShowCallHistorySingleItemView.getAvatarView(contactIds:)(uint64_t a1)
{
  v23 = a1;
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v21 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v22 = type metadata accessor for ImageElementView();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D62A98], v1);
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
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v2 + 8))(v5, v21);
  ImageElementView.init(_:)();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70]);
  v17 = v22;
  v18 = View.eraseToAnyView()();
  (*(v8 + 8))(v11, v17);
  return v18;
}

uint64_t ShowCallHistorySingleItemView.displayText.getter()
{
  v1 = (v0 + *(type metadata accessor for ShowCallHistorySingleItemView() + 32));
  v2 = v1[3];
  *&v28[0] = v1[2];
  *(&v28[0] + 1) = v2;
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v8 = v1[9];
  if (v8 && (v1[8] == 0x44455353494DLL ? (v9 = v8 == 0xE600000000000000) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    static Color.red.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v10 = Text.foregroundStyle<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  outlined consume of Text.Storage(v3, v5, v7 & 1);

  v17 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v14 & 1;
  v30 = 0;
  *&v24 = v10;
  *(&v24 + 1) = v12;
  LOBYTE(v25) = v14 & 1;
  *(&v25 + 1) = v16;
  LOBYTE(v26) = v17;
  *(&v26 + 1) = v18;
  *v27 = v19;
  *&v27[8] = v20;
  *&v27[16] = v21;
  v27[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v22 = View.eraseToAnyView()();
  v29[0] = *v27;
  *(v29 + 9) = *&v27[9];
  v28[1] = v25;
  v28[2] = v26;
  v28[0] = v24;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v28, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  return v22;
}

uint64_t closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v63 = a2;
  v3 = type metadata accessor for ShowCallHistorySingleItemView();
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  v7 = *(v6 - 8);
  v61 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v11;
  v12 = a1 + *(v4 + 40);
  v13 = *(v12 + 56);
  *&v77 = *(v12 + 48);
  *(&v77 + 1) = v13;
  lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.subheadline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  static Font.Weight.regular.getter();
  v24 = Text.fontWeight(_:)();
  v26 = v25;
  LOBYTE(v16) = v27;
  outlined consume of Text.Storage(v19, v21, v23 & 1);

  *&v77 = static Color.secondary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v56 = v31;
  v33 = v32;
  outlined consume of Text.Storage(v24, v26, v16 & 1);

  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = v55;
  closure #1 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(v55, &v77);
  v73 = v79;
  v74 = v80;
  v71 = v77;
  v72 = v78;
  v76[2] = v79;
  v76[3] = v80;
  v76[4] = v81;
  v76[1] = v78;
  v75 = v81;
  v76[0] = v77;
  outlined init with copy of TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>(&v71, &v64);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v76, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v65 = v71;
  v66 = v72;
  *&v64 = v34;
  *(&v64 + 1) = v36;
  v70 = 0x3FF0000000000000;
  v38 = v57;
  outlined init with copy of SingleCallRecordModel(v37, v57, type metadata accessor for ShowCallHistorySingleItemView);
  v39 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v40 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(v38, v40 + v39, type metadata accessor for ShowCallHistorySingleItemView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
  v41 = v60;
  View.onTapGesture(count:perform:)();

  v81 = v68;
  v82 = v69;
  v83 = v70;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v77, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
  LOBYTE(v34) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = &v41[*(v61 + 44)];
  *v42 = v34;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v41;
  v48 = v41;
  v49 = v62;
  sub_25E57DBB8(v47, v62);
  v50 = v63;
  *v63 = v28;
  v50[1] = v30;
  LOBYTE(v34) = v56 & 1;
  *(v50 + 16) = v56 & 1;
  v50[3] = v33;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA6ZStackVyAA05TupleF0VyAEyAA06_ShapeF0VyAA6CircleVAA012HierarchicalN5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitwX0VyAA06ZIndexzV0VGG_Qo_AA08_PaddingS0VGtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA6ZStackVyAA05TupleF0VyAEyAA06_ShapeF0VyAA6CircleVAA012HierarchicalN5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitwX0VyAA06ZIndexzV0VGG_Qo_AA08_PaddingS0VGtMR);
  sub_25E57DBB8(v49, v51 + *(v52 + 48));
  outlined copy of Text.Storage(v28, v30, v34);

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v48, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v49, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  outlined consume of Text.Storage(v28, v30, v34);
}

__n128 closure #1 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HierarchicalShapeStyle.quaternary.getter();
  v5 = type metadata accessor for ShowCallHistorySingleItemView();
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  v7 = a1 + v5[7];
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v12[18] = v14;
  *&v12[34] = v15;
  *&v12[2] = v13;
  *(a1 + v5[8] + 88);
  v8 = Image.init(systemName:)();
  v9 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  *(a2 + 6) = *v12;
  *a2 = v4;
  *(a2 + 4) = 256;
  *(a2 + 22) = *&v12[16];
  result = *&v12[32];
  *(a2 + 38) = *&v12[32];
  *(a2 + 54) = HIWORD(v15);
  *(a2 + 56) = v8;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v9;
  return result;
}

uint64_t closure #2 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v49 - v10;
  v11 = type metadata accessor for ShowCallHistorySingleItemView();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionProperty();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25E59F720;
  v20 = type metadata accessor for Command();
  v21 = MEMORY[0x277D63778];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  v23 = a1;
  v24 = a1 + *(v11 + 32);
  v25 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v20);
  ActionProperty.init(_:)();
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.phoneSnippetUI);
  outlined init with copy of SingleCallRecordModel(v23, v14, type metadata accessor for ShowCallHistorySingleItemView);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v30;
    *v29 = 136315138;
    v31 = &v14[*(v11 + 32)];
    v32 = v14;
    v33 = *(v31 + 2);
    v34 = *(v31 + 3);
    v50 = v11;

    outlined destroy of ShowCallHistorySingleItemView(v32);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v56);
    v11 = v50;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_25E523000, v27, v28, "#ShowCallHistorySingleItemView tapped, performing call direct action for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F8B8670](v30, -1, -1);
    MEMORY[0x25F8B8670](v29, -1, -1);
  }

  else
  {

    outlined destroy of ShowCallHistorySingleItemView(v14);
  }

  v36 = v23 + *(v11 + 20);
  v37 = v55;
  ActionHandler.wrappedValue.getter();
  v38 = type metadata accessor for StandardActionHandler();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    (*(v53 + 8))(v18, v54);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v55, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v41 = v53;
    v42 = v51;
    v43 = v18;
    v44 = v18;
    v45 = v54;
    (*(v53 + 16))(v51, v43, v54);
    (*(v41 + 56))(v42, 0, 1, v45);
    v46 = type metadata accessor for InteractionType();
    v47 = v52;
    (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
    v48 = v55;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v47, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v42, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v41 + 8))(v44, v45);
    return (*(v39 + 8))(v48, v38);
  }
}

uint64_t closure #1 in ShowCallHistorySingleItemView.callDetailView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ShowCallHistorySingleItemView() + 32));
  v4 = v3[9];
  if (v4 && (v3[8] == 0x474E494F4754554FLL ? (v5 = v4 == 0xE800000000000000) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v6 = Image.init(systemName:)();
    v7 = static Color.gray.getter();
    KeyPath = swift_getKeyPath();
    v24 = v6;

    v22 = KeyPath;

    v23 = v7;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
  }

  v25 = v3[4];
  v26 = v3[5];
  lazy protocol witness table accessor for type String and conformance String();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Color.gray.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined consume of Text.Storage(v9, v11, v13 & 1);

  outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v24);
  v18 &= 1u;
  outlined copy of Text.Storage(v14, v16, v18);

  outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v24);
  *a2 = v24;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20;
  outlined consume of Text.Storage(v14, v16, v18);

  return outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v24);
}

uint64_t protocol witness for View.body.getter in conformance ShowCallHistorySingleItemView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowCallHistorySingleItemView.getSimpleItemRichView()(v8);
  outlined init with copy of SingleCallRecordModel(v1, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistorySingleItemView);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShowCallHistorySingleItemView);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25E57D2C8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = type metadata accessor for ActionHandler();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for SingleCallRecordModel();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_25E57D460(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for SingleCallRecordModel();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for ShowCallHistorySingleItemView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SingleCallRecordModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>()
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t sub_25E57D6F0()
{
  type metadata accessor for SimpleItemRichView();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined destroy of ShowCallHistorySingleItemView(uint64_t a1)
{
  v2 = type metadata accessor for ShowCallHistorySingleItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for ShowCallHistorySingleItemView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v8(v3 + v1[9], v7);
  v9 = v3 + v1[10];
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  v12 = *(v9 + 5);

  v13 = *(v9 + 7);

  v14 = *(v9 + 9);

  v15 = *(v9 + 10);

  v16 = type metadata accessor for SingleCallRecordModel();
  v17 = *(v16 + 44);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v19 = *(*(v18 - 8) + 8);
  v19(&v9[v17], v18);
  v19(&v9[*(v16 + 48)], v18);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ShowCallHistorySingleItemView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShowCallHistorySingleItemView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E57DBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ShowPlayVoicemailListView()
{
  result = type metadata singleton initialization cache for ShowPlayVoicemailListView;
  if (!type metadata singleton initialization cache for ShowPlayVoicemailListView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowPlayVoicemailListView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowPlayVoicemailListView();
  v6 = a2 + *(v5 + 20);
  ActionHandler.init()();
  return outlined init with take of PlayVoicemailModel(a1, a2 + *(v5 + 24), type metadata accessor for PlayVoicemailModel);
}

uint64_t ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnevenRoundedRectangle();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v25 - v14);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07SnippetB014ComponentStackVyAIyAA0D0PALE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyApLE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A_tFQOy05PhonekB0010ListHeaderD0V_Qo__Qo__ApLE04lastl6BottomU0yQrAL0lm6BottomU0OFQOyAA7ForEachVySaySi6offset_A0_20SingleVoicemailModelV7elementtGSiAKyApLEAQ_ARQrAU_SbtFQOyA0_027ShowPlayVoicemailSingleItemD0V_Qo_A0_29CarPlayDisambiguationListItemVGG_Qo_tGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGG_A0_010ListBottomD0VtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07SnippetB014ComponentStackVyAIyAA0D0PALE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyApLE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A_tFQOy05PhonekB0010ListHeaderD0V_Qo__Qo__ApLE04lastl6BottomU0yQrAL0lm6BottomU0OFQOyAA7ForEachVySaySi6offset_A0_20SingleVoicemailModelV7elementtGSiAKyApLEAQ_ARQrAU_SbtFQOyA0_027ShowPlayVoicemailSingleItemD0V_Qo_A0_29CarPlayDisambiguationListItemVGG_Qo_tGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGG_A0_010ListBottomD0VtGGMR);
  closure #1 in ShowPlayVoicemailListView.body.getter(v2, a1 + *(v16 + 44));
  LOBYTE(v2) = static Edge.Set.all.getter();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMR) + 36)) = v2;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0120], v4);
  (*(v5 + 16))(v15 + *(v9 + 20), v8, v4);
  v17 = MEMORY[0x25F8B6F50](0.0, 0.0, 20.0, 20.0);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v5 + 8))(v8, v4);
  *v15 = v17;
  *(v15 + 1) = v19;
  *(v15 + 2) = v21;
  *(v15 + 3) = v23;
  outlined init with copy of PlayVoicemailModel(v15, v13, MEMORY[0x277CE0548]);
  LODWORD(v4) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR) + 36);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, MEMORY[0x277CE0548]);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  return _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v15, MEMORY[0x277CE0548]);
}

uint64_t closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for ListBottomView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v38 - v8);
  v10 = type metadata accessor for ShowPlayVoicemailListView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v39 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  outlined init with copy of PlayVoicemailModel(a1, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailListView);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  outlined init with take of PlayVoicemailModel(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ShowPlayVoicemailListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMR);
  ComponentStack.init(content:)();
  v20[*(v15 + 44)] = static Edge.Set.all.getter();
  v23 = a1 + *(v11 + 32);
  v24 = type metadata accessor for PlayVoicemailModel();
  v25 = *(v24 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v26 = v42;
  v27 = v43;
  v28 = *(v24 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v29 = CodableAceObject.wrappedValue.getter();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v9 = EnvironmentObject.init()();
  v9[1] = v30;
  v31 = v9 + v4[7];
  ActionHandler.init()();
  v32 = (v9 + v4[8]);
  *v32 = v26;
  v32[1] = v27;
  *(v9 + v4[9]) = v29;
  v33 = v39;
  sub_25E57F710(v20, v39);
  v34 = v40;
  outlined init with copy of PlayVoicemailModel(v9, v40, type metadata accessor for ListBottomView);
  v35 = v41;
  sub_25E57F710(v33, v41);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGG_AV0x6BottomI0VtMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGG_AV0x6BottomI0VtMR);
  outlined init with copy of PlayVoicemailModel(v34, v35 + *(v36 + 48), type metadata accessor for ListBottomView);
  _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v9, type metadata accessor for ListBottomView);
  sub_25E57F780(v20);
  _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v34, type metadata accessor for ListBottomView);
  return sub_25E57F780(v33);
}

uint64_t closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a1;
  v75 = a2;
  v3 = type metadata accessor for ComponentStackBottomSpacing();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShowPlayVoicemailListView();
  v7 = v6 - 8;
  v64 = *(v6 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAA4ViewP0gB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE08ShowPlayih4ItemN0V_Qo_AE03Carv18DisambiguationListW0VGGMd, &_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAA4ViewP0gB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE08ShowPlayih4ItemN0V_Qo_AE03Carv18DisambiguationListW0VGGMR);
  v71 = *(v69 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = v57 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAA7ForEachVySaySi6offset_05PhonedB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAK08ShowPlayon4ItemC0V_Qo_AK29CarPlayDisambiguationListItemVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAA7ForEachVySaySi6offset_05PhonedB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAK08ShowPlayon4ItemC0V_Qo_AK29CarPlayDisambiguationListItemVGG_Qo_MR);
  v68 = *(v70 - 8);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x28223BE20](v70);
  v67 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v57 - v14;
  v59 = type metadata accessor for SeparatorStyle();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v59);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_MR);
  v19 = *(v58 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v58);
  v22 = v57 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_MR);
  v78 = *(v65 - 8);
  v23 = v78[8];
  v24 = MEMORY[0x28223BE20](v65);
  v62 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v76 = v57 - v26;
  v57[1] = a1 + *(v7 + 32);
  v27 = type metadata accessor for PlayVoicemailModel();
  v28 = *(v27 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v29 = lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView();
  View.componentSpacing(top:bottom:)();

  v30 = v59;
  (*(v15 + 104))(v18, *MEMORY[0x277D62F28], v59);
  v79 = &type metadata for ListHeaderView;
  v80 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v58;
  View.separators(_:isOverride:)();
  (*(v15 + 8))(v18, v30);
  (*(v19 + 8))(v22, v31);
  v32 = *(v27 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  Loggable.wrappedValue.getter();
  v33 = specialized _copySequenceToContiguousArray<A>(_:)(v79);

  v79 = v33;
  swift_getKeyPath();
  v34 = v61;
  outlined init with copy of PlayVoicemailModel(v60, v61, type metadata accessor for ShowPlayVoicemailListView);
  v35 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v36 = swift_allocObject();
  outlined init with take of PlayVoicemailModel(v34, v36 + v35, type metadata accessor for ShowPlayVoicemailListView);
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter;
  *(v37 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SingleVoicemailModel)] and conformance [A], &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
  v38 = v66;
  ForEach<>.init(_:id:content:)();
  v40 = v72;
  v39 = v73;
  v41 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x277D63EC8], v74);
  lazy protocol witness table accessor for type ForEach<[(offset: Int, element: SingleVoicemailModel)], Int, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>> and conformance <> ForEach<A, B, C>();
  v42 = v77;
  v43 = v69;
  View.lastComponentBottomSpacing(_:)();
  (*(v39 + 8))(v40, v41);
  (*(v71 + 8))(v38, v43);
  v44 = v78[2];
  v45 = v62;
  v46 = v65;
  v44(v62, v76, v65);
  v47 = v67;
  v48 = v68;
  v49 = *(v68 + 16);
  v50 = v42;
  v51 = v70;
  v49(v67, v50, v70);
  v52 = v75;
  v44(v75, v45, v46);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AcDE019lastComponentBottomL0yQrAD0v5StackwL0OFQOyAA7ForEachVySaySi6offset_AP20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP027ShowPlayVoicemailSingleItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVGG_Qo_tMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AcDE019lastComponentBottomL0yQrAD0v5StackwL0OFQOyAA7ForEachVySaySi6offset_AP20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP027ShowPlayVoicemailSingleItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVGG_Qo_tMR);
  v49(&v52[*(v53 + 48)], v47, v51);
  v54 = *(v48 + 8);
  v54(v77, v51);
  v55 = v78[1];
  v55(v76, v46);
  v54(v47, v51);
  return (v55)(v45, v46);
}

uint64_t closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v35 = a4;
  v33 = type metadata accessor for SeparatorStyle();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0027ShowPlayVoicemailSingleItemC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0027ShowPlayVoicemailSingleItemC0V_Qo_MR);
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v32);
  v17 = &v32 - v16;
  outlined init with copy of PlayVoicemailModel(a2, v13 + *(v10 + 24), type metadata accessor for SingleVoicemailModel);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v13 = EnvironmentObject.init()();
  v13[1] = v18;
  v19 = v13 + *(v10 + 20);
  ActionHandler.init()();
  if (*a3)
  {
    v20 = *a3;
    dispatch thunk of Context.currentIdiom.getter();
    v21 = VRXIdiom.isCarPlay.getter();

    v22 = MEMORY[0x277D62F38];
    if ((v21 & 1) == 0)
    {
      v22 = MEMORY[0x277D62F28];
    }

    v23 = v33;
    (*(v6 + 104))(v9, *v22, v33);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ShowPlayVoicemailSingleItemView and conformance ShowPlayVoicemailSingleItemView, type metadata accessor for ShowPlayVoicemailSingleItemView);
    View.separators(_:isOverride:)();
    (*(v6 + 8))(v9, v23);
    _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v13, type metadata accessor for ShowPlayVoicemailSingleItemView);
    v24 = v34 == 0;
    v25 = EnvironmentObject.init()();
    v27 = v26;
    v28 = v35;
    (*(v14 + 32))(v35, v17, v32);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
    v30 = v28 + *(result + 36);
    *v30 = v25;
    *(v30 + 8) = v27;
    *(v30 + 16) = v24;
  }

  else
  {
    v31 = *(a3 + 8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E57F190(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ActionHandler();
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
      v14 = type metadata accessor for PlayVoicemailModel();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E57F2D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
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
      v13 = type metadata accessor for PlayVoicemailModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowPlayVoicemailListView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlayVoicemailModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle> and conformance _ContainerRoundedRectangularShapeModifier<A>, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMd, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07SnippetB014ComponentStackVyAEyAA0E0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderE0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiAGyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemE0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomE0VtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07SnippetB014ComponentStackVyAEyAA0E0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderE0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiAGyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemE0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomE0VtGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of PlayVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowPlayVoicemailListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter(v4, a1);
}

uint64_t sub_25E57F710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E57F780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
  v2 = *(*(v43 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v38 - v7;
  v9 = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for SingleCallRecordModel() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = v9;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      outlined init with copy of PlayVoicemailModel(v15, v17 + v18, type metadata accessor for SingleCallRecordModel);
      v19 = v8;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v17, v8, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v19, v11, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
  v2 = *(*(v43 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v38 - v7;
  v9 = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for SingleVoicemailModel() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = v9;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      outlined init with copy of PlayVoicemailModel(v15, v17 + v18, type metadata accessor for SingleVoicemailModel);
      v19 = v8;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v17, v8, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v19, v11, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for ShowPlayVoicemailListView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = *(v6 + 1);

  v8 = type metadata accessor for PlayVoicemailModel();
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = v8[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v13 = *(*(v12 - 8) + 8);
  v13(&v6[v11], v12);
  v13(&v6[v8[7]], v12);
  v14 = v8[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v15 - 8) + 8))(&v6[v14], v15);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ShowPlayVoicemailListView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter(a1, a2, v8, a3);
}

uint64_t sub_25E580130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed SingleVoicemailModel) -> (@out ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PlayVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShowPlayVoicemailSingleItemView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  v6 = a2 + *(v5 + 20);
  ActionHandler.init()();
  return outlined init with take of SingleVoicemailModel(a1, a2 + *(v5 + 24), type metadata accessor for SingleVoicemailModel);
}

uint64_t type metadata accessor for ShowPlayVoicemailSingleItemView()
{
  result = type metadata singleton initialization cache for ShowPlayVoicemailSingleItemView;
  if (!type metadata singleton initialization cache for ShowPlayVoicemailSingleItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowPlayVoicemailSingleItemView.body.getter()
{
  v1 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowPlayVoicemailSingleItemView.getSimpleItemRichView()(v8);
  outlined init with copy of SingleVoicemailModel(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailSingleItemView);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of SingleVoicemailModel(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShowPlayVoicemailSingleItemView);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ShowPlayVoicemailSingleItemView.getSimpleItemRichView()@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v35 - v6;
  v8 = (v1 + *(type metadata accessor for ShowPlayVoicemailSingleItemView() + 24));
  v9 = v8[3];
  v42 = v8[2];
  v43 = v9;
  lazy protocol witness table accessor for type String and conformance String();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  LODWORD(v42) = static HierarchicalShapeStyle.primary.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v9) = v18;
  v38 = v19;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  v71 = MEMORY[0x277CE0BD0];
  v72 = MEMORY[0x277D638F0];
  v20 = swift_allocObject();
  v70 = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v9 & 1;
  v21 = v39;
  *(v20 + 40) = v38;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v23 = v8[4];
  v22 = v8[5];
  v24 = v8;
  v65 = MEMORY[0x277D837D0];
  v66 = MEMORY[0x277D63F88];
  v63 = v23;
  v64 = v22;

  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAWyAWyAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA06_FrameG0VGAA08_PaddingG0VG_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAWyAWyAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA06_FrameG0VGAA08_PaddingG0VG_Qo_tGGMR);
  closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter(v21, &v7[*(v25 + 44)]);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR);
  v26 = View.eraseToAnyView()();
  sub_25E582158(v7);
  v27 = MEMORY[0x277CE11D0];
  v28 = MEMORY[0x277D63A58];
  v61 = MEMORY[0x277CE11D0];
  v62 = MEMORY[0x277D63A58];
  v60 = v26;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  if (*(v24 + 80) == 1)
  {
    v29 = ShowPlayVoicemailSingleItemView.readStatusIcon.getter();
  }

  else
  {
    Image.init(systemName:)();
    v31 = v35;
    v30 = v36;
    v32 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x277CE0FE8], v37);
    v33 = Image.resizable(capInsets:resizingMode:)();

    (*(v30 + 8))(v31, v32);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = v33;
    v43 = v73;
    v44 = v74;
    v45 = v75;
    LOBYTE(v46) = v76;
    v47 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v29 = View.eraseToAnyView()();
  }

  v45 = v27;
  v46 = v28;
  v42 = v29;
  return SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
}

uint64_t closure #1 in ShowPlayVoicemailSingleItemView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v49 - v10;
  v11 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionProperty();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25E59F720;
  v20 = type metadata accessor for Command();
  v21 = MEMORY[0x277D63778];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  v23 = a1;
  v24 = a1 + *(v11 + 24);
  v25 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v20);
  ActionProperty.init(_:)();
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.phoneSnippetUI);
  outlined init with copy of SingleVoicemailModel(v23, v14, type metadata accessor for ShowPlayVoicemailSingleItemView);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v30;
    *v29 = 136315138;
    v31 = &v14[*(v11 + 24)];
    v32 = v14;
    v33 = *(v31 + 2);
    v34 = *(v31 + 3);
    v50 = v11;

    outlined destroy of ShowPlayVoicemailSingleItemView(v32);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v56);
    v11 = v50;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_25E523000, v27, v28, "#ShowPlayVoicemailSingleItemView tapped, performing direct action for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F8B8670](v30, -1, -1);
    MEMORY[0x25F8B8670](v29, -1, -1);
  }

  else
  {

    outlined destroy of ShowPlayVoicemailSingleItemView(v14);
  }

  v36 = v23 + *(v11 + 20);
  v37 = v55;
  ActionHandler.wrappedValue.getter();
  v38 = type metadata accessor for StandardActionHandler();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    (*(v53 + 8))(v18, v54);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v55, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v41 = v53;
    v42 = v51;
    v43 = v18;
    v44 = v18;
    v45 = v54;
    (*(v53 + 16))(v51, v43, v54);
    (*(v41 + 56))(v42, 0, 1, v45);
    v46 = type metadata accessor for InteractionType();
    v47 = v52;
    (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
    v48 = v55;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v47, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v42, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v41 + 8))(v44, v45);
    return (*(v39 + 8))(v48, v38);
  }
}

uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ShowPlayVoicemailSingleItemView.readStatusIcon.getter()
{
  v0 = type metadata accessor for Image.ResizingMode();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v1 + 104))(v4, *MEMORY[0x277CE0FE8], v0);
  v5 = Image.resizable(capInsets:resizingMode:)();

  (*(v1 + 8))(v4, v0);
  v6 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11 = v5;
  *(&v11 + 1) = KeyPath;
  *&v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v8 = View.eraseToAnyView()();
  v16[2] = v13;
  v16[3] = v14;
  v17 = v15;
  v16[0] = v11;
  v16[1] = v12;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v16, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  return v8;
}

uint64_t closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingU0VG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingU0VG_Qo_MR);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v34 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-v13];
  v33 = static HorizontalAlignment.trailing.getter();
  LOBYTE(v39[0]) = 1;
  closure #1 in closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter(a1, v36);
  *&v35[7] = v36[0];
  *&v35[23] = v36[1];
  *&v35[39] = v36[2];
  *&v35[55] = v36[3];
  v32 = LOBYTE(v39[0]);
  v15 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  v16 = a1 + *(v15 + 24);
  v17 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v18 = CodableAceObject.wrappedValue.getter();
  v19 = a1 + *(v15 + 20);
  ActionHandler.wrappedValue.getter();
  static ContactInformationImage.getImage(directInvocation:actionHandler:)(v18, v7, v14);

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v7, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v20 = v9[2];
  v21 = v34;
  v20(v34, v14, v8);
  v22 = v33;
  v37[0] = v33;
  v37[1] = 0;
  LOBYTE(v7) = v32;
  v38[0] = v32;
  *&v38[1] = *v35;
  *&v38[17] = *&v35[16];
  *&v38[33] = *&v35[32];
  *&v38[49] = *&v35[48];
  v23 = *&v35[63];
  *&v38[64] = *&v35[63];
  v24 = *v38;
  *a2 = v33;
  *(a2 + 16) = v24;
  v25 = *&v38[16];
  v26 = *&v38[32];
  v27 = *&v38[48];
  *(a2 + 80) = v23;
  *(a2 + 48) = v26;
  *(a2 + 64) = v27;
  *(a2 + 32) = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingX0VG_Qo_tMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingX0VG_Qo_tMR);
  v20((a2 + *(v28 + 48)), v21, v8);
  outlined init with copy of VStack<TupleView<(Text, Text)>>(v37, v39);
  v29 = v9[1];
  v29(v14, v8);
  v29(v21, v8);
  v39[0] = v22;
  v39[1] = 0;
  v40 = v7;
  v42 = *&v35[16];
  v43 = *&v35[32];
  *v44 = *&v35[48];
  *&v44[15] = *&v35[63];
  v41 = *v35;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v39, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
}

uint64_t closure #1 in closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ShowPlayVoicemailSingleItemView() + 24));
  v24 = v3[6];
  v26 = v3[7];
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v21 = v5;
  v22 = v4;
  v20 = v6;
  v23 = v7;
  v25 = v3[8];
  v27 = v3[9];

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Color.gray.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  LOBYTE(v3) = v16;
  v18 = v17;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v3 & 1;
  *(a2 + 56) = v18;
  outlined copy of Text.Storage(v22, v21, v20 & 1);

  outlined copy of Text.Storage(v13, v15, v3 & 1);

  outlined consume of Text.Storage(v13, v15, v3 & 1);

  outlined consume of Text.Storage(v22, v21, v20 & 1);
}

uint64_t protocol witness for View.body.getter in conformance ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowPlayVoicemailSingleItemView.getSimpleItemRichView()(v8);
  outlined init with copy of SingleVoicemailModel(v1, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailSingleItemView);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of SingleVoicemailModel(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShowPlayVoicemailSingleItemView);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25E581BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ActionHandler();
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
      v14 = type metadata accessor for SingleVoicemailModel();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E581D00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
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
      v13 = type metadata accessor for SingleVoicemailModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowPlayVoicemailSingleItemView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SingleVoicemailModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ShowPlayVoicemailSingleItemView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = *(v6 + 1);

  v8 = *(v6 + 3);

  v9 = *(v6 + 5);

  v10 = *(v6 + 7);

  v11 = *(v6 + 9);

  v12 = type metadata accessor for SingleVoicemailModel();
  v13 = *(v12 + 40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v15 = *(*(v14 - 8) + 8);
  v15(&v6[v13], v14);
  v15(&v6[*(v12 + 44)], v14);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ShowPlayVoicemailSingleItemView.body.getter()
{
  v1 = *(type metadata accessor for ShowPlayVoicemailSingleItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ShowPlayVoicemailSingleItemView.body.getter(v2);
}

uint64_t outlined destroy of ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  v2 = type metadata accessor for ShowPlayVoicemailSingleItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E582114()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_25E582158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of VStack<TupleView<(Text, Text)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleCallRecordModel()
{
  result = type metadata singleton initialization cache for SingleCallRecordModel;
  if (!type metadata singleton initialization cache for SingleCallRecordModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleCallRecordModel.directInvocation.getter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SingleCallRecordModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SingleCallRecordModel.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SingleCallRecordModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SingleCallRecordModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleCallRecordModel.currentCallType.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SingleCallRecordModel.currentCallType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SingleCallRecordModel.contactIds.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t property wrapper backing initializer of SingleCallRecordModel.directInvocation()
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t key path getter for SingleCallRecordModel.directInvocation : SingleCallRecordModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleCallRecordModel.directInvocation : SingleCallRecordModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleCallRecordModel() + 44);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleCallRecordModel.directInvocation.setter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleCallRecordModel.directInvocation.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t key path getter for SingleCallRecordModel.openContactDirectInvocation : SingleCallRecordModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleCallRecordModel.openContactDirectInvocation : SingleCallRecordModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleCallRecordModel() + 48);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleCallRecordModel.openContactDirectInvocation.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

void SingleCallRecordModel.init(displayName:displayCallDetail:displayDateTime:currentCallType:contactIds:directInvocation:openContactDirectInvocation:isVideoCall:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  *a9 = 0xD000000000000010;
  *(a9 + 8) = 0x800000025E5A61D0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  v16 = type metadata accessor for SingleCallRecordModel();
  v17 = *(v16 + 44);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v18 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 64) = a7;
  v19 = a9 + *(v16 + 48);
  CodableAceObject.init(wrappedValue:)();

  *(a9 + 88) = a13;
}

unint64_t SingleCallRecordModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65736E6F70736572;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x4479616C70736964;
    }

    if (a1)
    {
      v5 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x436F656469567369;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x43746E6572727563;
    if (a1 != 4)
    {
      v3 = 0x49746361746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SingleCallRecordModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleCallRecordModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[10];
    v26[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + 88);
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = type metadata accessor for SingleCallRecordModel();
    v23 = *(v22 + 44);
    LOBYTE(v27) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v22 + 48);
    LOBYTE(v27) = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

uint64_t SingleCallRecordModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v53);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMR);
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v52 = type metadata accessor for SingleCallRecordModel();
  v14 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  v50 = v13;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v55 = v2;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v45 = v7;
    v46 = v9;
    v19 = v48;
    v20 = v49;
    LOBYTE(v57) = 0;
    v21 = v50;
    *v16 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 1) = v32;
    LOBYTE(v57) = 1;
    *(v16 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 3) = v33;
    LOBYTE(v57) = 2;
    *(v16 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 5) = v34;
    LOBYTE(v57) = 3;
    *(v16 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 7) = v35;
    LOBYTE(v57) = 4;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = 0;
    *(v16 + 8) = v36;
    *(v16 + 9) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v56 = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v38 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v38)
    {
      v55 = v38;
      (*(v19 + 8))(v21, v20);
      v25 = 0;
      v26 = 0;
      v22 = 1;
      v23 = 1;
      v24 = 1;
    }

    else
    {
      *(v16 + 10) = v57;
      LOBYTE(v57) = 6;
      v39 = KeyedDecodingContainer.decode(_:forKey:)();
      v55 = 0;
      v16[88] = v39 & 1;
      LOBYTE(v57) = 7;
      lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
      v40 = v46;
      v41 = v55;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v55 = v41;
      if (v41)
      {
        (*(v19 + 8))(v21, v20);
        v26 = 0;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v25 = 1;
      }

      else
      {
        v42 = &v16[*(v52 + 44)];
        v46 = *(v51 + 32);
        v46(v42, v40, v53);
        LOBYTE(v57) = 8;
        v43 = v45;
        v44 = v55;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v55 = v44;
        if (!v44)
        {
          (*(v19 + 8))(v50, v20);
          v46(&v16[*(v52 + 48)], v43, v53);
          outlined init with copy of SingleCallRecordModel(v16, v47);
          __swift_destroy_boxed_opaque_existential_0(v54);
          return outlined destroy of SingleCallRecordModel(v16);
        }

        (*(v19 + 8))(v50, v20);
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v25 = 1;
        v26 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v54);

  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_14:
    v31 = *(v16 + 5);

    if (!v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v30 = *(v16 + 3);

  if (v23)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v24)
  {
LABEL_7:
    v27 = *(v16 + 7);
  }

LABEL_8:

  if (v25)
  {
    v29 = *(v16 + 10);
  }

  if (v26)
  {
    return (*(v51 + 8))(&v16[*(v52 + 44)], v53);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleCallRecordModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleCallRecordModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleCallRecordModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleCallRecordModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleCallRecordModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E583A74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E583B44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleCallRecordModel()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SingleCallRecordModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43746E6572727563 && a2 == 0xEF657079546C6C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x436F656469567369 && a2 == 0xEB000000006C6C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E5A6C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025E5A6C60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t SingleResultCallHistoryModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SingleResultCallHistoryModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.contactIds.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t SingleResultCallHistoryModel.searchCallHistoryBinaryButtonModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleResultCallHistoryModel() + 36);

  return outlined init with copy of SearchCallHistoryBinaryButtonModel?(v3, a1);
}

uint64_t type metadata accessor for SingleResultCallHistoryModel()
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryModel;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultCallHistoryModel.init(displayName:displayCallDetail:displayDateTime:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0xD000000000000017;
  a9[1] = 0x800000025E5A61F0;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  v10 = a9 + *(type metadata accessor for SingleResultCallHistoryModel() + 36);

  return outlined init with take of SearchCallHistoryBinaryButtonModel?(a8, v10);
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SingleResultCallHistoryModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x4479616C70736964;
  v4 = 0x49746361746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000022;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleResultCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v26 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v25 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v23 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[8];
    v21[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(type metadata accessor for SingleResultCallHistoryModel() + 36);
    v21[14] = 5;
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMR);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SingleResultCallHistoryModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  v31 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v27 = v7;
    v19 = v29;
    v18 = v30;
    v39 = 0;
    *v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v15[1] = v20;
    v38 = 1;
    v15[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v15[3] = v21;
    v37 = 2;
    v15[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v15[5] = v22;
    v36 = 3;
    v15[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v15[7] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v35 = 4;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15[8] = v33;
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v34 = 5;
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel);
    v24 = v27;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v31, v18);
    outlined init with take of SearchCallHistoryBinaryButtonModel?(v24, v15 + *(v12 + 36));
    outlined init with copy of SingleResultCallHistoryModel(v15, v28);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return outlined destroy of SingleResultCallHistoryModel(v15);
  }
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultCallHistoryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleResultCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultCallHistoryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleResultCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E5852D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E5853A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleResultCallHistoryModel()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

void type metadata accessor for SearchCallHistoryBinaryButtonModel?()
{
  if (!lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?);
    }
  }
}

uint64_t specialized SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6C80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata accessor for SingleResultCallHistoryView()
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryView;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultCallHistoryView.init(singleResultCallHistoryModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for SingleResultCallHistoryView();
  v6 = a2 + *(v5 + 20);
  ActionHandler.init()();
  return _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(a1, a2 + *(v5 + 24), type metadata accessor for SingleResultCallHistoryModel);
}

uint64_t SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SingleResultCallHistoryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of SingleResultCallHistoryModel(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultCallHistoryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SingleResultCallHistoryView);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = static Edge.Set.all.getter();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = partial apply for closure #1 in SingleResultCallHistoryView.body.getter;
  *(a1 + 24) = v7;
  *(a1 + 32) = result;
  return result;
}

uint64_t closure #1 in SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = type metadata accessor for SearchCallHistoryBinaryButtonView();
  v84 = *(v85 - 8);
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v68 - v7;
  v80 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v79 = *(v80 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v68 - v14;
  v76 = type metadata accessor for SeparatorStyle();
  v15 = *(v76 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v76);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SummaryItemStandardView();
  v74 = *(v75 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD019SummaryItemStandardC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD019SummaryItemStandardC0V_Qo_MR);
  v72 = *(v73 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v24 = &v68 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  v25 = *(*(v71 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v71);
  v78 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v28);
  v77 = &v68 - v31;
  v32 = (a1 + *(type metadata accessor for SingleResultCallHistoryView() + 24));
  v34 = v32[2];
  v33 = v32[3];
  v105 = MEMORY[0x277D837D0];
  v106 = MEMORY[0x277D63F88];
  v103 = v34;
  v104 = v33;
  v35 = v32[4];
  v36 = v32[5];
  v101 = MEMORY[0x277D837D0];
  v102 = MEMORY[0x277D63F88];
  v99 = v35;
  v100 = v36;
  v37 = v32[6];
  v38 = v32[7];
  v97 = MEMORY[0x277D837D0];
  v98 = MEMORY[0x277D63F88];
  v95 = v37;
  v96 = v38;
  v94 = 0;
  v93 = 0u;
  v92 = 0u;
  v39 = v32[8];

  v40 = SingleResultCallHistoryView.getAvatarView(contactIds:)(v39);
  if (v40)
  {
    v41 = MEMORY[0x277D63A58];
    v42 = MEMORY[0x277CE11D0];
  }

  else
  {
    v42 = 0;
    v41 = 0;
    v89 = 0;
    v88 = 0;
  }

  v87 = v40;
  v90 = v42;
  v91 = v41;
  SummaryItemStandardView.init(text1:text2:text3:text4:thumbnail:)();
  v43 = v76;
  (*(v15 + 104))(v18, *MEMORY[0x277D62F48], v76);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type SummaryItemStandardView and conformance SummaryItemStandardView, MEMORY[0x277D63E78]);
  v44 = v75;
  View.separators(_:isOverride:)();
  (*(v15 + 8))(v18, v43);
  (*(v74 + 8))(v21, v44);
  v45 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  (*(v72 + 32))(v30, v24, v73);
  v54 = &v30[*(v71 + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  v55 = v77;
  sub_25E586FFC(v30, v77);
  v56 = type metadata accessor for SingleResultCallHistoryModel();
  v57 = v81;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32 + *(v56 + 36), v81, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  if ((*(v79 + 48))(v57, 1, v80) == 1)
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v57, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v58 = 1;
    v59 = v85;
    v60 = v82;
  }

  else
  {
    v61 = v69;
    _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(v57, v69, type metadata accessor for SearchCallHistoryBinaryButtonModel);
    v59 = v85;
    v62 = v70;
    outlined init with copy of SingleResultCallHistoryModel(v61, &v70[*(v85 + 20)], type metadata accessor for SearchCallHistoryBinaryButtonModel);
    ActionHandler.init()();
    outlined destroy of SearchCallHistoryBinaryButtonModel(v61);
    v60 = v82;
    _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(v62, v82, type metadata accessor for SearchCallHistoryBinaryButtonView);
    v58 = 0;
  }

  (*(v84 + 56))(v60, v58, 1, v59);
  v63 = v78;
  sub_25E58706C(v55, v78);
  v64 = v83;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v60, v83, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  v65 = v86;
  sub_25E58706C(v63, v86);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVG_05PhonefB0029SearchCallHistoryBinaryButtonE0VSgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVG_05PhonefB0029SearchCallHistoryBinaryButtonE0VSgtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v64, v65 + *(v66 + 48), &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v60, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  sub_25E5870DC(v55);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v64, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  return sub_25E5870DC(v63);
}

uint64_t SingleResultCallHistoryView.getAvatarView(contactIds:)(uint64_t a1)
{
  v2 = type metadata accessor for ImageElement.ImageStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageElement();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for ImageElementView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v14 = *MEMORY[0x277D62AA8];
  v15 = *(v3 + 104);
  v27 = v11;
  v15(v6, v14, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v16 = type metadata accessor for _ProtoIdiom();
  v17 = *(v16 - 8);
  v25[1] = a1;
  v18 = v17;
  v19 = *(v17 + 72);
  v20 = *(v18 + 80);
  v26 = v2;
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25E59F720;
  (*(v18 + 104))(v22 + v21, *MEMORY[0x277D62A28], v16);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v22);
  swift_setDeallocating();
  (*(v18 + 8))(v22 + v21, v16);
  swift_deallocClassInstance();
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v3 + 8))(v6, v26);
  ImageElementView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70]);
  v23 = View.eraseToAnyView()();
  (*(v27 + 8))(v13, v9);
  return v23;
}

uint64_t protocol witness for View.body.getter in conformance SingleResultCallHistoryView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of SingleResultCallHistoryModel(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultCallHistoryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SingleResultCallHistoryView);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = static Edge.Set.all.getter();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = closure #1 in SingleResultCallHistoryView.body.getterpartial apply;
  *(a2 + 24) = v7;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_25E586934(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ActionHandler();
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
      v14 = type metadata accessor for SingleResultCallHistoryModel();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E586A78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
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
      v13 = type metadata accessor for SingleResultCallHistoryModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for SingleResultCallHistoryView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SingleResultCallHistoryModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyAA0J0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardJ0V_Qo_AA14_PaddingLayoutVG_AD029SearchCallHistoryBinaryButtonJ0VSgtGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyAA0J0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardJ0V_Qo_AA14_PaddingLayoutVG_AD029SearchCallHistoryBinaryButtonJ0VSgtGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAD0H0P0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardH0V_Qo_AD14_PaddingLayoutVG_AA029SearchCallHistoryBinaryButtonH0VSgtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAD0H0P0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardH0V_Qo_AD14_PaddingLayoutVG_AA029SearchCallHistoryBinaryButtonH0VSgtGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for SingleResultCallHistoryView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = (v3 + v1[8]);
  v7 = v6[1];

  v8 = v6[3];

  v9 = v6[5];

  v10 = v6[7];

  v11 = v6[8];

  v12 = v6 + *(type metadata accessor for SingleResultCallHistoryModel() + 36);
  v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v15 = *(*(v14 - 8) + 8);
    v15(v12, v14);
    v16 = v13[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v18 = *(*(v17 - 8) + 8);
    v18(&v12[v16], v17);
    v15(&v12[v13[6]], v14);
    v18(&v12[v13[7]], v17);
    v19 = *&v12[v13[8] + 8];
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleResultCallHistoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in SingleResultCallHistoryView.body.getter(v4, a1);
}

uint64_t sub_25E586FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E58706C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E5870DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SingleResultVoicemailModel.resultViewID.getter()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

uint64_t static SingleResultVoicemailModel.resultViewID.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = a1;
  off_27FCED9E0 = a2;
}

uint64_t key path setter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = v2;
  off_27FCED9E0 = v1;
}

uint64_t SingleResultVoicemailModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SingleResultVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.callDuration.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SingleResultVoicemailModel.callDuration.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.contactIds.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t SingleResultVoicemailModel.transcript.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t SingleResultVoicemailModel.transcript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleResultVoicemailModel()
{
  result = type metadata singleton initialization cache for SingleResultVoicemailModel;
  if (!type metadata singleton initialization cache for SingleResultVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for SingleResultVoicemailModel.callbackDirectInvocation : SingleResultVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleResultVoicemailModel.callbackDirectInvocation : SingleResultVoicemailModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleResultVoicemailModel.callbackDirectInvocation.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailModel.repeatDirectInvocation()
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SingleResultVoicemailModel.repeatDirectInvocation : SingleResultVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleResultVoicemailModel.repeatDirectInvocation : SingleResultVoicemailModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleResultVoicemailModel.repeatDirectInvocation.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleResultVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:callDurationInterval:transcript:transcriptTitle:callbackDirectInvocation:repeatDirectInvocation:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  *a9 = 0xD000000000000015;
  *(a9 + 8) = 0x800000025E5A6210;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  v18 = type metadata accessor for SingleResultVoicemailModel();
  v19 = v18[14];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v20 = a15;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 88) = a16;
  v21 = a9 + v18[13];
  CodableAceObject.init(wrappedValue:)();

  v22 = a9 + v18[15];

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a17, v22);
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultVoicemailModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000022;
      if (a1 == 10)
      {
        v6 = 0xD000000000000016;
      }

      if (a1 == 9)
      {
        return 0xD000000000000018;
      }

      else
      {
        return v6;
      }
    }

    else if (a1 == 6)
    {
      return 0x49746361746E6F63;
    }

    else
    {
      return 0x697263736E617274;
    }
  }

  else
  {
    v1 = 0x65736E6F70736572;
    v2 = 0x4479616C70736964;
    v3 = 0x617275446C6C6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E79616C70736964;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SingleResultVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleResultVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v34) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  LOBYTE(v34) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  LOBYTE(v34) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  LOBYTE(v34) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  LOBYTE(v34) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[10];
  LOBYTE(v34) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v34 = v3[11];
  v33 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v3[12];
  v23 = v3[13];
  LOBYTE(v34) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = v3[14];
  v25 = v3[15];
  LOBYTE(v34) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v32 = v6;
  v26 = type metadata accessor for SingleResultVoicemailModel();
  v27 = v26[13];
  LOBYTE(v34) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v28 = v26[14];
  LOBYTE(v34) = 10;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v29 = v26[15];
  LOBYTE(v34) = 11;
  type metadata accessor for SearchCallHistoryBinaryButtonModel();
  _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v32 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMR);
  v58 = *(v60 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v15 = &v56 - v14;
  v63 = type metadata accessor for SingleResultVoicemailModel();
  v16 = *(*(v63 - 1) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  v59 = v15;
  v20 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v66 = v20;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    LODWORD(v59) = 0;
    LODWORD(v60) = 0;
LABEL_4:
    v40 = v65;
    goto LABEL_5;
  }

  v22 = v58;
  v21 = v59;
  v56 = v6;
  LOBYTE(v68) = 0;
  v23 = v60;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v65;
  *v65 = v24;
  v40[1] = v41;
  LOBYTE(v68) = 1;
  v40[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v40[3] = v42;
  LOBYTE(v68) = 2;
  v40[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v40[5] = v43;
  LOBYTE(v68) = 3;
  v40[6] = KeyedDecodingContainer.decode(_:forKey:)();
  v40[7] = v44;
  LOBYTE(v68) = 4;
  v40[8] = KeyedDecodingContainer.decode(_:forKey:)();
  v40[9] = v45;
  LOBYTE(v68) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v66 = 0;
  v40[10] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v67 = 6;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v47 = v66;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v47)
  {
    v40[11] = v68;
    LOBYTE(v68) = 7;
    v40[12] = KeyedDecodingContainer.decode(_:forKey:)();
    v40[13] = v48;
    LOBYTE(v68) = 8;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v66 = 0;
    v40[14] = v49;
    v40[15] = v50;
    LOBYTE(v68) = 9;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v51 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v51;
    if (v51)
    {
      (*(v58 + 8))(v59, v60);
      LODWORD(v59) = 0;
      LODWORD(v60) = 0;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
      v29 = 1;
      v30 = 1;
      v31 = 1;
    }

    else
    {
      v52 = *(v62 + 32);
      v52(v65 + v63[13], v12, v64);
      LOBYTE(v68) = 10;
      v53 = v66;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v66 = v53;
      if (v53)
      {
        (*(v58 + 8))(v59, v60);
        LODWORD(v60) = 0;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        LODWORD(v59) = 1;
      }

      else
      {
        v52(v65 + v63[14], v10, v64);
        LOBYTE(v68) = 11;
        _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel);
        v54 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v66 = v54;
        if (!v54)
        {
          (*(v58 + 8))(v59, v60);
          v55 = v65;
          outlined init with take of SearchCallHistoryBinaryButtonModel(v56, v65 + v63[15]);
          _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVWOcTm_0(v55, v57, type metadata accessor for SingleResultVoicemailModel);
          __swift_destroy_boxed_opaque_existential_0(v61);
          return outlined destroy of SingleResultVoicemailModel(v55);
        }

        (*(v58 + 8))(v59, v60);
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        LODWORD(v59) = 1;
        LODWORD(v60) = 1;
      }
    }

    goto LABEL_4;
  }

  v66 = v47;
  (*(v22 + 8))(v21, v23);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  LODWORD(v59) = 0;
  LODWORD(v60) = 0;
  v25 = 1;
  v26 = 1;
  v27 = 1;
  v28 = 1;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v61);

  if (v25)
  {
    v33 = v40[3];

    if (!v26)
    {
LABEL_7:
      if (!v27)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if (!v26)
  {
    goto LABEL_7;
  }

  v34 = v40[5];

  if (!v27)
  {
LABEL_8:
    if (!v28)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v35 = v40[7];

  if (!v28)
  {
LABEL_9:
    if (!v29)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v36 = v40[9];

  if (!v29)
  {
LABEL_10:
    if (!v30)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v37 = v40[11];

  if (!v30)
  {
LABEL_11:
    if (!v31)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v38 = v40[13];

  if (!v31)
  {
LABEL_12:
    if (!v59)
    {
      goto LABEL_13;
    }

LABEL_22:
    result = (*(v62 + 8))(v40 + v63[13], v64);
    if (!v60)
    {
      return result;
    }

    return (*(v62 + 8))(v40 + v63[14], v64);
  }

LABEL_21:
  v39 = v40[15];

  if (v59)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (!v60)
  {
    return result;
  }

  return (*(v62 + 8))(v40 + v63[14], v64);
}

uint64_t _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultVoicemailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static ResultViewIDProviding.resultViewID.getter in conformance SingleResultVoicemailModel()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

PhoneSnippetUI::VoicemailUpdateAction_optional __swiftcall VoicemailUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneSnippetUI_VoicemailUpdateAction_repeatVoicemail;
  }

  else
  {
    v4.value = PhoneSnippetUI_VoicemailUpdateAction_unknownDefault;
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

uint64_t VoicemailUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F56746165706572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t instantiation function for generic protocol witness table for SingleResultVoicemailModel(uint64_t a1)
{
  result = _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailUpdateAction(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F56746165706572;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = 0x800000025E5A60B0;
  }

  else
  {
    v5 = 0xEF6C69616D656369;
  }

  if (*a2)
  {
    v6 = 0x6F56746165706572;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = 0xEF6C69616D656369;
  }

  else
  {
    v7 = 0x800000025E5A60B0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction()
{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoicemailUpdateAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoicemailUpdateAction()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoicemailUpdateAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailUpdateAction@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailUpdateAction(unint64_t *a1@<X8>)
{
  v2 = 0x800000025E5A60B0;
  v3 = 0xD000000000000015;
  if (*v1)
  {
    v3 = 0x6F56746165706572;
    v2 = 0xEF6C69616D656369;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance VoicemailUpdateAction()
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance VoicemailUpdateAction()
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.serializeData()();
}

uint64_t sub_25E589644@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FCED9E0;
  *a1 = static SingleResultVoicemailModel.resultViewID;
  a1[1] = v2;
}

uint64_t sub_25E5896BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25E589800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for SingleResultVoicemailModel()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryBinaryButtonModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SingleResultVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025E5A6CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697263736E617274 && a2 == -1196430878757850000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025E5A6CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025E5A6CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6C80 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double SingleResultVoicemailView.circleWidth.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

uint64_t type metadata accessor for SingleResultVoicemailView()
{
  result = type metadata singleton initialization cache for SingleResultVoicemailView;
  if (!type metadata singleton initialization cache for SingleResultVoicemailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailView.circleWidth(double a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  *&v7[1] = a1;
  (*(v5 + 104))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0A60]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

double SingleResultVoicemailView.circleHeight.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

double SingleResultVoicemailView.progress.getter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return v3;
}

double key path getter for SingleResultVoicemailView.progress : SingleResultVoicemailView@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v6 = *v3;
  v7 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for SingleResultVoicemailView.progress : SingleResultVoicemailView(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  return State.wrappedValue.setter();
}

uint64_t SingleResultVoicemailView.progress.setter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  return State.wrappedValue.setter();
}

void (*SingleResultVoicemailView.progress.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v6 = *v5;
  v4[6] = *v5;
  v7 = v5[1];
  v4[7] = v7;
  *v4 = v6;
  v4[1] = v7;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return SingleResultVoicemailView.progress.modify;
}

void SingleResultVoicemailView.progress.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v4;
  v1[5] = v2;
  State.wrappedValue.setter();

  free(v1);
}

double SingleResultVoicemailView.$progress.getter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 36));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.projectedValue.getter();
  return v3;
}

uint64_t SingleResultVoicemailView.shouldStartTimer.getter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return v3;
}

uint64_t key path getter for SingleResultVoicemailView.shouldStartTimer : SingleResultVoicemailView@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v6 = *v3;
  v7 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  *a2 = v5;
  return result;
}

uint64_t key path setter for SingleResultVoicemailView.shouldStartTimer : SingleResultVoicemailView(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t SingleResultVoicemailView.shouldStartTimer.setter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

void (*SingleResultVoicemailView.shouldStartTimer.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return SingleResultVoicemailView.shouldStartTimer.modify;
}

void SingleResultVoicemailView.shouldStartTimer.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v4;
  *(v1 + 49) = v2;
  State.wrappedValue.setter();

  free(v1);
}

uint64_t SingleResultVoicemailView.$shouldStartTimer.getter()
{
  v1 = (v0 + *(type metadata accessor for SingleResultVoicemailView() + 40));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v3;
}

uint64_t SingleResultVoicemailView.init(singleVoicemailModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v5;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v11;
  v12 = type metadata accessor for SingleResultVoicemailView();
  v13 = a2 + v12[5];
  ActionHandler.init()();
  v14 = v12[6];
  v35 = 0x4041800000000000;
  v15 = *MEMORY[0x277CE0A60];
  v16 = *(v7 + 104);
  v16(v10, v15, v6);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v17 = v12[7];
  v35 = 0x4041800000000000;
  v16(v10, v15, v6);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v18 = (a2 + v12[9]);
  v34 = 0;
  State.init(wrappedValue:)();
  v19 = v36;
  *v18 = v35;
  v18[1] = v19;
  v20 = a2 + v12[10];
  LOBYTE(v34) = 0;
  State.init(wrappedValue:)();
  v21 = v36;
  *v20 = v35;
  *(v20 + 1) = v21;
  v22 = v32;
  outlined init with copy of SingleResultVoicemailModel(v32, a2 + v12[8], type metadata accessor for SingleResultVoicemailModel);
  type metadata accessor for NSTimer();
  v23 = [objc_opt_self() mainRunLoop];
  v24 = *MEMORY[0x277CBE738];
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v27 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v26, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v35 = v27;
  type metadata accessor for NSTimer.TimerPublisher();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v28 = ConnectablePublisher.autoconnect()();

  *(a2 + v12[11]) = v28;
  v29 = ceil(*(v22 + 80));
  result = outlined destroy of SingleResultVoicemailModel(v22, type metadata accessor for SingleResultVoicemailModel);
  *(a2 + v12[12]) = v29;
  return result;
}

uint64_t SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for SingleResultVoicemailView();
  v3 = *(v2 - 8);
  v34 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMR);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMR);
  v10 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - v11;
  v33 = type metadata accessor for SingleResultVoicemailView;
  outlined init with copy of SingleResultVoicemailModel(v1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
  v12 = *(v3 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<SimpleItemStandardView, _PaddingLayout>)>>, ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<LongItemTextView, _PaddingLayout>)>>, _PaddingLayout>?, SearchCallHistoryBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMR);
  v15 = v32;
  ComponentStack.init(content:)();
  v16 = static Edge.Set.all.getter();
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyACyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAD017SummaryItemButtonI0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAHyACyACyACyAA08ProgressI0VyAA05EmptyI0VA_GATGATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAD06Simpleq8StandardI0VATGtGGACyAWyAHyACyAjAE4boldyQrSbFQOyAD09PlainTextI0V_Qo_ATG_ACyAD04Longq4TextI0VATGtGGATGSg05PhoneeB0023SearchCallHistoryBinaryrI0VtGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyACyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAD017SummaryItemButtonI0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAHyACyACyACyAA08ProgressI0VyAA05EmptyI0VA_GATGATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAD06Simpleq8StandardI0VATGtGGACyAWyAHyACyAjAE4boldyQrSbFQOyAD09PlainTextI0V_Qo_ATG_ACyAD04Longq4TextI0VATGtGGATGSg05PhoneeB0023SearchCallHistoryBinaryrI0VtGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR) + 36)] = v16;
  v17 = *(v15 + *(v34 + 52));
  outlined init with copy of SingleResultVoicemailModel(v15, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  v34 = v12;
  v18 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13);
  *&v9[*(v6 + 60)] = v17;
  v19 = &v9[*(v6 + 64)];
  *v19 = partial apply for implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter;
  v19[1] = v18;
  v20 = *v15;
  if (*v15)
  {
    v21 = v35;
    v22 = *(v35 + 52);

    v23 = v20;
    v24 = v36;
    dispatch thunk of Context.$sharedState.getter();

    outlined init with copy of SingleResultVoicemailModel(v15, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
    v25 = swift_allocObject();
    outlined init with take of SingleResultVoicemailView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v13);
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v9, v24, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMR);
    v26 = (v24 + *(v21 + 56));
    *v26 = partial apply for closure #2 in SingleResultVoicemailView.body.getter;
    v26[1] = v25;
    outlined init with copy of SingleResultVoicemailModel(v15, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
    v27 = swift_allocObject();
    outlined init with take of SingleResultVoicemailView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v13);
    v28 = v37;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v24, v37, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GAEyAF10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerI0CGACy07SnippetB014ComponentStackVyAA05TupleF0VyACyAA0F0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonF0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yACyACyACyAA08ProgressF0VyAA05EmptyF0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAY018SimpleItemStandardF0VA13_GtGGACyA16_yA1_yACyA3_AAE4boldyQrSbFQOyAY09PlainTextF0V_Qo_A13_G_ACyAY012LongItemTextF0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonF0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GAEyAF10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerI0CGACy07SnippetB014ComponentStackVyAA05TupleF0VyACyAA0F0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonF0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yACyACyACyAA08ProgressF0VyAA05EmptyF0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAY018SimpleItemStandardF0VA13_GtGGACyA16_yA1_yACyA3_AAE4boldyQrSbFQOyAY09PlainTextF0V_Qo_A13_G_ACyAY012LongItemTextF0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonF0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGAA25_AppearanceActionModifierVGMR);
    v30 = (v28 + *(result + 36));
    *v30 = 0;
    v30[1] = 0;
    v30[2] = partial apply for closure #3 in SingleResultVoicemailView.body.getter;
    v30[3] = v27;
  }

  else
  {
    v31 = v15[1];
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a1;
  v159 = a2;
  v155 = type metadata accessor for SearchCallHistoryBinaryButtonView();
  v3 = *(*(v155 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v155);
  v160 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v158 = &v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMR);
  v8 = *(v7 - 8);
  v153 = v7;
  v154 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v136 = (&v135 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v157 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v164 = &v135 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v156 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v162 = (&v135 - v20);
  v21 = type metadata accessor for SeparatorStyle();
  v151 = *(v21 - 8);
  v152 = v21;
  v22 = *(v151 + 64);
  MEMORY[0x28223BE20](v21);
  v150 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ImageElement.ImageStyle();
  v139 = *(v24 - 8);
  v140 = v24;
  v25 = *(v139 + 64);
  MEMORY[0x28223BE20](v24);
  v138 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ImageElement();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v142 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ImageElementView();
  v31 = *(v30 - 8);
  v144 = v30;
  v145 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v141 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SummaryItemButtonView();
  v149 = *(v147 - 8);
  v34 = *(v149 + 64);
  MEMORY[0x28223BE20](v147);
  v143 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  v37 = *(v36 - 8);
  v148 = v36 - 8;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8);
  v163 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v161 = &v135 - v41;
  v42 = (a1 + *(type metadata accessor for SingleResultVoicemailView() + 32));
  v44 = v42[2];
  v43 = v42[3];
  v191 = MEMORY[0x277D837D0];
  v192 = MEMORY[0x277D63F88];
  v189 = v44;
  v190 = v43;

  v45 = SingleResultVoicemailView.getRepeatView()();
  v187 = MEMORY[0x277CE11D0];
  v188 = MEMORY[0x277D63A58];
  v186 = v45;
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v165 = v42;
  v46 = v42[5];
  v176 = v42[4];
  v177 = v46;
  v137 = lazy protocol witness table accessor for type String and conformance String();

  v47 = Text.init<A>(_:)();
  v49 = v48;
  v51 = v50;
  v176 = static Color.secondary.getter();
  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  v56 = v55;
  outlined consume of Text.Storage(v47, v49, v51 & 1);

  static Font.subheadline.getter();
  v57 = Text.font(_:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;

  outlined consume of Text.Storage(v52, v54, v56 & 1);

  v178 = MEMORY[0x277CE0BD0];
  v179 = MEMORY[0x277D638F0];
  v64 = swift_allocObject();
  v176 = v64;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61 & 1;
  *(v64 + 40) = v63;
  v65 = v165[7];
  v172 = v165[6];
  v173 = v65;

  v66 = Text.init<A>(_:)();
  v68 = v67;
  LOBYTE(v57) = v69;
  v172 = static Color.secondary.getter();
  v70 = Text.foregroundStyle<A>(_:)();
  v72 = v71;
  LOBYTE(v63) = v73;
  outlined consume of Text.Storage(v66, v68, v57 & 1);

  static Font.subheadline.getter();
  v74 = Text.font(_:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;

  outlined consume of Text.Storage(v70, v72, v63 & 1);

  v174 = MEMORY[0x277CE0BD0];
  v175 = MEMORY[0x277D638F0];
  v81 = swift_allocObject();
  v172 = v81;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78 & 1;
  *(v81 + 40) = v80;
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  v82 = v165[11];
  v83 = v138;
  v84 = v139;
  v85 = v140;
  (*(v139 + 104))(v138, *MEMORY[0x277D62AA8], v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v86 = type metadata accessor for _ProtoIdiom();
  v87 = *(v86 - 8);
  v88 = *(v87 + 72);
  v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_25E59F720;
  (*(v87 + 104))(v90 + v89, *MEMORY[0x277D62A28], v86);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v90);
  swift_setDeallocating();
  (*(v87 + 8))(v90 + v89, v86);
  swift_deallocClassInstance();
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v84 + 8))(v83, v85);
  v91 = v141;
  ImageElementView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70]);
  v92 = v144;
  v93 = View.eraseToAnyView()();
  (*(v145 + 8))(v91, v92);
  v168 = MEMORY[0x277D63A58];
  v167 = MEMORY[0x277CE11D0];
  v166 = v93;
  v94 = 1;
  v95 = v143;
  SummaryItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:buttonItemsAreTrailing:)();
  v97 = v150;
  v96 = v151;
  v98 = v152;
  (*(v151 + 104))(v150, *MEMORY[0x277D62F48], v152);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type SummaryItemButtonView and conformance SummaryItemButtonView, MEMORY[0x277D63DF0]);
  v99 = v161;
  v100 = v147;
  View.separators(_:isOverride:)();
  (*(v96 + 8))(v97, v98);
  (*(v149 + 8))(v95, v100);
  LOBYTE(v93) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v101 = v99 + *(v148 + 44);
  *v101 = v93;
  v102 = v146;
  *(v101 + 8) = v103;
  *(v101 + 16) = v104;
  *(v101 + 24) = v105;
  *(v101 + 32) = v106;
  *(v101 + 40) = 0;
  v107 = static HorizontalAlignment.center.getter();
  v108 = v162;
  *v162 = v107;
  v108[1] = 0;
  *(v108 + 16) = 1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA08ProgressD0VyAA05EmptyD0VAOGAA08_PaddingG0VGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKy07SnippetB0018SimpleItemStandardD0VARGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA08ProgressD0VyAA05EmptyD0VAOGAA08_PaddingG0VGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKy07SnippetB0018SimpleItemStandardD0VARGtGGMR);
  v110 = v108;
  closure #1 in closure #1 in SingleResultVoicemailView.body.getter(v102, v108 + *(v109 + 44));
  v111 = v165;
  v112 = v165[13];
  v113 = v165[12] & 0xFFFFFFFFFFFFLL;
  if ((v112 & 0x2000000000000000) != 0)
  {
    v113 = HIBYTE(v112) & 0xF;
  }

  if (v113)
  {
    v114 = static HorizontalAlignment.leading.getter();
    v115 = v136;
    *v136 = v114;
    *(v115 + 8) = 0;
    *(v115 + 16) = 1;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOy07SnippetB009PlainTextD0V_Qo_AA08_PaddingG0VG_AKyAO08LongItemnD0VATGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOy07SnippetB009PlainTextD0V_Qo_AA08_PaddingG0VG_AKyAO08LongItemnD0VATGtGGMR);
    closure #2 in closure #1 in SingleResultVoicemailView.body.getter(v102, v115 + *(v116 + 44));
    v117 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v118 = v153;
    v119 = v115 + *(v153 + 36);
    *v119 = v117;
    *(v119 + 8) = v120;
    *(v119 + 16) = v121;
    *(v119 + 24) = v122;
    *(v119 + 32) = v123;
    *(v119 + 40) = 0;
    v124 = v164;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v115, v164, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMR);
    v94 = 0;
    v125 = v118;
  }

  else
  {
    v124 = v164;
    v125 = v153;
  }

  (*(v154 + 56))(v124, v94, 1, v125);
  v126 = type metadata accessor for SingleResultVoicemailModel();
  v127 = v158;
  outlined init with copy of SingleResultVoicemailModel(v111 + *(v126 + 60), &v158[*(v155 + 20)], type metadata accessor for SearchCallHistoryBinaryButtonModel);
  ActionHandler.init()();
  v128 = v163;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v99, v163, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  v129 = v156;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v110, v156, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  v130 = v157;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v124, v157, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  v131 = v160;
  outlined init with copy of SingleResultVoicemailModel(v127, v160, type metadata accessor for SearchCallHistoryBinaryButtonView);
  v132 = v159;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v128, v159, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAA05TupleE0VyACyACyACyAA08ProgressE0VyAA05EmptyE0VAYGAPGAPGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAF06Simplen8StandardE0VAPGtGGACyASyAUyACyAeAE4boldyQrSbFQOyAF09PlainTextE0V_Qo_APG_ACyAF04Longn4TextE0VAPGtGGAPGSg05PhonefB0023SearchCallHistoryBinaryoE0VtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAA05TupleE0VyACyACyACyAA08ProgressE0VyAA05EmptyE0VAYGAPGAPGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAF06Simplen8StandardE0VAPGtGGACyASyAUyACyAeAE4boldyQrSbFQOyAF09PlainTextE0V_Qo_APG_ACyAF04Longn4TextE0VAPGtGGAPGSg05PhonefB0023SearchCallHistoryBinaryoE0VtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v129, v132 + v133[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v130, v132 + v133[16], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined init with copy of SingleResultVoicemailModel(v131, v132 + v133[20], type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of SingleResultVoicemailModel(v127, type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v164, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v162, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v161, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  outlined destroy of SingleResultVoicemailModel(v131, type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v130, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v129, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v163, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
}

uint64_t outlined init with take of SingleResultVoicemailView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultVoicemailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleResultVoicemailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in SingleResultVoicemailView.body.getter(v4, a1);
}

uint64_t SingleResultVoicemailView.getRepeatView()()
{
  v1 = type metadata accessor for SingleResultVoicemailView();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyALyAA06_ShapeC0VyAA6CircleVAA012HierarchicalM5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ALyAA5ImageVAYGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyALyAA06_ShapeC0VyAA6CircleVAA012HierarchicalM5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ALyAA5ImageVAYGtGG_Qo_MR);
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #1 in SingleResultVoicemailView.getRepeatView()(v0, &v33);
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v26 = v33;
  v27 = v34;
  v32[2] = v35;
  v32[3] = v36;
  v32[4] = v37;
  v32[5] = v38;
  v32[0] = v33;
  v32[1] = v34;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v26, &v19, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMR);
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  *&v19 = v7;
  *(&v19 + 1) = v9;
  outlined init with copy of SingleResultVoicemailModel(v0, &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
  v10 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v11 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR);
  v13 = lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR);
  View.onTapGesture(count:perform:)();

  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v33, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR);
  *&v19 = v12;
  *(&v19 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v18;
  v15 = View.eraseToAnyView()();
  (*(v3 + 8))(v6, v14);
  return v15;
}

uint64_t closure #1 in closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v105 = type metadata accessor for SimpleItemStandardView();
  v103 = *(v105 - 8);
  v3 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  v5 = *(*(v101 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v101);
  v107 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v100 = &v99 - v9;
  MEMORY[0x28223BE20](v8);
  v106 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v104 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v99 - v16;
  v18 = type metadata accessor for SingleResultVoicemailView();
  v19 = (a1 + *(v18 + 36));
  v21 = v19[1];
  v125 = *v19;
  v20 = v125;
  v126 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  v122 = 0;
  v99 = v18;
  v125 = *(a1 + *(v18 + 48));
  lazy protocol witness table accessor for type Double and conformance Double();
  ProgressView.init<A>(value:total:)();
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGMR) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGMR) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v44 = &v17[*(v12 + 44)];
  *v44 = KeyPath;
  v44[1] = v42;
  v125 = v20;
  v126 = v21;
  State.wrappedValue.getter();
  v45 = v121;
  v46 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v46 setUnitsStyle_];
  [v46 setAllowedUnits_];
  [v46 setZeroFormattingBehavior_];
  v47 = [v46 stringFromTimeInterval_];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = 48;
    v52._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v52))
    {
      v54 = specialized Collection.dropFirst(_:)(1uLL, v49, v51, v53);
      v56 = v55;
      v58 = v57;
      v60 = v59;

      MEMORY[0x25F8B7B00](v54, v56, v58, v60);
    }
  }

  v61 = SingleResultVoicemailView.getVoicemailTimeText(input:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v68 = MEMORY[0x277CE0BD0];
  v69 = MEMORY[0x277D638F0];
  v127 = MEMORY[0x277CE0BD0];
  v128 = MEMORY[0x277D638F0];
  v70 = swift_allocObject();
  v125 = v70;
  *(v70 + 16) = v61;
  *(v70 + 24) = v63;
  *(v70 + 32) = v65 & 1;
  *(v70 + 40) = v67;
  v71 = a1 + *(v99 + 32);
  v72 = *(v71 + 64);
  v73 = *(v71 + 72);
  v74 = SingleResultVoicemailView.getVoicemailTimeText(input:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v123 = v68;
  v124 = v69;
  v81 = swift_allocObject();
  v121 = *&v81;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78 & 1;
  *(v81 + 40) = v80;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v82 = v102;
  SimpleItemStandardView.init(text1:text2:text3:text4:text5:text6:)();
  LOBYTE(v74) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v100;
  (*(v103 + 32))(v100, v82, v105);
  v92 = v91 + *(v101 + 36);
  *v92 = v74;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  v93 = v106;
  outlined init with take of ModifiedContent<SimpleItemStandardView, _PaddingLayout>(v91, v106);
  v94 = v104;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, v104, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v95 = v107;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v93, v107, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  v96 = v108;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v94, v108, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACy07SnippetB0018SimpleItemStandardF0VAJGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACy07SnippetB0018SimpleItemStandardF0VAJGtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v95, v96 + *(v97 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v93, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v95, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v94, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
}

uint64_t SingleResultVoicemailView.getVoicemailTimeText(input:)()
{
  lazy protocol witness table accessor for type String and conformance String();

  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Color.secondary.getter();
  v5 = Text.foregroundStyle<A>(_:)();
  v7 = v6;
  v9 = v8;
  outlined consume of Text.Storage(v0, v2, v4 & 1);

  static Font.footnote.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.semibold.getter();
  v15 = Text.fontWeight(_:)();
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  return v15;
}

uint64_t closure #2 in closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PlainTextView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v42 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = (a1 + *(type metadata accessor for SingleResultVoicemailView() + 32));
  v23 = v22[14];
  v24 = v22[15];

  PlainTextView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type PlainTextView and conformance PlainTextView, MEMORY[0x277D63B58]);
  View.bold(_:)();
  (*(v11 + 8))(v14, v10);
  LOBYTE(v14) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = &v21[*(v16 + 44)];
  *v25 = v14;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v31 = v22[12];
  v30 = v22[13];
  v47 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D63F88];
  v45 = v31;
  v46 = v30;

  LongItemTextView.init(text1:)();
  LOBYTE(v14) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = &v9[*(v4 + 44)];
  *v32 = v14;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = v42;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v21, v42, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v38 = v43;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, v43, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  v39 = v44;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v37, v44, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVG_ACyAG08LongItemiE0VALGtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVG_ACyAG08LongItemiE0VALGtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v38, v39 + *(v40 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v38, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
}

uint64_t implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleResultVoicemailView();
  v4 = (a2 + v3[10]);
  v10 = *v4;
  v11 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if (LOBYTE(v9) == 1)
  {
    v6 = (a2 + v3[9]);
    v7 = *v6;
    v8 = v6[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
    result = State.wrappedValue.getter();
    if (v9 < *(a2 + v3[12]))
    {

      State.wrappedValue.getter();
      State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for SingleResultVoicemailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(a1, v4);
}

void closure #2 in SingleResultVoicemailView.body.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();

  UpdateResponseCommand<>.init(_:)();
  v4 = type metadata accessor for SingleResultVoicemailView();
  v5 = (a2 + *(v4 + 40));
  v6 = *v5;
  v7 = *(v5 + 1);
  if (v16)
  {
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
    v9 = (a2 + *(v8 + 36));
    v17 = *v9;
    v18 = v9[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
    State.wrappedValue.setter();
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.phoneSnippetUI);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "#SingleResultVoicemailView received repeat playing voicemail action.";
LABEL_10:
      _os_log_impl(&dword_25E523000, v11, v12, v14, v13, 2u);
      MEMORY[0x25F8B8670](v13, -1, -1);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.phoneSnippetUI);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "#SingleResultVoicemailView received start playing voicemail action.";
      goto LABEL_10;
    }
  }
}

void partial apply for closure #2 in SingleResultVoicemailView.body.getter(uint64_t *a1)
{
  v3 = *(type metadata accessor for SingleResultVoicemailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #2 in SingleResultVoicemailView.body.getter(a1, v4);
}

uint64_t closure #3 in SingleResultVoicemailView.body.getter(uint64_t a1)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E523000, v3, v4, "#SingleResultVoicemailView onDisappear, disconnect timer.", v5, 2u);
    MEMORY[0x25F8B8670](v5, -1, -1);
  }

  v6 = *(a1 + *(type metadata accessor for SingleResultVoicemailView() + 44));
  Publishers.Autoconnect.upstream.getter();
  NSTimer.TimerPublisher.connect()();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of Cancellable.cancel()();
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t closure #1 in SingleResultVoicemailView.getRepeatView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HierarchicalShapeStyle.primary.getter();
  v5 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SingleResultVoicemailView();
  v8 = *(v7 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  v9 = a1 + *(v7 + 28);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = Image.init(systemName:)();
  v11 = static Color.white.getter();
  v12 = swift_getKeyPath();
  LODWORD(v19) = v4;
  WORD2(v19) = 256;
  *(&v19 + 1) = KeyPath;
  *v20 = v5;
  *&v20[8] = v16;
  *&v20[24] = v17;
  *&v20[40] = v18;
  v13 = *v20;
  *a2 = v19;
  *(a2 + 16) = v13;
  v14 = *&v20[32];
  *(a2 + 32) = *&v20[16];
  *(a2 + 48) = v14;
  *(a2 + 64) = *&v20[48];
  *(a2 + 72) = v10;
  *(a2 + 80) = v12;
  *(a2 + 88) = v11;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v19, &v21, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  v21 = v4;
  v22 = 256;
  v23 = KeyPath;
  v24 = v5;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v21, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
}

void closure #2 in SingleResultVoicemailView.getRepeatView()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SingleResultVoicemailView();
  v15 = (a1 + v14[10]);
  v16 = *v15;
  v17 = *(v15 + 1);
  v41 = v16;
  v42 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v40 == 1)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.phoneSnippetUI);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25E523000, v19, v20, "SingleResultVoicemailView repeat is tapped", v21, 2u);
      MEMORY[0x25F8B8670](v21, -1, -1);
    }

    v22 = a1 + v14[5];
    ActionHandler.wrappedValue.getter();
    v23 = type metadata accessor for StandardActionHandler();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v13, 1, v23) == 1)
    {
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v13, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_25E59F720;
      v30 = type metadata accessor for Command();
      v39 = v5;
      v31 = v30;
      v32 = MEMORY[0x277D63778];
      *(v29 + 56) = v30;
      *(v29 + 64) = v32;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
      v34 = a1 + v14[8];
      v35 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
      *(boxed_opaque_existential_1 + 8) = 0;
      (*(*(v31 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v31);
      ActionProperty.init(_:)();
      v36 = type metadata accessor for ActionProperty();
      (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
      v37 = type metadata accessor for InteractionType();
      v38 = v39;
      (*(*(v37 - 8) + 56))(v39, 1, 1, v37);
      StandardActionHandler.perform(_:interactionType:)();
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v38, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
      (*(v24 + 8))(v13, v23);
    }
  }

  else
  {
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
      _os_log_impl(&dword_25E523000, v26, v27, "SingleResultVoicemailView repeat is tapped before playing voicemail for the first time, ignore repeat request", v28, 2u);
      MEMORY[0x25F8B8670](v28, -1, -1);
    }
  }
}

uint64_t sub_25E58DE48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = type metadata accessor for SingleResultVoicemailModel();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25E58DFB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for SingleResultVoicemailModel();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void type metadata completion function for SingleResultVoicemailView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SingleResultVoicemailModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<CGFloat>(319, &lazy cache variable for type metadata for State<CGFloat>);
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<CGFloat>(319, &lazy cache variable for type metadata for State<Bool>);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Publishers.Autoconnect<NSTimer.TimerPublisher>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for State<CGFloat>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Publishers.Autoconnect<NSTimer.TimerPublisher>()
{
  if (!lazy cache variable for type metadata for Publishers.Autoconnect<NSTimer.TimerPublisher>)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
    v0 = type metadata accessor for Publishers.Autoconnect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Publishers.Autoconnect<NSTimer.TimerPublisher>);
    }
  }
}

uint64_t sub_25E58E424()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, MEMORY[0x277D62A30]);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, MEMORY[0x277D62A30]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t outlined init with copy of SingleResultVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t sub_25E58E8A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25E58E8D4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t outlined init with take of ModifiedContent<SimpleItemStandardView, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for SingleResultVoicemailView() - 8);
  v33 = *(*v1 + 64);
  v32 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2 = v1[7];
  v3 = type metadata accessor for ActionHandler();
  (*(*(v3 - 8) + 8))(v32 + v2, v3);
  v4 = v1[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v32 + v4, v5);
  v6(v32 + v1[9], v5);
  v7 = v32 + v1[10];
  v8 = *(v7 + 1);

  v9 = *(v7 + 3);

  v10 = *(v7 + 5);

  v11 = *(v7 + 7);

  v12 = *(v7 + 9);

  v13 = *(v7 + 11);

  v14 = *(v7 + 13);

  v15 = *(v7 + 15);

  v16 = type metadata accessor for SingleResultVoicemailModel();
  v17 = v16[13];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v19 = *(*(v18 - 8) + 8);
  v19(&v7[v17], v18);
  v19(&v7[v16[14]], v18);
  v20 = &v7[v16[15]];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v22 = *(*(v21 - 8) + 8);
  v22(v20, v21);
  v23 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v24 = v23[5];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v26 = *(*(v25 - 8) + 8);
  v26(&v20[v24], v25);
  v22(&v20[v23[6]], v21);
  v26(&v20[v23[7]], v25);
  v27 = *&v20[v23[8] + 8];

  v28 = *(v32 + v1[11] + 8);

  v29 = *(v32 + v1[12] + 8);

  v30 = *(v32 + v1[13]);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in SingleResultVoicemailView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SingleResultVoicemailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.getter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleVoicemailModel()
{
  result = type metadata singleton initialization cache for SingleVoicemailModel;
  if (!type metadata singleton initialization cache for SingleVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleVoicemailModel.openContactRSKE.getter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SingleVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SingleVoicemailModel.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SingleVoicemailModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SingleVoicemailModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleVoicemailModel.callDuration.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SingleVoicemailModel.callDuration.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t property wrapper backing initializer of SingleVoicemailModel.openVoicemailRSKE()
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t key path getter for SingleVoicemailModel.openVoicemailRSKE : SingleVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleVoicemailModel.openVoicemailRSKE : SingleVoicemailModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleVoicemailModel() + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.setter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleVoicemailModel.openVoicemailRSKE.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t key path getter for SingleVoicemailModel.openContactRSKE : SingleVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleVoicemailModel.openContactRSKE : SingleVoicemailModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SingleVoicemailModel() + 44);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleVoicemailModel.openContactRSKE.setter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleVoicemailModel.openContactRSKE.modify(uint64_t *a1))()
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
  v4 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

void SingleVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:unseen:openVoicemailRSKE:openContactRSKE:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, void *a11)
{
  *a9 = 0x6F56656C676E6953;
  *(a9 + 8) = 0xEF6C69616D656369;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  v14 = type metadata accessor for SingleVoicemailModel();
  v15 = *(v14 + 40);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v17 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  v16 = a9 + *(v14 + 44);
  CodableAceObject.init(wrappedValue:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SingleVoicemailModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x746E6F436E65706FLL;
  }

  v4 = 0x617275446C6C6163;
  if (v1 != 4)
  {
    v4 = 0x6E6565736E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x4479616C70736964;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SingleVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v34 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v33 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v32 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v31 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    v30 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 80);
    v29 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = type metadata accessor for SingleVoicemailModel();
    v23 = *(v22 + 40);
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v22 + 44);
    v27 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleVoicemailModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v38 = *(v42 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMR);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = &v33 - v11;
  v39 = type metadata accessor for SingleVoicemailModel();
  v13 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  v18 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v34 = v6;
    v35 = v8;
    v40 = v9;
    v19 = v36;
    v20 = v37;
    v50 = 0;
    v21 = v12;
    *v15 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 1) = v22;
    v49 = 1;
    *(v15 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 3) = v23;
    v48 = 2;
    *(v15 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 5) = v24;
    v47 = 3;
    *(v15 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 7) = v25;
    v46 = 4;
    *(v15 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 9) = v26;
    v45 = 5;
    v15[80] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v44 = 6;
    v27 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v28 = v35;
    v29 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v39 + 40);
    v33 = v27;
    v35 = *(v38 + 32);
    v35(&v15[v30], v28, v29);
    v43 = 7;
    v31 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 8))(v21, v20);
    v35(&v15[*(v39 + 44)], v31, v29);
    outlined init with copy of SingleVoicemailModel(v15, v19);
    __swift_destroy_boxed_opaque_existential_0(v41);
    return outlined destroy of SingleVoicemailModel(v15);
  }
}

uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleVoicemailModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleVoicemailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleVoicemailModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E5902F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E5903C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleVoicemailModel()
{
  type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t specialized SingleVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6565736E75 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E6F436E65706FLL && a2 == 0xEF454B5352746361)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t SlidingEmergencyCountdownView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a1 = EnvironmentObject.init()();
  a1[1] = v2;
  v3 = type metadata accessor for SlidingEmergencyCountdownView();
  v4 = a1 + *(v3 + 20);
  InteractionDelegate.init()();
  v5 = (a1 + *(v3 + 24));
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);
  result = ObservedObject.init(wrappedValue:)();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t type metadata accessor for SlidingEmergencyCountdownView()
{
  result = type metadata singleton initialization cache for SlidingEmergencyCountdownView;
  if (!type metadata singleton initialization cache for SlidingEmergencyCountdownView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of SlidingEmergencyCountdownView.viewModel()
{
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t SlidingEmergencyCountdownView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SlidingEmergencyCountdownView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOy05PhonedB00G14ComponentStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAA6VStackVyAKyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AD012BinaryButtonC0VtGG_AcDE21requestHostBackground_8accepted6deniedQrAD14HostBackgroundOSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAMyA7_A2_G_A14_AMyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOy05PhonedB00G14ComponentStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAA6VStackVyAKyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AD012BinaryButtonC0VtGG_AcDE21requestHostBackground_8accepted6deniedQrAD14HostBackgroundOSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAMyA7_A2_G_A14_AMyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_MR);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  v9 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v28 - v10;
  outlined init with copy of SlidingEmergencyCountdownView(v1, v5);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(v5, v13 + v12);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v28 = EnvironmentObject.init()();
  v40 = v28;
  v41 = v14;
  v42 = partial apply for closure #1 in SlidingEmergencyCountdownView.body.getter;
  v43 = v13;
  if (*v1)
  {
    v15 = *v1;
    dispatch thunk of Context.currentIdiom.getter();

    VRXIdiom.isWatchOS.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_Md, &_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_MR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    v18 = lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v19 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    v34 = v16;
    v35 = v16;
    v36 = v17;
    v37 = v18;
    v38 = v18;
    v39 = v19;
    swift_getOpaqueTypeConformance2();
    v20 = v29;
    View.if<A>(_:transform:)();

    KeyPath = swift_getKeyPath();
    v22 = &v11[*(v30 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR) + 28);
    v24 = *MEMORY[0x277CDF3C8];
    v25 = type metadata accessor for ColorScheme();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = KeyPath;
    (*(v31 + 32))(v11, v20, v32);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    View.hideConversationAreaKeyline(_:)();
    return sub_25E5919A4(v11);
  }

  else
  {
    v27 = *(v1 + 8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of SlidingEmergencyCountdownView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SlidingEmergencyCountdownView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SlidingEmergencyCountdownView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for SlidingEmergencyCountdownView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return SlidingEmergencyCountdownView.countdownContent.getter(a1);
}

uint64_t SlidingEmergencyCountdownView.countdownContent.getter@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for BinaryButtonView();
  v26 = *(v2 - 8);
  v3 = v26;
  v27 = v2;
  v4 = *(v26 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v31 = static HorizontalAlignment.center.getter();
  LOBYTE(v34[0]) = 1;
  closure #1 in SlidingEmergencyCountdownView.countdownContent.getter(v1, v66);
  *&v56[7] = v66[0];
  *&v56[23] = v66[1];
  *&v56[39] = v66[2];
  *&v56[55] = v66[3];
  v29 = LOBYTE(v34[0]);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v57[55] = v62;
  *&v57[71] = v63;
  *&v57[87] = v64;
  *&v57[103] = v65;
  *&v57[7] = v59;
  *&v57[23] = v60;
  *&v57[39] = v61;
  v10 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v58 = 0;
  v25 = v9;
  SlidingEmergencyCountdownView.callAndCancelBinaryButtonView.getter(v9);
  v19 = *(v3 + 16);
  v20 = v27;
  v19(v7, v9, v27);
  v33[0] = v31;
  v33[1] = 0;
  LOBYTE(v33[2]) = v29;
  *(&v33[4] + 1) = *&v56[16];
  *(&v33[6] + 1) = *&v56[32];
  *(&v33[8] + 1) = *&v56[48];
  *(&v33[2] + 1) = *v56;
  v33[10] = *&v56[63];
  v33[11] = KeyPath;
  LOBYTE(v33[12]) = 1;
  *(&v33[18] + 1) = *&v57[48];
  *(&v33[16] + 1) = *&v57[32];
  *(&v33[14] + 1) = *&v57[16];
  *(&v33[12] + 1) = *v57;
  v33[26] = *&v57[111];
  *(&v33[24] + 1) = *&v57[96];
  *(&v33[22] + 1) = *&v57[80];
  *(&v33[20] + 1) = *&v57[64];
  LOBYTE(v33[27]) = v10;
  HIDWORD(v33[27]) = *&v32[3];
  *(&v33[27] + 1) = *v32;
  v33[28] = v12;
  v33[29] = v14;
  v33[30] = v16;
  v33[31] = v18;
  LOBYTE(v33[32]) = 0;
  v21 = v28;
  memcpy(v28, v33, 0x101uLL);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VG_07SnippetB0012BinaryButtonG0VtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VG_07SnippetB0012BinaryButtonG0VtMR) + 48)];
  v19(v22, v7, v20);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMR);
  v23 = *(v26 + 8);
  v23(v25, v20);
  v23(v7, v20);
  v34[0] = v31;
  v34[1] = 0;
  v35 = v29;
  v37 = *&v56[16];
  v38 = *&v56[32];
  *v39 = *&v56[48];
  v36 = *v56;
  *&v39[15] = *&v56[63];
  v40 = KeyPath;
  v41 = 1;
  v45 = *&v57[48];
  v44 = *&v57[32];
  v43 = *&v57[16];
  v42 = *v57;
  *&v48[15] = *&v57[111];
  *v48 = *&v57[96];
  v47 = *&v57[80];
  v46 = *&v57[64];
  v49 = v10;
  *&v50[3] = *&v32[3];
  *v50 = *v32;
  v51 = v12;
  v52 = v14;
  v53 = v16;
  v54 = v18;
  v55 = 0;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMR);
}

uint64_t closure #2 in SlidingEmergencyCountdownView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v16 - v4);
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = static Edge.Set.top.getter();
  v20 = 1;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  *&v18 = v9;
  *(&v18 + 1) = v8;
  v19[0] = v10;
  memset(&v19[8], 0, 32);
  v19[40] = 1;
  v11 = v6;

  *v5 = static Color.black.getter();
  v12 = *MEMORY[0x277D63BB8];
  v13 = type metadata accessor for HostBackground();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v5, v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
  View.requestHostBackground<A, B>(_:accepted:denied:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  v22[0] = *&v19[16];
  *(v22 + 9) = *&v19[25];
  v21[1] = v18;
  v21[2] = *v19;
  v21[0] = v17;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v21, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_Md, &_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_MR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ColorScheme> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5919A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #2 in SlidingEmergencyCountdownView.body.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = *(v10 + 9);
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  *(a2 + 57) = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &v7, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

uint64_t closure #2 in closure #2 in SlidingEmergencyCountdownView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v11[2] = a1[2];
  v12[0] = v4;
  *(v12 + 9) = *(a1 + 57);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = static Edge.Set.all.getter();
  v7 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v7;
  *(a2 + 57) = *(a1 + 57);
  v8 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 73) = v6;
  return outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v11, &v10, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

uint64_t closure #1 in SlidingEmergencyCountdownView.countdownContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + *(type metadata accessor for SlidingEmergencyCountdownView() + 24) + 8);
  (*(v3 + 864))();
  v30 = v4;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.headline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.regular.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  v29 = static Color.secondary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  LOBYTE(v12) = v22;
  v24 = v23;
  outlined consume of Text.Storage(v15, v17, v7 & 1);

  SlidingEmergencyCountdownView.emergencyServicesLabel.getter(&v29);
  v25 = v29;
  v26 = v30;
  LOBYTE(v17) = v31;
  v27 = v32;
  LOBYTE(v12) = v12 & 1;
  LOBYTE(v29) = v12;
  v33 = v31;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v12;
  *(a2 + 24) = v24;
  *(a2 + 32) = v25;
  *(a2 + 40) = v26;
  *(a2 + 48) = v17;
  *(a2 + 56) = v27;
  outlined copy of Text.Storage(v19, v21, v12);

  outlined copy of Text.Storage(v25, v26, v17);

  outlined consume of Text.Storage(v25, v26, v17);

  outlined consume of Text.Storage(v19, v21, v12);
}

uint64_t SlidingEmergencyCountdownView.emergencyServicesLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + *(type metadata accessor for SlidingEmergencyCountdownView() + 24) + 8);
  (*(*v2 + 912))();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.title3.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static Font.Weight.semibold.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  v17 = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  if ((*(*v2 + 1056))(v18))
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  return result;
}

uint64_t SlidingEmergencyCountdownView.callAndCancelBinaryButtonView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07SnippetB016BinaryButtonViewV15TransitionStateOGMd, &_s7SwiftUI7BindingVy07SnippetB016BinaryButtonViewV15TransitionStateOGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v58 - v5;
  v73 = type metadata accessor for SeparatorStyle();
  v72 = *(v73 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v65 = *(v66 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for StatusIndicatorView();
  v70 = *(v67 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD015StatusIndicatorC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD015StatusIndicatorC0V_Qo_MR);
  v71 = *(v69 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  v63 = &v58 - v13;
  v14 = type metadata accessor for SlidingEmergencyCountdownView();
  v15 = v14 - 8;
  v58 = *(v14 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v17 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  SlidingEmergencyCountdownView.smartCallButton.getter(&v58 - v22);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>);
  v24 = View.eraseToAnyView()();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v23, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v85 = MEMORY[0x277CE11D0];
  v86 = MEMORY[0x277D63A58];
  v25 = MEMORY[0x277D63A58];
  v26 = MEMORY[0x277CE11D0];
  v84 = v24;
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SlidingEmergencyCountdownView(v1, v60);
  v27 = *(v58 + 80);
  v28 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + ((v27 + 16) & ~v27));
  v76 = v1;
  Button.init(action:label:)();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v29 = EnvironmentObject.init()();
  v31 = v30;
  v32 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR) + 36)];
  *v32 = v29;
  v32[1] = v31;
  v33 = *(v2 + *(v15 + 32) + 8);
  LOBYTE(v29) = (*(*v33 + 1104))();
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v29 & 1;
  v36 = &v19[*(v59 + 36)];
  *v36 = KeyPath;
  v36[1] = partial apply for closure #1 in View.disabled(_:);
  v36[2] = v35;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>);
  v37 = View.eraseToAnyView()();
  v38 = outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v19, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v82 = v26;
  v83 = v25;
  v81 = v37;
  v39 = (*(*v33 + 672))(v38);
  v79 = MEMORY[0x277D837D0];
  v80 = MEMORY[0x277D63F88];
  v77 = v39;
  v78 = v40;
  (*(v65 + 104))(v64, *MEMORY[0x277D63D68], v66);
  v41 = v62;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v42 = v72;
  v43 = v68;
  v44 = v73;
  (*(v72 + 104))(v68, *MEMORY[0x277D62F38], v73);
  v45 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type StatusIndicatorView and conformance StatusIndicatorView, MEMORY[0x277D63D78]);
  v46 = v63;
  v47 = v67;
  View.separators(_:isOverride:)();
  (*(v42 + 8))(v43, v44);
  (*(v70 + 8))(v41, v47);
  v77 = v47;
  v78 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v69;
  v49 = View.eraseToAnyView()();
  (*(v71 + 8))(v46, v48);
  v80 = MEMORY[0x277D63A58];
  v79 = MEMORY[0x277CE11D0];
  v77 = v49;
  v50 = v2;
  v51 = v60;
  outlined init with copy of SlidingEmergencyCountdownView(v50, v60);
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  *(v53 + 16) = v52;
  *(v53 + 24) = v54;
  outlined init with take of SlidingEmergencyCountdownView(v51, v53 + ((v27 + 32) & ~v27));
  v55 = static MainActor.shared.getter();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  type metadata accessor for BinaryButtonView.TransitionState();
  Binding.init(get:set:)();
  return BinaryButtonView.init(primaryButton:secondaryButton:statusIndicator:statusState:duration:)();
}

uint64_t closure #1 in SlidingEmergencyCountdownView.smartCancelButton.getter(uint64_t a1)
{
  v2 = type metadata accessor for InteractionDelegateWrapper();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SlidingEmergencyCountdownView();
  v8 = *(a1 + *(v7 + 24) + 8);
  (*(*v8 + 1064))(1);
  v9 = a1 + *(v7 + 20);
  InteractionDelegate.wrappedValue.getter();
  if (*a1)
  {
    v10 = *(*v8 + 1368);
    v11 = *a1;
    v10(v6, v11);

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *(a1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}