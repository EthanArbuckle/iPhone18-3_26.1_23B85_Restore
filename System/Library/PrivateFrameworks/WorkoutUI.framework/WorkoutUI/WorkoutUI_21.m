uint64_t closure #1 in RingDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v63 = *a1;
  v6 = *(a1 + 24);
  v53 = a1;
  v68 = ARUIRingType.name(isWheelchairUser:)(v6);
  v58 = lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.localizedUppercase.getter();
  v9 = v8;

  v66 = v7;
  v67 = v9;
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v56 = *MEMORY[0x277CE09A0];
  v15 = v56;
  v16 = type metadata accessor for Font.Design();
  v52 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v55 = v17 + 104;
  v57 = v18;
  v18(v5, v15, v16);
  v19 = *(v17 + 56);
  v51 = v17 + 56;
  v54 = v19;
  v19(v5, 0, 1, v16);
  static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, Text)>>(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  Font.monospacedDigit()();

  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v16) = v23;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Color.white.getter();
  v24 = Color.opacity(_:)();

  v68._countAndFlagsBits = v24;
  v25 = Text.foregroundStyle<A>(_:)();
  v61 = v26;
  v62 = v25;
  v60 = v27;
  v59 = v28;
  outlined consume of Text.Storage(v20, v22, v16 & 1);

  v68._countAndFlagsBits = RingDetailView.valueOutOfGoalString.getter();
  v68._object = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  LOBYTE(v10) = v33;
  static Font.Weight.semibold.getter();
  v34 = v52;
  v57(v5, v56, v52);
  v54(v5, 0, 1, v34);
  static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, Text)>>(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  Font.monospacedDigit()();

  Font.feature(_:_:)();

  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v24) = v38;

  outlined consume of Text.Storage(v30, v32, v10 & 1);

  ARUIRingType.color.getter(v63);
  v39 = Text.foregroundColor(_:)();
  v41 = v40;
  LOBYTE(v32) = v42;
  v44 = v43;

  outlined consume of Text.Storage(v35, v37, v24 & 1);

  v45 = v59 & 1;
  v65 = v59 & 1;
  LOBYTE(v68._countAndFlagsBits) = v59 & 1;
  LOBYTE(v22) = v32 & 1;
  LOBYTE(v66) = v32 & 1;
  v46 = v64;
  v47 = v61;
  v48 = v62;
  v49 = v60;
  *v64 = v62;
  v46[1] = v49;
  *(v46 + 16) = v45;
  v46[3] = v47;
  v46[4] = v39;
  v46[5] = v41;
  *(v46 + 48) = v22;
  v46[7] = v44;
  outlined copy of Text.Storage(v48, v49, v45);

  outlined copy of Text.Storage(v39, v41, v22);

  outlined consume of Text.Storage(v39, v41, v22);

  outlined consume of Text.Storage(v48, v49, v65);
}

uint64_t getEnumTagSinglePayload for RingDetailView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RingDetailView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGAEyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleM0VyAA0H0V_AZtGG_Qo_AA0q10AttachmentK0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of VStack<TupleView<(Text, Text)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationsAllView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedConfigurationsAllView(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

void one-time initialization function for dateFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  v6 = MEMORY[0x20F30BAD0](0x64204D4D4DLL, 0xE500000000000000);
  [v4 setLocalizedDateFormatFromTemplate_];

  static ManagedConfigurationsAllView.dateFormatter = v4;
}

{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  v6 = MEMORY[0x20F30BAD0](0x64204D4D4DLL, 0xE500000000000000);
  [v4 setLocalizedDateFormatFromTemplate_];

  static ManagedConfigurationsUpcomingViewiOS.dateFormatter = v4;
}

uint64_t closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAA4TextV_AA7BindingVySbGAA0K0Oqd__yXEtAaFRd__lFQOyAA15ModifiedContentVyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ATyATyAmA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGA2_tGGG_AA08BorderedtR0VQo_AA06_TraitZ8ModifierVyAA022ListRowBackgroundTraitY0VGG_AgAEAUyQrqd__AaVRd__lFQOyAXyA12_G_AA017BorderedProminenttR0VQo_Qo_AEGMd);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v124 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v122 = v108 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
  MEMORY[0x28223BE20](v115);
  v114 = v108 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGGMd);
  v116 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v132 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = v108 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = v108 - v18;
  MEMORY[0x28223BE20](v19);
  v121 = v108 - v20;
  MEMORY[0x28223BE20](v21);
  v113 = v108 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = v108 - v24;
  MEMORY[0x28223BE20](v25);
  object = v108 - v26;
  MEMORY[0x28223BE20](v27);
  v127 = v108 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = v108 - v30;
  MEMORY[0x28223BE20](v32);
  v126 = v108 - v33;
  v120 = *(a1 + 9);
  v34 = dispatch thunk of ManagedConfigurationsViewModel.todayConfigurations.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v125 = a1;
  swift_beginAccess();
  v35 = WorkoutUIBundle.super.isa;
  v151._object = 0xE000000000000000;
  v36._object = 0x800000020CB9B560;
  v36._countAndFlagsBits = 0xD000000000000012;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v151._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v151);

  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v39 = static ManagedConfigurationsAllView.dateFormatter;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v14, v11);
  v41 = [v39 stringFromDate_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v111 = v31;
  if (v34 >> 62)
  {
    v44 = __CocoaSet.count.getter();
  }

  else
  {
    v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v44)
  {
    *&v110 = v108;
    MEMORY[0x28223BE20](v44);
    v45 = static VerticalAlignment.center.getter();
    v137 = 1;
    closure #1 in closure #2 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)(v43, &v138);
    v142 = *v139;
    v143 = *&v139[16];
    v144 = *&v139[32];
    v145 = *&v139[48];
    v141 = v138;
    v147 = *v139;
    v148 = *&v139[16];
    v149 = *&v139[32];
    v150 = *&v139[48];
    v146 = v138;
    outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v141, v135, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);
    outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v146, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);

    *&v136[71] = v145;
    *&v136[55] = v144;
    *&v136[39] = v143;
    *&v136[23] = v142;
    *&v136[7] = v141;
    v138 = v45;
    v139[0] = v137;
    *&v139[17] = *&v136[16];
    *&v139[1] = *v136;
    *&v140[15] = *(&v145 + 1);
    *v140 = *&v136[64];
    *&v139[49] = *&v136[48];
    *&v139[33] = *&v136[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
    v46 = v111;
    Section<>.init(header:content:)();

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
    v46 = v111;
    (*(*(v48 - 8) + 56))(v111, 1, 1, v48);
  }

  outlined init with take of Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?(v46, v126);
  v49 = dispatch thunk of ManagedConfigurationsViewModel.futureConfigurations.getter();
  v50 = WorkoutUIBundle.super.isa;
  v152._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD000000000000013;
  v51._object = 0x800000020CB9B580;
  v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v52.value._object = 0xEB00000000656C62;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v152._countAndFlagsBits = 0;
  v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v152);

  v54 = WorkoutUIBundle.super.isa;
  v153._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD000000000000018;
  v55._object = 0x800000020CB9B5A0;
  v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v56.value._object = 0xEB00000000656C62;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v153._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v153);

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v58 = swift_allocObject();
  v110 = xmmword_20CB5DA70;
  *(v58 + 16) = xmmword_20CB5DA70;
  v59 = ManagedConfigurationsViewModel.futureDaysCount.getter();
  v60 = MEMORY[0x277D83C10];
  *(v58 + 56) = MEMORY[0x277D83B88];
  *(v58 + 64) = v60;
  *(v58 + 32) = v59;
  static String.localizedStringWithFormat(_:_:)();
  v62 = v61;

  if (v49 >> 62)
  {
    v63 = __CocoaSet.count.getter();
  }

  else
  {
    v63 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v63)
  {
    v108[1] = v108;
    MEMORY[0x28223BE20](v63);
    v108[0] = &v108[-4];
    v64 = static VerticalAlignment.center.getter();
    v137 = 1;
    closure #1 in closure #2 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)(v62, &v138);
    v142 = *v139;
    v143 = *&v139[16];
    v144 = *&v139[32];
    v145 = *&v139[48];
    v141 = v138;
    v147 = *v139;
    v148 = *&v139[16];
    v149 = *&v139[32];
    v150 = *&v139[48];
    v146 = v138;
    outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v141, v135, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);
    outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v146, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);

    *&v134[71] = v145;
    *&v134[55] = v144;
    *&v134[39] = v143;
    *&v134[23] = v142;
    *&v134[7] = v141;
    v138 = v64;
    v139[0] = v137;
    *&v139[17] = *&v134[16];
    *&v139[1] = *v134;
    *&v140[15] = *(&v145 + 1);
    *v140 = *&v134[64];
    *&v139[49] = *&v134[48];
    *&v139[33] = *&v134[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
    v65 = object;
    Section<>.init(header:content:)();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  }

  else
  {

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
    v65 = object;
    (*(*(v67 - 8) + 56))(object, 1, 1, v67);
  }

  outlined init with take of Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?(v65, v127);
  v68 = dispatch thunk of ManagedConfigurationsViewModel.pastConfigurations.getter();
  v69 = WorkoutUIBundle.super.isa;
  v154._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0xD000000000000015;
  v70._object = 0x800000020CB9B5C0;
  v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71.value._object = 0xEB00000000656C62;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v154._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v154);
  v109._object = v73._countAndFlagsBits;
  object = v73._object;

  v74 = WorkoutUIBundle.super.isa;
  v155._object = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD00000000000001ALL;
  v75._object = 0x800000020CB9B5E0;
  v76.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v76.value._object = 0xEB00000000656C62;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v155._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v155);

  v78 = swift_allocObject();
  *(v78 + 16) = v110;
  v79 = ManagedConfigurationsViewModel.previousDaysCount.getter();
  *(v78 + 56) = MEMORY[0x277D83B88];
  *(v78 + 64) = MEMORY[0x277D83C10];
  *(v78 + 32) = v79;
  static String.localizedStringWithFormat(_:_:)();
  v81 = v80;

  if (v68 >> 62)
  {
    v82 = __CocoaSet.count.getter();
    if (v82)
    {
      goto LABEL_17;
    }

LABEL_21:

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
    v84 = v113;
    (*(*(v86 - 8) + 56))(v113, 1, 1, v86);
    goto LABEL_22;
  }

  v82 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v82)
  {
    goto LABEL_21;
  }

LABEL_17:
  v120 = v108;
  MEMORY[0x28223BE20](v82);
  v83 = static VerticalAlignment.center.getter();
  v137 = 1;
  closure #1 in closure #2 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)(v81, &v138);
  v142 = *v139;
  v143 = *&v139[16];
  v144 = *&v139[32];
  v145 = *&v139[48];
  v141 = v138;
  v147 = *v139;
  v148 = *&v139[16];
  v149 = *&v139[32];
  v150 = *&v139[48];
  v146 = v138;
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v141, v135, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v146, &_s7SwiftUI9TupleViewVyAA4TextV_ACyAA6SpacerV_AEtGSgtGMd);

  *&v133[71] = v145;
  *&v133[55] = v144;
  *&v133[39] = v143;
  *&v133[23] = v142;
  *&v133[7] = v141;
  v138 = v83;
  v139[0] = v137;
  *&v139[17] = *&v133[16];
  *&v139[1] = *v133;
  *&v140[15] = *(&v145 + 1);
  *v140 = *&v133[64];
  *&v139[49] = *&v133[48];
  *&v139[33] = *&v133[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AGtGSgtGGMd);
  lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
  v84 = v113;
  Section<>.init(header:content:)();

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGMd);
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
LABEL_22:
  outlined init with take of Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?(v84, v128);
  closure #2 in closure #1 in ManagedConfigurationsAllView.body.getter(v114);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
  v87 = Section<>.init(footer:content:)();
  v125 = v108;
  MEMORY[0x28223BE20](v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAA4TextV_AA7BindingVySbGAA0I0Oqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAA6HStackVyAA05TupleC0VyAA6SpacerV_APyAPyAiA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGAZtGGG_AA08BorderedrP0VQo_AA06_TraitxY0VyAA022ListRowBackgroundTraitW0VGG_AcAEAQyQrqd__AaRRd__lFQOyATyA8_G_AA017BorderedProminentrP0VQo_Qo_Md);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMd);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_Md);
  v90 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  v92 = type metadata accessor for BorderedProminentButtonStyle();
  v93 = lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  v94 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  *&v138 = v91;
  *(&v138 + 1) = v92;
  *v139 = v93;
  *&v139[8] = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v138 = v88;
  *(&v138 + 1) = v89;
  *v139 = v90;
  *&v139[8] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v96 = v122;
  Section<>.init(content:)();
  v97 = v121;
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v126, v121, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v127, v129, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v128, v130, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  v98 = v116;
  v125 = *(v116 + 16);
  v125(v132, v131, v123);
  v100 = v118;
  v99 = v119;
  v120 = *(v118 + 16);
  v120(v124, v96, v119);
  v101 = v117;
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v97, v117, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSg_A15_A15_ACyA13_A13_AWyAIA0_yAI4CaseOSgGGGACyA13_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAGyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtMd);
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v129, v101 + v102[12], &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v130, v101 + v102[16], &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  v103 = v123;
  v125((v101 + v102[20]), v132, v123);
  v104 = v124;
  v120((v101 + v102[24]), v124, v99);
  v105 = *(v100 + 8);
  v105(v122, v99);
  v106 = *(v98 + 8);
  v106(v131, v103);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v128, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v127, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v126, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  v105(v104, v99);
  v106(v132, v103);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v130, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v129, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  return outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v121, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
}

void closure #2 in closure #1 in ManagedConfigurationsAllView.body.getter(uint64_t a1@<X8>)
{
  v40 = type metadata accessor for Date();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &countAndFlagsBits - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v43._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._object = 0x800000020CB9B680;
  v7._countAndFlagsBits = 0xD000000000000024;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v43)._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5DA80;
  v10 = dispatch thunk of ExternalProvider.sourceName.getter();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = objc_opt_self();
  ExternalProvider.syncStartDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v40);
  v17 = [v15 stringWithDayNameAndShortMonthFromDate_];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v18;
    *(v9 + 80) = v20;
    v21 = String.init(format:_:)();
    v23 = v22;

    v41 = v21;
    v42 = v23;
    lazy protocol witness table accessor for type String and conformance String();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    static Color.secondary.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    outlined consume of Text.Storage(v24, v26, v28 & 1);

    v36 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd) + 36));
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
    v38 = type metadata accessor for Text.Case();
    (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
    *v36 = swift_getKeyPath();
    *a1 = v29;
    *(a1 + 8) = v31;
    *(a1 + 16) = v33 & 1;
    *(a1 + 24) = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMd);
  MEMORY[0x28223BE20](v12);
  v14 = (v47 - v13);
  static ButtonRole.destructive.getter();
  v15 = type metadata accessor for ButtonRole();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = swift_allocObject();
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v18 = a1[5];
  v16[5] = a1[4];
  v16[6] = v18;
  v19 = a1[1];
  v16[1] = *a1;
  v16[2] = v19;
  outlined init with copy of ManagedConfigurationsAllView(a1, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMd);
  Button.init(role:action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v20 = v50;
  v21 = v52;
  View.buttonStyle<A>(_:)();
  v53[1](v6, v21);
  (*(v51 + 8))(v11, v20);
  v56 = static Color.clear.getter();
  v22 = AnyView.init<A>(_:)();
  v52 = v12;
  v53 = v14;
  *(v14 + *(v12 + 36)) = v22;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = WorkoutUIBundle.super.isa;
  v60._object = 0xE000000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._object = 0x800000020CB9B600;
  v25._countAndFlagsBits = 0xD000000000000035;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20CB5DA70;
  v28 = dispatch thunk of ExternalProvider.sourceName.getter();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v31 = String.init(format:_:)();
  v33 = v32;

  v56 = v31;
  v57 = v33;
  lazy protocol witness table accessor for type String and conformance String();
  v51 = Text.init<A>(_:)();
  v50 = v34;
  v36 = v35;
  v49 = v37;
  v55 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v38 = State.projectedValue.getter();
  v48 = v47;
  v47[3] = v58;
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  v40 = type metadata accessor for BorderedProminentButtonStyle();
  v41 = lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  v42 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  v56 = v39;
  v57 = v40;
  v58 = v41;
  v59 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  v44 = v51;
  v45 = v50;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  outlined consume of Text.Storage(v44, v45, v36 & 1);

  return sub_20C68878C(v43);
}

double closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v13 = 1;
  closure #1 in closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter(&v8);
  v15 = v9;
  v16 = v10;
  v17[0] = v11[0];
  *(v17 + 9) = *(v11 + 9);
  v14 = v8;
  v18[2] = v10;
  v19[0] = v11[0];
  *(v19 + 9) = *(v11 + 9);
  v18[0] = v8;
  v18[1] = v9;
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v14, v7, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMd);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v18, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMd);
  *&v12[7] = v14;
  *&v12[64] = *(v17 + 9);
  *&v12[55] = v17[0];
  *&v12[39] = v16;
  *&v12[23] = v15;
  v3 = *v12;
  *(a1 + 33) = *&v12[16];
  v4 = *&v12[48];
  *(a1 + 49) = *&v12[32];
  *(a1 + 65) = v4;
  result = *&v12[64];
  *(a1 + 81) = *&v12[64];
  v6 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v3, v5, v7 & 1);

  outlined consume of Text.Storage(v3, v5, v7 & 1);
}

uint64_t closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  static ButtonRole.destructive.getter();
  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  outlined init with copy of ManagedConfigurationsAllView(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  Button.init(role:action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

void closure #1 in closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of WorkoutConfigurationOccurrenceStore.stopSyncing(for:)();
  }

  else
  {
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t closure #1 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)(uint64_t a1, _OWORD *a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a2[3];
  v3[3] = a2[2];
  v3[4] = v4;
  v5 = a2[5];
  v3[5] = a2[4];
  v3[6] = v5;
  v6 = a2[1];
  v3[1] = *a2;
  v3[2] = v6;

  outlined init with copy of ManagedConfigurationsAllView(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  if (!v5)
  {
    _sSo13HKHealthStoreCMaTm_1(0, &lazy cache variable for type metadata for HKHealthStore);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
    v31 = v4;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a2 + 48);
  if (!v6)
  {
LABEL_7:
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
    v32 = v4;
    v33 = v5;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  _sSo13HKHealthStoreCMaTm_1(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  v11 = EnvironmentObject.init()();
  v38 = v12;
  v39 = v11;
  type metadata accessor for ConfigurationNavigationModel();
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v13 = EnvironmentObject.init()();
  v36 = v14;
  v37 = v13;
  type metadata accessor for WorkoutConfiguration();
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
  v15 = v8;
  v16 = ObservedObject.init(wrappedValue:)();
  v34 = v17;
  v35 = v16;
  v18 = v9;
  v19 = v10;
  v20 = FIActivityMoveModeUserDefault();
  type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v21 = v19;
  v22 = RaceRouteDataStore.init(healthStore:)();
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v18;
  v23[6] = v22;
  v24 = *a2;
  if (!*a2)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v25 = v23;
  v26 = v24;
  v27 = static ObservableObject.environmentStore.getter();
  v28 = *(a2 + 16);
  if (v28)
  {
    v29 = v27;

    result = static ObservableObject.environmentStore.getter();
    *a3 = v39;
    *(a3 + 8) = v38;
    *(a3 + 16) = v37;
    *(a3 + 24) = v36;
    *(a3 + 32) = v20;
    *(a3 + 40) = v18;
    *(a3 + 48) = v21;
    *(a3 + 56) = 0;
    *(a3 + 64) = partial apply for implicit closure #1 in ManagedWorkoutConfigurationRow.init(workoutConfiguration:healthStore:occurrenceStore:presentationSize:);
    *(a3 + 72) = v25;
    *(a3 + 80) = 0;
    *(a3 + 88) = v35;
    *(a3 + 96) = v34;
    *(a3 + 104) = v29;
    *(a3 + 112) = v24;
    *(a3 + 120) = result;
    *(a3 + 128) = v28;
    return result;
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedUppercase.getter();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  if (a1)
  {
    v27 = v4;

    v10 = Text.init<A>(_:)();
    v12 = v11;
    v28 = v7;
    v14 = v13;
    static Font.Weight.light.getter();
    a1 = Text.fontWeight(_:)();
    v16 = v15;
    v29 = v5;
    v17 = v9;
    v19 = v18;
    v21 = v20;
    v22 = v14 & 1;
    v7 = v28;
    outlined consume of Text.Storage(v10, v12, v22);

    v23 = v19 & 1;
    v9 = v17;
    v5 = v29;
    outlined copy of Text.Storage(a1, v16, v23);

    outlined consume of Text.Storage(a1, v16, v23);

    outlined copy of Text.Storage(a1, v16, v23);

    v4 = v27;
    v24 = 1;
  }

  else
  {
    v24 = 0;
    v16 = 0;
    v23 = 0;
    v21 = 0;
  }

  v25 = v4 & 1;
  v30 = v4 & 1;
  outlined copy of Text.Storage(v5, v7, v4 & 1);

  outlined copy of TupleView<(Spacer, Text)>?(0, v24, a1, v16, v23, v21);
  outlined consume of TupleView<(Spacer, Text)>?(0, v24, a1, v16, v23, v21);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v30;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v24;
  *(a2 + 48) = a1;
  *(a2 + 56) = v16;
  *(a2 + 64) = v23;
  *(a2 + 72) = v21;
  outlined consume of TupleView<(Spacer, Text)>?(0, v24, a1, v16, v23, v21);
  outlined consume of Text.Storage(v5, v7, v25);
}

uint64_t protocol witness for View.body.getter in conformance ManagedConfigurationsAllView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = v0[3];
  v14[2] = v0[2];
  v14[3] = v5;
  v6 = v0[5];
  v14[4] = v0[4];
  v14[5] = v6;
  v7 = v0[1];
  v14[0] = *v0;
  v14[1] = v7;
  v11 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<Empt, &_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMd);
  List<>.init(content:)();
  v12 = dispatch thunk of ExternalProvider.sourceName.getter();
  v13 = v8;
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, , &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();
  (*(v2 + 8))(v4, v1);
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow);
  }

  return result;
}

uint64_t outlined init with take of Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of TupleView<(Spacer, Text)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of TupleView<(Spacer, Text)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t objectdestroyTm_47()
{

  return swift_deallocObject();
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    _sSo13HKHealthStoreCMaTm_1(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo13HKHealthStoreCMaTm_1(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationExpandedRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationExpandedRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ManagedWorkoutConfigurationExpandedRow.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-v3];
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  v15 = v0;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(v0, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v16 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v9 = swift_allocObject();
  v10 = *(v0 + 80);
  *(v9 + 80) = *(v0 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v0 + 96);
  *(v9 + 128) = *(v0 + 112);
  v11 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v11;
  v12 = *(v0 + 48);
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = v12;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(v0, &v17);
  type metadata accessor for LocationDisambiguation();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation);
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v2 + 8))(v4, v1);
}

void closure #1 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26[-v3];
  v32 = *(a1 + 48);
  v5 = *(&v32 + 1);
  if (WorkoutConfiguration.requiresDisambiguation.getter())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v32, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd);
      v30 = *(a1 + 104);
      v28 = *(a1 + 104);
      v31 = *(&v30 + 1);
      outlined init with copy of ObservedObject<WorkoutConfiguration>(&v31, &v27, &_s7SwiftUI11AnyLocationCySbGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.getter();
      v27 = v30;
      v26[15] = (v29 & 1) == 0;
      State.wrappedValue.setter();
      v7 = &v30;
      v8 = &_s7SwiftUI5StateVySbGMd;
    }

    else
    {
      swift_getObjectType();
      *&v30 = v5;
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
      dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
      outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v4, &_s10Foundation4UUIDVSgMd);
      v17 = v28;
      if (v28)
      {
        v18 = *(a1 + 16);
        if (v18)
        {
          v19 = *(a1 + 80);
          swift_beginAccess();
          v20 = *(v18 + 16);

          v21 = v17;
          v22 = v20;
          LOBYTE(v20) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

          if (v20)
          {
            v23 = 8;
          }

          else
          {
            v23 = v19;
          }

          v24 = *(v18 + 16);
          dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

          v25 = *(v18 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

          v25(v21, v23);

          outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v32, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd);

          return;
        }

LABEL_22:
        type metadata accessor for ConfigurationNavigationModel();
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
        EnvironmentObject.error()();
        __break(1u);
        return;
      }

      v8 = &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd;
      v7 = &v32;
    }

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, v8);
    return;
  }

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v32, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 80);
  swift_beginAccess();
  v11 = *(v9 + 16);

  v12 = v11;
  LOBYTE(v11) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

  if (v11)
  {
    v13 = 8;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v9 + 16);
  dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

  v15 = *(v9 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

  v15(v5, v13);
}

uint64_t closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyC0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationC0VA24_028IntervalWorkoutConfigurationC0VGAQyA24_025PacerWorkoutConfigurationC0VA24_024RaceWorkoutConfigurationC0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AGyAIyAA4TextV_AKyAKyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_Md);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = static HorizontalAlignment.leading.getter();
  if (one-time initialization token for iconToNameSpacing != -1)
  {
    v24 = v15;
    swift_once();
    v15 = v24;
  }

  v16 = static RowLayoutConstants.iconToNameSpacing;
  *v10 = v15;
  *(v10 + 1) = v16;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationD0VA24_028IntervalWorkoutConfigurationD0VGAQyA24_025PacerWorkoutConfigurationD0VA24_024RaceWorkoutConfigurationD0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AA0F0VyAIyAA4TextV_AKyAKyA79_AUyAS5ScaleOGGA13_GtGGtGGMd);
  closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v10[*(v17 + 44)]);
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationG0VA20_028IntervalWorkoutConfigurationG0VGAMyA20_025PacerWorkoutConfigurationG0VA20_024RaceWorkoutConfigurationG0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_AEyAGyAA4TextV_ACyACyA73_AQyAO5ScaleOGGA9_GtGGtGGAA09_TagTraitnO0Vy10Foundation4UUIDVGGMd) + 36)];
  (*(v5 + 32))(v18, v7, v4);
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy10Foundation4UUIDVGMd) + 36)] = 1;
  sub_20C688910(v10, v14);
  v19 = *(a1 + 32);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  if (v19)
  {
    v20 = v19;
    v21 = static ObservableObject.environmentStore.getter();
    (*(v12 + 32))(a2, v14, v11);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd);
    v23 = (a2 + *(result + 36));
    *v23 = v21;
    v23[1] = v19;
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd);
  MEMORY[0x28223BE20](v31);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  *v9 = static VerticalAlignment.top.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAMyAOyAOy07WorkoutB0024GoalWorkoutConfigurationD0VA22_028IntervalWorkoutConfigurationD0VGAOyA22_025PacerWorkoutConfigurationD0VA22_024RaceWorkoutConfigurationD0VGGSgGASy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGASyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGA1_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAXA11_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd);
  closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v9[*(v16 + 44)]);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v36._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB9B6B0;
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v36);

  v35 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 80);
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = v23;
  *(v22 + 112) = *(a1 + 96);
  *(v22 + 128) = *(a1 + 112);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v25;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v34);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityAction<A>(named:_:)();

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMd);
  closure #3 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v7[*(v26 + 44)]);
  sub_20C688980(v15, v12);
  v27 = v33;
  outlined init with copy of ObservedObject<WorkoutConfiguration>(v7, v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd);
  v28 = v32;
  sub_20C688980(v12, v32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VG_AA6VStackVyAGyAA4TextV_ACyACyA73_AOyAM5ScaleOGGA7_GtGGtMd);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(v27, v28 + *(v29 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v27, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMd);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGG_AA05PlaingE0VQo_Md);
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v76);
  v71 = &v71 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalH0VyAKy07WorkoutB004Goalk13ConfigurationF0VAL08IntervalkmF0VGAKyAL05PacerkmF0VAL04RacekmF0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mC5ModelCSgGGGMd);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMd);
  MEMORY[0x28223BE20](v19 - 8);
  v74 = &v71 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v72);
  v78 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  MEMORY[0x28223BE20](v25);
  v89 = &v71 - v26;
  closure #1 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(&v106);
  v27 = *(a1 + 56);
  WorkoutConfiguration.displayColor.getter();
  v91 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (*a1)
  {
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = *a1;
    closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v27, v30, v28, 0, v29, v13);

    v31 = *(a1 + 32);
    if (v31)
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v32 = v31;
      v33 = static ObservableObject.environmentStore.getter();
      outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v13, v16, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
      v34 = &v16[*(v14 + 36)];
      *v34 = v33;
      v34[1] = v31;
      v35 = *(a1 + 16);
      if (v35)
      {
        type metadata accessor for ConfigurationNavigationModel();
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

        v36 = static ObservableObject.environmentStore.getter();
        v37 = v71;
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v16, v71, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
        v38 = (v37 + *(v76 + 36));
        *v38 = v36;
        v38[1] = v35;
        v93[0] = *(a1 + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
        State.projectedValue.getter();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
        v39 = v73;
        NavigationLink.init(destination:isActive:label:)();
        v40 = v74;
        (*(v75 + 32))(v74, v39, v77);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v40, v24, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMd);
        v41 = &v24[*(v72 + 36)];
        v42 = v104;
        *v41 = v103;
        *(v41 + 1) = v42;
        *(v41 + 2) = v105;
        v43 = v89;
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v24, v89, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
        v44 = swift_allocObject();
        *(v44 + 128) = *(a1 + 112);
        v45 = *(a1 + 80);
        *(v44 + 80) = *(a1 + 64);
        *(v44 + 96) = v45;
        *(v44 + 112) = *(a1 + 96);
        v46 = *(a1 + 16);
        *(v44 + 16) = *a1;
        *(v44 + 32) = v46;
        v47 = *(a1 + 48);
        *(v44 + 48) = *(a1 + 32);
        *(v44 + 64) = v47;
        MEMORY[0x28223BE20](v44);
        outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
        v48 = v80;
        Button.init(action:label:)();
        v49 = v83;
        PlainButtonStyle.init()();
        lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMd);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
        v50 = v92;
        v51 = v82;
        v52 = v85;
        View.buttonStyle<A>(_:)();
        (*(v84 + 8))(v49, v52);
        (*(v81 + 8))(v48, v51);
        v53 = v43;
        v54 = v78;
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v53, v78, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
        v56 = v86;
        v55 = v87;
        v57 = *(v87 + 16);
        v58 = v88;
        v57(v86, v50, v88);
        v94 = v110;
        v95 = v111;
        v96 = v112;
        v93[0] = v106;
        v93[1] = v107;
        v93[2] = v108;
        v93[3] = v109;
        *&v97[0] = v113;
        *(&v97[0] + 1) = KeyPath;
        *&v97[1] = v91;
        BYTE8(v97[1]) = 1;
        v59 = v106;
        v60 = v107;
        v61 = v109;
        v62 = v79;
        *(v79 + 32) = v108;
        *(v62 + 48) = v61;
        *v62 = v59;
        *(v62 + 16) = v60;
        v63 = v94;
        v64 = v95;
        *(v62 + 121) = *(v97 + 9);
        v65 = v97[0];
        *(v62 + 96) = v96;
        *(v62 + 112) = v65;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 144) = 0;
        *(v62 + 152) = 1;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAEyAGyAGy07WorkoutB0024GoalWorkoutConfigurationZ0VA14_028IntervalWorkoutConfigurationZ0VGAGyA14_025PacerWorkoutConfigurationZ0VA14_024RaceWorkoutConfigurationZ0VGGSgGAKy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAKyA14_013ConfigurationW5ModelCSgGGGAA07_HiddenK0VGAUGAA0Z0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAPA3_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tMd);
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v54, v62 + *(v66 + 64), &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
        v57((v62 + *(v66 + 80)), v56, v58);
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v93, v98, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd);
        v67 = *(v55 + 8);
        v67(v92, v58);
        outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v89, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
        v67(v56, v58);
        outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v54, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
        v98[4] = v110;
        v98[5] = v111;
        v98[6] = v112;
        v98[0] = v106;
        v98[1] = v107;
        v98[2] = v108;
        v98[3] = v109;
        v99 = v113;
        v100 = KeyPath;
        v101 = v91;
        v102 = 1;
        return outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v98, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd);
      }

      type metadata accessor for ConfigurationNavigationModel();
      v69 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
      v70 = type metadata accessor for ConfigurationNavigationModel;
    }

    else
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      v69 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
      v70 = MEMORY[0x277D7DC28];
    }
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    v69 = &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
    v70 = type metadata accessor for FIUIFormattingManager;
  }

  _s10Foundation4UUIDVACSHAAWlTm_0(v69, v70);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v10 = [v9 symbolName];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Image.init(_internalSystemName:)();
    if (one-time initialization token for displayImageSize != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v8, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    *&v34[5] = v29;
    v35 = v30;
    *v36 = v31[0];
    *&v36[9] = *(v31 + 9);
    *&v34[1] = v27;
    v41 = 0;
    v32 = v11;
    v33 = KeyPath;
    v34[0] = v13;
    *&v34[3] = v28;
    v37 = 0;
    goto LABEL_7;
  }

  v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v16 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v16)
  {
    v17 = [v16 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v40 = 1;
    *&v39[6] = v27;
    *&v39[22] = v28;
    *&v39[38] = v29;
    v19 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v41 = 0;
    v38 = 1;
    v32 = v18;
    v33 = 0;
    LOWORD(v34[0]) = 1;
    *(v34 + 2) = *v39;
    *(&v34[2] + 2) = *&v39[16];
    *(&v34[4] + 2) = *&v39[32];
    v34[6] = *&v39[46];
    LOBYTE(v35) = v19;
    *(&v35 + 1) = v20;
    *v36 = v21;
    *&v36[8] = v22;
    *&v36[16] = v23;
    v36[24] = 0;
    v37 = 1;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v24;
    *(a1 + 96) = v48;
    *(a1 + 112) = v49;
    v25 = v43;
    *a1 = v42;
    *(a1 + 16) = v25;
    v26 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v26;
    return;
  }

  __break(1u);
}

uint64_t closure #3 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2[1] = *(a1 + 88);
  v4 = *(&v3 + 1);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #4 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v8 = type metadata accessor for SymbolRenderingMode();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = Image.symbolRenderingMode(_:)();

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  if (one-time initialization token for ellipsisSize != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  WorkoutConfiguration.displayColor.getter();
  v13 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v11;
  *(a1 + 24) = result;
  *(a1 + 32) = v13;
  *(a1 + 40) = 256;
  return result;
}

uint64_t closure #3 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v77[0] = a1;
  v88 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v77[1] = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v82);
  v85 = v77 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v84);
  v87 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = v77 - v8;
  MEMORY[0x28223BE20](v9);
  v86 = v77 - v10;
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v2 + 48);
  v15 = *(&v91 + 1);
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = [v16 localizedName];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v89 = v18;
  v90 = v20;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v2) = v24;
  static Font.body.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v11);
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v14) = v28;

  outlined consume of Text.Storage(v21, v23, v2 & 1);

  static Font.Weight.bold.getter();
  v29 = Text.fontWeight(_:)();
  v31 = v30;
  v78 = v32;
  v34 = v33;
  outlined consume of Text.Storage(v25, v27, v14 & 1);

  if (*v77[0])
  {
    v35 = *v77[0];
    v36 = WorkoutConfiguration.displayDetail(_:)();
    if (!v37)
    {
      v36 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v38 = v36;
    v39 = v37;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
    type metadata accessor for RaceWorkoutConfiguration();
    v41 = swift_dynamicCastClass();
    v81 = v34;
    if (!v41)
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
    v43._countAndFlagsBits = v38;
    v43._object = v39;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);

    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
    LocalizedStringKey.init(stringInterpolation:)();
    v45 = Text.init(_:tableName:bundle:comment:)();
    v47 = v46;
    v49 = v48;
    type metadata accessor for IntervalWorkoutConfiguration();
    v50 = swift_dynamicCastClass();
    v79 = v31;
    v80 = v29;
    if (v50 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v74 = v15, v75 = GoalWorkoutConfiguration.goal.getter(), v76 = [v75 goalTypeIdentifier], outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v91, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd), v75, !v76))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v51 = Text.font(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    outlined consume of Text.Storage(v45, v47, v49 & 1);

    v58 = v85;
    v59 = &v85[*(v82 + 36)];
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v61 = *MEMORY[0x277CE1050];
    v62 = type metadata accessor for Image.Scale();
    (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
    *v59 = swift_getKeyPath();
    *v58 = v51;
    *(v58 + 8) = v53;
    *(v58 + 16) = v55 & 1;
    *(v58 + 24) = v57;
    WorkoutConfiguration.displayColor.getter();
    v63 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v65 = v83;
    outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v58, v83, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    v66 = (v65 + *(v84 + 36));
    *v66 = KeyPath;
    v66[1] = v63;
    v67 = v86;
    outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v65, v86, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    v68 = v87;
    outlined init with copy of ObservedObject<WorkoutConfiguration>(v67, v87, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    v69 = v88;
    v71 = v79;
    v70 = v80;
    *v88 = v80;
    v69[1] = v71;
    LOBYTE(v65) = v78 & 1;
    *(v69 + 16) = v78 & 1;
    v69[3] = v81;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMd);
    outlined init with copy of ObservedObject<WorkoutConfiguration>(v68, v69 + *(v72 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined copy of Text.Storage(v70, v71, v65);

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v67, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v68, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined consume of Text.Storage(v70, v71, v65);
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *(a1 + 48);
  v4 = *(&v14 + 1);
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LocationDisambiguation();
  v10 = v9[6];
  *(a2 + v10) = 0;
  v11 = (a2 + v9[7]);
  *(a2 + v9[5]) = v4;
  *(a2 + v10) = 0;
  *v11 = partial apply for closure #1 in closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter;
  v11[1] = v5;
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v14, v13, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd);
  return outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v13);
}

uint64_t closure #1 in closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(a2 + 80);
    swift_beginAccess();
    v5 = *(v2 + 16);

    v6 = v5;
    v7 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = v4;
    }

    v9 = *(v2 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v10 = *(v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v10(a1, v8);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd);
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWr, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_48()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ObservedObject<WorkoutConfiguration>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationCompactRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationCompactRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in ManagedWorkoutConfigurationCompactRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  if (*a1)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *a1;
    closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v10, v13, v11, 0, v12, v6);

    v14 = *(a1 + 32);
    if (v14)
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v15 = v14;
      v16 = static ObservableObject.environmentStore.getter();
      _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v6, v9, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
      v17 = &v9[*(v7 + 36)];
      *v17 = v16;
      v17[1] = v14;
      v18 = *(a1 + 16);
      if (v18)
      {
        type metadata accessor for ConfigurationNavigationModel();
        _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

        v19 = static ObservableObject.environmentStore.getter();
        _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v9, a2, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd);
        v21 = (a2 + *(result + 36));
        *v21 = v19;
        v21[1] = v18;
        return result;
      }

      type metadata accessor for ConfigurationNavigationModel();
      v22 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
      v23 = type metadata accessor for ConfigurationNavigationModel;
    }

    else
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      v22 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
      v23 = MEMORY[0x277D7DC28];
    }
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    v22 = &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
    v23 = type metadata accessor for FIUIFormattingManager;
  }

  _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(v22, v23);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd);
  v6 = a2 + v5[13];
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6VStackVyAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAOyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQyAA5ColorVSgGGtGGGMd) + 44);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMd);
  result = closure #1 in closure #1 in closure #2 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(a1, (v7 + *(v8 + 44)));
  *(a2 + v5[14]) = 0x4022000000000000;
  *(a2 + v5[15]) = v4;
  return result;
}

void closure #1 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v7 = FIUIStaticScalableWorkoutIconImage();

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v14 = 1;
    *&v13[8] = v15;
    *&v13[24] = v16;
    *&v13[40] = v17;
    WorkoutConfiguration.displayColor.getter();
    v10 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    *a1 = v9;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v12 = *&v13[18];
    *(a1 + 18) = *&v13[2];
    *(a1 + 34) = v12;
    *(a1 + 50) = *&v13[34];
    *(a1 + 64) = *&v13[48];
    *(a1 + 72) = KeyPath;
    *(a1 + 80) = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in closure #2 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v68);
  v74 = &v66[-v5];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v73);
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v72 = &v66[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v66[-v11];
  v80 = *(a1 + 48);
  v13 = *(&v80 + 1);
  v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v15 = [v14 localizedName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v78 = v16;
  v79 = v18;
  lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v69 = v21;
  v70 = v19;
  v67 = v22;
  if (*a1)
  {
    v23 = v20;
    v24 = *a1;
    v25 = WorkoutConfiguration.displayDetail(_:)();
    if (!v26)
    {
      v25 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v27 = v25;
    v28 = v26;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
    type metadata accessor for RaceWorkoutConfiguration();
    v30 = swift_dynamicCastClass();
    v71 = v23;
    if (!v30)
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
    v32._countAndFlagsBits = v27;
    v32._object = v28;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v32);

    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    LocalizedStringKey.init(stringInterpolation:)();
    v34 = Text.init(_:tableName:bundle:comment:)();
    v36 = v35;
    v38 = v37;
    type metadata accessor for IntervalWorkoutConfiguration();
    v39 = swift_dynamicCastClass();
    v76 = v7;
    v77 = a2;
    v75 = v12;
    if (v39 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v63 = v13, v64 = GoalWorkoutConfiguration.goal.getter(), v65 = [v64 goalTypeIdentifier], outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(&v80, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd), v64, !v65))
    {
      static Font.caption2.getter();
    }

    else
    {
      static Font.caption2.getter();
      Font.lowercaseSmallCaps()();
    }

    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    outlined consume of Text.Storage(v34, v36, v38 & 1);

    v47 = v74;
    v48 = &v74[*(v68 + 36)];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v50 = *MEMORY[0x277CE1050];
    v51 = type metadata accessor for Image.Scale();
    (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
    *v48 = swift_getKeyPath();
    *v47 = v40;
    *(v47 + 8) = v42;
    *(v47 + 16) = v44 & 1;
    *(v47 + 24) = v46;
    WorkoutConfiguration.displayColor.getter();
    v52 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v54 = v72;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v47, v72, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    v55 = &v54[*(v73 + 36)];
    *v55 = KeyPath;
    v55[1] = v52;
    v56 = v75;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v54, v75, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    v57 = v76;
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v56, v76);
    v58 = v77;
    v60 = v69;
    v59 = v70;
    *v77 = v70;
    v58[1] = v60;
    LOBYTE(v54) = v67 & 1;
    *(v58 + 16) = v67 & 1;
    v58[3] = v71;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v57, v58 + *(v61 + 48));
    outlined copy of Text.Storage(v59, v60, v54);

    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v56, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v57, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined consume of Text.Storage(v59, v60, v54);
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ManagedWorkoutConfigurationCompactRow()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v1);
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v8[4] = v0[4];
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v7 = v8;
  closure #1 in ManagedWorkoutConfigurationCompactRow.body.getter(v8, &v6[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  return NavigationLink.init(destination:label:)();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ManagedConfigurationsUpcomingView.init(provider:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  *a3 = EnvironmentObject.init()();
  *(a3 + 8) = v6;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *(a3 + 16) = EnvironmentObject.init()();
  *(a3 + 24) = v7;
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
  *(a3 + 32) = EnvironmentObject.init()();
  *(a3 + 40) = v8;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
  *(a3 + 48) = EnvironmentObject.init()();
  *(a3 + 56) = v9;
  result = State.init(wrappedValue:)();
  *(a3 + 80) = v11;
  *(a3 + 88) = v12;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  return result;
}

uint64_t _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_5(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_5(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedM0VyARyARyARyARyARyAnA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGATyAN4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGGAA06_TraitqR0VyAA0g13RowBackgroundyP0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA23_ARyARy07WorkoutB0027ManagedWorkoutConfigurationZ0VATySo21FIUIFormattingManagerCSgGGATyA25_28ConfigurationNavigationModelCSgGGGGAA05EmptyC0VG_ALyA41_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyARyARyAA14NavigationLinkVyA41_ARyARyARyARyA25_024ManagedConfigurationsAllC0VA31_GA36_GATySo13HKHealthStoreCSgGGATyA21_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenR0VGAA01_vW0VG_ARyAXA25_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_ATyAA13AnyShapeStyleVSgGGA17_GA41_GtGG_SSQo_Md);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = v1[3];
  v32[2] = v1[2];
  v32[3] = v10;
  v11 = v1[5];
  v32[4] = v1[4];
  v32[5] = v11;
  v12 = v1[1];
  v32[0] = *v1;
  v32[1] = v12;
  v27 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMd);
  List<>.init(content:)();
  v28 = dispatch thunk of ExternalProvider.sourceName.getter();
  v29 = v13;
  v14 = lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd);
  v15 = lazy protocol witness table accessor for type String and conformance String();
  v16 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v5 + 8))(v7, v4);
  v17 = v24;
  v18 = v25;
  (*(v24 + 104))(v3, *MEMORY[0x277CDDDC0], v25);
  v28 = v4;
  v29 = v16;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v3, v18);
  return (*(v23 + 8))(v9, v19);
}

uint64_t closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA05TupleE0VyAGyAGyAA14NavigationLinkVyAeGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAVyAR013ConfigurationM5ModelCSgGGAVySo13HKHealthStoreCSgGGAVy0O4Core0oY15OccurrenceStoreCSgGGGAA07_HiddenV0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAVyAA13TextAlignmentOGGAR15BodyHyphenationVGtGG_AA017BorderedProminentkI0VQo_AVyAA08AnyShapeI0VSgGGAA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGAEGMd);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v43 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v44 = Text.init(_:tableName:bundle:comment:)();
  v45 = v14;
  v46 = v15 & 1;
  v47 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>();
  v17 = v12;
  v37 = v12;
  v18 = Section<>.init(header:content:)();
  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  v19 = v39;
  Section<>.init(content:)();
  v35 = *(v8 + 16);
  v20 = v38;
  v21 = v7;
  v35(v38, v17, v7);
  v22 = v3;
  v36 = *(v3 + 16);
  v23 = v40;
  v24 = v42;
  v36(v40, v19, v42);
  v25 = v21;
  v26 = v8;
  v27 = v19;
  v28 = v23;
  v29 = v41;
  v30 = v25;
  (v35)(v41, v20);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVG_ACyA32_AIyAIyAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA9TupleViewVyAIyAIyAA14NavigationLinkVyA32_AIyAIyAIyAIyA16_28ManagedConfigurationsAllViewVA22_GA27_GAKySo13HKHealthStoreCSgGGAKyA12_0xZ15OccurrenceStoreCSgGGGAA07_HiddenK0VGAA01_oP0VG_AIyAOA16_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AKyAA13AnyShapeStyleVSgGGA8_GA32_GtMd);
  v36((v29 + *(v31 + 48)), v28, v24);
  v32 = *(v22 + 8);
  v32(v27, v24);
  v33 = *(v26 + 8);
  v33(v37, v30);
  v32(v28, v24);
  return (v33)(v20, v30);
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AGyAGy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGG_GMd);
  MEMORY[0x28223BE20](v81);
  v82 = v71 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
  MEMORY[0x28223BE20](v73);
  v10 = v71 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v74);
  v79 = v71 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v77);
  v78 = v71 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
  MEMORY[0x28223BE20](v75);
  v14 = v71 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd);
  MEMORY[0x28223BE20](v80);
  v76 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v71 - v17;
  v19 = dispatch thunk of ManagedConfigurationsViewModel.upNextConfigurations.getter();
  if (v19 >> 62)
  {
    v72 = v14;
    v26 = __CocoaSet.count.getter();
    v14 = v72;

    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v20)
    {
LABEL_3:
      v84 = dispatch thunk of ManagedConfigurationsViewModel.upNextConfigurations.getter();
      swift_getKeyPath();
      v21 = swift_allocObject();
      v22 = a1[3];
      v21[3] = a1[2];
      v21[4] = v22;
      v23 = a1[5];
      v21[5] = a1[4];
      v21[6] = v23;
      v24 = a1[1];
      v21[1] = *a1;
      v21[2] = v24;
      outlined init with copy of ManagedConfigurationsUpcomingView(a1, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
      lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd);
      _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      ForEach<>.init(_:id:content:)();
      (*(v5 + 16))(v82, v7, v4);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
      _ConditionalContent<>.init(storage:)();
      return (*(v5 + 8))(v7, v4);
    }
  }

  v72 = v14;
  v71[0] = v18;
  v71[1] = a2;
  v71[2] = v4;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = WorkoutUIBundle.super.isa;
  v86._object = 0xE000000000000000;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._object = 0x800000020CB9B780;
  v29._countAndFlagsBits = 0xD000000000000028;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v28, v27, v30, v86);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  v32 = dispatch thunk of ExternalProvider.sourceName.getter();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = String.init(format:_:)();
  v37 = v36;

  *&v85[0] = v35;
  *(&v85[0] + 1) = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  static Color.secondary.getter();
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  outlined consume of Text.Storage(v38, v40, v42 & 1);

  KeyPath = swift_getKeyPath();
  v51 = &v10[*(v73 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
  v53 = type metadata accessor for Text.Case();
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *v51 = swift_getKeyPath();
  *v10 = v43;
  *(v10 + 1) = v45;
  v10[16] = v47 & 1;
  *(v10 + 3) = v49;
  *(v10 + 4) = KeyPath;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v10;
  v55 = v79;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v54, v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
  v56 = (v55 + *(v74 + 36));
  v57 = v85[5];
  v56[4] = v85[4];
  v56[5] = v57;
  v56[6] = v85[6];
  v58 = v85[1];
  *v56 = v85[0];
  v56[1] = v58;
  v59 = v85[3];
  v56[2] = v85[2];
  v56[3] = v59;
  v60 = static Font.caption2.getter();
  v61 = swift_getKeyPath();
  v62 = v55;
  v63 = v78;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v62, v78, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
  v64 = (v63 + *(v77 + 36));
  *v64 = v61;
  v64[1] = v60;
  v65 = swift_getKeyPath();
  v66 = v72;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v63, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
  v67 = v66 + *(v75 + 36);
  *v67 = v65;
  *(v67 + 8) = 0;
  *(v67 + 16) = 1;
  v83 = static Color.clear.getter();
  v68 = AnyView.init<A>(_:)();
  v69 = v76;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v66, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
  *(v69 + *(v80 + 36)) = v68;
  v70 = v71[0];
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v69, v71[0], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v70, v82, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  if (!v5)
  {
    _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
    v31 = v4;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a2 + 48);
  if (!v6)
  {
LABEL_7:
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
    v32 = v4;
    v33 = v5;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  v11 = EnvironmentObject.init()();
  v38 = v12;
  v39 = v11;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v13 = EnvironmentObject.init()();
  v36 = v14;
  v37 = v13;
  type metadata accessor for WorkoutConfiguration();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
  v15 = v8;
  v16 = ObservedObject.init(wrappedValue:)();
  v34 = v17;
  v35 = v16;
  v18 = v9;
  v19 = v10;
  v20 = FIActivityMoveModeUserDefault();
  type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v21 = v19;
  v22 = RaceRouteDataStore.init(healthStore:)();
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v18;
  v23[6] = v22;
  v24 = *a2;
  if (!*a2)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v25 = v23;
  v26 = v24;
  v27 = static ObservableObject.environmentStore.getter();
  v28 = *(a2 + 16);
  if (v28)
  {
    v29 = v27;

    result = static ObservableObject.environmentStore.getter();
    *a3 = v39;
    *(a3 + 8) = v38;
    *(a3 + 16) = v37;
    *(a3 + 24) = v36;
    *(a3 + 32) = v20;
    *(a3 + 40) = v18;
    *(a3 + 48) = v21;
    *(a3 + 56) = 1;
    *(a3 + 64) = _s9WorkoutUI07ManagedA16ConfigurationRowV07workoutD011healthStore010occurrenceH016presentationSizeAC0A4Core0aD0C_So08HKHealthH0CAH0ad10OccurrenceH0CAC012PresentationK0OtcfcAH0aD10DataSourceCycfu_TA_0;
    *(a3 + 72) = v25;
    *(a3 + 80) = 0;
    *(a3 + 88) = v35;
    *(a3 + 96) = v34;
    *(a3 + 104) = v29;
    *(a3 + 112) = v24;
    *(a3 + 120) = result;
    *(a3 + 128) = v28;
    return result;
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v13 = a1[5];
  v11[5] = a1[4];
  v11[6] = v13;
  v14 = a1[1];
  v11[1] = *a1;
  v11[2] = v14;
  v25 = a1;
  outlined init with copy of ManagedConfigurationsUpcomingView(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMd);
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd);
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  v15 = v24;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v26[0] = v17;
  v19 = AnyShapeStyle.init<A>(_:)();
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMd) + 36));
  *v20 = KeyPath;
  v20[1] = v19;
  v26[0] = static Color.clear.getter();
  v21 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd);
  *(v15 + *(result + 36)) = v21;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2[1] = *(a1 + 80);
  v4 = *(&v3 + 1);
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t closure #2 in closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllF0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationC5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGMd);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = v50 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v65);
  v71 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v50 - v8;
  MEMORY[0x28223BE20](v9);
  v70 = v50 - v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  v63 = v11;

  v62 = v12;

  v61 = EnvironmentObject.init()();
  v60 = v13;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v59 = EnvironmentObject.init()();
  v58 = v14;
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
  v57 = EnvironmentObject.init()();
  v56 = v15;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v16 = _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
  v55 = EnvironmentObject.init()();
  v54 = v17;
  v73 = 0;
  State.init(wrappedValue:)();
  v18 = *a1;
  if (!*a1)
  {
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v53 = v75;
  v52 = *(&v75 + 1);
  v19 = v18;
  v51 = static ObservableObject.environmentStore.getter();
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_9:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_10;
  }

  v50[1] = v16;

  v21 = static ObservableObject.environmentStore.getter();
  v22 = *(a1 + 32);
  if (!v22)
  {
LABEL_10:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_11;
  }

  v23 = v21;
  v24 = v22;
  v25 = static ObservableObject.environmentStore.getter();
  v26 = *(a1 + 48);
  if (!v26)
  {
LABEL_11:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v27 = v25;
  v28 = v26;
  v29 = static ObservableObject.environmentStore.getter();
  *&v75 = v61;
  *(&v75 + 1) = v60;
  *&v76 = v59;
  *(&v76 + 1) = v58;
  *&v77 = v57;
  *(&v77 + 1) = v56;
  v78 = v55;
  v79 = v54;
  v80 = v63;
  v81 = v62;
  v82 = v53;
  v83 = v52;
  v84 = v51;
  v85 = v18;
  v86 = v23;
  v87 = v20;
  v88 = v27;
  v89 = v22;
  v90 = v29;
  v91 = v26;
  v74 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  v30 = v66;
  NavigationLink.init(destination:isActive:label:)();
  v31 = v67;
  (*(v68 + 32))(v67, v30, v69);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = v31;
  v33 = v64;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v32, v64, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMd);
  v34 = (v33 + *(v65 + 36));
  v35 = v76;
  *v34 = v75;
  v34[1] = v35;
  v34[2] = v77;
  v36 = v70;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v33, v70, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = WorkoutUIBundle.super.isa;
  v38 = Text.init(_:tableName:bundle:comment:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v46 = v71;
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v36, v71, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
  v47 = v72;
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v46, v72, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVG_ACyACyAA4TextVALyAA13TextAlignmentOGGAH15BodyHyphenationVGtMd) + 48);
  *v48 = v38;
  *(v48 + 8) = v40;
  v42 &= 1u;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = 1;
  outlined copy of Text.Storage(v38, v40, v42);

  outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v36, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
  outlined consume of Text.Storage(v38, v40, v42);

  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v46, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd);
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationsUpcomingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedConfigurationsUpcomingView(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd);
    _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G28ConfigurationOccurrenceStoreCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<HKHealthStore?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo13HKHealthStoreCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd);
    lazy protocol witness table accessor for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView()
{
  result = lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView);
  }

  return result;
}

uint64_t objectdestroyTm_49()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ManagedWorkoutConfigurationRow.PresentationSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManagedWorkoutConfigurationRow.PresentationSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t implicit closure #1 in ManagedWorkoutConfigurationRow.init(workoutConfiguration:healthStore:occurrenceStore:presentationSize:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  dispatch thunk of WorkoutConfiguration.activityType.getter();
  type metadata accessor for RaceRouteDataStore();
  type metadata accessor for PreviewChecker();

  MEMORY[0x20F3051E0](v6);
  objc_allocWithZone(type metadata accessor for WorkoutConfigurationDataSource());
  v7 = a3;
  v8 = a4;
  return WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
}

uint64_t ManagedWorkoutConfigurationRow.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    v88 = *(v1 + 88);
    v65 = *(v1 + 32);
    v4 = *(v1 + 48);
    outlined init with copy of ObservedObject<WorkoutConfiguration>(&v88, v89);
    type metadata accessor for FIUIFormattingManager();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
    v63 = v4;
    v5 = EnvironmentObject.init()();
    v59 = v6;
    v61 = v5;
    type metadata accessor for ConfigurationNavigationModel();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v7 = EnvironmentObject.init()();
    v55 = v8;
    v57 = v7;
    type metadata accessor for WorkoutConfigurationDataSource();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    v9 = EnvironmentObject.init()();
    v51 = v10;
    v53 = v9;
    type metadata accessor for WorkoutConfiguration();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    v11 = ObservedObject.init(wrappedValue:)();
    v48 = v12;
    v49 = v11;
    State.init(wrappedValue:)();
    v47 = v89[0];
    v46 = *(&v89[0] + 1);
    LOBYTE(v67) = 0;
    State.init(wrappedValue:)();
    v45 = v89[0];
    v13 = *(&v89[0] + 1);
    v14 = StateObject.wrappedValue.getter();
    v15 = static ObservableObject.environmentStore.getter();
    v16 = *v2;
    if (!*v2)
    {
LABEL_10:
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_11;
    }

    v17 = v15;
    v18 = v16;
    v19 = static ObservableObject.environmentStore.getter();
    v20 = *(v2 + 16);
    if (v20)
    {
      v21 = v19;

      v67 = v61;
      v68 = v59;
      v69 = v57;
      v70 = v55;
      v71 = v53;
      v72 = v51;
      v73 = v49;
      v74 = v48;
      v75 = v65;
      v76 = v63;
      v77 = 14;
      LOBYTE(v78) = v47;
      v79 = v46;
      LOBYTE(v80) = v45;
      v81 = v13;
      v82 = v17;
      v83 = v14;
      v84 = v21;
      v85 = v16;
      v86 = static ObservableObject.environmentStore.getter();
      v87 = v20;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy07WorkoutB007ManagedG23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGALySo21FIUIFormattingManagerCSgGGALyAH0I15NavigationModelCSgGGAGyAGyAGyAH0hgi8ExpandedK0VAQGAVGA_G_GWOi0_(&v67);
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      result = _ConditionalContent<>.init(storage:)();
      v40 = v90[0];
      a1[8] = v89[8];
      a1[9] = v40;
      *(a1 + 153) = *(v90 + 9);
      v41 = v89[5];
      a1[4] = v89[4];
      a1[5] = v41;
      v42 = v89[7];
      a1[6] = v89[6];
      a1[7] = v42;
      v43 = v89[1];
      *a1 = v89[0];
      a1[1] = v43;
      v44 = v89[3];
      a1[2] = v89[2];
      a1[3] = v44;
      return result;
    }

LABEL_9:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_10;
  }

  v88 = *(v1 + 88);
  v66 = *(v1 + 32);
  v22 = *(v1 + 48);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v88, v89);
  type metadata accessor for FIUIFormattingManager();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
  v64 = v22;
  v23 = EnvironmentObject.init()();
  v60 = v24;
  v62 = v23;
  type metadata accessor for ConfigurationNavigationModel();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v25 = EnvironmentObject.init()();
  v56 = v26;
  v58 = v25;
  type metadata accessor for WorkoutConfigurationDataSource();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v27 = EnvironmentObject.init()();
  v52 = v28;
  v54 = v27;
  type metadata accessor for WorkoutConfiguration();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
  v29 = ObservedObject.init(wrappedValue:)();
  v50 = v30;
  v31 = StateObject.wrappedValue.getter();
  v32 = static ObservableObject.environmentStore.getter();
  v33 = *v2;
  if (*v2)
  {
    v34 = v32;
    v35 = v33;
    v36 = static ObservableObject.environmentStore.getter();
    v37 = *(v2 + 16);
    if (v37)
    {
      v38 = v36;

      v67 = v62;
      v68 = v60;
      v69 = v58;
      v70 = v56;
      v71 = v54;
      v72 = v52;
      v73 = v29;
      v74 = v50;
      v75 = v66;
      v76 = v64;
      v77 = v34;
      v78 = v31;
      v79 = v38;
      v80 = v33;
      v81 = static ObservableObject.environmentStore.getter();
      v82 = v37;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy07WorkoutB007ManagedG23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGALySo21FIUIFormattingManagerCSgGGALyAH0I15NavigationModelCSgGGAGyAGyAGyAH0hgi8ExpandedK0VAQGAVGA_G_GWOi_(&v67);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_11:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ObservedObject<WorkoutConfiguration>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMd);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMd);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationRow.PresentationSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationRow.PresentationSize(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy07WorkoutB007ManagedF23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0F4Core0fH10DataSourceCSgGGAJySo21FIUIFormattingManagerCSgGGAJyAF0H15NavigationModelCSgGGAEyAEyAEyAF0gfh8ExpandedJ0VAOGATGAYGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize);
  }

  return result;
}

uint64_t WorkoutAlertList.init(onWorkoutAlertSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for WorkoutAlertList() + 20);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t type metadata accessor for WorkoutAlertList()
{
  result = type metadata singleton initialization cache for WorkoutAlertList;
  if (!type metadata singleton initialization cache for WorkoutAlertList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutAlertList.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutAlertList();
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutAlertList.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd);
  return List<>.init(content:)();
}

uint64_t closure #1 in WorkoutAlertList.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVGMd);
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v73 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v60 - v6;
  MEMORY[0x28223BE20](v7);
  v71 = &v60 - v8;
  MEMORY[0x28223BE20](v9);
  v81 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v67 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v66 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = &v60 - v20;
  MEMORY[0x28223BE20](v21);
  v64 = &v60 - v22;
  MEMORY[0x28223BE20](v23);
  v63 = &v60 - v24;
  MEMORY[0x28223BE20](v25);
  v79 = &v60 - v26;
  MEMORY[0x28223BE20](v27);
  v77 = &v60 - v28;
  MEMORY[0x28223BE20](v29);
  v75 = &v60 - v30;
  MEMORY[0x28223BE20](v31);
  v76 = &v60 - v32;
  MEMORY[0x28223BE20](v33);
  v78 = &v60 - v34;
  MEMORY[0x28223BE20](v35);
  v80 = &v60 - v36;
  MEMORY[0x28223BE20](v37);
  v61 = &v60 - v38;
  MEMORY[0x28223BE20](v39);
  v62 = &v60 - v40;
  MEMORY[0x28223BE20](v41);
  v70 = &v60 - v42;
  LocalizedStringKey.init(stringLiteral:)();
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMd);
  lazy protocol witness table accessor for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>();
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v90 = a1;
  v43 = v62;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v89 = a1;
  v44 = v61;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v88 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v87 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v86 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v85 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v84 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v83 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v82 = a1;
  v45 = v63;
  Section<>.init(_:content:)();
  v46 = *(v74 + 16);
  v47 = v64;
  v46(v64, v70, v3);
  v48 = v65;
  v46(v65, v43, v3);
  v49 = v66;
  v46(v66, v44, v3);
  v50 = v67;
  v46(v67, v80, v3);
  v46(v68, v78, v3);
  v51 = v69;
  v46(v69, v76, v3);
  v46(v81, v75, v3);
  v46(v71, v77, v3);
  v46(v72, v79, v3);
  v46(v73, v45, v3);
  v52 = v60;
  v46(v60, v47, v3);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVG_A9TtMd);
  v46(&v52[v53[12]], v48, v3);
  v46(&v52[v53[16]], v49, v3);
  v46(&v52[v53[20]], v50, v3);
  v54 = v68;
  v46(&v52[v53[24]], v68, v3);
  v46(&v52[v53[28]], v51, v3);
  v46(&v52[v53[32]], v81, v3);
  v55 = v71;
  v46(&v52[v53[36]], v71, v3);
  v56 = v72;
  (v46)(&v52[v53[40]]);
  v57 = v73;
  (v46)(&v52[v53[44]]);
  v58 = *(v74 + 8);
  v58(v63, v3);
  v58(v79, v3);
  v58(v77, v3);
  v58(v75, v3);
  v58(v76, v3);
  v58(v78, v3);
  v58(v80, v3);
  v58(v61, v3);
  v58(v62, v3);
  v58(v70, v3);
  v58(v57, v3);
  v58(v56, v3);
  v58(v55, v3);
  v58(v81, v3);
  v58(v69, v3);
  v58(v54, v3);
  v58(v67, v3);
  v58(v66, v3);
  v58(v65, v3);
  return (v58)(v64, v3);
}

uint64_t closure #1 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for basicAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.basicAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #2 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for paceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.paceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #3 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for speedAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.speedAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #4 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for cadenceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.cadenceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #5 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for powerAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.powerAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #6 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for heartRateAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.heartRateAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #7 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for intervalAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.intervalAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #8 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for raceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.raceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #9 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for trackAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.trackAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #10 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for cyclingCadenceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.cyclingCadenceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAlertList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v15[0] = v8;
  v15[1] = v7;
  outlined init with copy of WorkoutAlertList(a2, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of WorkoutAlertList(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v8;
  v12[1] = v7;
  v12[2] = v9;
  lazy protocol witness table accessor for type String and conformance String();
  swift_bridgeObjectRetain_n();
  v13 = v9;
  return Button<>.init<A>(_:action:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter(void (**a1)(uint64_t, double), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*a1)(a4, v8);
  WorkoutAlertList.dismiss.getter(v10);
  DismissAction.callAsFunction()();
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for View.body.getter in conformance WorkoutAlertList()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd);
  return List<>.init(content:)();
}

void type metadata completion function for WorkoutAlertList()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutAlertList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAlertList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutAlertList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAlertList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #10 in closure #1 in WorkoutAlertList.body.getter(uint64_t *a1)
{
  return partial apply for closure #1 in closure #10 in closure #1 in WorkoutAlertList.body.getter(a1);
}

{
  v3 = *(type metadata accessor for WorkoutAlertList() - 8);
  return closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter(a1, v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert;
  if (!lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #10 in closure #1 in WorkoutAlertList.body.getter()
{
  v1 = *(type metadata accessor for WorkoutAlertList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter((v0 + v2), *v3, v3[1], v3[2]);
}

uint64_t objectdestroyTm_50()
{
  v1 = (type metadata accessor for WorkoutAlertList() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for WorkoutAlertList() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void EnergyPicker.init(goal:formattingManager:lastWorkoutValue:color:editMode:context:)(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, uint64_t *a10)
{
  v15 = a10[1];
  v29 = a10[2];
  v27 = *a10;
  v28 = a10[3];
  v26 = *(a10 + 32);
  type metadata accessor for EnergyPickerViewModel();
  swift_allocObject();
  v30 = a4;

  v16 = a2;
  v17 = a3;

  EnergyPickerViewModel.init(goal:formattingManager:lastWorkoutValue:)(v18, a1, v16, v17, a4);
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  v19 = ObservedObject.init(wrappedValue:)();
  v21 = v20;

  if (v15 == 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    v15 = a5;
  }

  else
  {

    v24 = v28;
    v23 = v29;
    v22 = v27;
    v25 = v26;
  }

  *a8 = v19;
  *(a8 + 8) = v21;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  *(a8 + 32) = a9 & 1;
  *(a8 + 40) = v22 & 1;
  *(a8 + 48) = v15;
  *(a8 + 56) = v23;
  *(a8 + 64) = v24;
  *(a8 + 72) = v25 & 1;
}

void EnergyPicker.body.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  if (static Platform.current.getter())
  {
    type metadata accessor for EnergyPickerViewModel();
    lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();

    ObservedObject.init(wrappedValue:)();
LABEL_9:
    lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone();
    lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch();
    _ConditionalContent<>.init(storage:)();
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    *(a1 + 96) = v17;
    *a1 = v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    return;
  }

  *&v11 = v3;
  *(&v11 + 1) = v4;
  LOBYTE(v12) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  type metadata accessor for EnergyPickerViewModel();
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();

  ObservedObject.init(wrappedValue:)();
  if (v6)
  {

LABEL_8:

    goto LABEL_9;
  }

  v7 = objc_opt_self();

  v8 = [v7 energyColors];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 nonGradientTextColor];

    if (v10)
    {
      Color.init(uiColor:)();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel()
{
  result = lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel;
  if (!lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel)
  {
    type metadata accessor for EnergyPickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone()
{
  result = lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone;
  if (!lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch()
{
  result = lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch;
  if (!lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyPicker(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for EnergyPicker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB017EnergyPickerPhoneVAD0fG5WatchVGMd);
    lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone();
    lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t CatalogLockupBridge.catalogLockup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v4 = type metadata accessor for CatalogLockup();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined init with copy of MediaTagStringBuilding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id CatalogLockupBridge.__allocating_init(catalogLockup:mediaTagStringBuilder:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v7 = type metadata accessor for CatalogLockup();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  outlined init with copy of MediaTagStringBuilding(a2, &v5[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id CatalogLockupBridge.init(catalogLockup:mediaTagStringBuilder:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v6 = type metadata accessor for CatalogLockup();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  outlined init with copy of MediaTagStringBuilding(a2, &v2[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CatalogLockupBridge();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for CatalogLockupBridge()
{
  result = type metadata singleton initialization cache for CatalogLockupBridge;
  if (!type metadata singleton initialization cache for CatalogLockupBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc CatalogLockupBridge.title.getter(char *a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for MediaTagStringBuilderOptions();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder], *&a1[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder + 24]);
  v9 = a1;
  a3();
  static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  v10 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t CatalogLockupBridge.title.getter(void (*a1)(void))
{
  v3 = type metadata accessor for MediaTagStringBuilderOptions();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder), *(v1 + OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder + 24));
  a1();
  static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  v7 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  (*(v4 + 8))(v6, v3);
  return v7;
}

id CatalogLockupBridge.artwork.getter()
{
  v0 = type metadata accessor for StandardArtworkDescriptor();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  CatalogLockup.artworkDescriptor.getter();
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  outlined destroy of ArtworkDescriptor(v6);
  StandardArtworkDescriptor.artwork.getter();
  (*(v1 + 8))(v3, v0);
  v14 = *(v8 + 16);
  v14(v10, v13, v7);
  v15 = type metadata accessor for ArtworkBridge();
  v16 = objc_allocWithZone(v15);
  v14(&v16[OBJC_IVAR___SMArtwork_artwork], v10, v7);
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);
  return v17;
}

uint64_t outlined destroy of ArtworkDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CatalogLockupBridge.mediaTypeRawValue.getter()
{
  v0 = CatalogLockup.mediaType.getter();
  if (v2 != -1)
  {
    if (v2)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    outlined consume of PortableEnum<CatalogMediaType>?(v0, v1, v2);
  }

  return 0;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of PortableEnum<CatalogMediaType>(result, a2, a3 & 1);
  }

  return result;
}

uint64_t CatalogLockupBridge.mediaType.getter()
{
  v0 = CatalogLockup.mediaType.getter();
  if (v2 == -1)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    outlined consume of PortableEnum<CatalogMediaType>?(v0, v1, v2);
    return 0;
  }

  v3 = 2;
  v4 = 3;
  if (v0 != 2)
  {
    v4 = 4;
  }

  if (!v0)
  {
    v3 = 1;
  }

  if (v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t CatalogLockupBridge.assetLoadStatus.getter()
{
  v0 = CatalogLockup.bundleLoadStatus.getter();
  if (v1 == -1)
  {
    return 5;
  }

  if (v1)
  {
    return qword_20CB77CD8[v0];
  }

  return 6;
}

unint64_t CatalogLockupBridge.bundleReason.getter()
{
  CatalogLockup.bundleReason.getter();
  if (v0 == -1 || (v0 & 1) == 0)
  {
    return 2;
  }

  result = AssetBundle.Reason.rawValue.getter();
  if (result >= 2)
  {
    return 2;
  }

  return result;
}

id @objc CatalogLockupBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

id CatalogLockupBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogLockupBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogLockupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CatalogLockupBridge.guidedWalkCanonical(mediaTagStringBuilder:)(uint64_t a1)
{
  v73 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore13TextAttributeVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore11CatalogLinkOSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19AssetBundleProgressVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v65 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v66 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17ArtworkDescriptorOSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v62 - v24;
  v67 = &v62 - v24;
  v26 = type metadata accessor for CatalogLockup();
  v27 = *(v26 - 8);
  v70 = v26;
  v71 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v68 = &v62 - v31;
  static CatalogLockup.canonical()();
  v32 = type metadata accessor for ArtworkDescriptor();
  (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v34(v22, 1, 1, v33);
  v35 = type metadata accessor for AssetBundleProgress();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  v62 = v19;
  v34(v19, 1, 1, v33);
  v36 = type metadata accessor for CatalogLink();
  v37 = v13;
  (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
  v38 = type metadata accessor for Artwork();
  v39 = *(*(v38 - 8) + 56);
  v64 = v10;
  v39(v10, 1, 1, v38);
  v40 = type metadata accessor for URL();
  v41 = *(*(v40 - 8) + 56);
  v63 = v7;
  v41(v7, 1, 1, v40);
  v42 = type metadata accessor for TextAttribute();
  v43 = *(*(v42 - 8) + 56);
  v44 = v69;
  v43(v69, 1, 1, v42);
  v45 = v72;
  v43(v72, 1, 1, v42);
  v46 = v37;
  v47 = v65;
  v49 = v67;
  v48 = v68;
  v50 = v66;
  CatalogLockup.copyWith(accessibilityTitle:actionTags:artworkDescriptor:availableAudioLanguages:bundleDateRequested:bundleLoadStatus:bundleProgress:bundleReason:completedCount:contentRating:contextMenuSubtitleTags:contextMenuTitleTags:dateBookmarked:detailTags:duration:dynamicBrickDisplayStyle:editorialCardIdentifier:healthKitActivityTypes:identifier:isIncompletePlanWorkout:link:mediaType:recencyTag:referenceType:sampleContentIdentifier:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:subtitleTags:subtitleTextAttribute:titleTags:titleTextAttribute:)();
  outlined destroy of TextAttribute?(v45, &_s11SeymourCore13TextAttributeVSgMd);
  outlined destroy of TextAttribute?(v44, &_s11SeymourCore13TextAttributeVSgMd);
  outlined destroy of TextAttribute?(v63, &_s10Foundation3URLVSgMd);
  outlined destroy of TextAttribute?(v64, &_s11SeymourCore7ArtworkVSgMd);
  outlined destroy of TextAttribute?(v46, &_s11SeymourCore11CatalogLinkOSgMd);
  outlined destroy of TextAttribute?(v62, &_s10Foundation4DateVSgMd);
  outlined destroy of TextAttribute?(v47, &_s11SeymourCore19AssetBundleProgressVSgMd);
  outlined destroy of TextAttribute?(v50, &_s10Foundation4DateVSgMd);
  outlined destroy of TextAttribute?(v49, &_s11SeymourCore17ArtworkDescriptorOSgMd);
  v52 = v70;
  v51 = v71;
  v53 = *(v71 + 8);
  v53(v29, v70);
  v54 = *(v51 + 16);
  v55 = v48;
  v56 = v48;
  v57 = v52;
  v54(v29, v56, v52);
  outlined init with copy of MediaTagStringBuilding(v73, v75);
  v58 = type metadata accessor for CatalogLockupBridge();
  v59 = objc_allocWithZone(v58);
  v54(&v59[OBJC_IVAR___SMCatalogLockup_catalogLockup], v29, v57);
  outlined init with copy of MediaTagStringBuilding(v75, &v59[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v74.receiver = v59;
  v74.super_class = v58;
  v60 = objc_msgSendSuper2(&v74, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v53(v29, v57);
  v53(v55, v57);
  return v60;
}

uint64_t outlined destroy of TextAttribute?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for CatalogLockupBridge()
{
  result = type metadata accessor for CatalogLockup();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OvernightMetricsViewModel.overnightVitalsState.getter@<X0>(char *a1@<X8>)
{
  result = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = OvernightMetricsViewModel.changeDetectedCountToday.getter();
    if (result)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5;
    }
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t WorkoutTypeImage.init(workoutType:iconSize:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double WorkoutTypeImage.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = FIUIStaticScalableWorkoutIconImage();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  FIUIIconSize();
  v9 = [v8 imageWithRenderingMode_];
  Image.init(uiImage:)();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v7;
  v12 = v14[2];
  *(a1 + 40) = v14[1];
  *(a1 + 56) = v12;
  result = *&v15;
  *(a1 + 72) = v15;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutTypeImage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutTypeImage(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConfigurationType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Array<A>.removeTargetZone(primaryType:)(uint64_t a1)
{
  v68 = a1;
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v76 = &v65 - v10;
  v69 = v1;
  v11 = *v1;
  v78 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_123;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v65 = v5;
    v66 = v3;
    v67 = v2;
    v3 = 0;
    v75 = v11 & 0xC000000000000001;
    v73 = v12;
    v74 = v11 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v72) = *MEMORY[0x277D7DE78];
    v71 = (v70 + 104);
    v5 = v70 + 8;
    while (1)
    {
      if (v75)
      {
        MEMORY[0x20F30C990](v3, v11, v9);
        v14 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v78;
          v3 = v66;
          v2 = v67;
          v5 = v65;
          break;
        }
      }

      else
      {
        if (v3 >= *(v74 + 16))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v12 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v14 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      v15 = v11;
      v16 = v76;
      TargetZone.type.getter();
      v17 = v6;
      v18 = v16;
      v19 = v77;
      (*v71)(v77, v72, v17);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v5;
      v21 = v19;
      v22 = v18;
      v6 = v17;
      (*v5)(v21, v17);
      v20(v22, v17);
      if (v2)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v11 = v15;
      ++v3;
      if (v14 == v73)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = v68;
  *v69 = v13;
  (*(v3 + 16))(v5, v23, v2);
  v24 = (*(v3 + 88))(v5, v2);
  v25 = *MEMORY[0x277D7DEC0];
  v75 = v13;
  if (v24 != v25)
  {
    goto LABEL_32;
  }

  v78 = MEMORY[0x277D84F90];
  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(v13 + 16);
  }

  v2 = MEMORY[0x277D84F90];
  if (v11)
  {
    v3 = 0;
    v74 = v13 & 0xC000000000000001;
    LODWORD(v73) = *MEMORY[0x277D7DE48];
    v72 = (v70 + 104);
    v26 = (v70 + 8);
    do
    {
      if (v74)
      {
        v24 = MEMORY[0x20F30C990](v3, v13);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_117;
        }

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          if (v24 == *MEMORY[0x277D7DED0])
          {
            v78 = MEMORY[0x277D84F90];
            if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
            {
              v11 = __CocoaSet.count.getter();
            }

            else
            {
              v11 = *(v13 + 16);
            }

            v2 = MEMORY[0x277D84F90];
            if (v11)
            {
              v3 = 0;
              v74 = v13 & 0xC000000000000001;
              LODWORD(v73) = *MEMORY[0x277D7DE70];
              v71 = v11;
              v72 = (v70 + 104);
              v31 = (v70 + 8);
              do
              {
                if (v74)
                {
                  MEMORY[0x20F30C990](v3, v13);
                  v2 = v3 + 1;
                  if (__OFADD__(v3, 1))
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v3 >= *(v13 + 16))
                  {
                    goto LABEL_119;
                  }

                  v2 = v3 + 1;
                  if (__OFADD__(v3, 1))
                  {
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }
                }

                v32 = v76;
                TargetZone.type.getter();
                v33 = v77;
                (*v72)(v77, v73, v6);
                lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
                v34 = dispatch thunk of static Equatable.== infix(_:_:)();
                v5 = *v31;
                (*v31)(v33, v6);
                (v5)(v32, v6);
                if (v34)
                {
                }

                else
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  v13 = v75;
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                v11 = v71;
                ++v3;
              }

              while (v2 != v71);
              v5 = v78;
              v2 = MEMORY[0x277D84F90];
            }

            else
            {
              v5 = MEMORY[0x277D84F90];
            }

            v78 = v2;
            if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
            {
              v46 = __CocoaSet.count.getter();
              if (!v46)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v46 = *(v5 + 16);
              if (!v46)
              {
                goto LABEL_145;
              }
            }

            v3 = 0;
            v74 = v46;
            v75 = v5 & 0xC000000000000001;
            LODWORD(v73) = *MEMORY[0x277D7DE58];
            v72 = (v70 + 104);
            v47 = (v70 + 8);
            while (1)
            {
              if (v75)
              {
                MEMORY[0x20F30C990](v3, v5);
                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (v3 >= *(v5 + 16))
                {
                  goto LABEL_120;
                }

                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }
              }

              v48 = v76;
              TargetZone.type.getter();
              v49 = v77;
              (*v72)(v77, v73, v6);
              lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
              v11 = dispatch thunk of static Equatable.== infix(_:_:)();
              v50 = *v47;
              (*v47)(v49, v6);
              v50(v48, v6);
              if (v11)
              {
              }

              else
              {
                v11 = &v78;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              ++v3;
              if (v2 == v74)
              {
                goto LABEL_114;
              }
            }
          }

          if (v24 != *MEMORY[0x277D7DEC8])
          {
            return (*(v3 + 8))(v5, v2);
          }

          v78 = MEMORY[0x277D84F90];
          if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
          {
            v11 = __CocoaSet.count.getter();
          }

          else
          {
            v11 = *(v13 + 16);
          }

          v2 = MEMORY[0x277D84F90];
          if (v11)
          {
            v3 = 0;
            v74 = v13 & 0xC000000000000001;
            LODWORD(v73) = *MEMORY[0x277D7DE68];
            v71 = v11;
            v72 = (v70 + 104);
            v35 = (v70 + 8);
            do
            {
              if (v74)
              {
                MEMORY[0x20F30C990](v3, v13);
                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
                  goto LABEL_64;
                }
              }

              else
              {
                if (v3 >= *(v13 + 16))
                {
                  goto LABEL_121;
                }

                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }
              }

              v36 = v76;
              TargetZone.type.getter();
              v37 = v77;
              (*v72)(v77, v73, v6);
              lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
              v38 = dispatch thunk of static Equatable.== infix(_:_:)();
              v5 = *v35;
              (*v35)(v37, v6);
              (v5)(v36, v6);
              if (v38)
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v13 = v75;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              v11 = v71;
              ++v3;
            }

            while (v2 != v71);
LABEL_98:
            v5 = v78;
            v2 = MEMORY[0x277D84F90];
          }

          else
          {
            v5 = MEMORY[0x277D84F90];
          }

          v78 = v2;
          if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
          {
            v51 = __CocoaSet.count.getter();
            if (!v51)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v51 = *(v5 + 16);
            if (!v51)
            {
              goto LABEL_145;
            }
          }

          v3 = 0;
          v74 = v51;
          v75 = v5 & 0xC000000000000001;
          LODWORD(v73) = *MEMORY[0x277D7DE50];
          v72 = (v70 + 104);
          v52 = (v70 + 8);
          while (1)
          {
            if (v75)
            {
              MEMORY[0x20F30C990](v3, v5);
              v2 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_113;
              }
            }

            else
            {
              if (v3 >= *(v5 + 16))
              {
                goto LABEL_122;
              }

              v2 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
LABEL_113:
                __break(1u);
LABEL_114:
                v2 = v78;
                goto LABEL_145;
              }
            }

            v53 = v76;
            TargetZone.type.getter();
            v54 = v77;
            (*v72)(v77, v73, v6);
            lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
            v11 = dispatch thunk of static Equatable.== infix(_:_:)();
            v55 = *v52;
            (*v52)(v54, v6);
            v55(v53, v6);
            if (v11)
            {
            }

            else
            {
              v11 = &v78;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v3;
            if (v2 == v74)
            {
              goto LABEL_114;
            }
          }
        }
      }

      v2 = v11;
      v27 = v76;
      TargetZone.type.getter();
      v28 = v77;
      (*v72)(v77, v73, v6);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v26;
      (*v26)(v28, v6);
      v30(v27, v6);
      if (v29)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v13 = v75;
      v11 = v2;
      ++v3;
    }

    while (v5 != v2);
LABEL_48:
    v5 = v78;
    v2 = MEMORY[0x277D84F90];
  }

  else
  {
LABEL_65:
    v5 = v2;
  }

  v78 = v2;
  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v39 = __CocoaSet.count.getter();
    if (v39)
    {
      goto LABEL_69;
    }

LABEL_126:
    v44 = v2;
    goto LABEL_127;
  }

  v39 = *(v5 + 16);
  if (!v39)
  {
    goto LABEL_126;
  }

LABEL_69:
  v3 = 0;
  v74 = v39;
  v75 = v5 & 0xC000000000000001;
  LODWORD(v73) = *MEMORY[0x277D7DE40];
  v72 = (v70 + 104);
  v40 = (v70 + 8);
  while (v75)
  {
    MEMORY[0x20F30C990](v3, v5);
    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_79;
    }

LABEL_75:
    v41 = v76;
    TargetZone.type.getter();
    v42 = v77;
    (*v72)(v77, v73, v6);
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v40;
    (*v40)(v42, v6);
    v43(v41, v6);
    if (v11)
    {
    }

    else
    {
      v11 = &v78;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v3;
    if (v2 == v74)
    {
      goto LABEL_80;
    }
  }

  if (v3 >= *(v5 + 16))
  {
    goto LABEL_118;
  }

  v2 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_75;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  v44 = v78;
  v2 = MEMORY[0x277D84F90];
LABEL_127:

  v78 = v2;
  if (v44 < 0 || (v44 & 0x4000000000000000) != 0)
  {
LABEL_143:
    v56 = __CocoaSet.count.getter();
    if (v56)
    {
      goto LABEL_130;
    }
  }

  else
  {
    v56 = *(v44 + 16);
    if (v56)
    {
LABEL_130:
      v57 = 0;
      v75 = v44 & 0xC000000000000001;
      LODWORD(v74) = *MEMORY[0x277D7DE60];
      v72 = v56;
      v73 = (v70 + 104);
      v58 = (v70 + 8);
      while (1)
      {
        if (v75)
        {
          MEMORY[0x20F30C990](v57, v44);
          v59 = (v57 + 1);
          if (__OFADD__(v57, 1))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            v2 = v78;
            goto LABEL_145;
          }
        }

        else
        {
          if (v57 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_143;
          }

          v59 = (v57 + 1);
          if (__OFADD__(v57, 1))
          {
            goto LABEL_140;
          }
        }

        v60 = v44;
        v61 = v76;
        TargetZone.type.getter();
        v62 = v77;
        (*v73)(v77, v74, v6);
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        v64 = *v58;
        (*v58)(v62, v6);
        v64(v61, v6);
        if (v63)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v44 = v60;
        ++v57;
        if (v59 == v72)
        {
          goto LABEL_141;
        }
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_145:

  *v69 = v2;
  return result;
}

uint64_t AlertConfigurationType.localizedTitle(activityType:)(void *a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v5 = "ION_POWER_ZONES_TITLE";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = WorkoutUIBundle.super.isa;
        v16 = 0xE000000000000000;
        v8 = 0x617A696C61636F4CLL;
        v9 = 0xEB00000000656C62;
        v11 = 0xD000000000000026;
      }

      else
      {
        v5 = "ason";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = WorkoutUIBundle.super.isa;
        v16 = 0xE000000000000000;
        v8 = 0x617A696C61636F4CLL;
        v9 = 0xEB00000000656C62;
        v11 = 0xD000000000000025;
      }

      goto LABEL_37;
    }

    if (a2 != 4)
    {
      v5 = "iled with error: %@";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD000000000000022;
      goto LABEL_37;
    }

    v6 = "undleProgressUpdated %@ ";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
LABEL_33:
      swift_once();
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if ([a1 effectiveTypeIdentifier] == 13)
        {
          v5 = "ION_CADENCE_TITLE_PEDOMETER";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v7 = WorkoutUIBundle.super.isa;
          v16 = 0xE000000000000000;
          v8 = 0x617A696C61636F4CLL;
          v9 = 0xEB00000000656C62;
          v11 = 0xD000000000000029;
        }

        else
        {
          v5 = "ALERT_CONFIGURATION_POWER_TITLE";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v7 = WorkoutUIBundle.super.isa;
          v16 = 0xE000000000000000;
          v8 = 0x617A696C61636F4CLL;
          v9 = 0xEB00000000656C62;
          v11 = 0xD00000000000002BLL;
        }

        goto LABEL_37;
      }

      v5 = "ION_TRACK_ALERTS_TITLE";
      v4 = one-time initialization token for WorkoutUIBundle;
      goto LABEL_26;
    }

    if (a2)
    {
      v5 = "ION_CADENCE_TITLE_CYCLING";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD000000000000024;
      goto LABEL_37;
    }

    v2 = FIUIDistanceTypeForActivityType();
    v3 = MEMORY[0x20F30D340](v2);
    v4 = one-time initialization token for WorkoutUIBundle;
    if (v3 == 4)
    {
      v5 = "ALERT_CONFIGURATION_PACE_TITLE";
LABEL_26:
      if (v4 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD00000000000001FLL;
LABEL_37:
      v10 = v5 | 0x8000000000000000;
      goto LABEL_38;
    }

    v6 = "ION_HEART_RATE_TITLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      goto LABEL_33;
    }
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v16 = 0xE000000000000000;
  v8 = 0x617A696C61636F4CLL;
  v9 = 0xEB00000000656C62;
  v10 = v6 | 0x8000000000000000;
  v11 = 0xD00000000000001ELL;
LABEL_38:
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v8, v7, v12, *(&v16 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t AlertConfigurationType.navigationTitle(activityType:context:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for AlertConfigurationContext();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D7E4B8])
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for ConfigurationType();
    (*(*(v12 - 8) + 8))(v10, v12);
    return 0;
  }

  else if (v11 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v24._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._object = 0x800000020CB9BAB0;
    v16._countAndFlagsBits = 0xD000000000000024;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20CB5DA70;
    v19 = AlertConfigurationType.localizedTitle(activityType:)(a1, a3);
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = static String.localizedStringWithFormat(_:_:)();

    return v22;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AlertConfigurationType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AlertConfigurationType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL AlertConfigurationView.configurationTypeIsSupported(_:configurationContext:)(unsigned __int8 a1)
{
  v3 = type metadata accessor for AlertConfigurationContext();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        (*(v4 + 104))(v7, *MEMORY[0x277D7E4C0], v3, v5);
        v12 = static AlertConfigurationContext.== infix(_:_:)();
        (*(v4 + 8))(v7, v3);
        if (v12)
        {
          v25 = v9;
          v26 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
          State.wrappedValue.getter();
          v13 = *(v24 + 16);

          v14 = FIUIWorkoutActivityType.supportedSplits.getter();

          v15 = 2;
LABEL_17:
          v19 = specialized Set.contains(_:)(v15, v14);

          return v19;
        }
      }

      else
      {
        (*(v4 + 104))(v7, *MEMORY[0x277D7E4C0], v3, v5);
        v20 = static AlertConfigurationContext.== infix(_:_:)();
        (*(v4 + 8))(v7, v3);
        if (v20)
        {
          v25 = v9;
          v26 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
          State.wrappedValue.getter();
          v21 = *(v24 + 16);

          v14 = FIUIWorkoutActivityType.supportedSplits.getter();

          v15 = 1;
          goto LABEL_17;
        }
      }

      return 0;
    }

    if (a1 == 6)
    {
      (*(v4 + 104))(v7, *MEMORY[0x277D7E4C0], v3, v5);
      v16 = static AlertConfigurationContext.== infix(_:_:)();
      (*(v4 + 8))(v7, v3);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v25 = v9;
      v26 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      v17 = *(v24 + 16);

      v18 = [v17 supportsTrackRunning];
    }

    else
    {
      v25 = *v1;
      v26 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      v17 = *(v24 + 16);

      v18 = FIUIWorkoutActivityType.supportsPowerZoneAlerts()();
    }

    v19 = v18;

    return v19;
  }

  if (a1 > 1u)
  {
    v25 = *v1;
    v26 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v10 = *(v24 + 16);

    v25 = v9;
    v26 = v8;
    State.wrappedValue.getter();

    if (a1 == 2)
    {
      v11 = FIUIWorkoutActivityType.supportsCadenceAlerts(activityMoveMode:configurationContext:)();
    }

    else
    {
      v11 = FIUIWorkoutActivityType.supportsPowerAlerts(activityMoveMode:configurationContext:)();
    }

    goto LABEL_20;
  }

  if (!a1)
  {
    v25 = *v1;
    v26 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v10 = *(v24 + 16);

    v25 = v9;
    v26 = v8;
    State.wrappedValue.getter();

    v11 = FIUIWorkoutActivityType.supportsPaceAlerts(activityMoveMode:configurationContext:)();
LABEL_20:
    v19 = v11;

    return v19;
  }

  return 1;
}

Swift::Bool __swiftcall AlertConfigurationView.configurationTypeIsEnabled(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for PowerZonesAlertZoneType();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - v6;
  v8 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v56 - v15);
  v17 = type metadata accessor for HeartRateZoneType();
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = v1[1];
  if (a1 <= WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_cadence)
      {
        v27 = v1[6];
        v26 = v1[7];
      }

      else
      {
        v27 = v1[8];
        v26 = v1[9];
      }

      goto LABEL_19;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_pace)
    {
      v27 = v1[4];
      v26 = v1[5];
LABEL_19:
      v58 = v27;
      v59 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
      State.wrappedValue.getter();
      v40 = dispatch thunk of TargetZone.enabled.getter();
      goto LABEL_27;
    }

    v58 = *v1;
    v59 = v25;
    v29 = v21;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v31 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v33 = v32;
    v35 = v34;

    v58 = v31;
    v59 = v33;
    v60 = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v61, v36);
    v37 = v61;

    HeartRateTargetZone.type.getter();

    (*(v30 + 104))(v19, *MEMORY[0x277D7E138], v29);
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v30 + 8);
    v39(v19, v29);
    v39(v24, v29);
    goto LABEL_22;
  }

  if (a1 > WorkoutUI_AlertConfigurationType_distance)
  {
    if (a1 != WorkoutUI_AlertConfigurationType_trackAlerts)
    {
      v58 = *v1;
      v59 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      v41 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
      v43 = v42;
      v45 = v44;

      v58 = v41;
      v59 = v43;
      v60 = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
      MEMORY[0x20F30B100](&v61, v46);
      v47 = v61;

      dispatch thunk of PowerZonesAlertTargetZone.type.getter();

      v49 = v56;
      v48 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x277D7E418], v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v48 + 8);
      v50(v49, v3);
      v50(v7, v3);
LABEL_22:
      v40 = v38 ^ 1;
      return v40 & 1;
    }

    v58 = *v1;
    v59 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v10);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v10;
      goto LABEL_17;
    }

    v53 = *v10;
    swift_getKeyPath();
    v58 = v53;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();

    v40 = dispatch thunk of TrackAlerts.enabled.getter();

LABEL_27:

    return v40 & 1;
  }

  if (a1 != WorkoutUI_AlertConfigurationType_time)
  {
    v58 = *v1;
    v59 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v13);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v13;
      goto LABEL_17;
    }

    v54 = *v13;
    swift_getKeyPath();
    v58 = v54;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v52 = *(v54 + 48);
    goto LABEL_26;
  }

  v58 = *v1;
  v59 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v16);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = *v16;
    swift_getKeyPath();
    v58 = v51;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v52 = *(v51 + 40);
LABEL_26:
    v40 = [v52 enabled];
    goto LABEL_27;
  }

  v28 = v16;
LABEL_17:
  outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v28);
  v40 = 0;
  return v40 & 1;
}

uint64_t AlertConfigurationView.enableAlertConfigurationType(_:configurationContext:)(unsigned __int8 a1, uint64_t a2)
{
  v48 = a2;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v49);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v47 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v47 - v13);
  v15 = type metadata accessor for HeartRateZoneType();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = *v2;
  v20 = v2[1];
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v54 = *v2;
        v55 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v8);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          return outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v8);
        }

        v45 = *v8;
        swift_getKeyPath();
        v54 = v45;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        dispatch thunk of TrackAlerts.lapChangeEnabled.setter();
      }

      else
      {
        v54 = *v2;
        v55 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        v37 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v39 = v38;
        v41 = v40;

        v54 = v37;
        v55 = v39;
        v56 = v41;
        static PowerZonesAlertZoneType.defaultTarget(for:)(v48, v6);
        v42 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v50 = PowerZonesAlertTargetZone.init(type:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
        Binding.wrappedValue.setter();
      }
    }

    else
    {
      if (a1 == 4)
      {
        v54 = *v2;
        v55 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v14);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          return outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v14);
        }

        v43 = *v14;
        swift_getKeyPath();
        v54 = v43;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v44 = *(v43 + 40);
      }

      else
      {
        v54 = *v2;
        v55 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v11);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          return outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v11);
        }

        v46 = *v11;
        swift_getKeyPath();
        v54 = v46;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v44 = *(v46 + 48);
      }

      [v44 setEnabled_];
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v22 = v2[6];
        v21 = v2[7];
      }

      else
      {
        v22 = v2[8];
        v21 = v2[9];
      }

      v54 = v22;
      v55 = v21;
      goto LABEL_19;
    }

    if (!a1)
    {
      v22 = v2[4];
      v21 = v2[5];
      v54 = v22;
      v55 = v21;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
      State.wrappedValue.getter();
      TargetZone.type.getter();

      v54 = v22;
      v55 = v21;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.min.getter();

      v54 = v22;
      v55 = v21;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.max.getter();

      type metadata accessor for TargetZone();
      swift_allocObject();
      v36 = TargetZone.init(type:min:max:enabled:)();
      v54 = v22;
      v55 = v21;
      v50 = v36;
      return State.wrappedValue.setter();
    }

    v54 = *v2;
    v55 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v24 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v48 = v25;
    v49 = v24;
    v26 = v25;
    v28 = v27;

    v54 = v24;
    v55 = v26;
    v56 = v28;
    (*(v47 + 104))(v17, *MEMORY[0x277D7E148], v15);
    v50 = v19;
    v51 = v20;
    State.wrappedValue.getter();
    v29 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v31 = v30;
    v33 = v32;

    v50 = v29;
    v51 = v31;
    v52 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v53);
    v34 = v53;

    dispatch thunk of HeartRateTargetZone.defaultZones.getter();

    v35 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v50 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
    Binding.wrappedValue.setter();
  }
}

uint64_t outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall AlertConfigurationView.disableAlertConfigurationType(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for PowerZonesAlertZoneType();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v49);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v45 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for HeartRateZoneType();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = *v1;
  v18 = v1[1];
  if (a1 > WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_distance)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_trackAlerts)
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v7);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v7);
          return;
        }

        v43 = *v7;
        swift_getKeyPath();
        v54 = v43;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        dispatch thunk of TrackAlerts.lapChangeEnabled.setter();
      }

      else
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        v35 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v37 = v36;
        v39 = v38;

        v54 = v35;
        v55 = v37;
        v56 = v39;
        (*(v47 + 104))(v5, *MEMORY[0x277D7E418], v48);
        v40 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v50 = PowerZonesAlertTargetZone.init(type:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
        Binding.wrappedValue.setter();
      }
    }

    else
    {
      if (a1 == WorkoutUI_AlertConfigurationType_time)
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v13);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v13);
          return;
        }

        v41 = *v13;
        swift_getKeyPath();
        v54 = v41;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v42 = *(v41 + 40);
      }

      else
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v10);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v10);
          return;
        }

        v44 = *v10;
        swift_getKeyPath();
        v54 = v44;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v42 = *(v44 + 48);
      }

      [v42 setEnabled_];
    }
  }

  else
  {
    if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_cadence)
      {
        v21 = v1[6];
        v20 = v1[7];
      }

      else
      {
        v21 = v1[8];
        v20 = v1[9];
      }

      v54 = v21;
      v55 = v20;
      goto LABEL_19;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_pace)
    {
      v21 = v1[4];
      v20 = v1[5];
      v54 = v21;
      v55 = v20;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
      State.wrappedValue.getter();
      TargetZone.type.getter();

      v54 = v21;
      v55 = v20;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.min.getter();

      v54 = v21;
      v55 = v20;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.max.getter();

      type metadata accessor for TargetZone();
      swift_allocObject();
      v34 = TargetZone.init(type:min:max:enabled:)();
      v54 = v21;
      v55 = v20;
      v50 = v34;
      State.wrappedValue.setter();
      return;
    }

    v54 = *v1;
    v55 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v22 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v49 = v22;
    v24 = v23;
    v26 = v25;

    v54 = v22;
    v55 = v24;
    v56 = v26;
    (*(v46 + 104))(v16, *MEMORY[0x277D7E138], v14);
    v50 = v19;
    v51 = v18;
    State.wrappedValue.getter();
    v27 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v29 = v28;
    v31 = v30;

    v50 = v27;
    v51 = v29;
    v52 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v53);
    v32 = v53;

    dispatch thunk of HeartRateTargetZone.defaultZones.getter();

    v33 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v50 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
    Binding.wrappedValue.setter();
  }
}

Swift::String __swiftcall AlertConfigurationView.valueForConfigurationType(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (v86 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (v86 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (v86 - v13);
  v16 = *v1;
  v15 = v1[1];
  if (a1 > WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_distance)
    {
      if (a1 != WorkoutUI_AlertConfigurationType_trackAlerts)
      {
        v94 = *v1;
        v95 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        v41 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v43 = v42;
        v45 = v44;

        v94 = v41;
        v95 = v43;
        v96 = v45;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
        MEMORY[0x20F30B100](v87, v46);
        v32 = v87[0];

        v92 = v16;
        v93 = v15;
        State.wrappedValue.getter();
        v33 = *(v86[0] + 24);

        v92 = v16;
        v93 = v15;
        State.wrappedValue.getter();
        v34 = *(v86[0] + 16);

        v35 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
        goto LABEL_22;
      }

      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v5);

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v70 = *v5;
        swift_getKeyPath();
        v94 = v70;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        countAndFlagsBits = TrackAlerts.displayString.getter();
        object = v71;

        goto LABEL_52;
      }

      v23 = v5;
LABEL_18:
      outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v23);
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_52;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_time)
    {
      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v11);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v11;
        goto LABEL_18;
      }

      v64 = *v11;
      v94 = v16;
      v95 = v15;
      State.wrappedValue.getter();
      v33 = *(v92 + 24);

      swift_getKeyPath();
      v94 = v64;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v65 = *(v64 + 40);
      [v65 value];
      if (v66 > 0.0)
      {
        v67 = v66;
        if ([v65 enabled])
        {
          v68 = specialized FIUIFormattingManager.timeSplitsDisplayString(time:)(v67);
LABEL_46:
          countAndFlagsBits = v68;
          object = v69;
LABEL_50:

          goto LABEL_51;
        }
      }
    }

    else
    {
      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v8);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v8;
        goto LABEL_18;
      }

      v72 = *v8;
      v94 = v16;
      v95 = v15;
      State.wrappedValue.getter();
      v33 = *(v92 + 24);

      swift_getKeyPath();
      v94 = v72;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v73 = *(v72 + 48);
      v92 = v16;
      v93 = v15;
      v65 = v73;
      State.wrappedValue.getter();
      v74 = *(v87[0] + 16);

      v75 = FIUIDistanceTypeForActivityType();

      [v65 value];
      if (v76 > 0.0)
      {
        v77 = v76;
        if ([v65 enabled])
        {
          v68 = FIUIFormattingManager.distanceSplitsDisplayString(distanceInMeters:distanceType:)(v75, v77);
          goto LABEL_46;
        }
      }
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v78 = WorkoutUIBundle.super.isa;
    v99._object = 0xE000000000000000;
    v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v79.value._object = 0xEB00000000656C62;
    v80._object = 0x800000020CB9BAE0;
    v80._countAndFlagsBits = 0xD000000000000010;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v99._countAndFlagsBits = 0;
    v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v79, v78, v81, v99);
    countAndFlagsBits = v82._countAndFlagsBits;
    object = v82._object;

    goto LABEL_50;
  }

  if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
  {
    if (a1 == WorkoutUI_AlertConfigurationType_cadence)
    {
      v25 = v1[6];
      v24 = v1[7];
    }

    else
    {
      v25 = v1[8];
      v24 = v1[9];
    }

    v94 = v25;
    v95 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
    State.wrappedValue.getter();
    v94 = v16;
    v95 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v33 = *(v92 + 24);

    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v39 = *(v92 + 16);

    countAndFlagsBits = TargetZone.displayString(formattingManager:activityType:)();
    object = v40;

    goto LABEL_51;
  }

  if (a1)
  {
    v94 = *v1;
    v95 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v26 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v28 = v27;
    v30 = v29;

    v94 = v26;
    v95 = v28;
    v96 = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](v87, v31);
    v32 = v87[0];

    v92 = v16;
    v93 = v15;
    State.wrappedValue.getter();
    v33 = *(v86[0] + 24);

    v92 = v16;
    v93 = v15;
    State.wrappedValue.getter();
    v34 = *(v86[0] + 16);

    v35 = MEMORY[0x20F305B10](v33, v34);
LABEL_22:
    countAndFlagsBits = v35;
    object = v36;

LABEL_51:
    goto LABEL_52;
  }

  v17 = v1[5];
  v94 = v1[4];
  v95 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
  State.wrappedValue.getter();
  v94 = v16;
  v95 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  v18 = *(v92 + 24);

  v94 = v16;
  v95 = v15;
  State.wrappedValue.getter();
  v19 = *(v92 + 16);

  v20 = TargetZone.displayString(formattingManager:activityType:)();
  v22 = v21;

  v90 = v20;
  v91 = v22;
  v94 = v16;
  v95 = v15;
  State.wrappedValue.getter();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v14);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v14);
  }

  else
  {
    v47 = *v14;
    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v48 = *(v92 + 16);

    v49 = FIUIWorkoutActivityType.supportsPacerAlerts.getter();

    if (v49)
    {
      v94 = 10;
      v95 = 0xE100000000000000;
      swift_getKeyPath();
      v92 = v47;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();

      if (dispatch thunk of PacerAlerts.aheadBehindAlertsEnabled.getter())
      {
        v50 = 0xEE004E4F5F545245;
      }

      else
      {
        v50 = 0xEF46464F5F545245;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v51 = WorkoutUIBundle.super.isa;
      v97._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0x4C415F5245434150;
      v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v53.value._object = 0xEB00000000656C62;
      v52._object = v50;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v97._countAndFlagsBits = 0;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v97);

      MEMORY[0x20F30BC00](v55._countAndFlagsBits, v55._object);

      MEMORY[0x20F30BC00](v94, v95);
    }

    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v56 = *(v92 + 16);

    v57 = [v56 supportsRaceRoute];

    if (v57)
    {
      v88 = 10;
      v89 = 0xE100000000000000;
      swift_getKeyPath();
      v94 = v47;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();

      if (dispatch thunk of RaceAlerts.aheadBehindAlertsEnabled.getter())
      {
        v58 = 0xED00004E4F5F5452;
      }

      else
      {
        v58 = 0xEE0046464F5F5452;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v59 = WorkoutUIBundle.super.isa;
      v98._object = 0xE000000000000000;
      v60._countAndFlagsBits = 0x454C415F45434152;
      v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v61.value._object = 0xEB00000000656C62;
      v60._object = v58;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v98._countAndFlagsBits = 0;
      v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v98);

      MEMORY[0x20F30BC00](v63._countAndFlagsBits, v63._object);

      MEMORY[0x20F30BC00](v88, v89);
    }
  }

  countAndFlagsBits = v90;
  object = v91;
LABEL_52:
  v83 = countAndFlagsBits;
  v84 = object;
  result._object = v84;
  result._countAndFlagsBits = v83;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlertConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type [AlertConfigurationType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI22AlertConfigurationTypeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationType and conformance AlertConfigurationType()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType;
  if (!lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType;
  if (!lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized AlertConfigurationType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t HKWorkoutActivityType.accessibilityIdentifier.getter()
{
  v0 = _HKWorkoutActivityNameForActivityType();
  if (!v0)
  {
    return 0xD000000000000010;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._object = 0x800000020CB96FD0;
  v5._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v5))
  {
    v6 = String.count.getter();
    v7 = specialized Collection.dropFirst(_:)(v6, v2, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v2 = MEMORY[0x20F30BBA0](v7, v9, v11, v13);
  }

  return v2;
}

uint64_t type metadata accessor for TrainingLoadDayEntry()
{
  result = type metadata singleton initialization cache for TrainingLoadDayEntry;
  if (!type metadata singleton initialization cache for TrainingLoadDayEntry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayEntry()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t protocol witness for TimelineEntry.date.getter in conformance TrainingLoadDayEntry@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutSafetyCheckInTipDetailView.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void one-time initialization function for imageFrameHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB781F8[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static WorkoutSafetyCheckInTipDetailView.Layout.imageFrameHeight = *&v3;
}

void one-time initialization function for imagePadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB78250[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static WorkoutSafetyCheckInTipDetailView.Layout.imagePadding = *&v3;
}

uint64_t WorkoutSafetyCheckInTipDetailView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WorkoutSafetyCheckInTipDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v20 = v1;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVANyANyANyAJyANyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA01_eV0VGGAA05_FlexwV0VGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAxVtGG_Qo_Md);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd);
  v9 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd);
  v21 = v8;
  v22 = v9;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v12;
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd);
  lazy protocol witness table accessor for type String and conformance String();
  v13 = v19;
  View.navigationTitle<A>(_:)();

  (*(v5 + 8))(v7, v4);
  v14 = static Color.black.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMd) + 36);
  *v15 = v14;
  *(v15 + 8) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMd);
  v17 = (v13 + *(result + 36));
  *v17 = closure #2 in WorkoutSafetyCheckInTipDetailView.body.getter;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA6SpacerVAKyAKyAKyAA0F0VyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGAA05_FlexuG0VGAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAuStGGMd);
  closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(a1, &v4[*(v5 + 44)]);
  static Edge.Set.horizontal.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd);
  View.scenePadding(_:)();
  return outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v4, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd);
}

uint64_t closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v64 = objc_opt_self();
  v17 = [v64 bundleForClass_];
  v62 = v13;
  static Locale.current.getter();
  *&v93[0] = String.init(localized:table:bundle:locale:comment:)();
  *(&v93[0] + 1) = v18;
  v63 = lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v67 = v20;
  v68 = v19;
  v71 = v21;
  v66 = v22;
  KeyPath = swift_getKeyPath();
  v60 = static HorizontalAlignment.center.getter();
  v83 = 1;
  closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(&v74);
  v89 = v78;
  v90 = v79;
  v91 = v80;
  v92 = v81;
  v85 = v74;
  v86 = v75;
  v87 = v76;
  v88 = v77;
  v93[0] = v74;
  v93[1] = v75;
  v93[2] = v76;
  v93[3] = v77;
  v93[4] = v78;
  v93[5] = v79;
  v93[6] = v80;
  v94 = v81;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v85, v73, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd);
  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v93, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd);
  *&v82[71] = v89;
  *&v82[87] = v90;
  *&v82[103] = v91;
  v82[119] = v92;
  *&v82[7] = v85;
  *&v82[23] = v86;
  *&v82[39] = v87;
  *&v82[55] = v88;
  LODWORD(v59) = v83;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v84[55] = v77;
  *&v84[71] = v78;
  *&v84[87] = v79;
  *&v84[103] = v80;
  *&v84[7] = v74;
  *&v84[23] = v75;
  *&v84[39] = v76;
  v23 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = Color.init(uiColor:)();
  LOBYTE(ObjCClassFromMetadata) = static Edge.Set.all.getter();
  v25 = &v7[*(v3 + 44)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #10.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  *(v7 + 81) = *&v82[64];
  *(v7 + 97) = *&v82[80];
  *(v7 + 113) = *&v82[96];
  *(v7 + 17) = *v82;
  *(v7 + 33) = *&v82[16];
  *(v7 + 49) = *&v82[32];
  *(v7 + 65) = *&v82[48];
  v34 = *&v84[80];
  *(v7 + 201) = *&v84[64];
  *(v7 + 217) = v34;
  *(v7 + 233) = *&v84[96];
  v35 = *&v84[16];
  *(v7 + 137) = *v84;
  *(v7 + 153) = v35;
  v36 = *&v84[48];
  *(v7 + 169) = *&v84[32];
  *v7 = v60;
  *(v7 + 1) = 0;
  v7[16] = v59;
  *(v7 + 129) = *&v82[112];
  v37 = *&v84[111];
  *(v7 + 185) = v36;
  *(v7 + 31) = v37;
  *(v7 + 32) = v24;
  v7[264] = ObjCClassFromMetadata;
  v58 = v10;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(v7, v10);
  String.LocalizationValue.init(stringLiteral:)();
  v38 = [v64 bundleForClass_];
  static Locale.current.getter();
  v73[0] = String.init(localized:table:bundle:locale:comment:)();
  v73[1] = v39;
  v40 = Text.init<A>(_:)();
  v62 = v41;
  v63 = v40;
  LODWORD(v64) = v42;
  v65 = v43;
  v61 = swift_getKeyPath();
  LOBYTE(ObjCClassFromMetadata) = v66 & 1;
  LOBYTE(v73[0]) = v66 & 1;
  v44 = v10;
  v45 = v72;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v44, v72, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v47 = v68;
  v46 = v69;
  v48 = KeyPath;
  v49 = v71;
  *v69 = v68;
  v46[1] = v49;
  *(v46 + 16) = ObjCClassFromMetadata;
  v46[3] = v67;
  v46[4] = v48;
  *(v46 + 40) = 0;
  v46[6] = 0;
  *(v46 + 56) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVACyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGAA05_FlexqP0VGAA016_BackgroundStyleI0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAmKtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v45, v46 + v50[16], &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v51 = v46 + v50[20];
  *v51 = 0;
  v51[8] = 1;
  v52 = v46 + v50[24];
  v53 = v62;
  v54 = v63;
  *v52 = v63;
  *(v52 + 1) = v53;
  LOBYTE(v45) = v64 & 1;
  v52[16] = v64 & 1;
  v55 = v61;
  *(v52 + 3) = v65;
  *(v52 + 4) = v55;
  v52[40] = 0;
  outlined copy of Text.Storage(v47, v49, ObjCClassFromMetadata);

  outlined copy of Text.Storage(v54, v53, v45);

  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v58, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  outlined consume of Text.Storage(v54, v53, v45);

  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v72, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  outlined consume of Text.Storage(v47, v71, v73[0]);
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-v11];
  WorkoutSafetyCheckInTipDetailView.layoutDirection.getter(&v25[-v11]);
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  static LayoutDirection.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v14 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  if (one-time initialization token for imageFrameHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = 1;
  *&v26[6] = v28;
  *&v26[22] = v29;
  *&v26[38] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v16 = static Edge.Set.top.getter();
  *(inited + 32) = v16;
  v17 = static Edge.Set.bottom.getter();
  *(inited + 33) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  if (one-time initialization token for imagePadding != -1)
  {
    swift_once();
  }

  result = EdgeInsets.init(_all:)();
  v20 = *&v26[16];
  *(a1 + 18) = *v26;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v20;
  *(a1 + 50) = *&v26[32];
  *(a1 + 64) = *&v26[46];
  *(a1 + 72) = v18;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
  *(a1 + 104) = v24;
  *(a1 + 112) = 0;
  return result;
}

uint64_t type metadata accessor for WorkoutSafetyCheckInTipDetailView()
{
  result = type metadata singleton initialization cache for WorkoutSafetyCheckInTipDetailView;
  if (!type metadata singleton initialization cache for WorkoutSafetyCheckInTipDetailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutSafetyCheckInTipDetailView()
{
  type metadata accessor for Environment<LayoutDirection>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd);
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CurrentStepMetricView.init(intervalsMetricsPublisher:workoutStatePublisher:step:formattingManager:activityType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518]);

  *a4 = ObservedObject.init(wrappedValue:)();
  a4[1] = v8;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;

  a4[2] = v9;
  a4[3] = v11;
  a4[4] = a1;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void CurrentStepMetricView.distanceRemaining.getter()
{
  v0 = WorkoutStep.goal.getter();
  v1 = [v0 goalTypeIdentifier];

  if (v1 == 1 && (v2 = WorkoutStep.goal.getter(), v3 = [v2 value], v2, v3))
  {
    v4 = [objc_opt_self() meterUnit];
    [v3 doubleValueForUnit_];

    IntervalsMetricsPublisher.intervalDistance.getter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void CurrentStepMetricView.timeAndDistanceGoalDistanceRemaining.getter()
{
  v0 = WorkoutStep.goal.getter();
  v1 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

  if (v1 && (v2 = WorkoutStep.goal.getter(), v3 = [v2 requiredDistance], v2, v3))
  {
    v4 = [objc_opt_self() meterUnit];
    [v3 doubleValueForUnit_];

    IntervalsMetricsPublisher.intervalDistance.getter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t CurrentStepMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v5;
  v54 = type metadata accessor for IntervalTimeMetricView();
  MEMORY[0x28223BE20](v54);
  v46 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB027DistanceRemainingMetricViewVAF012IntervalTimeiJ0V_GMd);
  MEMORY[0x28223BE20](v51);
  v53 = &v44 - v9;
  v52 = type metadata accessor for DistanceRemainingMetricView();
  MEMORY[0x28223BE20](v52);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - v13;
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v18 = v1[5];
  v20 = v1[6];

  v21 = WorkoutStep.goal.getter();
  v22 = [v21 goalTypeIdentifier];

  if (v22 == 1)
  {

    v56 = v15;
    v57 = v14;
    v58 = v16;
    v59 = v17;
    v60 = v19;
    v61 = v18;
    v62 = v20;
    CurrentStepMetricView.distanceRemaining.getter();
    v24 = v23;
    v25 = WorkoutStep.goal.getter();
    v26 = [v25 value];

    if (!v26 || (v27 = [v26 _unit], v26, !v27))
    {
      v27 = [objc_opt_self() meterUnit];
    }

    v28 = v52;
    WorkoutStep.stepType.getter();
    v29 = v18;
    v30 = FIUIDistanceTypeForActivityType();
    *v11 = v24;
    v11[1] = v27;
    *(v11 + *(v28 + 28)) = v29;
    *(v11 + *(v28 + 32)) = v30;
    v31 = type metadata accessor for DistanceRemainingMetricView;
    v32 = v49;
    outlined init with take of IntervalTimeMetricView(v11, v49, type metadata accessor for DistanceRemainingMetricView);
    outlined init with copy of IntervalTimeMetricView(v32, v53, type metadata accessor for DistanceRemainingMetricView);
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView);
  }

  else
  {
    v44 = v15;
    v45 = v16;
    v49 = v18;

    v33 = v47;
    IntervalsMetricsPublisher.intervalStartDate.getter();

    v34 = WorkoutStatePublisher.pauseTimes.getter();

    v35 = v48;
    WorkoutStatePublisher.lastUnbalancedPauseStart.getter();

    v36 = WorkoutStep.goal.getter();
    v37 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

    v38 = 0;
    if (v37)
    {
      v56 = v44;
      v57 = v14;
      v58 = v45;
      v59 = v17;
      v60 = v19;
      v61 = v49;
      v62 = v20;
      CurrentStepMetricView.timeAndDistanceGoalDistanceRemaining.getter();
      v38 = v39;
    }

    v40 = v46;
    *v46 = v19;
    v41 = v54;
    outlined init with take of Date?(v33, v40 + *(v54 + 20));
    *(v40 + v41[6]) = v34;
    outlined init with take of Date?(v35, v40 + v41[7]);
    v42 = v40 + v41[8];
    *v42 = v38;
    *(v42 + 8) = !v37;
    v31 = type metadata accessor for IntervalTimeMetricView;
    v32 = v50;
    outlined init with take of IntervalTimeMetricView(v40, v50, type metadata accessor for IntervalTimeMetricView);
    outlined init with copy of IntervalTimeMetricView(v32, v53, type metadata accessor for IntervalTimeMetricView);
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView);
  }

  _ConditionalContent<>.init(storage:)();
  return outlined destroy of IntervalTimeMetricView(v32, v31);
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of IntervalTimeMetricView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of IntervalTimeMetricView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of IntervalTimeMetricView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CurrentStepMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CurrentStepMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB027DistanceRemainingMetricViewVAD012IntervalTimehI0VGMd);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectedRow.getter()
{
  return WorkoutVoiceOnboardingPickerViewModel.selectedRow.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.__allocating_init(inferenceClient:voiceAssetsObserver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WorkoutVoiceOnboardingPickerViewModel.init(inferenceClient:voiceAssetsObserver:)(a1, a2);
  return v4;
}

char *WorkoutVoiceOnboardingPickerViewModel.voices.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = type metadata accessor for AudioSynthesisVoice();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v24 - v8;
  MEMORY[0x28223BE20](v9);
  v25 = &v24 - v10;
  v33 = type metadata accessor for AudioSynthesisVoiceAsset();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  v32 = *(result + 2);
  if (v32)
  {
    v15 = 0;
    v31 = v6;
    v16 = (v4 + 32);
    v28 = (v4 + 56);
    v29 = v11 + 16;
    v24 = v4;
    v26 = (v4 + 48);
    v27 = v11 + 8;
    v35 = MEMORY[0x277D84F90];
    v30 = result;
    while (v15 < *(result + 2))
    {
      v17 = v33;
      (*(v11 + 16))(v13, &result[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15], v33);
      v18 = v34;
      AudioSynthesisVoiceAsset.voice.getter();
      v19 = *v16;
      (*v16)(v2, v18, v3);
      (*v28)(v2, 0, 1, v3);
      (*(v11 + 8))(v13, v17);
      if ((*v26)(v2, 1, v3) == 1)
      {
        outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v2, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd);
      }

      else
      {
        v20 = v25;
        v19(v25, v2, v3);
        v19(v31, v20, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v22 = *(v35 + 2);
        v21 = *(v35 + 3);
        if (v22 >= v21 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v35);
        }

        v23 = v35;
        *(v35 + 2) = v22 + 1;
        v19(&v23[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v31, v3);
      }

      ++v15;
      result = v30;
      if (v32 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
LABEL_13:

    return v35;
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.title(_:)(uint64_t a1)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB93CD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v7;
    *(result + 32) = a1 + 1;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    return Text.init<A>(_:)();
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.subtitle(_:)(unint64_t a1)
{
  v2 = type metadata accessor for AudioSynthesisVoice();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AudioSynthesisVoiceAsset();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v38 - v13;
  v14 = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v14 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = v5;
  v39 = v3;
  v40 = v2;
  v41 = a1;
  v43 = v10;
  v17 = *(v10 + 16);
  v15 = (v10 + 16);
  v16 = v17;
  v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v19 = *(v15 + 7) * a1;
  v17(v44, v14 + v18 + v19, v45);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D0A528])
  {
    (*(v7 + 96))(v9, v6);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v9, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd);
    v10 = "WORKOUT_BUDDY_VOICES";
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_5:
      swift_beginAccess();
      v20 = WorkoutUIBundle.super.isa;
      v49._object = 0xE000000000000000;
      v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v21.value._object = 0xEB00000000656C62;
      v22._object = (v10 | 0x8000000000000000);
      v22._countAndFlagsBits = 0xD000000000000019;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v49._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v49);

      v46 = v24;
      lazy protocol witness table accessor for type String and conformance String();
      v25 = Text.init<A>(_:)();
      (*(v43 + 8))(v44, v45);
      return v25;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  (*(v7 + 8))(v9, v6);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if (*(result + 16) > v41)
  {
    v27 = result + v18 + v19;
    v28 = v42;
    v29 = v45;
    v16(v42, v27, v45);

    v30 = v38;
    AudioSynthesisVoiceAsset.voice.getter();
    v31 = *(v43 + 8);
    v31(v28, v29);
    v32 = AudioSynthesisVoice.name.getter();
    v34 = v33;
    (*(v39 + 8))(v30, v40);
    v47 = v32;
    v48 = v34;
    lazy protocol witness table accessor for type String and conformance String();
    v35 = StringProtocol.capitalized.getter();
    v37 = v36;

    v47 = v35;
    v48 = v37;
    v25 = Text.init<A>(_:)();
    v31(v44, v29);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = type metadata accessor for Logger();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for AudioSynthesisVoice();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for AudioSynthesisVoiceAsset();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v7, v6);
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)()
{
  v27 = v0;
  v1 = *(v0 + 80);
  *(v0 + 240) = *(*(v0 + 88) + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_voiceAssetsObserver);
  v2 = *(dispatch thunk of VoiceAssetsObserver.assets.getter() + 16);

  if (v2 > v1)
  {
    v3 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v3;
    *(v0 + 24) = 0;

    static Published.subscript.setter();
    result = dispatch thunk of VoiceAssetsObserver.assets.getter();
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + 80);
      if (*(result + 16) > v5)
      {
        v6 = *(v0 + 208);
        v7 = *(v0 + 176);
        v8 = *(v0 + 184);
        v9 = *(v8 + 16);
        v8 += 16;
        v10 = result + ((*(v8 + 64) + 32) & ~*(v8 + 64)) + *(v8 + 56) * v5;
        *(v0 + 248) = v9;
        *(v0 + 256) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v9(v6, v10, v7);

        AudioSynthesisVoiceAsset.voice.getter();
        v25 = (*MEMORY[0x277D7E328] + MEMORY[0x277D7E328]);
        v11 = swift_task_alloc();
        *(v0 + 264) = v11;
        *v11 = v0;
        v11[1] = WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);
        v12 = *(v0 + 168);

        return v25(v12);
      }
    }

    __break(1u);
    return result;
  }

  static WOLog.app.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20C66F000, v13, v14, "%s Attempted to select initial voice when assets are empty. Returning.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F30E080](v20, -1, -1);
    MEMORY[0x20F30E080](v19, -1, -1);
  }

  (*(v18 + 8))(v16, v17);

  v24 = *(v0 + 8);

  return v24();
}

{
  v2 = *v1;
  v3 = *v1;
  v2[34] = v0;

  v4 = v2[21];
  v5 = v2[19];
  v6 = v2[18];
  if (v0)
  {
    v7 = *(v5 + 8);
    v2[37] = v7;
    v2[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v8 = v2[28];
    v9 = v2[29];

    return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v8, v9);
  }

  else
  {
    v10 = *(v5 + 8);
    v2[35] = v10;
    v10(v4, v6);
    v13 = (*MEMORY[0x277D7E338] + MEMORY[0x277D7E338]);
    v11 = swift_task_alloc();
    v2[36] = v11;
    *v11 = v3;
    v11[1] = WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);

    return v13();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v3, v2);
}

{
  v37 = v0;

  v35 = v0[35];
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[22];
  static WOLog.app.getter();
  v1(v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  if (v7)
  {
    v34 = v0[26];
    v12 = v0[20];
    v30 = v0[18];
    v31 = v0[14];
    v32 = v0[13];
    v33 = v0[17];
    v29 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v36);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v18 = AudioSynthesisVoice.name.getter();
    v20 = v19;
    v35(v12, v30);
    v21 = *(v10 + 8);
    v21(v9, v29);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v36);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_20C66F000, v5, v6, "%s selecting initial voice asset %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v14, -1, -1);
    MEMORY[0x20F30E080](v13, -1, -1);

    (*(v31 + 8))(v33, v32);
    v21(v34, v29);
  }

  else
  {
    v23 = v0[17];
    v24 = v0[13];
    v25 = v0[14];

    v26 = *(v10 + 8);
    v26(v9, v11);
    (*(v25 + 8))(v23, v24);
    v26(v8, v11);
  }

  v27 = v0[1];

  return v27();
}

{
  v81 = v0;
  v1 = v0;
  v2 = *(v0 + 272);
  v75 = *(v0 + 248);
  v3 = *(v0 + 192);
  v69 = *(v0 + 176);
  v72 = *(v0 + 208);

  v4 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v4;
  *(v0 + 40) = v6 & 1;

  static Published.subscript.setter();
  static WOLog.app.getter();
  v75(v3, v72, v69);

  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v62 = *(v1 + 296);
    v11 = *(v1 + 184);
    v10 = *(v1 + 192);
    v63 = *(v1 + 176);
    v12 = *(v1 + 160);
    v13 = *(v1 + 144);
    v73 = *(v1 + 112);
    v76 = *(v1 + 104);
    v78 = *(v1 + 120);
    v66 = *(v1 + 272);
    v14 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v80 = v70;
    *v14 = 136315906;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v80);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v18 = AudioSynthesisVoice.name.getter();
    v20 = v19;
    v62(v12, v13);
    (*(v11 + 8))(v10, v63);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v80);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2112;
    v22 = v66;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v23;
    *v65 = v23;
    *(v14 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v1 + 64) = *(v1 + 48);
    *(v1 + 72) = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v24 = Optional.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v80);

    *(v14 + 34) = v26;
    _os_log_impl(&dword_20C66F000, v8, v9, "%s error electing voice: %s, error: %@. Reverting back to last successful userSelectedAssetIndex %s", v14, 0x2Au);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v65, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v65, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v70, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    (*(v73 + 8))(v78, v76);
  }

  else
  {
    v27 = *(v1 + 272);
    v29 = *(v1 + 184);
    v28 = *(v1 + 192);
    v30 = *(v1 + 176);
    v32 = *(v1 + 112);
    v31 = *(v1 + 120);
    v33 = *(v1 + 104);

    (*(v29 + 8))(v28, v30);
    (*(v32 + 8))(v31, v33);
  }

  v79 = *(v1 + 296);
  v34 = *(v1 + 248);
  v36 = *(v1 + 200);
  v35 = *(v1 + 208);
  v37 = *(v1 + 176);
  static WOLog.app.getter();
  v34(v36, v35, v37);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v42 = *(v1 + 200);
  v41 = *(v1 + 208);
  v44 = *(v1 + 176);
  v43 = *(v1 + 184);
  if (v40)
  {
    v45 = *(v1 + 160);
    v67 = *(v1 + 144);
    v71 = *(v1 + 112);
    v74 = *(v1 + 104);
    v77 = *(v1 + 136);
    v64 = *(v1 + 176);
    v46 = swift_slowAlloc();
    v68 = v41;
    v47 = swift_slowAlloc();
    v80 = v47;
    *v46 = 136315394;
    v48 = _typeName(_:qualified:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v80);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v51 = AudioSynthesisVoice.name.getter();
    v53 = v52;
    v79(v45, v67);
    v54 = *(v43 + 8);
    v54(v42, v64);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v80);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_20C66F000, v38, v39, "%s selecting initial voice asset %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v47, -1, -1);
    MEMORY[0x20F30E080](v46, -1, -1);

    (*(v71 + 8))(v77, v74);
    v54(v68, v64);
  }

  else
  {
    v56 = *(v1 + 136);
    v58 = *(v1 + 104);
    v57 = *(v1 + 112);

    v59 = *(v43 + 8);
    v59(v42, v44);
    (*(v57 + 8))(v56, v58);
    v59(v41, v44);
  }

  v60 = *(v1 + 8);

  return v60();
}