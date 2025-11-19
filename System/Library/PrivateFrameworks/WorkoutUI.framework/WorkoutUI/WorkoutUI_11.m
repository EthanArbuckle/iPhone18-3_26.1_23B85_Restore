void closure #1 in DisambiguateConfigurationView.body.getter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v11 - v7;
  swift_getObjectType();
  v11[1] = a1;
  UUID.init()();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
  outlined destroy of ColorScheme?(v8, &_s10Foundation4UUIDVSgMd);
  if (v11[0])
  {
    v10 = v11[0];
    a4();
  }
}

void DisambiguateConfigurationView.disambiguateWorkoutConfiguration(location:swimmingLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a7;
  v23 = a6;
  v7 = type metadata accessor for Logger();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  UUID.init()();
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)();
  outlined destroy of ColorScheme?(v12, &_s10Foundation4UUIDVSgMd);
  if (v14)
  {
    v23(v14);
  }

  else
  {
    v15 = v7;
    v16 = v21;
    static WOLog.activityPicker.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20C66F000, v17, v18, "Unable to start workout for managed configuration, disambiguated workout configuration was nil", v19, 2u);
      MEMORY[0x20F30E080](v19, -1, -1);
    }

    (*(v16 + 8))(v9, v15);
  }
}

__n128 closure #4 in DisambiguateConfigurationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v3 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();

  v4 = [v3 localizedName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *&v18 = v5;
  *(&v18 + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *&v17[23] = v19;
  *&v17[7] = v18;
  *&v17[55] = v21;
  *&v17[71] = v22;
  *&v17[87] = v23;
  *&v17[103] = v24;
  *&v17[39] = v20;
  *(a1 + 105) = *&v17[64];
  *(a1 + 121) = *&v17[80];
  *(a1 + 137) = *&v17[96];
  *(a1 + 41) = *v17;
  *(a1 + 57) = *&v17[16];
  result = *&v17[32];
  *(a1 + 73) = *&v17[32];
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *(&v24 + 1);
  *(a1 + 89) = *&v17[48];
  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DisambiguateConfigurationView and conformance DisambiguateConfigurationView()
{
  result = lazy protocol witness table cache variable for type DisambiguateConfigurationView and conformance DisambiguateConfigurationView;
  if (!lazy protocol witness table cache variable for type DisambiguateConfigurationView and conformance DisambiguateConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguateConfigurationView and conformance DisambiguateConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AddToWatchButton and conformance AddToWatchButton()
{
  result = lazy protocol witness table cache variable for type AddToWatchButton and conformance AddToWatchButton;
  if (!lazy protocol witness table cache variable for type AddToWatchButton and conformance AddToWatchButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddToWatchButton and conformance AddToWatchButton);
  }

  return result;
}

uint64_t outlined copy of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>.Storage(void *a1)
{
  v1 = a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutUIFeatures and conformance WorkoutUIFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutUIFeatures and conformance WorkoutUIFeatures);
  }

  return result;
}

void *outlined copy of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return outlined copy of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>.Storage(a1);
  }

  return a1;
}

void *outlined consume of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return outlined consume of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>.Storage(a1);
  }

  return a1;
}

uint64_t outlined consume of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>.Storage(void *a1)
{
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GMd);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_AGyAGyAwA08_PaddingQ0VGA0_GSgAGyAGyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>?, EmptyView, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>?, EmptyView, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>?, EmptyView, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>?, EmptyView, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier()
{
  result = lazy protocol witness table cache variable for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier;
  if (!lazy protocol witness table cache variable for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMd);
    _s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGACyxq_GAA4ViewA2aJRzAA0I8ModifierR_rlWlTm_0(&lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
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

uint64_t _s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGACyxq_GAA4ViewA2aJRzAA0I8ModifierR_rlWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for DisambiguateConfigurationView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DisambiguateConfigurationView(uint64_t result, int a2, int a3)
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

uint64_t outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_37Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AddToWatchLabel and conformance AddToWatchLabel()
{
  result = lazy protocol witness table cache variable for type AddToWatchLabel and conformance AddToWatchLabel;
  if (!lazy protocol witness table cache variable for type AddToWatchLabel and conformance AddToWatchLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddToWatchLabel and conformance AddToWatchLabel);
  }

  return result;
}

uint64_t outlined destroy of ColorScheme?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQyAA5ColorVSgGG_ACyAKyAEyAXG_A7_tGA8_GSgtGGMd);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type Button<AddToWatchLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMd);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepSingleGoalValueView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalStepSingleGoalValueView(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void closure #1 in IntervalStepSingleGoalValueView.swimmingDistanceGoalBinding.getter(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = WorkoutStep.goal.getter();
  v5 = [v4 value];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [*(a1 + 32) unitManager];
  if (v6)
  {
    v7 = v6;
    _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    v8 = static FIUIWorkoutActivityType.poolSwim.getter();
    v9 = [v7 userDistanceHKUnitForActivityType_];

    v5 = [objc_opt_self() quantityWithUnit:v9 doubleValue:100.0];
LABEL_4:
    *a2 = v5;
    return;
  }

  __break(1u);
}

uint64_t IntervalStepSingleGoalValueView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAKy07WorkoutB022SwimmingDistancePickerVAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAL0mN0V_Qo_GAL04TimeN0VGAKyApAEAQyQrAUFQOyAL06EnergyN0V_Qo_AA05EmptyD0VGG_AA08ModifiedJ0VyApAEAQyQrAUFQOyA9_yAA6ButtonVyAA4TextVGAL012PinnedBottomW13ModifierPhoneVG_Qo_AA32_EnvironmentKeyTransformModifierVySbGGtGGMd);
  closure #1 in IntervalStepSingleGoalValueView.body.getter(v1, a1 + *(v3 + 44));
  v4 = WorkoutStep.goal.getter();
  [v4 goalTypeIdentifier];

  v5 = _HKWorkoutGoalType.displayName(formattingManager:)();
  v7 = v6;
  v8 = WorkoutStep.goal.getter();
  v9 = [v8 goalTypeIdentifier];

  _HKWorkoutGoalType.colorForCurrentContrastMode.getter(v9);
  v10 = Color.init(uiColor:)();
  v11 = WorkoutStep.goal.getter();
  v12 = [v11 goalTypeIdentifier];

  _HKWorkoutGoalType.color.getter(v12);
  v13 = Color.init(uiColor:)();
  LOBYTE(v12) = static Edge.Set.vertical.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIy07WorkoutB022SwimmingDistancePickerVAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAJ0kL0V_Qo_GAJ04TimeL0VGAIyAnAEAOyQrASFQOyAJ06EnergyL0V_Qo_AA05EmptyG0VGG_ACyAnAEAOyQrASFQOyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomT13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformX0VySbGGtGGAJ0lgX0VGMd);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v10;
  *(v15 + 24) = v13;
  *(v15 + 32) = v12;
  return result;
}

void closure #1 in IntervalStepSingleGoalValueView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  MEMORY[0x28223BE20](v160);
  v159 = v136 - v3;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_Md);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = v136 - v4;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  MEMORY[0x28223BE20](v162);
  v167 = v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v161 = v136 - v7;
  MEMORY[0x28223BE20](v8);
  v166 = v136 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyF0V_GMd);
  MEMORY[0x28223BE20](v140);
  v11 = v136 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd);
  MEMORY[0x28223BE20](v156);
  v142 = v136 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_Md);
  v137 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v14 = v136 - v13;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAF0hI0V_Qo_GAF04TimeI0VGACyAjAEAKyQrAOFQOyAF06EnergyI0V_Qo_AA05EmptyJ0VG_GMd);
  MEMORY[0x28223BE20](v153);
  v155 = v136 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAF0hI0V_Qo_GAF04TimeI0V_GMd);
  MEMORY[0x28223BE20](v149);
  v150 = (v136 - v16);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd);
  MEMORY[0x28223BE20](v154);
  v151 = v136 - v17;
  v146 = type metadata accessor for DistancePicker();
  MEMORY[0x28223BE20](v146);
  v19 = v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB014DistancePickerV_Qo_Md);
  v139 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v138 = v136 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAF0hI0V_Qo__GMd);
  MEMORY[0x28223BE20](v144);
  v145 = (v136 - v21);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GMd);
  MEMORY[0x28223BE20](v148);
  v147 = v136 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGGMd);
  MEMORY[0x28223BE20](v23 - 8);
  v158 = v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v157 = v136 - v26;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = WorkoutStep.goal.getter();
  v30 = [v29 goalTypeIdentifier];

  if (v30 != 1)
  {
    v58 = WorkoutStep.goal.getter();
    v59 = [v58 goalTypeIdentifier];

    if (v59 == 2)
    {
      v60 = *(a1 + 32);
      v61 = type metadata accessor for WorkoutStep();
      v62 = lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
      MEMORY[0x20F308920](v27, v28, v61, v62);
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      v63 = v171;
      v64 = v172;
      LOBYTE(v169) = 0;
      static Binding.constant(_:)();
      v65 = v175;
      v152 = v28;
      v66 = v176;
      type metadata accessor for TimePickerViewModel();
      swift_allocObject();

      v67 = v64;
      v169 = TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v60, v63, *(&v63 + 1), v67, 1, 1, 0, 1, 0.0);

      State.init(wrappedValue:)();

      v176 = v65;
      LOBYTE(v177) = v66;
      DWORD1(v177) = *(&v169 + 3);
      *(&v177 + 1) = v169;
      BYTE8(v177) = 0;
      *(&v177 + 9) = *v170;
      HIDWORD(v177) = *&v170[3];
      memset(v178, 0, 24);
      v178[24] = 1;
      v68 = v150;
      *(v150 + 57) = *&v178[9];
      v69 = *v178;
      v68[2] = v177;
      v68[3] = v69;
      v70 = v176;
      *v68 = v175;
      v68[1] = v70;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of TimePicker(&v175, &v171);
      lazy protocol witness table accessor for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
      v71 = v151;
      _ConditionalContent<>.init(storage:)();
      v72 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd;
      outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v71, v155, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
      v73 = v157;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TimePicker(&v175);
    }

    else
    {
      v99 = WorkoutStep.goal.getter();
      v100 = [v99 goalTypeIdentifier];

      if (v100 == 3)
      {
        v101 = type metadata accessor for WorkoutStep();
        v102 = lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
        MEMORY[0x20F308920](v27, v28, v101, v102);
        swift_getKeyPath();
        ObservedObject.Wrapper.subscript.getter();

        v103 = v175;
        v104 = v176;
        v152 = v28;
        v105 = *(a1 + 32);
        LOBYTE(v169) = 0;
        static Binding.constant(_:)();
        v151 = *(&v171 + 1);
        v106 = v171;
        LODWORD(v150) = v172;
        type metadata accessor for EnergyPickerViewModel();
        swift_allocObject();

        v107 = v104;
        EnergyPickerViewModel.init(goal:formattingManager:lastWorkoutValue:)(v103, *(&v103 + 1), v107, v105, 0);
        lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel, type metadata accessor for EnergyPickerViewModel);
        v108 = ObservedObject.init(wrappedValue:)();
        v110 = v109;

        *&v171 = v108;
        *(&v171 + 1) = v110;
        *&v172 = v106;
        *(&v172 + 1) = v151;
        LOBYTE(v173) = v150;
        BYTE8(v173) = 0;
        memset(v174, 0, 24);
        v174[24] = 1;
        static Edge.Set.horizontal.getter();
        v111 = lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
        View.scenePadding(_:)();
        v177 = v173;
        *v178 = *v174;
        *&v178[9] = *&v174[9];
        v175 = v171;
        v176 = v172;
        outlined destroy of EnergyPicker(&v175);
        v112 = v137;
        v113 = v141;
        (v137[2])(v11, v14, v141);
        swift_storeEnumTagMultiPayload();
        *&v171 = &type metadata for EnergyPicker;
        *(&v171 + 1) = v111;
        swift_getOpaqueTypeConformance2();
        v114 = v142;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v114, v155, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
        v73 = v157;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v114, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd);
        v112[1](v14, v113);
        goto LABEL_14;
      }

      swift_storeEnumTagMultiPayload();
      v115 = lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
      *&v175 = &type metadata for EnergyPicker;
      *(&v175 + 1) = v115;
      swift_getOpaqueTypeConformance2();
      v71 = v142;
      _ConditionalContent<>.init(storage:)();
      v72 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd;
      outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v71, v155, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
      v73 = v157;
      _ConditionalContent<>.init(storage:)();
    }

    outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v71, v72);
    goto LABEL_14;
  }

  v31 = WorkoutStep.activityType.getter();
  v32 = FIUIWorkoutActivityType.isPoolSwim.getter();

  v152 = v28;
  if ((v32 & 1) == 0)
  {
    v74 = WorkoutStep.activityType.getter();
    v75 = *(a1 + 32);
    v76 = type metadata accessor for WorkoutStep();
    v77 = lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
    MEMORY[0x20F308920](v27, v28, v76, v77);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v78 = v175;
    v79 = v176;
    LOBYTE(v169) = 0;
    static Binding.constant(_:)();
    v141 = *(&v171 + 1);
    v142 = v171;
    LODWORD(v140) = v172;
    *v19 = v74;
    v19[8] = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 2) = 0;
    v19[40] = 1;
    type metadata accessor for MainActor();

    v80 = v79;
    v137 = v74;
    v81 = static MainActor.shared.getter();
    v82 = swift_allocObject();
    v83 = MEMORY[0x277D85700];
    *(v82 + 16) = v81;
    *(v82 + 24) = v83;
    *(v82 + 32) = v78;
    *(v82 + 48) = v80;
    v136[1] = v78;

    v84 = v80;
    v136[0] = v84;
    v85 = static MainActor.shared.getter();
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v83;
    *(v86 + 32) = v78;
    *(v86 + 48) = v84;
    _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    Binding.init(get:set:)();
    v87 = *(&v171 + 1);
    v88 = v171;
    v89 = v172;
    type metadata accessor for DistancePickerViewModel();
    swift_allocObject();

    v90 = v89;
    DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v88, v87, v90, v75, 0, 0);
    v91 = v146;
    lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
    Bindable<A>.init(wrappedValue:)();

    v92 = &v19[*(v91 + 28)];
    v93 = v141;
    *v92 = v142;
    *(v92 + 1) = v93;
    v92[16] = v140;
    static Edge.Set.horizontal.getter();
    v94 = lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    v95 = v138;
    View.scenePadding(_:)();
    outlined destroy of DistancePicker(v19);
    v96 = v139;
    v97 = v143;
    (*(v139 + 16))(v145, v95, v143);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type SwimmingDistancePicker and conformance SwimmingDistancePicker();
    *&v175 = v91;
    *(&v175 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v57 = v147;
    _ConditionalContent<>.init(storage:)();
    (*(v96 + 8))(v95, v97);
    goto LABEL_9;
  }

  v33 = *(a1 + 32);
  type metadata accessor for MainActor();
  v34 = v33;
  outlined init with copy of IntervalStepSingleGoalValueView(a1, &v175);
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  v38 = *(a1 + 80);
  *(v36 + 96) = *(a1 + 64);
  *(v36 + 112) = v38;
  *(v36 + 128) = *(a1 + 96);
  v39 = *(a1 + 16);
  *(v36 + 32) = *a1;
  *(v36 + 48) = v39;
  v40 = *(a1 + 48);
  *(v36 + 64) = *(a1 + 32);
  *(v36 + 80) = v40;
  outlined init with copy of IntervalStepSingleGoalValueView(a1, &v175);
  v41 = static MainActor.shared.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v37;
  v43 = *(a1 + 80);
  *(v42 + 96) = *(a1 + 64);
  *(v42 + 112) = v43;
  *(v42 + 128) = *(a1 + 96);
  v44 = *(a1 + 16);
  *(v42 + 32) = *a1;
  *(v42 + 48) = v44;
  v45 = *(a1 + 48);
  *(v42 + 64) = *(a1 + 32);
  *(v42 + 80) = v45;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity);
  Binding.init(get:set:)();
  v46 = v175;
  v47 = v176;
  v48 = [objc_opt_self() distanceColors];
  if (!v48)
  {
    __break(1u);
    goto LABEL_19;
  }

  v49 = v48;
  v50 = [v48 nonGradientTextColor];

  if (!v50)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v51 = Color.init(uiColor:)();
  LOBYTE(v171) = 0;
  static Binding.constant(_:)();
  v52 = v175;
  v53 = v176;
  type metadata accessor for SwimmingDistancePickerViewModel();
  swift_allocObject();
  v54 = specialized SwimmingDistancePickerViewModel.init(formattingManager:lapLength:tintColor:)(v34, v46, *(&v46 + 1), v47, v51);

  v55 = v145;
  *v145 = v54;
  *(v55 + 1) = v52;
  *(v55 + 24) = v53;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type SwimmingDistancePicker and conformance SwimmingDistancePicker();
  v56 = lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
  *&v175 = v146;
  *(&v175 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v147;
  _ConditionalContent<>.init(storage:)();
LABEL_9:
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v57, v150, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
  v98 = v151;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v98, v155, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
  v73 = v157;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v98, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd);
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v57, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GMd);
LABEL_14:
  LocalizedStringKey.init(stringLiteral:)();
  v116 = swift_allocObject();
  v117 = *(a1 + 80);
  v116[5] = *(a1 + 64);
  v116[6] = v117;
  v116[7] = *(a1 + 96);
  v118 = *(a1 + 16);
  v116[1] = *a1;
  v116[2] = v118;
  v119 = *(a1 + 48);
  v116[3] = *(a1 + 32);
  v116[4] = v119;
  outlined init with copy of IntervalStepSingleGoalValueView(a1, &v175);
  v120 = v159;
  Button<>.init(_:action:)();
  static Edge.Set.horizontal.getter();
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>();
  v121 = v163;
  View.scenePadding(_:)();
  outlined destroy of ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>(v120);
  v122 = WorkoutStep.goal.getter();
  v123 = [v122 value];

  if (v123)
  {
    [v123 _value];
    v125 = v124;

    v126 = v125 == 0.0;
  }

  else
  {
    v126 = 0;
  }

  KeyPath = swift_getKeyPath();
  v128 = swift_allocObject();
  *(v128 + 16) = v126;
  v129 = v161;
  (*(v164 + 32))(v161, v121, v165);
  v130 = (v129 + *(v162 + 36));
  *v130 = KeyPath;
  v130[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_9;
  v130[2] = v128;
  v131 = v166;
  sub_20C67CE78(v129, v166);
  v132 = v158;
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v73, v158, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGGMd);
  v133 = v167;
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v131, v167, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  v134 = v168;
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v132, v168, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGGMd);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGG_AA08ModifiedD0VyAhAEAIyQrAMFQOyA1_yAA6ButtonVyAA4TextVGAD012PinnedBottomR13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformV0VySbGGtMd);
  outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v133, v134 + *(v135 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v131, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v73, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGGMd);
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v133, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(v132, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGACyAhAEAIyQrAMFQOyAD06EnergyH0V_Qo_AA05EmptyI0VGGMd);
}

uint64_t closure #1 in closure #1 in IntervalStepSingleGoalValueView.body.getter(void *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v2 = a1[13];
    if (v4 != 2 || v2)
    {
      ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(a1[3], v2);
    }

    else
    {

      WorkoutStep.goal.getter();
      WorkoutStep.goal.setter();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    return Binding.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker()
{
  result = lazy protocol witness table cache variable for type EnergyPicker and conformance EnergyPicker;
  if (!lazy protocol witness table cache variable for type EnergyPicker and conformance EnergyPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPicker and conformance EnergyPicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GAD04TimeH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB022SwimmingDistancePickerVAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAD0gH0V_Qo_GMd);
    lazy protocol witness table accessor for type SwimmingDistancePicker and conformance SwimmingDistancePicker();
    type metadata accessor for DistancePicker();
    lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwimmingDistancePicker and conformance SwimmingDistancePicker()
{
  result = lazy protocol witness table cache variable for type SwimmingDistancePicker and conformance SwimmingDistancePicker;
  if (!lazy protocol witness table cache variable for type SwimmingDistancePicker and conformance SwimmingDistancePicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimmingDistancePicker and conformance SwimmingDistancePicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimePicker and conformance TimePicker()
{
  result = lazy protocol witness table cache variable for type TimePicker and conformance TimePicker;
  if (!lazy protocol witness table cache variable for type TimePicker and conformance TimePicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimePicker and conformance TimePicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOy07WorkoutB012EnergyPickerV_Qo_AA05EmptyE0VGMd);
    lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
    _s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone()
{
  result = lazy protocol witness table cache variable for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone;
  if (!lazy protocol witness table cache variable for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t outlined destroy of DistancePicker(uint64_t a1)
{
  v2 = type metadata accessor for DistancePicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void partial apply for closure #2 in IntervalStepSingleGoalValueView.swimmingDistanceGoalBinding.getter(uint64_t *a1)
{
  v1 = *a1;
  v2 = WorkoutStep.goal.getter();
  [v2 setValue_];
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_0(uint64_t a1, unint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type DistancePicker and conformance DistancePicker(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker>, _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>>, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker>, _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>>, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker>, _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>>, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIy07WorkoutB022SwimmingDistancePickerVAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAJ0kL0V_Qo_GAJ04TimeL0VGAIyAnAEAOyQrASFQOyAJ06EnergyL0V_Qo_AA05EmptyG0VGG_ACyAnAEAOyQrASFQOyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomT13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformX0VySbGGtGGAJ0lgX0VGMd);
    _s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker>, _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>>, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAGyAGy07WorkoutB022SwimmingDistancePickerVAA0E0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAH0jK0V_Qo_GAH04TimeK0VGAGyAlAEAMyQrAQFQOyAH06EnergyK0V_Qo_AA05EmptyE0VGG_AA08ModifiedG0VyAlAEAMyQrAQFQOyA5_yAA6ButtonVyAA4TextVGAH012PinnedBottomT13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformX0VySbGGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<SwimmingDistancePicker, <<opaque return type of View.scenePadding(_:)>>.0>, TimePicker>, _ConditionalContent<<<opaque return type of View.scenePadding(_:)>>.0, EmptyView>>, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWlTm_0(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier()
{
  result = lazy protocol witness table cache variable for type PickerViewModifier and conformance PickerViewModifier;
  if (!lazy protocol witness table cache variable for type PickerViewModifier and conformance PickerViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerViewModifier and conformance PickerViewModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatPickerWatch(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RepeatPickerWatch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RepeatPickerWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AtA6SpacerVACyAA6ButtonVyACyAtA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomzS5PhoneVGtGGAA017_AppearanceActionS0VGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - v10;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleV0VyAA09TintShapeY0VGG_AxA6SpacerVAKyAA6ButtonVyAKyAxA010_FlexFrameG0VGG07WorkoutB0018PinnedBottomButtonV5PhoneVGtGGMd);
  closure #1 in RepeatPickerWatch.body.getter(v2, &v5[*(v11 + 44)]);
  v34 = *v2;
  v12 = *(v2 + 40);
  v13 = *(v2 + 56);
  v14 = swift_allocObject();
  v15 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v2 + 64);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = &v5[*(v3 + 36)];
  *v17 = partial apply for closure #2 in RepeatPickerWatch.body.getter;
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = 0;
  outlined init with copy of State<Int>(&v34, &v33, &_s7SwiftUI5StateVySiGMd);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v12);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v13);
  static Edge.Set.all.getter();
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  View.scenePadding(_:)();
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v5, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AtA6SpacerVACyAA6ButtonVyACyAtA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomzS5PhoneVGtGGAA017_AppearanceActionS0VGMd);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v18 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v33 = v18;
  v20 = AnyShapeStyle.init<A>(_:)();
  v21 = &v9[*(v7 + 44)];
  *v21 = KeyPath;
  v21[1] = v20;
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v7)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  v23 = static SafeAreaRegions.all.getter();
  v24 = v9;
  v25 = v30;
  v26 = sub_20C67CF68(v24, v30);
  v27 = v25 + *(v31 + 36);
  *v27 = v23;
  *(v27 + 8) = v22;
  MEMORY[0x28223BE20](v26);
  *(&v29 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAKyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA5ImageVG_AA08BorderedoM0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeM0VSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyA1_A3_yAA5ColorVSgGGGQo_SgtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAKyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA5ImageVG_AA08BorderedoM0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeM0VSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyA1_A3_yAA5ColorVSgGGGQo_SgtGMd);
  View.toolbar<A>(content:)();
  return outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v25, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
}

uint64_t closure #1 in RepeatPickerWatch.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v56 - v6;
  v7 = type metadata accessor for TintShapeStyle();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGGMd);
  MEMORY[0x28223BE20](v16);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v68 = *a1;
  v69 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A80], v12);
  v21 = *MEMORY[0x277CE09A0];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v11, v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  v24 = static Font.system(_:design:weight:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_5(v11, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = v20;
  TintShapeStyle.init()();
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = WorkoutUIBundle.super.isa;
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  v34 = v61;
  TintShapeStyle.init()();
  v35 = v63;
  v36 = Text.foregroundStyle<A>(_:)();
  v57 = v37;
  v58 = v36;
  v59 = v38;
  v60 = v39;
  outlined consume of Text.Storage(v29, v31, v33 & 1);

  (*(v62 + 8))(v34, v35);
  v40 = *(a1 + 5);
  v41 = *(a1 + 7);
  v42 = swift_allocObject();
  v43 = a1[3];
  *(v42 + 48) = a1[2];
  *(v42 + 64) = v43;
  *(v42 + 80) = *(a1 + 8);
  v44 = a1[1];
  *(v42 + 16) = *a1;
  *(v42 + 32) = v44;
  outlined init with copy of State<Int>(&v69, &v68, &_s7SwiftUI5StateVySiGMd);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v40);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v45 = v65;
  Button.init(action:label:)();
  v46 = v64;
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v27, v64, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGGMd);
  v47 = v67;
  outlined init with copy of State<Int>(v45, v67, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  v48 = v66;
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v46, v66, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGGMd);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGG_ApA6SpacerVACyAA6ButtonVyACyApA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomxQ5PhoneVGtMd);
  v50 = v48 + v49[12];
  v52 = v57;
  v51 = v58;
  *v50 = v58;
  *(v50 + 8) = v52;
  v53 = v59 & 1;
  *(v50 + 16) = v59 & 1;
  *(v50 + 24) = v60;
  v54 = v48 + v49[16];
  *v54 = 0;
  *(v54 + 8) = 1;
  outlined init with copy of State<Int>(v47, v48 + v49[20], &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  outlined copy of Text.Storage(v51, v52, v53);

  _s7SwiftUI4FontV6DesignOSgWOhTm_5(v45, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v27, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_5(v47, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  outlined consume of Text.Storage(v51, v52, v53);

  return outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v46, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA09TintShapeT0VGGMd);
}

uint64_t closure #1 in closure #1 in RepeatPickerWatch.body.getter()
{
  specialized _copySequenceToContiguousArray<A>(_:)(2, 99, 1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in RepeatPickerWatch.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *a1;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v5;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #3 in closure #1 in RepeatPickerWatch.body.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.wrappedValue.getter();
  return v1();
}

__n128 closure #4 in closure #1 in RepeatPickerWatch.body.getter@<Q0>(uint64_t a1@<X8>)
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
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

uint64_t closure #3 in RepeatPickerWatch.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Sg_AcDyQrxAaERzlFZQOy_AGyytAIyA_A1_yAA5ColorVSgGGGQo_SgtMd);
  MEMORY[0x28223BE20](v72);
  v71 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v13;
  v14 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v74 = &v57 - v25;
  v26 = a1;
  v27 = a1[5];
  v63 = v16;
  if (!v27)
  {
    (*(v12 + 56))(v22, 1, 1, v11, v24);
    v45 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
    v76 = v17;
    v77 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v22, v11, OpaqueTypeConformance2);
    outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_SgMd);
    v34 = v26[7];
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_5:
    v47 = v68;
    v48 = v70;
    (*(v67 + 56))(v70, 1, 1, v68);
    v49 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v76 = v69;
    v77 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v48, v47, v50);
    outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v48, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    goto LABEL_6;
  }

  v59 = v26[6];
  v28 = v59;

  v29 = static ToolbarItemPlacement.cancellationAction.getter();
  v60 = v26;
  MEMORY[0x28223BE20](v29);
  v58 = v17;
  *(&v57 - 2) = v27;
  *(&v57 - 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v26 = v60;
  v30 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  v31 = v62;
  v32 = v58;
  MEMORY[0x20F3098F0](v19, v58, v30);
  (*(v12 + 16))(v22, v31, v11);
  (*(v12 + 56))(v22, 0, 1, v11);
  v76 = v32;
  v77 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F309920](v22, v11, v33);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v27);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_SgMd);
  (*(v12 + 8))(v31, v11);
  (*(v61 + 8))(v19, v32);
  v34 = v26[7];
  if (!v34)
  {
    goto LABEL_5;
  }

LABEL_3:
  v35 = v26[8];

  v36 = static ToolbarItemPlacement.destructiveAction.getter();
  MEMORY[0x28223BE20](v36);
  *(&v57 - 2) = v34;
  *(&v57 - 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v37 = v64;
  ToolbarItem<>.init(placement:content:)();
  v38 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v39 = v65;
  v40 = v69;
  MEMORY[0x20F3098F0](v37, v69, v38);
  v42 = v67;
  v41 = v68;
  v43 = v70;
  (*(v67 + 16))(v70, v39, v68);
  (*(v42 + 56))(v43, 0, 1, v41);
  v76 = v40;
  v77 = v38;
  v44 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F309920](v43, v41, v44);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v34);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v43, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  (*(v42 + 8))(v39, v41);
  (*(v66 + 8))(v37, v40);
LABEL_6:
  v51 = v71;
  v52 = *(v72 + 48);
  v53 = v74;
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v74, v71, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_SgMd);
  v54 = v51 + v52;
  v55 = v75;
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v75, v54, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  TupleToolbarContent.init(_:)();
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v55, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  return outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(v53, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_SgMd);
}

uint64_t closure #1 in closure #3 in RepeatPickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v5 = type metadata accessor for BorderedButtonStyle();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  v14 = v20[0];
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd) + 36)) = 256;
  v15 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v20[1] = v15;
  v17 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd);
  v19 = (v14 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  return result;
}

uint64_t closure #2 in closure #1 in closure #3 in RepeatPickerWatch.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #2 in closure #3 in RepeatPickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for BorderedButtonStyle();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  v14 = v20;
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd) + 36)) = 256;
  v15 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v18 = (v14 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

uint64_t closure #2 in closure #2 in closure #3 in RepeatPickerWatch.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AtA6SpacerVACyAA6ButtonVyACyAtA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomzS5PhoneVGtGGAA017_AppearanceActionS0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AtA6SpacerVAGyAA6ButtonVyAGyAtA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomzS5PhoneVGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AtA6SpacerVACyAA6ButtonVyACyAtA16_FlexFrameLayoutVGG07WorkoutB0012PinnedBottomzS5PhoneVGtGGAA017_AppearanceActionS0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of State<Int>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_5(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>>, _AppearanceActionModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for IntervalStepSelectionView()
{
  result = type metadata singleton initialization cache for IntervalStepSelectionView;
  if (!type metadata singleton initialization cache for IntervalStepSelectionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepSelectionView()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for IntervalWorkout();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FIUIFormattingManager();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<[WorkoutBlock]>(319, &lazy cache variable for type metadata for State<[WorkoutBlock]>, &_sSay11WorkoutCore0A5BlockCGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<[WorkoutBlock]>(319, &lazy cache variable for type metadata for State<[WorkoutStep]>, &_sSay11WorkoutCore0A4StepCGMd);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for State<[WorkoutBlock]>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t IntervalStepSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore0K5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyH0VAIyACyAA6ButtonVy0kB009RepeatRowH0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AKySayAL0K4StepCGArCyAXyAA6HStackVyAIyAY0kyT0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_uv7WritingX0VyA18_5ScaleOGGA20_yAA5ColorVSgGGA29_GSgtGGGA3_GGtGAVGAA14_OpacityEffectVGG_ATyA2vA4TextVGSgtGGAY23NillableNavigationTitleVGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationSubtitleyQrAA4TextVFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore0N5BlockCG10Foundation4UUIDVAHyAA7SectionVyAA05EmptyC0VANyAHyAA6ButtonVy0nB009RepeatRowC0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_APySayAQ0N4StepCGAwHyA1_yAA6HStackVyANyA2_0n4StepW0V_AA6SpacerVAA012_ConditionalH0VyAHyAHyAA5ImageVAA01_xY15WritingModifierVyA23_5ScaleOGGA25_yAA5ColorVSgGGA34_GSgtGGGA8_GGtGA_GAA14_OpacityEffectVGG_AYyA_A_AFGSgtGGA2_23NillableNavigationTitleVG_Qo_Md);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v49 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0F8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0T5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VASyACyAA6ButtonVy0tB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AUySayAV0T4StepCGA0_ACyA6_yAA6HStackVyASyA7_0T7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA28_5ScaleOGGA30_yAA5ColorVSgGGA39_GSgtGGGA13_GGtGA4_GAA14_OpacityEffectVGG_A2_yA4_A4_AMGSgtGGA7_08NillablekH0VG_Qo__Qo_A7_07StackedO16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationJ4ItemV0klM0OFQOyAcAE0I8SubtitleyQrAA4TextVFQOyAHyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore0W5BlockCG10Foundation4UUIDVAHyAA7SectionVyAA05EmptyC0VAVyAHyAA6ButtonVy0wB009RepeatRowC0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AXySayAY0W4StepCGA3_AHyA9_yAA6HStackVyAVyA10_0W7StepRowV_AA6SpacerVAA012_ConditionalG0VyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA31_5ScaleOGGA33_yAA5ColorVSgGGA42_GSgtGGGA16_GGtGA7_GAA14_OpacityEffectVGG_A5_yA7_A7_APGSgtGGA10_08NillablenK0VG_Qo__Qo_A10_07StackedR16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_AA0tfG0VyAA0fG7BuilderV05buildY0yQrxAaFRzlFZQOy_AA0fO0VyytAHyA9_yAA18DefaultButtonLabelVGA41_GGQo_Sg_A75_yytAHyAA0N4LinkVyAHyA31_AA31AccessibilityAttachmentModifierVGA10_12RepeatPickerVGA16_GGtGQo_Md);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - v11;
  v49 = v1;
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA15ModifiedContentVyAA7SectionVyAA05EmptyD0VACyANyAA6ButtonVy0gB009RepeatRowD0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AEySayAF0G4StepCGAlNyATyAA6HStackVyACyAU0gwR0V_AA6SpacerVAA012_ConditionalM0VyANyANyAA5ImageVAA01_st7WritingV0VyA14_5ScaleOGGA16_yAA5ColorVSgGGA25_GSgtGGGA_GGtGARGAA14_OpacityEffectVGG_APyA2rA4TextVGSgtGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA15ModifiedContentVyAA7SectionVyAA05EmptyD0VACyANyAA6ButtonVy0gB009RepeatRowD0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AEySayAF0G4StepCGAlNyATyAA6HStackVyACyAU0gwR0V_AA6SpacerVAA012_ConditionalM0VyANyANyAA5ImageVAA01_st7WritingV0VyA14_5ScaleOGGA16_yAA5ColorVSgGGA25_GSgtGGGA_GGtGARGAA14_OpacityEffectVGG_APyA2rA4TextVGSgtGMd);
  List<>.init(content:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v65._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x800000020CB972C0;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v65);

  *&v6[*(v4 + 36)] = v16;
  v17 = WorkoutUIBundle.super.isa;
  v66._object = 0xE000000000000000;
  v18._object = 0x800000020CB972E0;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v66);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CB5DA70;
  v22 = (v49 + *(type metadata accessor for IntervalStepSelectionView() + 36));
  v24 = *v22;
  v23 = v22[1];
  v63 = v24;
  v64 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  if (v62 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D83C10];
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = v26;
  *(v21 + 32) = v25;
  v27 = static String.localizedStringWithFormat(_:_:)();
  v29 = v28;

  v63 = v27;
  v64 = v29;
  lazy protocol witness table accessor for type String and conformance String();
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  v35 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>();
  View.navigationSubtitle(_:)();
  outlined consume of Text.Storage(v30, v32, v34 & 1);

  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v6, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore0K5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyH0VAIyACyAA6ButtonVy0kB009RepeatRowH0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AKySayAL0K4StepCGArCyAXyAA6HStackVyAIyAY0kyT0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_uv7WritingX0VyA18_5ScaleOGGA20_yAA5ColorVSgGGA29_GSgtGGGA3_GGtGAVGAA14_OpacityEffectVGG_ATyA2vA4TextVGSgtGGAY23NillableNavigationTitleVGMd);
  v37 = v54;
  v36 = v55;
  v38 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDDDC0], v56);
  v63 = v4;
  v64 = v35;
  swift_getOpaqueTypeConformance2();
  v39 = v51;
  v40 = v52;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v36 + 8))(v37, v38);
  v41 = (*(v50 + 8))(v8, v39);
  MEMORY[0x28223BE20](v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultK5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AIyytAKyAA14NavigationLinkVyAKyAA5ImageVAA023AccessibilityAttachmentQ0VG07WorkoutB012RepeatPickerVGAA01_no9TransformQ0VySbGGGtGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, ToolbarItem<(), ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultK5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AIyytAKyAA14NavigationLinkVyAKyAA5ImageVAA023AccessibilityAttachmentQ0VG07WorkoutB012RepeatPickerVGAA01_no9TransformQ0VySbGGGtGMd);
  v42 = v57;
  View.toolbar<A>(content:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier>(v40, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0F8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0T5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VASyACyAA6ButtonVy0tB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AUySayAV0T4StepCGA0_ACyA6_yAA6HStackVyASyA7_0T7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA28_5ScaleOGGA30_yAA5ColorVSgGGA39_GSgtGGGA13_GGtGA4_GAA14_OpacityEffectVGG_A2_yA4_A4_AMGSgtGGA7_08NillablekH0VG_Qo__Qo_A7_07StackedO16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v43 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v63 = v43;
  v45 = AnyShapeStyle.init<A>(_:)();
  v46 = v60;
  (*(v58 + 32))(v60, v42, v59);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationJ4ItemV0klM0OFQOyAeAE0I8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0W5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VAVyACyAA6ButtonVy0wB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AXySayAY0W4StepCGA3_ACyA9_yAA6HStackVyAVyA10_0W7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA31_5ScaleOGGA33_yAA5ColorVSgGGA42_GSgtGGGA16_GGtGA7_GAA14_OpacityEffectVGG_A5_yA7_A7_APGSgtGGA10_08NillablenK0VG_Qo__Qo_A10_07StackedR16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_AA0thD0VyAA0hD7BuilderV05buildY0yQrxAaHRzlFZQOy_AA0hO0VyytACyA9_yAA18DefaultButtonLabelVGA41_GGQo_Sg_A75_yytACyAA0N4LinkVyACyA31_AA31AccessibilityAttachmentModifierVGA10_12RepeatPickerVGA16_GGtGQo_A33_yAA13AnyShapeStyleVSgGGMd);
  v48 = (v46 + *(result + 36));
  *v48 = KeyPath;
  v48[1] = v45;
  return result;
}

uint64_t closure #1 in IntervalStepSelectionView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGMd);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for IntervalStepSelectionView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleN0VyALyAA6ButtonVy0eB009RepeatRowN0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_ACySayAD0E4StepCGAjLyATyAA6HStackVyARyAU0ewR0V_AA6SpacerVAA012_ConditionalK0VyALyALyAA5ImageVAA01_st7WritingV0VyA14_5ScaleOGGA16_yAA5ColorVSgGGA25_GSgtGGGA_GGtGAPGAA14_OpacityEffectVGGMd);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = (a1 + *(v11 + 40));
  v21 = *v19;
  v20 = v19[1];
  v51 = v21;
  v52 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D5BlockCGGMd);
  State.wrappedValue.getter();
  outlined init with copy of IntervalStepSelectionView(a1, &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  outlined init with take of IntervalStepSelectionView(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ButtonVy07WorkoutB009RepeatRowG0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0J4Core0J4StepCG10Foundation4UUIDVACyAKyAA6HStackVyAIyAL0jtL0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_mn7WritingP0VyA11_5ScaleOGGA13_yAA5ColorVSgGGA22_GSgtGGGARGGtGAGGAA14_OpacityEffectVGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
  lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  v24 = v18;
  v25 = v50;
  ForEach<>.init(_:content:)();
  static Platform.current.getter();
  v26 = Platform.rawValue.getter();
  v27 = 1;
  if (v26 == Platform.rawValue.getter())
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = WorkoutUIBundle.super.isa;
    v51 = Text.init(_:tableName:bundle:comment:)();
    v52 = v29;
    v53 = v30 & 1;
    v54 = v31;
    v32 = v44;
    Section<>.init(footer:content:)();
    v25 = v50;
    (*(v50 + 32))(v9, v32, v3);
    v27 = 0;
  }

  (*(v25 + 56))(v9, v27, 1, v3);
  v33 = v9;
  v35 = v45;
  v34 = v46;
  v36 = *(v45 + 16);
  v37 = v47;
  v36(v47, v24, v46);
  v38 = v48;
  outlined init with copy of Environment<DismissAction>.Content(v33, v48, &_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGSgMd);
  v39 = v49;
  v36(v49, v37, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleN0VyALyAA6ButtonVy0eB009RepeatRowN0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_ACySayAD0E4StepCGAjLyATyAA6HStackVyARyAU0ewR0V_AA6SpacerVAA012_ConditionalK0VyALyALyAA5ImageVAA01_st7WritingV0VyA14_5ScaleOGGA16_yAA5ColorVSgGGA25_GSgtGGGA_GGtGAPGAA14_OpacityEffectVGG_ANyA2pA4TextVGSgtMd);
  outlined init with copy of Environment<DismissAction>.Content(v38, &v39[*(v40 + 48)], &_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGSgMd);
  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v33, &_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGSgMd);
  v41 = *(v35 + 8);
  v41(v24, v34);
  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v38, &_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGSgMd);
  return (v41)(v37, v34);
}

uint64_t closure #1 in closure #1 in IntervalStepSelectionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAA6ButtonVy07WorkoutB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0J4Core0J4StepCG10Foundation4UUIDVAIyAKyAA6HStackVyAGyAL0jtL0V_AA6SpacerVAA012_ConditionalH0VyAIyAIyAA5ImageVAA01_mn7WritingP0VyA11_5ScaleOGGA13_yAA5ColorVSgGGA22_GSgtGGGARGGtGAEGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for WorkoutBlockType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = *a1;
  WorkoutBlock.blockType.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D7DDD0], v8);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  v22 = v26 == v25;
  v23 = v15;
  v24 = v20;
  if (v26 == v25)
  {
    v17 = 0.4;
  }

  else
  {
    v17 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAEyAGyAA6HStackVyACyAH0hrJ0V_AA6SpacerVAA012_ConditionalF0VyAEyAEyAA5ImageVAA01_kl7WritingN0VyA7_5ScaleOGGA9_yAA5ColorVSgGGA18_GSgtGGGANGGtGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAEyAGyAA6HStackVyACyAH0hrJ0V_AA6SpacerVAA012_ConditionalF0VyAEyAEyAA5ImageVAA01_kl7WritingN0VyA7_5ScaleOGGA9_yAA5ColorVSgGGA18_GSgtGGGANGGtGMd);
  Section<>.init(content:)();
  v18 = v21;
  (*(v5 + 32))(v21, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ButtonVy07WorkoutB009RepeatRowG0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0J4Core0J4StepCG10Foundation4UUIDVACyAKyAA6HStackVyAIyAL0jtL0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_mn7WritingP0VyA11_5ScaleOGGA13_yAA5ColorVSgGGA22_GSgtGGGARGGtGAGGAA14_OpacityEffectVGMd);
  *(v18 + *(result + 36)) = v17;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalStepSelectionView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for IntervalStepSelectionView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVy0eB00eG3RowV_AA6SpacerVAA012_ConditionalK0VyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGA1_yAA5ColorVSgGGA10_GSgtGGGAA01_tu9TransformW0VySbGGGMd);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v40 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v46 = &v40 - v19;
  if (a1)
  {
    lazy protocol witness table accessor for type RepeatRowView and conformance RepeatRowView();
    Button.init(action:label:)();
    v20 = a2;
    v21 = a1;
    KeyPath = swift_getKeyPath();
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    v24 = &v15[*(v12 + 36)];
    *v24 = KeyPath;
    a1 = v21;
    a2 = v20;
    v24[1] = closure #1 in View.disabled(_:)partial apply;
    v24[2] = v23;
    v25 = v15;
    v26 = v46;
    outlined init with take of ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>(v25, v46, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    (*(v13 + 56))(v26, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v46, 1, 1, v12);
  }

  v47 = WorkoutBlock.steps.getter();
  outlined init with copy of IntervalStepSelectionView(a2, &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = swift_allocObject();
  outlined init with take of IntervalStepSelectionView(&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  *(v28 + v27 + v7) = (a1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVy07WorkoutB00I7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA5ColorVSgGGA1_GSgtGGGAA01_op9TransformR0VySbGGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v29 = v41;
  ForEach<>.init(_:content:)();
  v30 = v46;
  v31 = v40;
  outlined init with copy of Environment<DismissAction>.Content(v46, v40, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSgMd);
  v33 = v42;
  v32 = v43;
  v34 = *(v42 + 16);
  v35 = v44;
  v34(v44, v29, v43);
  v36 = v45;
  outlined init with copy of Environment<DismissAction>.Content(v31, v45, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSgMd);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVACyAEyAA6HStackVyAA05TupleI0VyAF0fqH0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_jk7WritingM0VyA7_5ScaleOGGA9_yAA5ColorVSgGGA18_GSgtGGGALGGtMd);
  v34((v36 + *(v37 + 48)), v35, v32);
  v38 = *(v33 + 8);
  v38(v29, v32);
  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v30, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSgMd);
  v38(v35, v32);
  return outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v31, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA32_EnvironmentKeyTransformModifierVySbGGSgMd);
}

double closure #2 in closure #1 in closure #1 in closure #1 in IntervalStepSelectionView.body.getter@<D0>(uint64_t a1@<X8>)
{
  WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t closure #2 in IntervalStepSelectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AGyytAIyAA14NavigationLinkVyAIyAA5ImageVAA023AccessibilityAttachmentP0VG07WorkoutB012RepeatPickerVGAA01_mn9TransformP0VySbGGGtMd);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA14NavigationLinkVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVG07WorkoutB012RepeatPickerVGAA024_EnvironmentKeyTransformL0VySbGGGMd);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  static Platform.current.getter();
  v20 = Platform.rawValue.getter();
  if (v20 == Platform.rawValue.getter())
  {
    v21 = static ToolbarItemPlacement.cancellationAction.getter();
    v38 = v9;
    MEMORY[0x28223BE20](v21);
    *(&v37 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    v39 = a1;
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    ToolbarItem<>.init(placement:content:)();
    v22 = lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v23 = v38;
    MEMORY[0x20F3098F0](v13, v11, v22);
    (*(v7 + 16))(v16, v23, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
    v47 = v11;
    v48 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v16, v6, OpaqueTypeConformance2);
    outlined destroy of ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier>(v16, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    (*(v7 + 8))(v23, v6);
    v25 = v13;
    v26 = v39;
    (*(v40 + 8))(v25, v11);
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, v6);
    v27 = lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v47 = v11;
    v48 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v16, v6, v28);
    outlined destroy of ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier>(v16, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    v26 = a1;
  }

  v29 = static ToolbarItemPlacement.confirmationAction.getter();
  MEMORY[0x28223BE20](v29);
  *(&v37 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG07WorkoutB012RepeatPickerVGAA024_EnvironmentKeyTransformJ0VySbGGMd);
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v30 = v41;
  ToolbarItem<>.init(placement:content:)();
  v31 = v44;
  v32 = *(v45 + 48);
  sub_20C67D288(v19, v44);
  v33 = v42;
  v34 = v31 + v32;
  v35 = v43;
  (*(v42 + 16))(v34, v30, v43);
  TupleToolbarContent.init(_:)();
  (*(v33 + 8))(v30, v35);
  return outlined destroy of ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier>(v19, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
}

uint64_t closure #1 in closure #2 in IntervalStepSelectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntervalStepSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.cancel.getter();
  outlined init with copy of IntervalStepSelectionView(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of IntervalStepSelectionView(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  MEMORY[0x20F30AF90](v9, partial apply for closure #1 in closure #1 in closure #2 in IntervalStepSelectionView.body.getter, v11);
  v12 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in IntervalStepSelectionView.body.getter(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntervalStepSelectionView();
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v12 + 20), v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #2 in closure #2 in IntervalStepSelectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for IntervalStepSelectionView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = *(a1 + *(v6 + 36));
  outlined init with copy of IntervalStepSelectionView(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  outlined init with take of IntervalStepSelectionView(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = v9;
  UUID.init()();
  type metadata accessor for WorkoutBlock();
  swift_allocObject();
  WorkoutBlock.init(_:)();
  WorkoutBlock.repetitions.setter();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  v24 = ObservedObject.init(wrappedValue:)();
  v25 = v13;
  v26 = v12;
  v27 = partial apply for closure #1 in closure #1 in closure #2 in closure #2 in IntervalStepSelectionView.body.getter;
  v28 = v11;
  v29 = 0u;
  v30 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type RepeatPicker and conformance RepeatPicker();
  NavigationLink.init(destination:label:)();
  v14 = (a1 + *(v6 + 44));
  v16 = *v14;
  v15 = v14[1];
  v24 = v16;
  v25 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  if (v23 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v17 == 0;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG07WorkoutB012RepeatPickerVGAA024_EnvironmentKeyTransformJ0VySbGGMd);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_10;
  v22[2] = v20;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #2 in IntervalStepSelectionView.body.getter(Swift::Int a1, void *a2)
{
  if (*a2)
  {
    type metadata accessor for IntervalStepSelectionView();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
    State.wrappedValue.getter();
    ConfigurationNavigationModel.didChooseStepsForRepeatForIntervalWorkout(_:repeatCount:)(_, a1);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #2 in closure #2 in IntervalStepSelectionView.body.getter()
{
  Image.init(systemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB97300;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
}

uint64_t closure #1 in IntervalStepSelectionView.body(for:enabled:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for IntervalStepSelectionView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = *a1;
  outlined init with copy of IntervalStepSelectionView(a2, &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  outlined init with take of IntervalStepSelectionView(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v19 = v11;
  v20 = a2;
  v21 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA19_ConditionalContentVyAA08ModifiedK0VyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA5ColorVSgGGA_GSgtGGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA19_ConditionalContentVyAA08ModifiedK0VyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA5ColorVSgGGA_GSgtGGMd);
  Button.init(action:label:)();
  LOBYTE(v11) = a3 ^ 1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVy07WorkoutB00I7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA5ColorVSgGGA1_GSgtGGGAA01_op9TransformR0VySbGGMd);
  v17 = (a4 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = closure #1 in View.disabled(_:)partial apply;
  v17[2] = v15;
  return result;
}

uint64_t closure #1 in closure #1 in IntervalStepSelectionView.body(for:enabled:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for IntervalStepSelectionView() + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
  State.wrappedValue.getter();
  v10 = v1;
  if (v11 >> 62)
  {
LABEL_20:
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](v3);
    }

    else
    {
      if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v4 = static WorkoutStep.== infix(_:_:)();

    if (v4)
    {

      v6 = v10;

      State.wrappedValue.getter();
      specialized Array.remove(at:)(v3);

      goto LABEL_17;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_19;
    }
  }

  v6 = v10;

  State.wrappedValue.getter();

  MEMORY[0x20F30BCF0](v7);
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_17:
  State.wrappedValue.setter();

  type metadata accessor for IntervalWorkout();
  State.wrappedValue.getter();
  v8 = IntervalWorkout.stepBlocks.getter();
  MEMORY[0x20F303940](v6, v8, 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D5BlockCGGMd);
  return State.wrappedValue.setter();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t closure #2 in closure #1 in IntervalStepSelectionView.body(for:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy07WorkoutB00I7StepRowV_AA6SpacerVAA19_ConditionalContentVyAA08ModifiedN0VyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAT5ScaleOGGAVyAA5ColorVSgGGA3_GSgtGGMd);
  return closure #1 in closure #2 in closure #1 in IntervalStepSelectionView.body(for:enabled:)(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t closure #1 in closure #2 in closure #1 in IntervalStepSelectionView.body(for:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA5ColorVSgGGAT_GMd);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v54);
  v53 = (&v49 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for IntervalStepSelectionView();
  v18 = *(a2 + *(v17 + 28));
  type metadata accessor for WorkoutStep();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v19 = v18;

  v20 = ObservedObject.init(wrappedValue:)();
  v22 = v20;
  v23 = v21;
  if (v57)
  {
    v50 = v20;
    v57 = v21;
    v24 = v10;
    v25 = (a2 + *(v17 + 36));
    v27 = *v25;
    v26 = v25[1];
    v60[0] = v27;
    v60[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore0D4StepCGGMd);
    v28 = State.wrappedValue.getter();
    v29 = v59;
    v60[0] = a1;
    MEMORY[0x28223BE20](v28);
    *(&v49 - 2) = v60;
    v30 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v49 - 4), v29);

    v51 = v19;
    v31 = Image.init(systemName:)();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    v33 = v53;
    v34 = (v53 + *(v32 + 36));
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    if (v30)
    {
      v36 = *MEMORY[0x277CE1050];
      v37 = type metadata accessor for Image.Scale();
      (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
      *v34 = swift_getKeyPath();
      *v33 = v31;
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
      v38 = Color.init(uiColor:)();
    }

    else
    {
      v39 = *MEMORY[0x277CE1050];
      v40 = type metadata accessor for Image.Scale();
      (*(*(v40 - 8) + 104))(v34 + v35, v39, v40);
      *v34 = swift_getKeyPath();
      *v33 = v31;
      static Color.secondary.getter();
      v38 = Color.opacity(_:)();
    }

    KeyPath = swift_getKeyPath();
    v42 = v55;
    v43 = (v33 + *(v54 + 36));
    *v43 = KeyPath;
    v43[1] = v38;
    outlined init with copy of Environment<DismissAction>.Content(v33, v42, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v44 = v52;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v33, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
    outlined init with take of ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>(v44, v16, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGMd);
    (*(v24 + 56))(v16, 0, 1, v9);
    v23 = v57;
    v22 = v50;
    v19 = v51;
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  v45 = v58;
  outlined init with copy of Environment<DismissAction>.Content(v16, v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGSgMd);
  *a4 = v22;
  *(a4 + 8) = v23;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = v19;
  *(a4 + 40) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A7StepRowV_05SwiftB06SpacerVAD19_ConditionalContentVyAD08ModifiedH0VyAJyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAL5ScaleOGGANyAD5ColorVSgGGAWGSgtMd);
  outlined init with copy of Environment<DismissAction>.Content(v45, a4 + *(v46 + 64), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGSgMd);

  v47 = v19;
  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v16, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGSgMd);
  outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(v45, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA5ColorVSgGGARGSgMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore0K5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyH0VAIyACyAA6ButtonVy0kB009RepeatRowH0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AKySayAL0K4StepCGArCyAXyAA6HStackVyAIyAY0kyT0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_uv7WritingX0VyA18_5ScaleOGGA20_yAA5ColorVSgGGA29_GSgtGGGA3_GGtGAVGAA14_OpacityEffectVGG_ATyA2vA4TextVGSgtGGAY23NillableNavigationTitleVGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA15ModifiedContentVyAA7SectionVyAA05EmptyF0VAGyARyAA6ButtonVy0iB009RepeatRowF0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AIySayAJ0I4StepCGApRyAXyAA6HStackVyAGyAY0iyT0V_AA6SpacerVAA012_ConditionalO0VyARyARyAA5ImageVAA01_uv7WritingX0VyA18_5ScaleOGGA20_yAA5ColorVSgGGA29_GSgtGGGA3_GGtGAVGAA14_OpacityEffectVGG_ATyA2vA4TextVGSgtGGMd);
    lazy protocol witness table accessor for type NillableNavigationTitle and conformance NillableNavigationTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NillableNavigationTitle and conformance NillableNavigationTitle()
{
  result = lazy protocol witness table cache variable for type NillableNavigationTitle and conformance NillableNavigationTitle;
  if (!lazy protocol witness table cache variable for type NillableNavigationTitle and conformance NillableNavigationTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NillableNavigationTitle and conformance NillableNavigationTitle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0F8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0T5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VASyACyAA6ButtonVy0tB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AUySayAV0T4StepCGA0_ACyA6_yAA6HStackVyASyA7_0T7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA28_5ScaleOGGA30_yAA5ColorVSgGGA39_GSgtGGGA13_GGtGA4_GAA14_OpacityEffectVGG_A2_yA4_A4_AMGSgtGGA7_08NillablekH0VG_Qo__Qo_A7_07StackedO16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18navigationSubtitleyQrAA4TextVFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore0N5BlockCG10Foundation4UUIDVAHyAA7SectionVyAA05EmptyC0VANyAHyAA6ButtonVy0nB009RepeatRowC0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_APySayAQ0N4StepCGAwHyA1_yAA6HStackVyANyA2_0n4StepW0V_AA6SpacerVAA012_ConditionalH0VyAHyAHyAA5ImageVAA01_xY15WritingModifierVyA23_5ScaleOGGA25_yAA5ColorVSgGGA34_GSgtGGGA8_GGtGA_GAA14_OpacityEffectVGG_AYyA_A_AFGSgtGGA2_23NillableNavigationTitleVG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore0K5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyH0VAIyACyAA6ButtonVy0kB009RepeatRowH0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AKySayAL0K4StepCGArCyAXyAA6HStackVyAIyAY0kyT0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_uv7WritingX0VyA18_5ScaleOGGA20_yAA5ColorVSgGGA29_GSgtGGGA3_GGtGAVGAA14_OpacityEffectVGG_ATyA2vA4TextVGSgtGGAY23NillableNavigationTitleVGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type StackedListSectionsModifier and conformance StackedListSectionsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG07WorkoutB012RepeatPickerVGAA024_EnvironmentKeyTransformJ0VySbGGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG07WorkoutB012RepeatPickerVGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IntervalStepSelectionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntervalStepSelectionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in IntervalStepSelectionView.body.getter()
{
  v1 = *(type metadata accessor for IntervalStepSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #2 in IntervalStepSelectionView.body.getter(v2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #2 in IntervalStepSelectionView.body.getter(Swift::Int a1)
{
  v3 = *(type metadata accessor for IntervalStepSelectionView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #1 in closure #1 in closure #2 in closure #2 in IntervalStepSelectionView.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type RepeatPicker and conformance RepeatPicker()
{
  result = lazy protocol witness table cache variable for type RepeatPicker and conformance RepeatPicker;
  if (!lazy protocol witness table cache variable for type RepeatPicker and conformance RepeatPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatPicker and conformance RepeatPicker);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for IntervalStepSelectionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
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

uint64_t partial apply for closure #1 in closure #1 in IntervalStepSelectionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IntervalStepSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in IntervalStepSelectionView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ButtonVy07WorkoutB009RepeatRowG0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0J4Core0J4StepCG10Foundation4UUIDVACyAKyAA6HStackVyAIyAL0jtL0V_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA01_mn7WritingP0VyA11_5ScaleOGGA13_yAA5ColorVSgGGA22_GSgtGGGARGGtGAGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAA6ButtonVy07WorkoutB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0J4Core0J4StepCG10Foundation4UUIDVAIyAKyAA6HStackVyAGyAL0jtL0V_AA6SpacerVAA012_ConditionalH0VyAIyAIyAA5ImageVAA01_mn7WritingP0VyA11_5ScaleOGGA13_yAA5ColorVSgGGA22_GSgtGGGARGGtGAEGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAEyAGyAA6HStackVyACyAH0hrJ0V_AA6SpacerVAA012_ConditionalF0VyAEyAEyAA5ImageVAA01_kl7WritingN0VyA7_5ScaleOGGA9_yAA5ColorVSgGGA18_GSgtGGGANGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t partial apply for closure #1 in IntervalStepSelectionView.body(for:enabled:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IntervalStepSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return closure #1 in IntervalStepSelectionView.body(for:enabled:)(a1, v6, v7, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVy07WorkoutB00I7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA5ColorVSgGGA1_GSgtGGGAA01_op9TransformR0VySbGGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy07WorkoutB00G7StepRowV_AA6SpacerVAA19_ConditionalContentVyAA08ModifiedL0VyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA5ColorVSgGGA1_GSgtGGGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in IntervalStepSelectionView.body(for:enabled:)()
{
  v1 = *(type metadata accessor for IntervalStepSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in IntervalStepSelectionView.body(for:enabled:)(v2);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t outlined init with copy of Environment<DismissAction>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<List<Never, TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)>>, NillableNavigationTitle>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationJ4ItemV0klM0OFQOyAeAE0I8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0W5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VAVyACyAA6ButtonVy0wB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AXySayAY0W4StepCGA3_ACyA9_yAA6HStackVyAVyA10_0W7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA31_5ScaleOGGA33_yAA5ColorVSgGGA42_GSgtGGGA16_GGtGA7_GAA14_OpacityEffectVGG_A5_yA7_A7_APGSgtGGA10_08NillablenK0VG_Qo__Qo_A10_07StackedR16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_AA0thD0VyAA0hD7BuilderV05buildY0yQrxAaHRzlFZQOy_AA0hO0VyytACyA9_yAA18DefaultButtonLabelVGA41_GGQo_Sg_A75_yytACyAA0N4LinkVyACyA31_AA31AccessibilityAttachmentModifierVGA10_12RepeatPickerVGA16_GGtGQo_A33_yAA13AnyShapeStyleVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0F8SubtitleyQrAA4TextVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7ForEachVySay11WorkoutCore0T5BlockCG10Foundation4UUIDVACyAA7SectionVyAA05EmptyE0VASyACyAA6ButtonVy0tB009RepeatRowE0VGAA32_EnvironmentKeyTransformModifierVySbGGSg_AUySayAV0T4StepCGA0_ACyA6_yAA6HStackVyASyA7_0T7StepRowV_AA6SpacerVAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA28_5ScaleOGGA30_yAA5ColorVSgGGA39_GSgtGGGA13_GGtGA4_GAA14_OpacityEffectVGG_A2_yA4_A4_AMGSgtGGA7_08NillablekH0VG_Qo__Qo_A7_07StackedO16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultK5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AIyytAKyAA14NavigationLinkVyAKyAA5ImageVAA023AccessibilityAttachmentQ0VG07WorkoutB012RepeatPickerVGAA01_no9TransformQ0VySbGGGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, ToolbarItem<(), ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, RepeatPicker>, _EnvironmentKeyTransformModifier<Bool>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultK5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AIyytAKyAA14NavigationLinkVyAKyAA5ImageVAA023AccessibilityAttachmentQ0VG07WorkoutB012RepeatPickerVGAA01_no9TransformQ0VySbGGGtGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ForEach<[WorkoutBlock], UUID, ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Button<RepeatRowView>, _EnvironmentKeyTransformModifier<Bool>>?, ForEach<[WorkoutStep], UUID, ModifiedContent<Button<HStack<TupleView<(WorkoutStepRow, Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>>?)>>>, _EnvironmentKeyTransformModifier<Bool>>>)>, EmptyView>, _OpacityEffect>>, Section<EmptyView, EmptyView, Text>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for IntervalStepChooseGoalView()
{
  result = type metadata singleton initialization cache for IntervalStepChooseGoalView;
  if (!type metadata singleton initialization cache for IntervalStepChooseGoalView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepChooseGoalView()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StepType();
    if (v1 <= 0x3F)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_2(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKActivityMoveMode(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for IntervalWorkoutConfiguration();
          if (v4 <= 0x3F)
          {
            _sSo23FIUIWorkoutActivityTypeCMaTm_2(319, &lazy cache variable for type metadata for FIUIFormattingManager);
            if (v5 <= 0x3F)
            {
              type metadata accessor for WorkoutBlock?();
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

void type metadata accessor for WorkoutBlock?()
{
  if (!lazy cache variable for type metadata for WorkoutBlock?)
  {
    type metadata accessor for WorkoutBlock();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutBlock?);
    }
  }
}

uint64_t closure #1 in IntervalStepChooseGoalView.body.getter()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x28223BE20](v0);
  if (one-time initialization token for columns != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);

  static HorizontalAlignment.center.getter();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, MEMORY[0x277CE0428]);
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGSg_AHSgA2QtGMd);
  lazy protocol witness table accessor for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGSg_AHSgA2QtGMd);
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t closure #1 in closure #1 in IntervalStepChooseGoalView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v195 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v194 = &v175 - v6;
  MEMORY[0x28223BE20](v7);
  v193 = &v175 - v8;
  MEMORY[0x28223BE20](v9);
  v198 = &v175 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v175 - v12;
  MEMORY[0x28223BE20](v14);
  v204 = &v175 - v15;
  v209 = type metadata accessor for StepType();
  v16 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v18 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v186 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v175 - v22;
  MEMORY[0x28223BE20](v24);
  v187 = &v175 - v25;
  MEMORY[0x28223BE20](v26);
  v190 = &v175 - v27;
  MEMORY[0x28223BE20](v28);
  v188 = &v175 - v29;
  MEMORY[0x28223BE20](v30);
  v191 = &v175 - v31;
  v32 = type metadata accessor for IntervalStepGoalButton();
  v33 = *(v32 - 1);
  MEMORY[0x28223BE20](v32);
  v179 = (&v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v178 = &v175 - v36;
  MEMORY[0x28223BE20](v37);
  v181 = (&v175 - v38);
  MEMORY[0x28223BE20](v39);
  v180 = &v175 - v40;
  MEMORY[0x28223BE20](v41);
  v183 = (&v175 - v42);
  MEMORY[0x28223BE20](v43);
  v182 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = (&v175 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  v196 = *(v48 - 8);
  v197 = v48;
  MEMORY[0x28223BE20](v48);
  v185 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v184 = &v175 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSgMd);
  MEMORY[0x28223BE20](v52 - 8);
  v203 = &v175 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v208 = &v175 - v55;
  v56 = type metadata accessor for IntervalWorkout();
  v57 = type metadata accessor for IntervalStepChooseGoalView();
  v58 = v57[7];
  v206 = *(a1 + v57[6]);
  v207 = a1;
  v59 = *(a1 + v58);
  v60 = static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)();
  v61 = *(v60 + 16);
  v62 = 32;
  v201 = v18;
  v202 = v13;
  v205 = v33;
  v199 = v23;
  v189 = v56;
  v200 = v59;
  do
  {
    if (!v61)
    {

      (*(v196 + 56))(v208, 1, 1, v197);
      goto LABEL_8;
    }

    v63 = *(v60 + v62);
    v62 += 8;
    --v61;
  }

  while (v63);
  v177 = v32;

  v64 = v57[5];
  v65 = *(v16 + 2);
  v66 = v207;
  v67 = v16;
  v68 = v209;
  v65(v191, v207 + v64, v209);
  v69 = v188;
  v65(v188, v66 + v64, v68);
  v70 = *(v66 + v57[9]);
  v71 = [v70 unitManager];
  if (!v71)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v72 = v71;
  _sSo23FIUIWorkoutActivityTypeCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  v73 = v206;
  v175 = static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)();

  v67[1](v69, v68);
  v176 = v57;
  v74 = *(v66 + v57[10]);
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v75 = v73;
  v76 = v70;

  *v47 = EnvironmentObject.init()();
  v47[1] = v77;
  v78 = v177[5];
  v188 = v67;
  v79 = v67;
  v32 = v177;
  (v79[4])(v47 + v78, v191, v68);
  *(v47 + v32[6]) = v175;
  *(v47 + v32[7]) = v75;
  *(v47 + v32[8]) = v76;
  *(v47 + v32[9]) = v74;
  v80 = v47 + v32[10];
  v214 = 0;
  State.init(wrappedValue:)();
  v81 = v211;
  *v80 = v210;
  *(v80 + 1) = v81;
  v82 = *v66;
  if (*v66)
  {

    v83 = static ObservableObject.environmentStore.getter();
    v84 = v185;
    outlined init with take of IntervalStepGoalButton(v47, v185);
    v85 = v197;
    v86 = (v84 + *(v197 + 36));
    *v86 = v83;
    v86[1] = v82;
    v87 = v184;
    outlined init with take of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v84, v184);
    v88 = v87;
    v89 = v208;
    outlined init with take of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v88, v208);
    (*(v196 + 56))(v89, 0, 1, v85);
    v18 = v201;
    v13 = v202;
    v16 = v188;
    v33 = v205;
    v57 = v176;
LABEL_8:
    v90 = v206;
    v91 = static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)();
    v92 = *(v91 + 16);
    v93 = 32;
    v94 = v209;
    do
    {
      if (!v92)
      {

        v115 = 1;
        v114 = v204;
        goto LABEL_14;
      }

      v95 = *(v91 + v93);
      v93 += 8;
      --v92;
    }

    while (v95 != 1);

    v96 = v57[5];
    v97 = v16;
    v98 = *(v16 + 2);
    v99 = v207;
    v98(v190, v207 + v96, v94);
    v100 = v187;
    v98(v187, v99 + v96, v94);
    v101 = *(v99 + v57[9]);
    v102 = [v101 unitManager];
    if (!v102)
    {
      goto LABEL_28;
    }

    v103 = v102;
    _sSo23FIUIWorkoutActivityTypeCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    v197 = static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)();

    (*(v16 + 1))(v100, v94);
    v104 = *(v207 + v57[10]);
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v105 = v57;
    v106 = v90;
    v107 = v101;

    v94 = v209;
    v108 = EnvironmentObject.init()();
    v109 = v183;
    *v183 = v108;
    *(v109 + 8) = v110;
    v97[4](v109 + v32[5], v190, v94);
    *(v109 + v32[6]) = v197;
    *(v109 + v32[7]) = v106;
    v57 = v105;
    *(v109 + v32[8]) = v107;
    *(v109 + v32[9]) = v104;
    v111 = v109 + v32[10];
    v214 = 0;
    State.init(wrappedValue:)();
    v112 = v211;
    *v111 = v210;
    *(v111 + 8) = v112;
    v113 = v182;
    outlined init with take of IntervalStepGoalButton(v109, v182);
    v114 = v204;
    outlined init with take of IntervalStepGoalButton(v113, v204);
    v115 = 0;
    v18 = v201;
    v13 = v202;
    v16 = v97;
    v33 = v205;
LABEL_14:
    v117 = *(v33 + 56);
    v116 = v33 + 56;
    v118 = v114;
    v119 = v117;
    v117(v118, v115, 1, v32);
    v120 = static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)();
    v121 = *(v120 + 16);
    v122 = 32;
    v123 = v199;
    do
    {
      if (!v121)
      {

        v143 = 1;
        v133 = v206;
        goto LABEL_20;
      }

      v124 = *(v120 + v122);
      v122 += 8;
      --v121;
    }

    while (v124 != 2);
    v200 = v119;
    v205 = v116;

    v125 = v57[5];
    v126 = v16;
    v127 = *(v16 + 2);
    v128 = v207;
    v127(v123, v207 + v125, v94);
    v129 = v186;
    v127(v186, v128 + v125, v94);
    v130 = *(v128 + v57[9]);
    v131 = [v130 unitManager];
    if (!v131)
    {
      goto LABEL_29;
    }

    v132 = v131;
    _sSo23FIUIWorkoutActivityTypeCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    v133 = v206;
    v197 = static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)();

    v126[1](v129, v94);
    v134 = *(v207 + v57[10]);
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v135 = v133;
    v136 = v130;

    v137 = EnvironmentObject.init()();
    v138 = v181;
    *v181 = v137;
    *(v138 + 8) = v139;
    (v126[4])(v138 + v32[5], v199, v209);
    *(v138 + v32[6]) = v197;
    *(v138 + v32[7]) = v135;
    v94 = v209;
    *(v138 + v32[8]) = v136;
    *(v138 + v32[9]) = v134;
    v140 = v138 + v32[10];
    v214 = 0;
    State.init(wrappedValue:)();
    v141 = v211;
    *v140 = v210;
    *(v140 + 8) = v141;
    v142 = v180;
    outlined init with take of IntervalStepGoalButton(v138, v180);
    v13 = v202;
    outlined init with take of IntervalStepGoalButton(v142, v202);
    v143 = 0;
    v16 = v126;
    v119 = v200;
    v18 = v201;
    v116 = v205;
LABEL_20:
    v144 = 1;
    v119(v13, v143, 1, v32);
    if ([v133 identifier] != 46 || objc_msgSend(v133, sel_swimmingLocationType) != 1)
    {
LABEL_26:
      v164 = v198;
      v119(v198, v144, 1, v32);
      v165 = v203;
      v166 = v13;
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v208, v203, &_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSgMd);
      v167 = v204;
      v168 = v193;
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v204, v193, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      v169 = v194;
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v13, v194, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      v170 = v195;
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v164, v195, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      v171 = v165;
      v172 = v192;
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v171, v192, &_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSgMd);
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSg_AFSgA2OtMd);
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v168, v172 + v173[12], &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v169, v172 + v173[16], &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(v170, v172 + v173[20], &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v164, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v166, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v167, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v208, &_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSgMd);
      outlined destroy of IntervalStepGoalButton?(v170, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v169, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      outlined destroy of IntervalStepGoalButton?(v168, &_s9WorkoutUI22IntervalStepGoalButtonVSgMd);
      return outlined destroy of IntervalStepGoalButton?(v203, &_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGSgMd);
    }

    v145 = type metadata accessor for WorkoutKitFeatures();
    v212 = v145;
    v213 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
    v146 = __swift_allocate_boxed_opaque_existential_1(&v210);
    (*(*(v145 - 8) + 104))(v146, *MEMORY[0x277CE3FC0], v145);
    LOBYTE(v145) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v210);
    if ((v145 & 1) == 0)
    {
      v144 = 1;
      goto LABEL_26;
    }

    v205 = v116;
    v147 = v32;
    v148 = v207;
    (*(v16 + 2))(v18, v207 + v57[5], v94);
    v149 = v16;
    v150 = *(v148 + v57[9]);
    v151 = [v150 unitManager];
    if (v151)
    {
      v152 = v151;
      _sSo23FIUIWorkoutActivityTypeCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
      v153 = v206;
      v154 = static NLSessionActivityGoal.makeDefaultTimeAndDistanceGoal(activityType:unitManager:)();

      v155 = *(v207 + v57[10]);
      type metadata accessor for ConfigurationNavigationModel();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v156 = v153;
      v157 = v150;

      v158 = EnvironmentObject.init()();
      v159 = v179;
      *v179 = v158;
      *(v159 + 8) = v160;
      v149[4](v159 + v147[5], v201, v209);
      v32 = v147;
      *(v159 + v147[6]) = v154;
      *(v159 + v147[7]) = v156;
      *(v159 + v147[8]) = v157;
      *(v159 + v147[9]) = v155;
      v161 = v159 + v147[10];
      v214 = 0;
      State.init(wrappedValue:)();
      v162 = v211;
      *v161 = v210;
      *(v161 + 8) = v162;
      v163 = v178;
      outlined init with take of IntervalStepGoalButton(v159, v178);
      outlined init with take of IntervalStepGoalButton(v163, v198);
      v144 = 0;
      v13 = v202;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_31:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance IntervalStepChooseGoalView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[2] = a1;
  v14[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAJ28ConfigurationNavigationModelCSgGGSg_ALSgA2UtGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA06ScrollC0VyAA9LazyVGridVyAA05TupleC0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAQ28ConfigurationNavigationModelCSgGGSg_ASSgA0_A0_tGGG_Qo_Md);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  static Axis.Set.vertical.getter();
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9LazyVGridVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGSg_AJSgA2StGGMd);
  lazy protocol witness table accessor for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>, &_s7SwiftUI9LazyVGridVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGSg_AJSgA2StGGMd);
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v11 = lazy protocol witness table accessor for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type ScrollView<LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAJ28ConfigurationNavigationModelCSgGGSg_ALSgA2UtGGGMd);
  View.scenePadding(_:)();
  (*(v4 + 8))(v6, v3);
  v18 = StepType.displayString.getter();
  v19 = v12;
  v16 = v3;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t lazy protocol witness table accessor for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_2(uint64_t a1, unint64_t *a2)
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

uint64_t outlined init with take of IntervalStepGoalButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepGoalButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of IntervalStepGoalButton?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DeviceConnectionMenuBadge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for DeviceConnectionMenuBadge(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t closure #1 in DeviceConnectionMenuBadge.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGG_s19PartialRangeThroughVyAFGQo_Md);
  v94 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = &v90 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamichI0O5BoundRtd__lFQOyAA08ModifiedD0VyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGG_s19PartialRangeThroughVyAJGQo_AgAEAHyQrqd__SXRd__AjLRSlFQOyANyANyAA4TextVAVGA_G_A3_Qo__GMd);
  MEMORY[0x28223BE20](v95);
  v101 = &v90 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v98);
  v105 = &v90 - v5;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGG_s19PartialRangeThroughVyAFGQo_Md);
  v90 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA08ModifiedD0VyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAPyAA4FontVSgGG_s19PartialRangeThroughVyAHGQo_AeAEAFyQrqd__SXRd__AhJRSlFQOyALyALyAA4TextVATGAYG_A1_Qo_GMd);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVGMd);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v96 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - v21;
  static Material.regular.getter();
  *&v16[*(v14 + 64)] = 256;
  v23 = [objc_opt_self() systemBackgroundColor];
  v104 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v24 = v115;
  v25 = v117;
  v26 = v118;
  v27 = v119;
  v28 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA6CircleVGAA5ColorVGAA19_BackgroundModifierVyAEyAiA8MaterialVGGGMd) + 36)];
  outlined init with copy of _ShapeView<Circle, Material>(v16, v28, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v29 = static Alignment.center.getter();
  v31 = v30;
  outlined destroy of _ShapeView<Circle, Material>(v16, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA6CircleVAA8MaterialVGGMd) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = v116;
  *v22 = v24;
  *(v22 + 1) = v33;
  *(v22 + 2) = v25;
  *(v22 + 3) = v26;
  *(v22 + 4) = v27;
  *(v22 + 5) = v104;
  *(v22 + 24) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = *(v18 + 44);
  v104 = v22;
  v35 = &v22[v34];
  v36 = v121;
  *v35 = v120;
  *(v35 + 1) = v36;
  *(v35 + 2) = v122;
  if (a1[5])
  {

    v37 = Image.init(_internalSystemName:)();
    v38 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v40 = a1[2];
    v41 = swift_getKeyPath();
    *&v111 = v37;
    *(&v111 + 1) = KeyPath;
    *&v112 = v38;
    *(&v112 + 1) = v41;
    *&v113 = v40;
    v42 = *MEMORY[0x277CDF9D8];
    v43 = type metadata accessor for DynamicTypeSize();
    (*(*(v43 - 8) + 104))(v105, v42, v43);
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();

    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
      v45 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
      v91 = v38;
      v46 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
      v47 = v93;
      v48 = v105;
      v49 = v98;
      View.dynamicTypeSize<A>(_:)();
      outlined destroy of _ShapeView<Circle, Material>(v48, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);

      v50 = v94;
      v51 = v102;
      (*(v94 + 16))(v101, v47, v102);
      swift_storeEnumTagMultiPayload();
      *&v111 = v92;
      *(&v111 + 1) = v49;
      *&v112 = v45;
      *(&v112 + 1) = v46;
      swift_getOpaqueTypeConformance2();
      v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
      v53 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
      *&v111 = v52;
      *(&v111 + 1) = v49;
      *&v112 = v53;
      *(&v112 + 1) = v46;
      swift_getOpaqueTypeConformance2();
      v54 = v99;
      _ConditionalContent<>.init(storage:)();
      (*(v50 + 8))(v47, v51);
LABEL_6:
      v85 = v104;
      v86 = v96;
      outlined init with copy of _ShapeView<Circle, Material>(v104, v96, &_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVGMd);
      v87 = v100;
      sub_20C67D8B0(v54, v100);
      v88 = v103;
      outlined init with copy of _ShapeView<Circle, Material>(v86, v103, &_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVGMd);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVG_AA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAISgGGA3_yAA4FontVSgGG_s19PartialRangeThroughVyAYGQo_AvAEAWyQrqd__SXRd__AYA_RSlFQOyACyACyAA4TextVA5_GA10_G_A14_Qo_GtMd);
      sub_20C67D8B0(v87, v88 + *(v89 + 48));
      sub_20C67D920(v54);
      outlined destroy of _ShapeView<Circle, Material>(v85, &_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVGMd);
      sub_20C67D920(v87);
      return outlined destroy of _ShapeView<Circle, Material>(v86, &_s7SwiftUI15ModifiedContentVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA01_fG0VyAgA8MaterialVGGAA12_FrameLayoutVGMd);
    }

    __break(1u);
  }

  else
  {
    v55 = v91;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
    *&v111 = a1[6];
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
    LocalizedStringKey.init(stringInterpolation:)();
    v58 = Text.init(_:tableName:bundle:comment:)();
    v60 = v59;
    v62 = v61;
    static Font.Weight.medium.getter();
    v63 = Text.fontWeight(_:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    outlined consume of Text.Storage(v58, v60, v62 & 1);

    v70 = static Color.primary.getter();
    v71 = swift_getKeyPath();
    v72 = static Font.body.getter();
    v73 = swift_getKeyPath();
    v110 = v67 & 1;
    *&v106 = v63;
    *(&v106 + 1) = v65;
    LOBYTE(v107) = v67 & 1;
    *(&v107 + 1) = v69;
    *&v108 = v71;
    *(&v108 + 1) = v70;
    *&v109 = v73;
    *(&v109 + 1) = v72;
    v74 = *MEMORY[0x277CDF9D8];
    v75 = type metadata accessor for DynamicTypeSize();
    (*(*(v75 - 8) + 104))(v105, v74, v75);
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
      v76 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
      v77 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
      v78 = v55;
      v79 = v105;
      v80 = v98;
      View.dynamicTypeSize<A>(_:)();
      outlined destroy of _ShapeView<Circle, Material>(v79, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
      v111 = v106;
      v112 = v107;
      v113 = v108;
      v114 = v109;
      outlined destroy of _ShapeView<Circle, Material>(&v111, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
      v81 = v90;
      v82 = v97;
      (*(v90 + 16))(v101, v78, v97);
      swift_storeEnumTagMultiPayload();
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
      v84 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
      *&v106 = v83;
      *(&v106 + 1) = v80;
      *&v107 = v84;
      *(&v107 + 1) = v77;
      swift_getOpaqueTypeConformance2();
      *&v106 = v94;
      *(&v106 + 1) = v80;
      *&v107 = v76;
      *(&v107 + 1) = v77;
      swift_getOpaqueTypeConformance2();
      v54 = v99;
      _ConditionalContent<>.init(storage:)();
      (*(v81 + 8))(v78, v82);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DeviceConnectionMenuBadge@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = *(v1 + 32);
  v10 = *(v1 + 48);
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA01_lD0VyAoA8MaterialVGGAA06_FrameG0VG_AA012_ConditionalJ0VyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicsT0O5BoundRtd__lFQOyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQSgGGA11_yAA4FontVSgGG_s19PartialRangeThroughVyA5_GQo_A2_AAEA3_yQrqd__SXRd__A5_A7_RSlFQOyAKyAKyAA4TextVA13_GA18_G_A22_Qo_GtGGMd);
  closure #1 in DeviceConnectionMenuBadge.body.getter(v9, a1 + *(v5 + 44));
  v6 = *&v9[0];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA01_iG0VyAkA8MaterialVGGAA12_FrameLayoutVG_AA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicqR0O5BoundRtd__lFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGGA7_yAA4FontVSgGG_s19PartialRangeThroughVyA1_GQo_AzAEA_yQrqd__SXRd__A1_A3_RSlFQOyACyACyAA4TextVA9_GA14_G_A18_Qo_GtGGAA13_OffsetEffectVGMd);
  v8 = (a1 + *(result + 36));
  *v8 = v6;
  v8[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize;
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of _ShapeView<Circle, Material>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ShapeView<Circle, Material>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<Circle, Color, _ShapeView<Circle, Material>>, _FrameLayout>, _ConditionalContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0>)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<Circle, Color, _ShapeView<Circle, Material>>, _FrameLayout>, _ConditionalContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0>)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<Circle, Color, _ShapeView<Circle, Material>>, _FrameLayout>, _ConditionalContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0>)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA01_iG0VyAkA8MaterialVGGAA12_FrameLayoutVG_AA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicqR0O5BoundRtd__lFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGGA7_yAA4FontVSgGG_s19PartialRangeThroughVyA1_GQo_AzAEA_yQrqd__SXRd__A1_A3_RSlFQOyACyACyAA4TextVA9_GA14_G_A18_Qo_GtGGAA13_OffsetEffectVGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<StrokeShapeView<Circle, Color, _ShapeView<Circle, Material>>, _FrameLayout>, _ConditionalContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA01_iE0VyAkA8MaterialVGGAA12_FrameLayoutVG_AA012_ConditionalG0VyAA0E0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicqR0O5BoundRtd__lFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGGA7_yAA4FontVSgGG_s19PartialRangeThroughVyA1_GQo_AzAEA_yQrqd__SXRd__A1_A3_RSlFQOyAGyAGyAA4TextVA9_GA14_G_A18_Qo_GtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<Circle, Color, _ShapeView<Circle, Material>>, _FrameLayout>, _ConditionalContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0>)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for IntervalStepGoalButton()
{
  result = type metadata singleton initialization cache for IntervalStepGoalButton;
  if (!type metadata singleton initialization cache for IntervalStepGoalButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepGoalButton()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StepType();
    if (v1 <= 0x3F)
    {
      _sSo21NLSessionActivityGoalCMaTm_1(319, &lazy cache variable for type metadata for NLSessionActivityGoal);
      if (v2 <= 0x3F)
      {
        _sSo21NLSessionActivityGoalCMaTm_1(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
        if (v3 <= 0x3F)
        {
          _sSo21NLSessionActivityGoalCMaTm_1(319, &lazy cache variable for type metadata for FIUIFormattingManager);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WorkoutBlock?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for State<Bool>();
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

uint64_t _sSo21NLSessionActivityGoalCMaTm_1(uint64_t a1, unint64_t *a2)
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

uint64_t IntervalStepGoalButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAA6ButtonVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalI5StyleVGAOyAA08AnyShapeR0VSgGGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAIyAA14NavigationLinkVyAtIyAV012IntervalStepq5ValueE0VAOyAV013ConfigurationY5ModelCSgGGGAXGA1_G_A13_17BlockPresentationOSgQo_G_AV0qI6DetailVtGGMd);
  MEMORY[0x28223BE20](v44[0]);
  v9 = v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedM0VyAOyAA6ButtonVyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalO5StyleVGAUyAA08AnyShapeX0VSgGGAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAOyAOyAA14NavigationLinkVyAzOyA0_012IntervalStepw5ValueC0VAUyA0_28ConfigurationNavigationModelCSgGGGA2_GA7_G_A17_17BlockPresentationOSgQo_G_A0_0wO6DetailVtGG_Qo_Md);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalO5StyleVGAUyAA08AnyShapeX0VSgGGAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyAA14NavigationLinkVyAzCyA0_012IntervalStepw5ValueE0VAUyA0_28ConfigurationNavigationModelCSgGGGA2_GA7_G_A17_17BlockPresentationOSgQo_G_A0_0wO6DetailVtGG_Qo_AA0i10AttachmentT0VGMd);
  MEMORY[0x28223BE20](v52);
  v15 = v44 - v14;
  v16 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for StepType();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IntervalStepGoalButton();
  (*(v18 + 16))(v20, v1 + v21[5], v17);
  v22 = *(v1 + v21[6]);
  v23 = *(v1 + v21[7]);
  v24 = v22;
  v25 = v23;
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  v26 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v27 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6ButtonVyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalL5StyleVGASyAA08AnyShapeU0VSgGGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAMyAMyAA14NavigationLinkVyAxMyAZ012IntervalStept5ValueD0VASyAZ28ConfigurationNavigationModelCSgGGGA0_GA5_G_A17_17BlockPresentationOSgQo_G_AZ0tL6DetailVtGGMd) + 44)];
  v44[1] = v26;
  closure #1 in IntervalStepGoalButton.body.getter(v2, v26, v27);
  static AccessibilityChildBehavior.ignore.getter();
  v28 = lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAA6ButtonVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalI5StyleVGAOyAA08AnyShapeR0VSgGGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAIyAA14NavigationLinkVyAtIyAV012IntervalStepq5ValueE0VAOyAV013ConfigurationY5ModelCSgGGGAXGA1_G_A13_17BlockPresentationOSgQo_G_AV0qI6DetailVtGGMd);
  v29 = v44[0];
  View.accessibilityElement(children:)();
  v30 = v7;
  v31 = v15;
  (*(v47 + 8))(v30, v48);
  outlined destroy of VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAA6ButtonVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalI5StyleVGAOyAA08AnyShapeR0VSgGGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAIyAA14NavigationLinkVyAtIyAV012IntervalStepq5ValueE0VAOyAV013ConfigurationY5ModelCSgGGGAXGA1_G_A13_17BlockPresentationOSgQo_G_AV0qI6DetailVtGGMd);
  v32 = v49;
  static AccessibilityTraits.isButton.getter();
  v54 = v29;
  v55 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  MEMORY[0x20F30A9C0](v32, v45, OpaqueTypeConformance2);
  (*(v50 + 8))(v32, v51);
  (*(v46 + 8))(v13, v34);
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v35 = WorkoutUIBundle.super.isa;
    v58._object = 0xE000000000000000;
    v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v36.value._object = 0xEB00000000656C62;
    v37._object = 0x800000020CB973C0;
    v37._countAndFlagsBits = 0xD000000000000021;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v36, v35, v38, v58);
    countAndFlagsBits = v39._countAndFlagsBits;
    object = v39._object;
  }

  else
  {
    countAndFlagsBits = _HKWorkoutGoalType.accessibilityLabel.getter([v24 goalTypeIdentifier]);
    object = v42;
  }

  v56 = countAndFlagsBits;
  v57 = object;
  lazy protocol witness table accessor for type String and conformance String();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  return outlined destroy of VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>>(v31, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalO5StyleVGAUyAA08AnyShapeX0VSgGGAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyAA14NavigationLinkVyAzCyA0_012IntervalStepw5ValueE0VAUyA0_28ConfigurationNavigationModelCSgGGGA2_GA7_G_A17_17BlockPresentationOSgQo_G_A0_0wO6DetailVtGG_Qo_AA0i10AttachmentT0VGMd);
}

uint64_t closure #1 in IntervalStepGoalButton.body.getter@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a3;
  v4 = *a2;
  v115 = a2;
  v107 = v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationC5ModelCSgGGGMd);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v98[-v5];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGMd);
  MEMORY[0x28223BE20](v108);
  v112 = &v98[-v6];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMd);
  MEMORY[0x28223BE20](v123);
  v113 = &v98[-v7];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAA14NavigationLinkVyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy07WorkoutB0021IntervalStepGoalValueC0VANyAT013ConfigurationJ5ModelCSgGGGAT0U11ButtonStyleVGANyAA08AnyShapeZ0VSgGG_AX17BlockPresentationOSgQo_Md);
  v114 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v9 = &v98[-v8];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6ButtonVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalG5StyleVGAMyAA08AnyShapeP0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAGyAGyAA14NavigationLinkVyArGyAT012IntervalStepo5ValueS0VAMyAT013ConfigurationX5ModelCSgGGGAVGA_G_A11_17BlockPresentationOSgQo__GMd);
  MEMORY[0x28223BE20](v117);
  v121 = &v98[-v10];
  v11 = type metadata accessor for IntervalStepGoalButton();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v98[-v15];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMd);
  MEMORY[0x28223BE20](v118);
  v18 = &v98[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6ButtonVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalF5StyleVGAKyAA08AnyShapeO0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAEyAA14NavigationLinkVyApEyAR012IntervalStepn5ValueR0VAKyAR013ConfigurationW5ModelCSgGGGATGAYG_A9_17BlockPresentationOSgQo_GMd);
  MEMORY[0x28223BE20](v19 - 8);
  v120 = &v98[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v21);
  v119 = &v98[-v23];
  v24 = *(a1 + v11[6]);
  v25 = [v24 goalTypeIdentifier];
  v122 = v11;
  v126 = v24;
  v116 = a1;
  if (!v25)
  {
    v114 = v18;
    outlined init with copy of IntervalStepGoalButton(a1, &v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v44 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v45 = swift_allocObject();
    outlined init with take of IntervalStepGoalButton(&v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v45 + v44);
    v46 = v115;
    *(v45 + ((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v115;
    MEMORY[0x28223BE20](v46);
    *&v98[-16] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    [v24 goalTypeIdentifier];
    v47 = _HKWorkoutGoalType.description.getter();
    v49 = v48;
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v51 = v50;
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v52 = &v16[*(v14 + 36)];
    *v52 = v47;
    v52[1] = v49;
    v52[2] = v51;
    v52[3] = v53;
    v52[4] = 0x402E000000000000;
    v54 = v16;
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      v55 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
      [v55 colorWithAlphaComponent_];
    }

    else
    {
      _HKWorkoutGoalType.platterColor.getter([v24 goalTypeIdentifier]);
    }

    v80 = v119;
    v82 = v114;
    v83 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v127 = v83;
    v85 = AnyShapeStyle.init<A>(_:)();
    outlined init with take of ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>(v54, v82, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGMd);
    v86 = (v82 + *(v118 + 36));
    *v86 = KeyPath;
    v86[1] = v85;
    outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v82, v121);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgMd);
    v88 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMR, lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
    v89 = lazy protocol witness table accessor for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?();
    v127 = v123;
    v128 = v87;
    v129 = v88;
    v130 = v89;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v82, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMd);
    v81 = v116;
    goto LABEL_14;
  }

  v103 = v12;
  v104 = v13;
  v105 = &v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = v9;
  v26 = *(a1 + v11[8]);
  v27 = a1 + v11[10];
  v28 = *v27;
  v29 = *(v27 + 1);
  v138 = v28;
  v139 = v29;
  v102 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v101 = v127;
  v100 = v128;
  v99 = v129;
  v30 = *(a1 + v11[9]);
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

  v31 = EnvironmentObject.init()();
  v33 = v32;
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v34 = ObservedObject.init(wrappedValue:)();
  v36 = *a1;
  if (*a1)
  {
    v37 = v34;
    v38 = v35;

    v39 = static ObservableObject.environmentStore.getter();
    v127 = v31;
    v128 = v33;
    v129 = v37;
    v130 = v38;
    v131 = v102;
    v132 = v101;
    v133 = v100;
    v134 = v99;
    v135 = v30;
    v136 = v39;
    v137 = v36;
    MEMORY[0x28223BE20](v39);
    *&v98[-16] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepGoalValueViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    v40 = v109;
    NavigationLink.init(destination:label:)();
    v41 = v126;
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      v42 = 0x800000020CB973F0;
      v43 = 0xD000000000000011;
    }

    else
    {
      [v41 goalTypeIdentifier];
      v43 = _HKWorkoutGoalType.description.getter();
      v42 = v56;
    }

    v57 = v112;
    v58 = v105;
    v59 = v103;
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v61 = v60;
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v63 = v62;
    (*(v110 + 32))(v57, v40, v111);
    v64 = (v57 + *(v108 + 36));
    *v64 = v43;
    v64[1] = v42;
    v64[2] = v61;
    v64[3] = v63;
    v64[4] = 0x402E000000000000;
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
      [v65 colorWithAlphaComponent_];
    }

    else
    {
      _HKWorkoutGoalType.platterColor.getter([v41 goalTypeIdentifier]);
    }

    v66 = Color.init(uiColor:)();
    v67 = swift_getKeyPath();
    v127 = v66;
    v68 = AnyShapeStyle.init<A>(_:)();
    v69 = v113;
    outlined init with take of ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>(v57, v113, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGMd);
    v70 = v123;
    v71 = &v69[*(v123 + 36)];
    *v71 = v67;
    v71[1] = v68;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v138 = v127;
    outlined init with copy of IntervalStepGoalButton(a1, v58);
    v72 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v73 = swift_allocObject();
    outlined init with take of IntervalStepGoalButton(v58, v73 + v72);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgMd);
    v75 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMR, lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
    v76 = lazy protocol witness table accessor for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?();
    v77 = v106;
    View.onChange<A>(of:initial:_:)();

    outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v69, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGAIyAA08AnyShapeV0VSgGGMd);
    v78 = v114;
    v79 = v124;
    (*(v114 + 2))(v121, v77, v124);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
    v127 = v70;
    v128 = v74;
    v129 = v75;
    v130 = v76;
    swift_getOpaqueTypeConformance2();
    v80 = v119;
    _ConditionalContent<>.init(storage:)();
    v81 = v116;
    (*(v78 + 1))(v77, v79);
LABEL_14:
    NLSessionActivityGoal.intervalDisplayNameShort(formattingManager:)(*(v81 + v122[8]));
    v91 = v90;
    v93 = v92;
    v94 = v120;
    sub_20C67DC48(v80, v120);
    v95 = v125;
    sub_20C67DC48(v94, v125);
    v96 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6ButtonVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalF5StyleVGAKyAA08AnyShapeO0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAEyAA14NavigationLinkVyApEyAR012IntervalStepn5ValueR0VAKyAR013ConfigurationW5ModelCSgGGGATGAYG_A9_17BlockPresentationOSgQo_G_AR0nF6DetailVtMd) + 48));
    *v96 = v91;
    v96[1] = v93;

    outlined destroy of VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>>(v80, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6ButtonVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalF5StyleVGAKyAA08AnyShapeO0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAEyAA14NavigationLinkVyApEyAR012IntervalStepn5ValueR0VAKyAR013ConfigurationW5ModelCSgGGGATGAYG_A9_17BlockPresentationOSgQo_GMd);

    return outlined destroy of VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>>(v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6ButtonVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalF5StyleVGAKyAA08AnyShapeO0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAEyAA14NavigationLinkVyApEyAR012IntervalStepn5ValueR0VAKyAR013ConfigurationW5ModelCSgGGGATGAYG_A9_17BlockPresentationOSgQo_GMd);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in IntervalStepGoalButton.body.getter(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = *(a1 + *(type metadata accessor for IntervalStepGoalButton() + 36));

    ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(a2, v3);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in IntervalStepGoalButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for IntervalStepGoalButton() + 24));
  [v3 goalTypeIdentifier];
  _HKWorkoutGoalType.symbolName.getter();
  v4 = Image.init(_internalSystemName:)();
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.623529412 green:1.0 blue:0.992156863 alpha:1.0];
  }

  else
  {
    _HKWorkoutGoalType.colorForCurrentContrastMode.getter([v3 goalTypeIdentifier]);
  }

  v5 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

uint64_t closure #3 in closure #1 in IntervalStepGoalButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for IntervalStepGoalButton() + 24));
  if (!NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    [v3 goalTypeIdentifier];
    _HKWorkoutGoalType.symbolName.getter();
  }

  v4 = Image.init(_internalSystemName:)();
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.623529412 green:1.0 blue:0.992156863 alpha:1.0];
  }

  else
  {
    _HKWorkoutGoalType.colorForCurrentContrastMode.getter([v3 goalTypeIdentifier]);
  }

  v5 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

uint64_t closure #4 in closure #1 in IntervalStepGoalButton.body.getter(void *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    type metadata accessor for IntervalStepGoalButton();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepGoalValueViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type IntervalStepGoalValueView and conformance IntervalStepGoalValueView();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepGoalValueView and conformance IntervalStepGoalValueView()
{
  result = lazy protocol witness table cache variable for type IntervalStepGoalValueView and conformance IntervalStepGoalValueView;
  if (!lazy protocol witness table cache variable for type IntervalStepGoalValueView and conformance IntervalStepGoalValueView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepGoalValueView and conformance IntervalStepGoalValueView);
  }

  return result;
}

uint64_t outlined init with copy of IntervalStepGoalButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepGoalButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #1 in IntervalStepGoalButton.body.getter()
{
  v1 = *(type metadata accessor for IntervalStepGoalButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return closure #4 in closure #1 in IntervalStepGoalButton.body.getter(v2);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationE5ModelCSgGGGAO0P11ButtonStyleVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEy07WorkoutB025IntervalStepGoalValueViewVAIyAO013ConfigurationC5ModelCSgGGGMd);
    lazy protocol witness table accessor for type GoalButtonStyle and conformance GoalButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GoalButtonStyle and conformance GoalButtonStyle()
{
  result = lazy protocol witness table cache variable for type GoalButtonStyle and conformance GoalButtonStyle;
  if (!lazy protocol witness table cache variable for type GoalButtonStyle and conformance GoalButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalButtonStyle and conformance GoalButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgMd);
    lazy protocol witness table accessor for type ConfigurationNavigationModel.BlockPresentation and conformance ConfigurationNavigationModel.BlockPresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfigurationNavigationModel.BlockPresentation and conformance ConfigurationNavigationModel.BlockPresentation()
{
  result = lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation and conformance ConfigurationNavigationModel.BlockPresentation;
  if (!lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation and conformance ConfigurationNavigationModel.BlockPresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationNavigationModel.BlockPresentation and conformance ConfigurationNavigationModel.BlockPresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type GoalButtonStyle and conformance GoalButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in IntervalStepGoalButton.body.getter()
{
  v1 = *(type metadata accessor for IntervalStepGoalButton() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in IntervalStepGoalButton.body.getter((v0 + v2), v3);
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalE5StyleVGAIyAA08AnyShapeN0VSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<IntervalStepGoalValueView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

double protocol witness for UserDefaultsProviding.object(forKey:) in conformance NSUserDefaults@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = MEMORY[0x20F30BAD0]();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t protocol witness for UserDefaultsProviding.string(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for UserDefaultsProviding.dictionary(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for UserDefaultsProviding.data(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for UserDefaultsProviding.array(forKey:) in conformance NSUserDefaults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  v8 = MEMORY[0x20F30BAD0]();
  v9 = [v7 *a5];

  if (!v9)
  {
    return 0;
  }

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

id protocol witness for UserDefaultsProviding.integer(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  v3 = [v1 integerForKey_];

  return v3;
}

float protocol witness for UserDefaultsProviding.float(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  [v1 floatForKey_];
  v4 = v3;

  return v4;
}

double protocol witness for UserDefaultsProviding.double(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

id protocol witness for UserDefaultsProviding.BOOL(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void protocol witness for UserDefaultsProviding.set(_:forKey:) in conformance NSUserDefaults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  @nonobjc NSUserDefaults.set(_:forKey:)(a1, a2, a3);
}

{
  v5 = *v3;
  v6 = MEMORY[0x20F30BAD0](a2, a3);
  [v5 setInteger:a1 forKey:v6];
}

void @nonobjc NSUserDefaults.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v14);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x20F30BAD0](a2, a3);
  [v3 setObject:v12 forKey:v13];
  swift_unknownObjectRelease();
}

void protocol witness for UserDefaultsProviding.set(_:forKey:) in conformance NSUserDefaults(float a1)
{
  v3 = *v1;
  v5 = MEMORY[0x20F30BAD0]();
  *&v4 = a1;
  [v3 setFloat:v5 forKey:v4];
}

void protocol witness for UserDefaultsProviding.set(_:forKey:) in conformance NSUserDefaults(double a1)
{
  v3 = *v1;
  v4 = MEMORY[0x20F30BAD0]();
  [v3 setDouble:v4 forKey:a1];
}

void protocol witness for UserDefaultsProviding.set(_:forKey:) in conformance NSUserDefaults(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = MEMORY[0x20F30BAD0](a2, a3);
  [v5 setBool:a1 & 1 forKey:v6];
}

void protocol witness for UserDefaultsProviding.removeObject(forKey:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x20F30BAD0]();
  [v1 removeObjectForKey_];
}

uint64_t dispatch thunk of UserDefaultsProviding.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))();
}

{
  return (*(a5 + 96))();
}

{
  return (*(a5 + 120))();
}

uint64_t dispatch thunk of UserDefaultsProviding.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 104))();
}

{
  return (*(a4 + 112))();
}

uint64_t type metadata accessor for MusicLibraryPlaylistsButton()
{
  result = type metadata singleton initialization cache for MusicLibraryPlaylistsButton;
  if (!type metadata singleton initialization cache for MusicLibraryPlaylistsButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MusicLibraryPlaylistsButton()
{
  type metadata accessor for ObservedObject<MusicLibraryPlaylistsModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<MediaPlaybackConfigurationItem>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Binding<WorkoutMediaSuggestion?>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Binding<Bool>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<MusicLibraryPlaylistsModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<MusicLibraryPlaylistsModel>)
  {
    type metadata accessor for MusicLibraryPlaylistsModel();
    lazy protocol witness table accessor for type MusicLibraryPlaylistsModel and conformance MusicLibraryPlaylistsModel(&lazy protocol witness table cache variable for type MusicLibraryPlaylistsModel and conformance MusicLibraryPlaylistsModel, MEMORY[0x277D7E5B8]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<MusicLibraryPlaylistsModel>);
    }
  }
}

void type metadata accessor for Binding<MediaPlaybackConfigurationItem>()
{
  if (!lazy cache variable for type metadata for Binding<MediaPlaybackConfigurationItem>)
  {
    type metadata accessor for MediaPlaybackConfigurationItem();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<MediaPlaybackConfigurationItem>);
    }
  }
}

void type metadata accessor for Binding<WorkoutMediaSuggestion?>()
{
  if (!lazy cache variable for type metadata for Binding<WorkoutMediaSuggestion?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<WorkoutMediaSuggestion?>);
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

uint64_t MusicLibraryPlaylistsButton.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA0G0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyArAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB020MediaSuggestionsListVG_SSQo__Qo_GMd);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAA5ImageVAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAF17HeaderHyphenationVGGANyAA5ColorVSgGGAA012_ConditionalF0VyAEyAA08ProgressK0VyAA05EmptyK0VA5_GANyAA11ControlSizeOGGAA0K0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0F15MarginPlacementVtFQOyA12_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAF20MediaSuggestionsListVG_SSQo__Qo_GGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA14NavigationLinkVyAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessorydG0VyAA5ImageVAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAL17HeaderHyphenationVGGATyAA5ColorVSgGGACyAKyAA08ProgressG0VyA2GGATyAA11ControlSizeOGGAA0G0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA14_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAL20MediaSuggestionsListVG_SSQo__Qo_GG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  if ((dispatch thunk of MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter() & 1) != 0 || (v10 = *(dispatch thunk of MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.getter() + 16), , v10))
  {
    closure #1 in MusicLibraryPlaylistsButton.body.getter(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAD17HeaderHyphenationVGGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance <> _ConditionalContent<A, B>();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAA5ImageVAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAF17HeaderHyphenationVGGANyAA5ColorVSgGGAA012_ConditionalF0VyAEyAA08ProgressK0VyAA05EmptyK0VA5_GANyAA11ControlSizeOGGAA0K0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0F15MarginPlacementVtFQOyA12_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAF20MediaSuggestionsListVG_SSQo__Qo_GGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAA5ImageVAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAF17HeaderHyphenationVGGANyAA5ColorVSgGGAA012_ConditionalF0VyAEyAA08ProgressK0VyAA05EmptyK0VA5_GANyAA11ControlSizeOGGAA0K0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0F15MarginPlacementVtFQOyA12_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAF20MediaSuggestionsListVG_SSQo__Qo_GGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in MusicLibraryPlaylistsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = type metadata accessor for ContentMarginPlacement();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v50 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO07WorkoutB0016MediaSuggestionsC0VGMd);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB0016MediaSuggestionsF0VG_SSQo_Md);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAcAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB0016MediaSuggestionsQ0VG_SSQo__Qo_Md);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA0H0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAtAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB020MediaSuggestionsListVG_SSQo__Qo__GMd);
  MEMORY[0x28223BE20](v10);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = dispatch thunk of MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter();
  if (v16)
  {
    ProgressView<>.init<>()();
    v17 = &v15[*(v13 + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
    v19 = *MEMORY[0x277CDF420];
    v20 = type metadata accessor for ControlSize();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    outlined init with copy of ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>(v15, v12);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    v21 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type List<Never, MediaSuggestionsList> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO07WorkoutB0016MediaSuggestionsC0VGMd);
    v22 = lazy protocol witness table accessor for type String and conformance String();
    v54._countAndFlagsBits = v3;
    v54._object = MEMORY[0x277D837D0];
    v55 = v21;
    v56 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54._countAndFlagsBits = v6;
    v54._object = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>(v15);
  }

  else
  {
    v42[0] = v12;
    v42[1] = v10;
    v42[2] = v13;
    v43 = v6;
    v44 = v8;
    MEMORY[0x28223BE20](v16);
    type metadata accessor for MediaSuggestionsList();
    lazy protocol witness table accessor for type MusicLibraryPlaylistsModel and conformance MusicLibraryPlaylistsModel(&lazy protocol witness table cache variable for type MediaSuggestionsList and conformance MediaSuggestionsList, type metadata accessor for MediaSuggestionsList);
    List<>.init(content:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = WorkoutUIBundle.super.isa;
    v57._object = 0xE000000000000000;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v27._object = 0x800000020CB97440;
    v27._countAndFlagsBits = 0xD000000000000010;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v57);

    v54 = v29;
    v30 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type List<Never, MediaSuggestionsList> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO07WorkoutB0016MediaSuggestionsC0VGMd);
    v31 = lazy protocol witness table accessor for type String and conformance String();
    v32 = MEMORY[0x277D837D0];
    v33 = v46;
    v34 = v3;
    View.navigationTitle<A>(_:)();

    (*(v45 + 8))(v5, v3);
    v35 = static Edge.Set.top.getter();
    v36 = v50;
    static ContentMarginPlacement.automatic.getter();
    v54._countAndFlagsBits = v34;
    v54._object = v32;
    v55 = v30;
    v56 = v31;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v48;
    v39 = v43;
    MEMORY[0x20F30A640](v35, 0x4034000000000000, 0, v36, v43, v37);
    (*(v51 + 8))(v36, v52);
    (*(v47 + 8))(v33, v39);
    v40 = v49;
    v41 = v44;
    (*(v49 + 16))(v42[0], v38, v44);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    v54._countAndFlagsBits = v39;
    v54._object = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v40 + 8))(v38, v41);
  }
}

__n128 closure #1 in closure #1 in MusicLibraryPlaylistsButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = dispatch thunk of MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.getter();
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd);
  Binding.projectedValue.getter();
  type metadata accessor for MusicLibraryPlaylistsButton();
  v6 = type metadata accessor for MediaSuggestionsList();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
  Binding.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  result = v10;
  *(a2 + 24) = v10;
  v8 = a2 + *(v6 + 32);
  *v8 = v9;
  *(v8 + 8) = v10.n128_u64[0];
  *(v8 + 16) = v10.n128_u8[8];
  return result;
}

uint64_t closure #2 in MusicLibraryPlaylistsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v3 = Image.init(_internalSystemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000020CB97440;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v19);

  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v16 = v12 & 1;
  v17 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v16;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x4022000000000000;
  *(a1 + 64) = v2;
  *(a1 + 72) = result;
  *(a1 + 80) = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAD17HeaderHyphenationVGGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB05ImageVAD08ModifiedF0VyAHyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0K9AlignmentOGGAA17HeaderHyphenationVGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA0G0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyArAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB020MediaSuggestionsListVG_SSQo__Qo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB0016MediaSuggestionsF0VG_SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO07WorkoutB0016MediaSuggestionsC0VGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type List<Never, MediaSuggestionsList> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO07WorkoutB0016MediaSuggestionsC0VGMd);
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type MusicLibraryPlaylistsModel and conformance MusicLibraryPlaylistsModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA14NavigationLinkVyAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessorydF0VyAA5ImageVAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAJ17HeaderHyphenationVGGARyAA5ColorVSgGGACyAIyAA08ProgressF0VyA2EGARyAA11ControlSizeOGGAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA12_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAJ20MediaSuggestionsListVG_SSQo__Qo_GGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAA5ImageVAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAF17HeaderHyphenationVGGANyAA5ColorVSgGGAA012_ConditionalF0VyAEyAA08ProgressK0VyAA05EmptyK0VA5_GANyAA11ControlSizeOGGAA0K0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0F15MarginPlacementVtFQOyA12_AAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAF20MediaSuggestionsListVG_SSQo__Qo_GGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<ControlSize>>, <<opaque return type of View.contentMargins(_:_:for:)>>.0>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t DistanceMetricText.init(distance:formattingManager:distanceType:distanceUnit:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a8;
  *(a7 + 8) = result;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4 & 1;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

id DistanceMetricText.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v1 + 32))
  {
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText();

    v4 = v3;
LABEL_7:
    result = _ConditionalContent<>.init(storage:)();
    a1[2] = v12;
    a1[3] = *v13;
    *(a1 + 57) = *&v13[9];
    *a1 = v10;
    a1[1] = v11;
    return result;
  }

  v5 = *(v1 + 24);
  result = [v3 localizedStringWithDistanceInMeters:v5 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:v5) decimalTrimmingMode:{2, 1, *v1}];
  if (result)
  {
    v7 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [v3 localizedShortUnitStringForDistanceUnit:v5 textCase:2];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText()
{
  result = lazy protocol witness table cache variable for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText;
  if (!lazy protocol witness table cache variable for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistanceMetricText(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DistanceMetricText(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MetricText, NaturalDistanceMetricText> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MetricText, NaturalDistanceMetricText> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MetricText, NaturalDistanceMetricText> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010MetricTextVAD015NaturalDistancefG0VGMd);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MetricText, NaturalDistanceMetricText> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void WKUIBreadcrumbPathRenderer.draw(_:zoomScale:in:)(CGContext *a1, double a2, double a3, double a4, double a5, MKZoomScale a6)
{
  v13 = MKRoadWidthAtZoomScale(a6);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v37 = MKMapRectInset(v36, -v13, -v13);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v18 = *(*(v6 + OBJC_IVAR____TtC9WorkoutUI26WKUIBreadcrumbPathRenderer_crumbs) + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData);
  os_unfair_lock_lock((v18 + 56));
  v19 = *(v18 + 16);

  os_unfair_lock_unlock((v18 + 56));
  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_13:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_3:
  path = v6;
  v33 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
    return;
  }

  v21 = 0;
  v22 = v33;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x20F30C990](v21, v19);
    }

    else
    {
      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    [v23 coordinate];
    v25 = MKMapPointForCoordinate(v35);

    v27 = *(v33 + 16);
    v26 = *(v33 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    }

    ++v21;
    *(v33 + 16) = v27 + 1;
    *(v33 + 16 * v27 + 32) = v25;
  }

  while (v20 != v21);

LABEL_14:
  patha = WKUIBreadcrumbPathRenderer.pathForPoints(_:mapRect:zoomScale:)(v22, x, y, width, height, a6);

  if (patha)
  {
    CGContextAddPath(a1, patha);
    v28 = [objc_opt_self() systemGreenColor];
    v29 = [v28 colorWithAlphaComponent_];

    v30 = [v29 CGColor];
    CGContextSetStrokeColorWithColor(a1, v30);

    CGContextSetLineJoin(a1, kCGLineJoinRound);
    CGContextSetLineCap(a1, kCGLineCapRound);
    CGContextSetLineWidth(a1, v13);
    CGContextStrokePath(a1);
  }
}

CGMutablePathRef WKUIBreadcrumbPathRenderer.pathForPoints(_:mapRect:zoomScale:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v8 = *(a1 + 16);
  if (v8 < 2)
  {
    return 0;
  }

  v9 = v6;
  v15 = *(a1 + 32);
  v14 = a1 + 32;
  v16 = v15;
  v17 = v14 + 8;
  v18 = *(v14 + 8);
  v19 = v14 + 16 * v8;
  v43 = *(v19 - 16);
  v44 = *(v19 - 8);
  Mutable = CGPathCreateMutable();
  v21 = 0;
  v22 = 5.0 / a6 * (5.0 / a6);
  v23 = 1;
  while (2)
  {
    v24 = (v17 + 16 * v21);
    while (1)
    {
      if (v21 >= v8)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v37 = v43;
        if (!specialized WKUIBreadcrumbPathRenderer.lineBetween(points:intersects:)(v43, v44, v7, a6, a2, a3, a4, a5))
        {
          return Mutable;
        }

LABEL_40:
        [v9 pointForMapPoint_];
        v46.a = 1.0;
        v46.b = 0.0;
        v46.c = 0.0;
        v46.d = 1.0;
        v46.tx = 0.0;
        v46.ty = 0.0;
        CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v41, v40), &v46);
        return Mutable;
      }

      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_43;
      }

      if (v21)
      {
        v7 = *(v24 - 1);
        a6 = *v24;
        if (v22 <= (v7 - v16) * (v7 - v16) + (*v24 - v18) * (*v24 - v18))
        {
          break;
        }
      }

      ++v21;
      v24 += 2;
      if (v25 == v8)
      {
        v37 = v43;
        if (!specialized WKUIBreadcrumbPathRenderer.lineBetween(points:intersects:)(v43, v44, v16, v18, a2, a3, a4, a5))
        {
          return Mutable;
        }

        v7 = v16;
        a6 = v18;
        if ((v23 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    v26 = *(v24 - 1);
    if (v7 > v16)
    {
      v26 = v16;
      if ((~*&v16 & 0x7FF0000000000000) == 0)
      {
        if ((*&v16 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v26 = *(v24 - 1);
        }

        else
        {
          v26 = v16;
        }
      }
    }

    v27 = *v24;
    if (a6 > v18)
    {
      v27 = v18;
      if ((~*&v18 & 0x7FF0000000000000) == 0)
      {
        if ((*&v18 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v27 = *v24;
        }

        else
        {
          v27 = v18;
        }
      }
    }

    v28 = *(v24 - 1);
    if (v16 >= v7)
    {
      v28 = v16;
      if ((~*&v16 & 0x7FF0000000000000) == 0)
      {
        if ((*&v16 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v28 = *(v24 - 1);
        }

        else
        {
          v28 = v16;
        }
      }
    }

    v29 = *v24;
    if (v18 >= a6)
    {
      v29 = v18;
      if ((~*&v18 & 0x7FF0000000000000) == 0)
      {
        if ((*&v18 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v29 = *v24;
        }

        else
        {
          v29 = v18;
        }
      }
    }

    v30 = v28 - v26;
    v31 = v29 - v27;
    v50.origin.x = a2;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    v32 = MKMapRectIntersectsRect(v50, *&v26);
    if (v32)
    {
      if (v23)
      {
        [v9 pointForMapPoint_];
        transform.b = 0.0;
        transform.c = 0.0;
        transform.a = 1.0;
        transform.d = 1.0;
        transform.tx = 0.0;
        transform.ty = 0.0;
        CGMutablePathRef.move(to:transform:)(__PAIR128__(v34, v33), &transform);
      }

      [v9 pointForMapPoint_];
      v48.b = 0.0;
      v48.c = 0.0;
      v48.a = 1.0;
      v48.d = 1.0;
      v48.tx = 0.0;
      v48.ty = 0.0;
      CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v36, v35), &v48);
      if (v25 == v8)
      {
        goto LABEL_44;
      }

LABEL_35:
      v23 = !v32;
      v16 = v7;
      v18 = a6;
      v21 = v25;
      continue;
    }

    break;
  }

  if (v25 != v8)
  {
    goto LABEL_35;
  }

  v37 = v43;
  if (specialized WKUIBreadcrumbPathRenderer.lineBetween(points:intersects:)(v43, v44, v7, a6, a2, a3, a4, a5))
  {
LABEL_39:
    [v9 pointForMapPoint_];
    v47.a = 1.0;
    v47.b = 0.0;
    v47.c = 0.0;
    v47.d = 1.0;
    v47.tx = 0.0;
    v47.ty = 0.0;
    CGMutablePathRef.move(to:transform:)(__PAIR128__(v39, v38), &v47);
    goto LABEL_40;
  }

  return Mutable;
}

id WKUIBreadcrumbPathRenderer.__allocating_init(overlay:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithOverlay_];
  swift_unknownObjectRelease();
  return v2;
}

id WKUIBreadcrumbPathRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WKUIBreadcrumbPathRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL specialized WKUIBreadcrumbPathRenderer.lineBetween(points:intersects:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    v12 = a3;
  }

  if (a1 <= a3)
  {
    v12 = a1;
  }

  v13 = a2;
  if (a2 > a4)
  {
    if ((*&a4 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = a4;
    }

    if ((~*&a4 & 0x7FF0000000000000) != 0)
    {
      v13 = a4;
    }

    if (a3 < a1)
    {
LABEL_10:
      if (a4 < a2)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else if (a3 < a1)
  {
    goto LABEL_10;
  }

  if ((*&a3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    a1 = a3;
  }

  if (a4 >= a2)
  {
LABEL_11:
    if ((*&a4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      a2 = a4;
    }

    if ((~*&a4 & 0x7FF0000000000000) != 0)
    {
      a2 = a4;
    }
  }

LABEL_15:
  v14 = a1 - v12;
  v15 = a2 - v13;
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return MKMapRectIntersectsRect(v17, *&v12);
}

uint64_t PacePickerViewModel.currentPaceDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PacePickerViewModel.paceInActivityUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::String __swiftcall PacePickerViewModel.paceDisplayString(pace:)(Swift::Int pace)
{
  if ([*(v1 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_activityType) effectiveTypeIdentifier] == 13)
  {
    type metadata accessor for NSNumberFormatter();
    v3 = static NSNumberFormatter.integralFormatter.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = [v3 stringForObjectValue_];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = v6;
LABEL_6:
      v10 = v8;
      goto LABEL_10;
    }

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v9 = [*(v1 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_formattingManager) stringWithDuration:1 durationFormat:pace];
    if (v9)
    {
      v11 = v9;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v13;

      v9 = v12;
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_10:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::Void __swiftcall PacePickerViewModel.pickerChanged()()
{
  v1 = v0;
  if ([*(v0 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_activityType) effectiveTypeIdentifier] == 13)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_formattingManager);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = FIUIDistanceTypeForActivityType();
    v4 = [v2 unitManager];
    if (v4)
    {
      v5 = v4;
      [v4 distanceInMetersForDistanceInUserUnit:v3 distanceType:v36];
      v7 = v6;

      v8 = objc_opt_self();
      v9 = [v8 hourUnit];
      v10 = [objc_opt_self() quantityWithUnit:v9 doubleValue:1.0];

      v11 = [v8 secondUnit];
      [v10 doubleValueForUnit_];
      v13 = v12;

      v14 = MEMORY[0x20F30D360](v7, v13);
      v15 = v1[3];
      v16 = v1[4];
      v36 = v1[2];
      v37 = v15;
      v38 = v16;
      v35 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
      Binding.wrappedValue.setter();
LABEL_6:
      v29 = v1[3];
      v30 = v1[4];
      v36 = v1[2];
      v37 = v29;
      v38 = v30;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
      MEMORY[0x20F30B100](&v35, v31);
      v32 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();
      v34 = v33;
      swift_getKeyPath();
      swift_getKeyPath();
      v36 = v32;
      v37 = v34;

      static Published.subscript.setter();
      return;
    }

    __break(1u);
  }

  else
  {
    v17 = FIUIDistanceTypeForActivityType();
    v18 = [*(v1 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_formattingManager) unitManager];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 userDistanceHKUnitForDistanceType_];

      v21 = [objc_opt_self() quantityWithUnit:v20 doubleValue:1.0];
      v22 = [objc_opt_self() meterUnit];
      [v21 doubleValueForUnit_];
      v24 = v23;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v26 = MEMORY[0x20F30D360](v25, v24, v36);
      v27 = v1[3];
      v28 = v1[4];
      v36 = v1[2];
      v37 = v27;
      v38 = v28;
      v35 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
      Binding.wrappedValue.setter();

      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t PacePickerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel__currentPaceDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_targetZoneType;
  v4 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel__paceInActivityUnit;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t PacePickerViewModel.__deallocating_deinit()
{
  PacePickerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PacePickerViewModel()
{
  result = type metadata singleton initialization cache for PacePickerViewModel;
  if (!type metadata singleton initialization cache for PacePickerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacePickerViewModel()
{
  _s7Combine9PublishedVySSGMaTm_0(319, &lazy cache variable for type metadata for Published<String>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TargetZone.ZoneType();
    if (v1 <= 0x3F)
    {
      _s7Combine9PublishedVySSGMaTm_0(319, &lazy cache variable for type metadata for Published<Int>);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void _s7Combine9PublishedVySSGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PacePickerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PacePickerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for PacePickerViewModel.paceInActivityUnit : PacePickerViewModel@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PacePickerViewModel.paceInActivityUnit : PacePickerViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for PacePickerViewModel.currentPaceDisplay : PacePickerViewModel@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for PacePickerViewModel.currentPaceDisplay : PacePickerViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t getEnumTagSinglePayload for IntervalStepEditViewPhone.GoalEditingState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalStepEditViewPhone.GoalEditingState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for IntervalStepEditViewPhone.GoalEditingState(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for IntervalStepEditViewPhone.GoalEditingState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepEditViewPhone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for IntervalStepEditViewPhone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0030AlignedLeadingAccessoryContentD0VyAA08ModifiedI0VyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGALyAA5ColorVSgGGAA023AccessibilityAttachmentO0VGAHyAA0D0PAAE20writingToolsBehavioryQrAA0nuV0VFQOyAA9TextFieldVyAA0W0VG_Qo_ALySSSgGGG_AHyAA5GroupVyACyAzAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA05EmptyD0V0E4Core8StepTypeOAA7ForEachVySayA22_GA22_AzAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA5__A22_Qo_GG_AA20SegmentedPickerStyleVQo_Sg_AzAE20accessibilityElement8childrenQrAA0r5ChildV0V_tFQOyAA6HStackVyACyAHyA5_ATG_AA6SpacerVAHyAHyA17_yA5_So21NLSessionActivityGoalCA24_ySayA45_GA45_AzAEA26__A27_Qrqd___SbtSHRd__lFQOyAHyAzAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyA5_AJG_AA19TitleOnlyLabelStyleVQo_ATG_A45_Qo_GGATGAWGtGG_Qo_AA012_ConditionalI0VyA65_yACyAD22SwimmingDistancePickerV_AD10TimePickerVtGAD14DistancePickerVGA65_yA69_AD12EnergyPickerVGGSgAD12AlertsButtonVSgAHyAA6ButtonVyA5_GATGSgA84_SgtGGAA14_PaddingLayoutVGtGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v71 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA0G0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V11WorkoutCore8StepTypeOAA7ForEachVySayARGAriAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ARQo_GG_AA09SegmentedjI0VQo_Sg_AiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyACyAyA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAMyAYSo21NLSessionActivityGoalCATySayA21_GA21_AiAEAV_AWQrqd___SbtSHRd__lFQOyACyAiAE05labelI0yQrqd__AA05LabelI0Rd__lFQOyAA5LabelVyAyA5ImageVG_AA014TitleOnlyLabelI0VQo_A16_G_A21_Qo_GGA16_GAA0Z18AttachmentModifierVGtGG_Qo_AA012_ConditionalD0VyA45_yAGy0lB0016SwimmingDistanceJ0V_A46_04TimeJ0VtGA46_08DistanceJ0VGA45_yA50_A46_06EnergyJ0VGGSgA46_12AlertsButtonVSgACyAA6ButtonVyAYGA16_GSgA65_SgtGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v95);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v71 - v10;
  v11 = type metadata accessor for WritingToolsBehavior();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x28223BE20](v11);
  v92 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StepType();
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v90 = *(v16 - 8);
  v91 = v16;
  MEMORY[0x28223BE20](v16);
  v89 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGGMd);
  MEMORY[0x28223BE20](v18);
  v23.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v98 = v1;
  v24 = *(v1 + 40);
  v25 = *(v24 + 32);
  if (v25)
  {
    v76 = v13;
    v97 = &v71 - v21;
    v77 = v20;
    v78 = v22;
    v79 = v8;
    v80 = v6;
    v85 = v4;
    v86 = v3;
    v87 = a1;
    type metadata accessor for MainActor();
    swift_retain_n();
    v26 = static MainActor.shared.getter();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;

    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v28;
    v30[4] = v24;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    Binding.init(get:set:)();

    v32 = v100;
    v31 = v101;
    v33 = v102;
    v34 = *(v24 + 32);
    if (v34)
    {
      swift_retain_n();
      v35 = static MainActor.shared.getter();
      v84 = v33;
      v36 = v35;
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v28;
      v37[4] = v34;

      v38 = static MainActor.shared.getter();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v28;
      v39[4] = v34;
      Binding.init(get:set:)();

      v40 = v100;
      v41 = v101;
      v71 = v102;
      v82 = v103;
      v81 = v32;
      v100 = v32;
      v101 = v31;
      v83 = v31;
      v102 = v33;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMd);
      MEMORY[0x20F30B100](&v99, v42);
      v43 = v99;
      v73 = v99;
      v72 = static VerticalAlignment.center.getter();
      v44 = v97;
      closure #1 in IntervalStepEditViewPhone.body.getter(v43, v97);
      v45 = v77;
      v46 = v44 + *(v77 + 52);
      WorkoutStep.stepType.getter();
      v47 = StepType.displayString.getter();
      v49 = v48;
      (*(v88 + 8))(v15, v76);
      v100 = v47;
      v101 = v49;
      lazy protocol witness table accessor for type String and conformance String();
      v75 = v40;

      v74 = v41;

      v50 = v89;
      TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
      v51 = v92;
      static WritingToolsBehavior.disabled.getter();
      lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>, &_s7SwiftUI9TextFieldVyAA0C0VGMd);
      v52 = v91;
      View.writingToolsBehavior(_:)();
      (*(v93 + 8))(v51, v94);
      (*(v90 + 8))(v50, v52);
      KeyPath = swift_getKeyPath();
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
      v57 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20writingToolsBehavioryQrAA07WritinggH0VFQOyAA9TextFieldVyAA0J0VG_Qo_AA015_EnvironmentKeyI8ModifierVySSSgGGMd) + 36));
      *v57 = KeyPath;
      v57[1] = v54;
      v57[2] = v56;
      *(v44 + *(v45 + 56)) = 0x4022000000000000;
      *(v44 + *(v45 + 60)) = v72;
      v58 = v96;
      v59 = v73;
      closure #3 in IntervalStepEditViewPhone.body.getter(v98, v81, v83, v84, v73, v25, v96);
      LOBYTE(v54) = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v60 = v58 + *(v95 + 36);
      *v60 = v54;
      *(v60 + 8) = v61;
      *(v60 + 16) = v62;
      *(v60 + 24) = v63;
      *(v60 + 32) = v64;
      *(v60 + 40) = 0;
      v65 = v78;
      outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v44, v78, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGGMd);
      v66 = v79;
      outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v58, v79, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA0G0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V11WorkoutCore8StepTypeOAA7ForEachVySayARGAriAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ARQo_GG_AA09SegmentedjI0VQo_Sg_AiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyACyAyA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAMyAYSo21NLSessionActivityGoalCATySayA21_GA21_AiAEAV_AWQrqd___SbtSHRd__lFQOyACyAiAE05labelI0yQrqd__AA05LabelI0Rd__lFQOyAA5LabelVyAyA5ImageVG_AA014TitleOnlyLabelI0VQo_A16_G_A21_Qo_GGA16_GAA0Z18AttachmentModifierVGtGG_Qo_AA012_ConditionalD0VyA45_yAGy0lB0016SwimmingDistanceJ0V_A46_04TimeJ0VtGA46_08DistanceJ0VGA45_yA50_A46_06EnergyJ0VGGSgA46_12AlertsButtonVSgACyAA6ButtonVyAYGA16_GSgA65_SgtGGAA14_PaddingLayoutVGMd);
      v67 = v80;
      outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v65, v80, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGGMd);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGG_AFyAD5GroupVyAD05TupleG0VyAxDE11pickerStyleyQrqd__AD11PickerStyleRd__lFQOyAD6PickerVyAD05EmptyG0V0A4Core8StepTypeOAD7ForEachVySayA22_GA22_AxDE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA3__A22_Qo_GG_AD20SegmentedPickerStyleVQo_Sg_AxDE20accessibilityElement8childrenQrAD0q5ChildU0V_tFQOyAD6HStackVyA13_yAFyA3_ARG_AD6SpacerVAFyAFyA17_yA3_So21NLSessionActivityGoalCA24_ySayA45_GA45_AxDEA26__A27_Qrqd___SbtSHRd__lFQOyAFyAxDE10labelStyleyQrqd__AD10LabelStyleRd__lFQOyAD5LabelVyA3_AHG_AD19TitleOnlyLabelStyleVQo_ARG_A45_Qo_GGARGAUGtGG_Qo_AD012_ConditionalF0VyA65_yA13_yAA22SwimmingDistancePickerV_AA10TimePickerVtGAA14DistancePickerVGA65_yA69_AA12EnergyPickerVGGSgAA12AlertsButtonVSgAFyAD6ButtonVyA3_GARGSgA84_SgtGGAD14_PaddingLayoutVGtMd);
      outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v66, v67 + *(v68 + 48), &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA0G0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V11WorkoutCore8StepTypeOAA7ForEachVySayARGAriAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ARQo_GG_AA09SegmentedjI0VQo_Sg_AiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyACyAyA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAMyAYSo21NLSessionActivityGoalCATySayA21_GA21_AiAEAV_AWQrqd___SbtSHRd__lFQOyACyAiAE05labelI0yQrqd__AA05LabelI0Rd__lFQOyAA5LabelVyAyA5ImageVG_AA014TitleOnlyLabelI0VQo_A16_G_A21_Qo_GGA16_GAA0Z18AttachmentModifierVGtGG_Qo_AA012_ConditionalD0VyA45_yAGy0lB0016SwimmingDistanceJ0V_A46_04TimeJ0VtGA46_08DistanceJ0VGA45_yA50_A46_06EnergyJ0VGGSgA46_12AlertsButtonVSgACyAA6ButtonVyAYGA16_GSgA65_SgtGGAA14_PaddingLayoutVGMd);

      outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v58, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA0G0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V11WorkoutCore8StepTypeOAA7ForEachVySayARGAriAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ARQo_GG_AA09SegmentedjI0VQo_Sg_AiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyACyAyA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAMyAYSo21NLSessionActivityGoalCATySayA21_GA21_AiAEAV_AWQrqd___SbtSHRd__lFQOyACyAiAE05labelI0yQrqd__AA05LabelI0Rd__lFQOyAA5LabelVyAyA5ImageVG_AA014TitleOnlyLabelI0VQo_A16_G_A21_Qo_GGA16_GAA0Z18AttachmentModifierVGtGG_Qo_AA012_ConditionalD0VyA45_yAGy0lB0016SwimmingDistanceJ0V_A46_04TimeJ0VtGA46_08DistanceJ0VGA45_yA50_A46_06EnergyJ0VGGSgA46_12AlertsButtonVSgACyAA6ButtonVyAYGA16_GSgA65_SgtGGAA14_PaddingLayoutVGMd);
      outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v97, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGGMd);
      outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v66, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA0G0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V11WorkoutCore8StepTypeOAA7ForEachVySayARGAriAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ARQo_GG_AA09SegmentedjI0VQo_Sg_AiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAGyACyAyA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAMyAYSo21NLSessionActivityGoalCATySayA21_GA21_AiAEAV_AWQrqd___SbtSHRd__lFQOyACyAiAE05labelI0yQrqd__AA05LabelI0Rd__lFQOyAA5LabelVyAyA5ImageVG_AA014TitleOnlyLabelI0VQo_A16_G_A21_Qo_GGA16_GAA0Z18AttachmentModifierVGtGG_Qo_AA012_ConditionalD0VyA45_yAGy0lB0016SwimmingDistanceJ0V_A46_04TimeJ0VtGA46_08DistanceJ0VGA45_yA50_A46_06EnergyJ0VGGSgA46_12AlertsButtonVSgACyAA6ButtonVyAYGA16_GSgA65_SgtGGAA14_PaddingLayoutVGMd);
      outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v65, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAD023AccessibilityAttachmentN0VGAFyAD0G0PADE20writingToolsBehavioryQrAD0mtU0VFQOyAD9TextFieldVyAD0V0VG_Qo_AJySSSgGGGMd);
      a1 = v87;
      outlined init with take of TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>(v67, v87, &_s7SwiftUI9TupleViewVy07WorkoutB0030AlignedLeadingAccessoryContentD0VyAA08ModifiedI0VyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGALyAA5ColorVSgGGAA023AccessibilityAttachmentO0VGAHyAA0D0PAAE20writingToolsBehavioryQrAA0nuV0VFQOyAA9TextFieldVyAA0W0VG_Qo_ALySSSgGGG_AHyAA5GroupVyACyAzAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA05EmptyD0V0E4Core8StepTypeOAA7ForEachVySayA22_GA22_AzAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA5__A22_Qo_GG_AA20SegmentedPickerStyleVQo_Sg_AzAE20accessibilityElement8childrenQrAA0r5ChildV0V_tFQOyAA6HStackVyACyAHyA5_ATG_AA6SpacerVAHyAHyA17_yA5_So21NLSessionActivityGoalCA24_ySayA45_GA45_AzAEA26__A27_Qrqd___SbtSHRd__lFQOyAHyAzAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyA5_AJG_AA19TitleOnlyLabelStyleVQo_ATG_A45_Qo_GGATGAWGtGG_Qo_AA012_ConditionalI0VyA65_yACyAD22SwimmingDistancePickerV_AD10TimePickerVtGAD14DistancePickerVGA65_yA69_AD12EnergyPickerVGGSgAD12AlertsButtonVSgAHyAA6ButtonVyA5_GATGSgA84_SgtGGAA14_PaddingLayoutVGtGMd);
      v69 = 0;
    }

    else
    {

      v69 = 1;
      a1 = v87;
    }

    v4 = v85;
    v3 = v86;
  }

  else
  {
    v69 = 1;
  }

  return (*(v4 + 56))(a1, v69, 1, v3, v23);
}

uint64_t closure #1 in IntervalStepEditViewPhone.body.getter@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v27);
  v13 = &v25 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == *MEMORY[0x277D7E710] || v14 == *MEMORY[0x277D7E708] || v14 == *MEMORY[0x277D7E718] || v14 == *MEMORY[0x277D7E720])
  {
    (*(v3 + 8))(v8, v2);
    v15 = Image.init(_internalSystemName:)();
    v16 = (v11 + *(v9 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v18 = *MEMORY[0x277CE1050];
    v19 = type metadata accessor for Image.Scale();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v11 = v15;
    v20 = v26;
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    }

    else
    {
      _HKWorkoutGoalType.color.getter([v20 goalTypeIdentifier]);
    }

    v21 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v11, v13, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    v23 = &v13[*(v27 + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    return outlined destroy of Binding<StepType>?(v13, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v298 = a6;
  *&v315[8] = a5;
  v320 = a4;
  v321 = a2;
  v322 = a3;
  v310 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v311 = &v288 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v330 = &v288 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v292 = &v288 - v13;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v309 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v291 = &v288 - v14;
  v15 = type metadata accessor for StepType();
  v318 = *(v15 - 8);
  v319 = v15;
  MEMORY[0x28223BE20](v15);
  v307 = &v288 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v306 = &v288 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v329 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v334 = &v288 - v22;
  v316 = type metadata accessor for AlertsButton();
  v308 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v288 = (&v288 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12AlertsButtonVSgMd);
  MEMORY[0x28223BE20](v24 - 8);
  v328 = &v288 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v336 = &v288 - v27;
  v301 = type metadata accessor for DistancePicker();
  MEMORY[0x28223BE20](v301);
  v289 = (&v288 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v290 = &v288 - v30;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AH04TimeK0VtGAH0jK0VGACyAlH06EnergyK0VG_GMd);
  MEMORY[0x28223BE20](v303);
  v305 = (&v288 - v31);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AH04TimeK0VtGAH0jK0V_GMd);
  MEMORY[0x28223BE20](v299);
  v300 = (&v288 - v32);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
  MEMORY[0x28223BE20](v304);
  v302 = &v288 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGSgMd);
  MEMORY[0x28223BE20](v34 - 8);
  v333 = &v288 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v332 = &v288 - v37;
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v314 = *(v38 - 8);
  *v315 = v38;
  MEMORY[0x28223BE20](v38);
  v313 = &v288 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAA6PickerVyAISo21NLSessionActivityGoalCAA7ForEachVySayAVGAvA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyA_AAE10labelStyleyQrqd__AA05LabelY0Rd__lFQOyAA0Z0VyAiA5ImageVG_AA09TitleOnlyzY0VQo_AOG_AVQo_GGAOGAA023AccessibilityAttachmentL0VGtGGMd);
  MEMORY[0x28223BE20](v312);
  v41 = &v288 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAMyAMyAA6PickerVyAOSo21NLSessionActivityGoalCAA7ForEachVySayA0_GA0_AcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAMyAcAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyAoA5ImageVG_AA19TitleOnlyLabelStyleVQo_AUG_A0_Qo_GGAUGAA0g10AttachmentR0VGtGG_Qo_Md);
  v326 = *(v42 - 8);
  v327 = v42;
  MEMORY[0x28223BE20](v42);
  v325 = &v288 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v335 = &v288 - v45;
  v46 = type metadata accessor for SegmentedPickerStyle();
  v296 = *(v46 - 8);
  v297 = v46;
  MEMORY[0x28223BE20](v46);
  v295 = &v288 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore8StepTypeOAA7ForEachVySayAHGAhA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_GGMd);
  v293 = *(v48 - 8);
  v294 = v48;
  MEMORY[0x28223BE20](v48);
  v50 = &v288 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGSgMd);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v288 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v288 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v288 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_SgMd);
  MEMORY[0x28223BE20](v61 - 8);
  v324 = &v288 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v65 = &v288 - v64;
  v331 = a1;
  v337 = *(a1 + 40);
  IntervalStepEditViewModel.bindingStepType.getter(v53);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    outlined destroy of Binding<StepType>?(v53, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGSgMd);
    v66 = 1;
  }

  else
  {
    outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v53, v60, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v60, v57, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_GMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
    lazy protocol witness table accessor for type ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    Picker.init(selection:label:content:)();
    v67 = v295;
    SegmentedPickerStyle.init()();
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, StepType, ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore8StepTypeOAA7ForEachVySayAHGAhA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_GGMd);
    v68 = v294;
    v69 = v297;
    View.pickerStyle<A>(_:)();
    (*(v296 + 8))(v67, v69);
    (*(v293 + 8))(v50, v68);
    outlined destroy of Binding<StepType>?(v60, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
    v66 = 0;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_Md);
  (*(*(v70 - 8) + 56))(v65, v66, 1, v70);
  *v41 = static VerticalAlignment.center.getter();
  *(v41 + 1) = 0;
  v41[16] = 1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAKyAKyAA6PickerVyAMSo21NLSessionActivityGoalCAA7ForEachVySayAZGAzA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAKyA3_AAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyAmA5ImageVG_AA19TitleOnlyLabelStyleVQo_ASG_AZQo_GGASGAA023AccessibilityAttachmentO0VGtGGMd);
  v72 = v331;
  v73 = *&v315[8];
  closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter(v321, v322, v320, v331, *&v315[8], &v41[*(v71 + 44)]);
  v74 = v313;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAA6PickerVyAISo21NLSessionActivityGoalCAA7ForEachVySayAVGAvA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyA_AAE10labelStyleyQrqd__AA05LabelY0Rd__lFQOyAA0Z0VyAiA5ImageVG_AA09TitleOnlyzY0VQo_AOG_AVQo_GGAOGAA023AccessibilityAttachmentL0VGtGGMd);
  View.accessibilityElement(children:)();
  v314[1](v74, *v315);
  outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v41, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAA6PickerVyAISo21NLSessionActivityGoalCAA7ForEachVySayAVGAvA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyA_AAE10labelStyleyQrqd__AA05LabelY0Rd__lFQOyAA0Z0VyAiA5ImageVG_AA09TitleOnlyzY0VQo_AOG_AVQo_GGAOGAA023AccessibilityAttachmentL0VGtGGMd);
  v75 = NLSessionActivityGoal.isTimeAndDistanceGoal()();
  v323 = v65;
  if (v75)
  {
    v76 = *(v337 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
    type metadata accessor for MainActor();
    v314 = v76;
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v77 = static MainActor.shared.getter();
    v78 = swift_allocObject();
    v79 = MEMORY[0x277D85700];
    *(v78 + 16) = v77;
    *(v78 + 24) = v79;
    v80 = *(v72 + 48);
    *(v78 + 64) = *(v72 + 32);
    *(v78 + 80) = v80;
    *(v78 + 96) = *(v72 + 64);
    v81 = *(v72 + 16);
    *(v78 + 32) = *v72;
    *(v78 + 48) = v81;
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v82 = static MainActor.shared.getter();
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = v79;
    v84 = *(v72 + 48);
    *(v83 + 64) = *(v72 + 32);
    *(v83 + 80) = v84;
    *(v83 + 96) = *(v72 + 64);
    v85 = *(v72 + 16);
    *(v83 + 32) = *v72;
    *(v83 + 48) = v85;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for HKQuantity);
    Binding.init(get:set:)();
    v86 = v353[0];
    v87 = *&v353[1];
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v88 = static MainActor.shared.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v79;
    v90 = *(v72 + 48);
    *(v89 + 64) = *(v72 + 32);
    *(v89 + 80) = v90;
    v91 = *(v72 + 64);
    v92 = *(v72 + 16);
    *(v89 + 32) = *v72;
    *(v89 + 48) = v92;
    *(v89 + 96) = v91;
    *(v89 + 104) = 1;
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v93 = static MainActor.shared.getter();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v79;
    v95 = *(v72 + 48);
    *(v94 + 64) = *(v72 + 32);
    *(v94 + 80) = v95;
    v96 = *(v72 + 64);
    v97 = *(v72 + 16);
    *(v94 + 32) = *v72;
    *(v94 + 48) = v97;
    *(v94 + 96) = v96;
    *(v94 + 104) = 1;
    Binding.init(get:set:)();
    v98 = v353[0];
    v99 = LOBYTE(v353[1]);
    v100 = [objc_opt_self() distanceColors];
    if (v100)
    {
      v101 = v100;
      LODWORD(v312) = v99;
      v313 = *(&v98 + 1);
      *&v315[8] = v98;
      v102 = [v100 nonGradientTextColor];

      if (v102)
      {
        v103 = Color.init(uiColor:)();
        type metadata accessor for SwimmingDistancePickerViewModel();
        swift_allocObject();
        v104 = v314;
        *v315 = specialized SwimmingDistancePickerViewModel.init(formattingManager:lapLength:tintColor:)(v314, v86, *(&v86 + 1), v87, v103);

        v105 = v331;
        outlined init with copy of IntervalStepEditViewPhone(v331, v353);
        v106 = static MainActor.shared.getter();
        v107 = swift_allocObject();
        *(v107 + 16) = v106;
        v108 = MEMORY[0x277D85700];
        *(v107 + 24) = MEMORY[0x277D85700];
        v109 = *(v105 + 48);
        *(v107 + 64) = *(v105 + 32);
        *(v107 + 80) = v109;
        v110 = *(v105 + 64);
        v111 = *(v105 + 16);
        *(v107 + 32) = *v105;
        *(v107 + 48) = v111;
        *(v107 + 96) = v110;
        *(v107 + 104) = 2;
        outlined init with copy of IntervalStepEditViewPhone(v105, v353);
        v112 = static MainActor.shared.getter();
        v113 = swift_allocObject();
        *(v113 + 16) = v112;
        *(v113 + 24) = v108;
        v114 = *(v105 + 48);
        *(v113 + 64) = *(v105 + 32);
        *(v113 + 80) = v114;
        v115 = *(v105 + 64);
        v116 = *(v105 + 16);
        *(v113 + 32) = *v105;
        *(v113 + 48) = v116;
        *(v113 + 96) = v115;
        *(v113 + 104) = 2;
        Binding.init(get:set:)();
        v117 = v353[0];
        v118 = v353[1];
        type metadata accessor for TimePickerViewModel();
        swift_allocObject();
        v119 = v321;

        v120 = v322;

        *&v351 = TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v104, v119, v120, v320, 1, 1, 0, 1, 0.0);

        State.init(wrappedValue:)();

        v344[0] = v353[0];
        v344[1] = v117;
        LOBYTE(v345) = v118;
        DWORD1(v345) = *(v353 + 3);
        *(&v345 + 1) = v353[0];
        BYTE8(v345) = 0;
        *(&v345 + 9) = v351;
        HIDWORD(v345) = *(&v351 + 3);
        v347 = 0;
        v346 = 0;
        v349 = 0;
        v348 = 0;
        v357[2] = v345;
        memset(&v357[3], 0, 25);
        v357[0] = v353[0];
        v357[1] = v117;
        v350[2] = v345;
        memset(&v350[3], 0, 25);
        v350[0] = v353[0];
        v350[1] = v117;
        *(&v343[1] + 7) = v117;
        *(&v343[2] + 7) = v345;
        *(&v343[3] + 7) = 0u;
        v343[4] = 0u;
        *(v343 + 7) = v353[0];
        v351 = *v315;
        *&v352[0] = v313;
        BYTE8(v352[0]) = v312;
        *(v352 + 9) = v343[0];
        *(&v352[4] + 9) = 0u;
        *(&v352[3] + 9) = v343[3];
        *(&v352[2] + 9) = v343[2];
        *(&v352[1] + 9) = v343[1];
        v353[0] = *v315;
        v353[1] = v352[0];
        *(v356 + 9) = 0u;
        v355[1] = v352[3];
        v356[0] = v352[4];
        v354 = v352[1];
        v355[0] = v352[2];

        outlined init with copy of TimePicker(v344, &v338);

        outlined init with copy of TimePicker(v350, &v338);
        outlined destroy of TimePicker(v357);

        v121 = v356[0];
        v122 = v300;
        v300[4] = v355[1];
        v122[5] = v121;
        *(v122 + 89) = *(v356 + 9);
        v123 = v353[1];
        *v122 = v353[0];
        v122[1] = v123;
        v124 = v355[0];
        v122[2] = v354;
        v122[3] = v124;
        swift_storeEnumTagMultiPayload();
        outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(&v351, &v338, &_s9WorkoutUI22SwimmingDistancePickerV_AA04TimeE0VtMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AD04TimeH0VtGMd);
        lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type TupleView<(SwimmingDistancePicker, TimePicker)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AD04TimeH0VtGMd);
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
        v125 = v302;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v125, v305, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010TimePickerVAD06EnergyG0VGMd);
        lazy protocol witness table accessor for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>();
        v126 = v332;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Binding<StepType>?(&v351, &_s9WorkoutUI22SwimmingDistancePickerV_AA04TimeE0VtMd);
        outlined destroy of TimePicker(v344);

        outlined destroy of Binding<StepType>?(v125, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGMd);
        (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
LABEL_8:
        v129 = v318;
        v128 = v319;
        v130 = v337;
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_41:
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if ([v73 goalTypeIdentifier] == 1)
  {
    v131 = *(v72 + 16);
    if (!v131)
    {
      goto LABEL_41;
    }

    v132 = v131;
    v133 = dispatch thunk of WorkoutConfiguration.activityType.getter();

    *&v315[8] = *(v337 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
    type metadata accessor for MainActor();
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v134 = static MainActor.shared.getter();
    v135 = swift_allocObject();
    v136 = MEMORY[0x277D85700];
    *(v135 + 16) = v134;
    *(v135 + 24) = v136;
    v137 = *(v72 + 48);
    *(v135 + 64) = *(v72 + 32);
    *(v135 + 80) = v137;
    v138 = *(v72 + 64);
    v139 = *(v72 + 16);
    *(v135 + 32) = *v72;
    *(v135 + 48) = v139;
    *(v135 + 96) = v138;
    *(v135 + 104) = 1;
    outlined init with copy of IntervalStepEditViewPhone(v72, v353);
    v140 = static MainActor.shared.getter();
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v136;
    v142 = *(v72 + 48);
    *(v141 + 64) = *(v72 + 32);
    *(v141 + 80) = v142;
    v143 = *(v72 + 64);
    v144 = *(v72 + 16);
    *(v141 + 32) = *v72;
    *(v141 + 48) = v144;
    *(v141 + 96) = v143;
    *(v141 + 104) = 1;
    Binding.init(get:set:)();
    v314 = *(&v353[0] + 1);
    *v315 = *&v353[0];
    LODWORD(v313) = LOBYTE(v353[1]);
    v145 = v289;
    *v289 = v133;
    *(v145 + 8) = 0;
    v145[3] = 0;
    v145[4] = 0;
    v145[2] = 0;
    *(v145 + 40) = 0;
    v146 = v321;

    v147 = v322;

    v148 = v320;
    v149 = static MainActor.shared.getter();
    v150 = swift_allocObject();
    v150[2] = v149;
    v150[3] = v136;
    v150[4] = v146;
    v150[5] = v147;
    v150[6] = v148;

    v151 = v148;
    v152 = static MainActor.shared.getter();
    v153 = swift_allocObject();
    v153[2] = v152;
    v153[3] = v136;
    v153[4] = v146;
    v153[5] = v147;
    v153[6] = v151;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    Binding.init(get:set:)();
    v154 = v353[0];
    v155 = *&v353[1];
    type metadata accessor for DistancePickerViewModel();
    swift_allocObject();

    v156 = v155;
    DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v154, *(&v154 + 1), v156, *&v315[8], 0, 0);
    v157 = v301;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
    Bindable<A>.init(wrappedValue:)();

    v158 = v145 + *(v157 + 28);
    v159 = v314;
    *v158 = *v315;
    *(v158 + 1) = v159;
    v158[16] = v313;
    v160 = v145;
    v161 = v290;
    outlined init with take of AlertsButton(v160, v290, type metadata accessor for DistancePicker);
    outlined init with copy of DistancePicker(v161, v300);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AD04TimeH0VtGMd);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type TupleView<(SwimmingDistancePicker, TimePicker)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AD04TimeH0VtGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    v162 = v302;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v162, v305, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010TimePickerVAD06EnergyG0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>();
    v163 = v332;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Binding<StepType>?(v162, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
    v164 = v161;
    v130 = v337;
    outlined destroy of DistancePicker(v164);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGMd);
    (*(*(v165 - 8) + 56))(v163, 0, 1, v165);
  }

  else
  {
    if ([v73 goalTypeIdentifier] == 2)
    {
      v130 = v337;
      *&v315[8] = *(v337 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
      type metadata accessor for MainActor();
      outlined init with copy of IntervalStepEditViewPhone(v72, v353);
      v166 = static MainActor.shared.getter();
      v167 = swift_allocObject();
      v168 = MEMORY[0x277D85700];
      *(v167 + 16) = v166;
      *(v167 + 24) = v168;
      v169 = *(v72 + 48);
      *(v167 + 64) = *(v72 + 32);
      *(v167 + 80) = v169;
      v170 = *(v72 + 64);
      v171 = *(v72 + 16);
      *(v167 + 32) = *v72;
      *(v167 + 48) = v171;
      *(v167 + 96) = v170;
      *(v167 + 104) = 2;
      outlined init with copy of IntervalStepEditViewPhone(v72, v353);
      v172 = static MainActor.shared.getter();
      v173 = swift_allocObject();
      *(v173 + 16) = v172;
      *(v173 + 24) = v168;
      v174 = *(v72 + 48);
      *(v173 + 64) = *(v72 + 32);
      *(v173 + 80) = v174;
      v175 = *(v72 + 64);
      v176 = *(v72 + 16);
      *(v173 + 32) = *v72;
      *(v173 + 48) = v176;
      *(v173 + 96) = v175;
      *(v173 + 104) = 2;
      Binding.init(get:set:)();
      v177 = v353[0];
      v178 = v353[1];
      type metadata accessor for TimePickerViewModel();
      swift_allocObject();
      v179 = v321;

      v180 = v322;

      v181 = v320;
      *&v351 = TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(*&v315[8], v179, v180, v181, 1, 1, 0, 1, 0.0);

      State.init(wrappedValue:)();

      v338 = v353[0];
      v339 = v177;
      LOBYTE(v340) = v178;
      DWORD1(v340) = *(v353 + 3);
      *(&v340 + 1) = v353[0];
      BYTE8(v340) = 0;
      *(&v340 + 9) = v351;
      HIDWORD(v340) = *(&v351 + 3);
      v341 = 0;
      memset(v342, 0, 17);
      v352[1] = v340;
      memset(&v352[2], 0, 26);
      v351 = v353[0];
      v352[0] = v177;
      LOBYTE(v343[0]) = 0;
      outlined init with copy of TimePicker(&v338, v353);
      lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
      lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
      _ConditionalContent<>.init(storage:)();
      v182 = v355[0];
      v183 = v305;
      v305[2] = v354;
      v183[3] = v182;
      *(v183 + 58) = *(v355 + 10);
      v184 = v353[1];
      *v183 = v353[0];
      v183[1] = v184;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010TimePickerVAD06EnergyG0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>();
      v185 = v332;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TimePicker(&v338);
    }

    else
    {
      if ([v73 goalTypeIdentifier] != 3)
      {
        v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGMd);
        (*(*(v287 - 8) + 56))(v332, 1, 1, v287);
        goto LABEL_8;
      }

      v130 = v337;
      *&v315[8] = *(v337 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
      type metadata accessor for MainActor();
      outlined init with copy of IntervalStepEditViewPhone(v72, v353);
      v186 = static MainActor.shared.getter();
      v187 = swift_allocObject();
      v188 = MEMORY[0x277D85700];
      *(v187 + 16) = v186;
      *(v187 + 24) = v188;
      v189 = *(v72 + 48);
      *(v187 + 64) = *(v72 + 32);
      *(v187 + 80) = v189;
      v190 = *(v72 + 64);
      v191 = *(v72 + 16);
      *(v187 + 32) = *v72;
      *(v187 + 48) = v191;
      *(v187 + 96) = v190;
      *(v187 + 104) = 3;
      outlined init with copy of IntervalStepEditViewPhone(v72, v353);
      v192 = static MainActor.shared.getter();
      v193 = swift_allocObject();
      *(v193 + 16) = v192;
      *(v193 + 24) = v188;
      v194 = *(v72 + 48);
      *(v193 + 64) = *(v72 + 32);
      *(v193 + 80) = v194;
      v195 = *(v72 + 64);
      v196 = *(v72 + 16);
      *(v193 + 32) = *v72;
      *(v193 + 48) = v196;
      *(v193 + 96) = v195;
      *(v193 + 104) = 3;
      Binding.init(get:set:)();
      v197 = v353[0];
      v198 = v353[1];
      type metadata accessor for EnergyPickerViewModel();
      swift_allocObject();
      v199 = v321;

      v200 = v322;

      v201 = v320;
      EnergyPickerViewModel.init(goal:formattingManager:lastWorkoutValue:)(v199, v200, v201, *&v315[8], 0);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel, type metadata accessor for EnergyPickerViewModel);
      *&v338 = ObservedObject.init(wrappedValue:)();
      *(&v338 + 1) = v202;
      v339 = v197;
      LOBYTE(v340) = v198;
      *(&v340 + 1) = v353[0];
      DWORD1(v340) = *(v353 + 3);
      BYTE8(v340) = 0;
      *(&v340 + 9) = v351;
      HIDWORD(v340) = *(&v351 + 3);
      v342[0] = 0;
      v342[1] = 0;
      v341 = 0;
      LOBYTE(v342[2]) = 1;
      v352[1] = v340;
      v352[2] = 0u;
      *(&v352[2] + 9) = *(v342 + 1);
      v351 = v338;
      v352[0] = v197;
      LOBYTE(v343[0]) = 1;
      BYTE9(v352[3]) = 1;
      outlined init with copy of EnergyPicker(&v338, v353);
      lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
      lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
      _ConditionalContent<>.init(storage:)();
      v203 = v355[0];
      v204 = v305;
      v305[2] = v354;
      v204[3] = v203;
      *(v204 + 58) = *(v355 + 10);
      v205 = v353[1];
      *v204 = v353[0];
      v204[1] = v205;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010TimePickerVAD06EnergyG0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>();
      v185 = v332;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of EnergyPicker(&v338);
    }

    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGMd);
    (*(*(v206 - 8) + 56))(v185, 0, 1, v206);
  }

  v129 = v318;
  v128 = v319;
LABEL_18:
  v207 = *(v130 + 32);
  v208 = v130;
  if (!v207)
  {
    v246 = 1;
    v247 = v331;
    goto LABEL_26;
  }

  type metadata accessor for MainActor();
  swift_retain_n();
  v209 = static MainActor.shared.getter();
  v210 = swift_allocObject();
  v211 = MEMORY[0x277D85700];
  v210[2] = v209;
  v210[3] = v211;
  v210[4] = v207;

  v212 = static MainActor.shared.getter();
  v213 = swift_allocObject();
  v213[2] = v212;
  v213[3] = v211;
  v213[4] = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneCGMd);
  Binding.init(get:set:)();

  v214 = v353[0];
  v215 = *&v353[1];
  v216 = *(v208 + 32);
  if (!v216)
  {

    v247 = v331;
LABEL_25:

    v246 = 1;
    goto LABEL_26;
  }

  swift_retain_n();
  v217 = static MainActor.shared.getter();
  v218 = swift_allocObject();
  v218[2] = v217;
  v218[3] = v211;
  v218[4] = v216;

  v219 = static MainActor.shared.getter();
  v220 = swift_allocObject();
  v220[2] = v219;
  v220[3] = v211;
  v220[4] = v216;
  type metadata accessor for HeartRateTargetZone();
  v208 = v337;
  Binding.init(get:set:)();

  v221 = v353[0];
  v322 = *&v353[1];
  v222 = *(v208 + 32);
  if (!v222)
  {

    v247 = v331;
    v129 = v318;
    v128 = v319;
    goto LABEL_25;
  }

  swift_retain_n();
  v223 = static MainActor.shared.getter();
  v321 = *(&v221 + 1);
  v224 = v223;
  v225 = swift_allocObject();
  v225[2] = v224;
  v225[3] = v211;
  v225[4] = v222;

  v226 = static MainActor.shared.getter();
  v227 = swift_allocObject();
  v227[2] = v226;
  v227[3] = v211;
  v227[4] = v222;
  type metadata accessor for PowerZonesAlertTargetZone();
  Binding.init(get:set:)();

  v320 = *&v353[0];
  *&v315[8] = *(v353 + 8);
  v314 = WorkoutStep.activityType.getter();
  v228 = *(v337 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
  *v315 = v221;
  v229 = v316;
  v230 = *(v316 + 28);
  v231 = *MEMORY[0x277D7E110];
  v232 = type metadata accessor for ConfigurationType();
  v233 = v288;
  (*(*(v232 - 8) + 104))(v288 + v230, v231, v232);
  v234 = *MEMORY[0x277D7E4B8];
  v235 = type metadata accessor for AlertConfigurationContext();
  (*(*(v235 - 8) + 104))(v233 + v230, v234, v235);
  v236 = *(v337 + 48);
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v237 = v228;
  *v233 = EnvironmentObject.init()();
  v233[1] = v238;
  v239 = v229[13];
  *&v351 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI27AlertConfigurationViewModelCSgMd);
  State.init(wrappedValue:)();
  *(v233 + v239) = v353[0];
  v240 = *v315;
  v233[2] = v314;
  v233[3] = v237;
  v208 = v337;
  v241 = v233 + v229[8];
  *v241 = v214;
  *(v241 + 2) = v215;
  v242 = (v233 + v229[9]);
  v244 = v321;
  v243 = v322;
  *v242 = v240;
  v242[1] = v244;
  v242[2] = v243;
  *(v233 + v229[11]) = 0;
  *(v233 + v229[12]) = v236;
  v245 = v233 + v229[10];
  *v245 = v320;
  *(v245 + 8) = *&v315[8];
  outlined init with take of AlertsButton(v233, v336, type metadata accessor for AlertsButton);
  v246 = 0;
  v247 = v331;
  v129 = v318;
  v128 = v319;
LABEL_26:
  v248 = 1;
  (*(v308 + 56))(v336, v246, 1, v316);
  v249 = MEMORY[0x277D7E718];
  v250 = MEMORY[0x277D7E720];
  if (*(v208 + 32))
  {

    v251 = v306;
    WorkoutStep.stepType.getter();

    v252 = (*(v129 + 88))(v251, v128);
    v248 = 1;
    if (v252 == *v249)
    {
      v253 = v334;
      v208 = v337;
    }

    else
    {
      v253 = v334;
      v208 = v337;
      if (v252 != *v250)
      {
        (*(v129 + 8))(v306, v128);
        v254 = v292;
        static ButtonRole.destructive.getter();
        v255 = type metadata accessor for ButtonRole();
        (*(*(v255 - 8) + 56))(v254, 0, 1, v255);
        v256 = swift_allocObject();
        v257 = *(v247 + 48);
        *(v256 + 48) = *(v247 + 32);
        *(v256 + 64) = v257;
        v258 = *(v247 + 64);
        v259 = *(v247 + 16);
        *(v256 + 16) = *v247;
        *(v256 + 32) = v259;
        v260 = v298;
        *(v256 + 80) = v258;
        *(v256 + 88) = v260;
        outlined init with copy of IntervalStepEditViewPhone(v247, v353);

        v261 = v291;
        Button.init(role:action:label:)();
        v262 = static Color.red.getter();
        KeyPath = swift_getKeyPath();
        v264 = &v261[*(v317 + 36)];
        *v264 = KeyPath;
        v264[1] = v262;
        v265 = v261;
        v208 = v337;
        outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v265, v253, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
        v248 = 0;
      }
    }
  }

  else
  {
    v253 = v334;
  }

  (*(v309 + 56))(v253, v248, 1, v317);
  if (!*(v208 + 32) || (, v266 = v307, WorkoutStep.stepType.getter(), , v267 = (*(v129 + 88))(v266, v128), v267 == *v249) || v267 == *v250)
  {
    v270 = swift_allocObject();
    v271 = *(v247 + 48);
    *(v270 + 48) = *(v247 + 32);
    *(v270 + 64) = v271;
    *(v270 + 80) = *(v247 + 64);
    v272 = *(v247 + 16);
    *(v270 + 16) = *v247;
    *(v270 + 32) = v272;
    outlined init with copy of IntervalStepEditViewPhone(v247, v353);
    v269 = v330;
    Button.init(action:label:)();
    v268 = 0;
  }

  else
  {
    (*(v129 + 8))(v307, v128);
    v268 = 1;
    v269 = v330;
  }

  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  (*(*(v273 - 8) + 56))(v269, v268, 1, v273);
  v274 = v324;
  outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v323, v324, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_SgMd);
  v275 = v325;
  v276 = *(v326 + 16);
  v276(v325, v335, v327);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v332, v333, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGSgMd);
  v277 = v328;
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v336, v328, &_s9WorkoutUI12AlertsButtonVSgMd);
  v278 = v329;
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v334, v329, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  v279 = v269;
  v280 = v311;
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v279, v311, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v281 = v274;
  v282 = v310;
  outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v281, v310, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_SgMd);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_Sg_AcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAsA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVA8_yA8_yAGyASSo21NLSessionActivityGoalCANySayA19_GA19_AcAEAP_AQQrqd___SbtSHRd__lFQOyA8_yAcAE05labelE0yQrqd__AA05LabelE0Rd__lFQOyAA5LabelVyAsA5ImageVG_AA014TitleOnlyLabelE0VQo_A14_G_A19_Qo_GGA14_GAA0V18AttachmentModifierVGtGG_Qo_AA19_ConditionalContentVyA43_yA6_y0hB0016SwimmingDistanceF0V_A44_04TimeF0VtGA44_08DistanceF0VGA43_yA48_A44_06EnergyF0VGGSgA44_12AlertsButtonVSgA8_yAA6ButtonVyASGA14_GSgA63_SgtMd);
  v284 = v327;
  v276((v282 + v283[12]), v275, v327);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v333, v282 + v283[16], &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGSgMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v277, v282 + v283[20], &_s9WorkoutUI12AlertsButtonVSgMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v278, v282 + v283[24], &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v280, v282 + v283[28], &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Binding<StepType>?(v330, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Binding<StepType>?(v334, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  outlined destroy of Binding<StepType>?(v336, &_s9WorkoutUI12AlertsButtonVSgMd);
  outlined destroy of Binding<StepType>?(v332, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGSgMd);
  v285 = *(v326 + 8);
  v285(v335, v284);
  outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v323, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_SgMd);
  outlined destroy of Binding<StepType>?(v280, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Binding<StepType>?(v329, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  outlined destroy of Binding<StepType>?(v328, &_s9WorkoutUI12AlertsButtonVSgMd);
  outlined destroy of Binding<StepType>?(v333, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGACyAjF06EnergyJ0VGGSgMd);
  v285(v325, v284);
  return outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v324, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V11WorkoutCore8StepTypeOAA7ForEachVySayALGAlcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ALQo_GG_AA09SegmentedfE0VQo_SgMd);
}

uint64_t closure #1 in closure #3 in IntervalStepEditViewPhone.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore8StepTypeOGMd);
  v0 = type metadata accessor for StepType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA80;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D7E710], v0);
  v6(v5 + v2, *MEMORY[0x277D7E708], v0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore8StepTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore8StepTypeOQo_Md);
  lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type [StepType] and conformance [A], &_sSay11WorkoutCore8StepTypeOGMd);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StepType.displayString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA24_TagTraitWritingModifierVy11WorkoutCore8StepTypeOGGMd) + 36);
  v12 = type metadata accessor for StepType();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore8StepTypeOGMd);
  *(v11 + *(result + 36)) = 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a4;
  v46 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GMd);
  MEMORY[0x28223BE20](v49);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GAA023AccessibilityAttachmentY0VGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = v37 - v14;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v42 = v17;
  v43 = v16;
  v44 = v18;
  v45 = v19;
  v41 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v38 = LocalizedStringKey.init(stringLiteral:)();
  v37[1] = v20;
  v37[0] = v21;
  v39 = v37;
  v52 = a1;
  v53 = v46;
  v54 = a3;
  MEMORY[0x28223BE20](v38);
  v22 = v48;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal);

  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo21NLSessionActivityGoalCGAeA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAhAE10labelStyleyQrqd__AA05LabelO0Rd__lFQOyAA0P0VyAA4TextVAA5ImageVG_AA09TitleOnlypO0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEQo_GMd);
  lazy protocol witness table accessor for type NLSessionActivityGoal and conformance NSObject();
  lazy protocol witness table accessor for type ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker<>.init(_:selection:content:)();
  v24 = swift_getKeyPath();
  v25 = &v10[*(v49 + 36)];
  *v25 = v24;
  v25[1] = 0;
  NLSessionActivityGoal.intervalDisplayNameShort(formattingManager:)(*(*(v22 + 40) + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager));
  v52 = v26;
  v53 = v27;
  lazy protocol witness table accessor for type ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v28 = v50;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v10, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GMd);
  v29 = v51;
  outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v28, v51, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GAA023AccessibilityAttachmentY0VGMd);
  v31 = v42;
  v30 = v43;
  *a6 = v43;
  *(a6 + 8) = v31;
  v32 = v44 & 1;
  *(a6 + 16) = v44 & 1;
  v33 = KeyPath;
  v34 = v41;
  *(a6 + 24) = v45;
  *(a6 + 32) = v33;
  *(a6 + 40) = v34;
  *(a6 + 48) = 0;
  *(a6 + 56) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyAA6PickerVyAESo21NLSessionActivityGoalCAA7ForEachVySayARGArA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAwAE10labelStyleyQrqd__AA05LabelW0Rd__lFQOyAA0X0VyAeA5ImageVG_AA09TitleOnlyxW0VQo_AKG_ARQo_GGAKGAA023AccessibilityAttachmentI0VGtMd);
  outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(v29, a6 + *(v35 + 64), &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GAA023AccessibilityAttachmentY0VGMd);
  outlined copy of Text.Storage(v30, v31, v32);

  outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v28, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GAA023AccessibilityAttachmentY0VGMd);
  outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(v29, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GAA023AccessibilityAttachmentY0VGMd);
  outlined consume of Text.Storage(v30, v31, v32);
}

uint64_t closure #1 in closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter(uint64_t a1, void *a2)
{
  v14[9] = IntervalStepEditViewModel.goalsForInterval.getter();
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  v6 = *(a1 + 64);
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 80) = v6;
  *(v4 + 88) = a2;
  outlined init with copy of IntervalStepEditViewPhone(a1, v14);
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo21NLSessionActivityGoalCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAcAE10labelStyleyQrqd__AA05LabelJ0Rd__lFQOyAA0K0VyAA4TextVAA5ImageVG_AA09TitleOnlykJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_So21NLSessionActivityGoalCQo_Md);
  lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type [NLSessionActivityGoal] and conformance [A], &_sSaySo21NLSessionActivityGoalCGMd);
  v9 = lazy protocol witness table accessor for type NLSessionActivityGoal and conformance NSObject();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v11 = _sSo21NLSessionActivityGoalCMaTm_2(255, &lazy cache variable for type metadata for NLSessionActivityGoal);
  v12 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v9;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

id closure #1 in closure #1 in closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a3;
  v28 = a2;
  v6 = type metadata accessor for TitleOnlyLabelStyle();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAcAE10labelStyleyQrqd__AA05LabelJ0Rd__lFQOyAA0K0VyAA4TextVAA5ImageVG_AA09TitleOnlykJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_So21NLSessionActivityGoalCQo_Md);
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *a1;
  v35 = v20;
  v36 = a2;
  v34 = v20;
  Label.init(title:icon:)();
  TitleOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40]);
  View.labelStyle<A>(_:)();
  (*(v31 + 8))(v8, v6);
  (*(v10 + 8))(v12, v9);
  v21 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v14 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  if (IntervalStepEditViewModel.isNewGoalType(_:)(v20))
  {
    v24 = v20;
  }

  else
  {
    v24 = v33;
  }

  v33 = v24;
  outlined init with take of TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>(v16, v19, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v25 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA09_TagTraitoP0VySo21NLSessionActivityGoalCGGMd) + 36)];
  *v25 = v33;
  v25[8] = 1;
  (*(v29 + 32))(v32, v19, v30);
  v26 = v33;

  return v26;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  NLSessionActivityGoal.intervalDisplayNameShort(formattingManager:)(*(*(a1 + 40) + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager));
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #3 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    [a1 goalTypeIdentifier];
    _HKWorkoutGoalType.symbolName.getter();
  }

  result = Image.init(_internalSystemName:)();
  *a2 = result;
  return result;
}

uint64_t closure #4 in closure #3 in IntervalStepEditViewPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #4 in closure #3 in IntervalStepEditViewPhone.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v55);
  v58 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v54 = &v44 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = *(a1 + 16);
  if (!v21)
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = v21;

  IntervalWorkoutConfiguration.removeStep(_:from:)();

  v48 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID;
  v49 = v22;
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v22 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, v8, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  v53 = v6;
  MEMORY[0x20F30B100](v6);
  v52 = v8;
  v24 = outlined destroy of Binding<StepType>?(v8, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x20F304900](v24);
  v25 = v56;
  v26 = v57;
  v46 = *(v57 + 56);
  v47 = v57 + 56;
  v46(v17, 0, 1, v56);
  v27 = *(v55 + 12);
  v28 = v58;
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v20, v58, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v17, v28 + v27, &_s10Foundation4UUIDVSgMd);
  v29 = *(v26 + 48);
  v30 = v28;
  v31 = v25;
  if (v29(v30, 1, v25) == 1)
  {
    outlined destroy of Binding<StepType>?(v17, &_s10Foundation4UUIDVSgMd);
    outlined destroy of Binding<StepType>?(v20, &_s10Foundation4UUIDVSgMd);
    v32 = v58;
    if (v29(v58 + v27, 1, v25) == 1)
    {
      outlined destroy of Binding<StepType>?(v32, &_s10Foundation4UUIDVSgMd);
LABEL_9:
      v42 = v51;
      v46(v51, 1, 1, v31);
      v43 = v52;
      outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v49 + v48, v52, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v42, v50, &_s10Foundation4UUIDVSgMd);
      Binding.wrappedValue.setter();
      outlined destroy of Binding<StepType>?(v43, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      v36 = v42;
      v35 = &_s10Foundation4UUIDVSgMd;
      return outlined destroy of Binding<StepType>?(v36, v35);
    }
  }

  else
  {
    v33 = v26;
    v55 = v17;
    v32 = v58;
    v34 = v54;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(v58, v54, &_s10Foundation4UUIDVSgMd);
    if (v29(v32 + v27, 1, v31) != 1)
    {
      v37 = v45;
      (*(v33 + 32))(v45, v32 + v27, v31);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v38 = v34;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v33 + 8);
      v40(v37, v31);
      outlined destroy of Binding<StepType>?(v55, &_s10Foundation4UUIDVSgMd);
      outlined destroy of Binding<StepType>?(v20, &_s10Foundation4UUIDVSgMd);
      v40(v38, v31);
      result = outlined destroy of Binding<StepType>?(v32, &_s10Foundation4UUIDVSgMd);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

    outlined destroy of Binding<StepType>?(v55, &_s10Foundation4UUIDVSgMd);
    outlined destroy of Binding<StepType>?(v20, &_s10Foundation4UUIDVSgMd);
    (*(v33 + 8))(v34, v31);
  }

  v35 = &_s10Foundation4UUIDVSg_ADtMd;
  v36 = v32;
  return outlined destroy of Binding<StepType>?(v36, v35);
}

uint64_t closure #5 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v24._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = 0x800000020CB975C0;
  v5._countAndFlagsBits = 0xD000000000000021;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v24);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v7);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = Text.accessibilityLabel<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  outlined consume of Text.Storage(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t closure #6 in closure #3 in IntervalStepEditViewPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #7 in closure #3 in IntervalStepEditViewPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v24._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = 0x800000020CB975F0;
  v5._countAndFlagsBits = 0xD000000000000012;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v24);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v7);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = Text.accessibilityLabel<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  outlined consume of Text.Storage(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

void closure #1 in IntervalStepEditViewPhone.swimmingDistanceGoalBinding.getter(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (*(v3 + 32))
  {

    v4 = WorkoutStep.goal.getter();

    v5 = [v4 requiredDistance];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [*(v3 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) unitManager];
  if (v6)
  {
    v7 = v6;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    v8 = static FIUIWorkoutActivityType.poolSwim.getter();
    v9 = [v7 userDistanceHKUnitForActivityType_];

    v5 = [objc_opt_self() quantityWithUnit:v9 doubleValue:100.0];
LABEL_5:
    *a2 = v5;
    return;
  }

  __break(1u);
}

void closure #2 in IntervalStepEditViewPhone.swimmingDistanceGoalBinding.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a4 + 40) + 32))
  {
    v4 = *a1;

    v5 = WorkoutStep.goal.getter();

    [v5 setRequiredDistance_];
    IntervalStepEditViewModel.setGoal(_:)(v5);
  }
}

uint64_t closure #1 in IntervalStepEditViewPhone.isEditing(goalType:)@<X0>(uint64_t a1@<X3>, BOOL *a2@<X8>)
{
  result = IntervalStepEditViewModel.isEditing.getter();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB025IntervalStepEditViewPhoneV011GoalEditingC033_21A67D557DA54F6C26F3A7FF490D916ALLOGMd);
    result = State.wrappedValue.getter();
    v5 = v6 == a1;
    if (v7)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t closure #2 in IntervalStepEditViewPhone.isEditing(goalType:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1)
  {
    v11 = *(a4 + 48);
    v12 = *(a4 + 64);
    *&v9 = a5;
    BYTE8(v9) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB025IntervalStepEditViewPhoneV011GoalEditingC033_21A67D557DA54F6C26F3A7FF490D916ALLOGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    v11 = *(a4 + 48);
    v12 = *(a4 + 64);
    v13 = v12;
    v9 = *(a4 + 48);
    v10 = *(a4 + 64);
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(&v13, &v7, &_s7SwiftUI11AnyLocationCy07WorkoutB025IntervalStepEditViewPhoneV16GoalEditingState33_21A67D557DA54F6C26F3A7FF490D916ALLOGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB025IntervalStepEditViewPhoneV011GoalEditingC033_21A67D557DA54F6C26F3A7FF490D916ALLOGMd);
    State.wrappedValue.getter();
    if ((v8 & 1) == 0 && v7 == a5)
    {
      v9 = v11;
      v10 = v12;
      v7 = 0;
      v8 = 1;
      State.wrappedValue.setter();
    }

    return outlined destroy of Binding<StepType>?(&v11, &_s7SwiftUI5StateVy07WorkoutB025IntervalStepEditViewPhoneV011GoalEditingC033_21A67D557DA54F6C26F3A7FF490D916ALLOGMd);
  }
}

uint64_t objectdestroyTm_29()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AF04TimeJ0VtGAF0iJ0VGMd);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type TupleView<(SwimmingDistancePicker, TimePicker)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB022SwimmingDistancePickerV_AD04TimeH0VtGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB010TimePickerVAD06EnergyG0VGMd);
    lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
    lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimePicker, EnergyPicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t outlined init with take of AlertsButton(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of DistancePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistancePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_GMd);
    type metadata accessor for StepType();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StepType], StepType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_2(uint64_t a1, unint64_t *a2)
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

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NLSessionActivityGoal and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NLSessionActivityGoal and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NLSessionActivityGoal and conformance NSObject)
  {
    _sSo21NLSessionActivityGoalCMaTm_2(255, &lazy cache variable for type metadata for NLSessionActivityGoal);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLSessionActivityGoal and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo21NLSessionActivityGoalCGAeA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAhAE10labelStyleyQrqd__AA05LabelO0Rd__lFQOyAA0P0VyAA4TextVAA5ImageVG_AA09TitleOnlypO0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    _sSo21NLSessionActivityGoalCMaTm_2(255, &lazy cache variable for type metadata for NLSessionActivityGoal);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NLSessionActivityGoal and conformance NSObject();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA09TitleOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    type metadata accessor for TitleOnlyLabelStyle();
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAIGAiA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAnAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAgA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIQo_GGA4_GMd);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextVSo21NLSessionActivityGoalCAA7ForEachVySayAGGAgA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAlAE10labelStyleyQrqd__AA05LabelQ0Rd__lFQOyAA0R0VyAeA5ImageVG_AA09TitleOnlyrQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGQo_GGMd);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, NLSessionActivityGoal, ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<StepType>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB0030AlignedLeadingAccessoryContentD0VyAA08ModifiedI0VyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGALyAA5ColorVSgGGAA023AccessibilityAttachmentO0VGAHyAA0D0PAAE20writingToolsBehavioryQrAA0nuV0VFQOyAA9TextFieldVyAA0W0VG_Qo_ALySSSgGGG_AHyAA5GroupVyACyAzAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA05EmptyD0V0E4Core8StepTypeOAA7ForEachVySayA22_GA22_AzAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA5__A22_Qo_GG_AA20SegmentedPickerStyleVQo_Sg_AzAE20accessibilityElement8childrenQrAA0r5ChildV0V_tFQOyAA6HStackVyACyAHyA5_ATG_AA6SpacerVAHyAHyA17_yA5_So21NLSessionActivityGoalCA24_ySayA45_GA45_AzAEA26__A27_Qrqd___SbtSHRd__lFQOyAHyAzAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyA5_AJG_AA19TitleOnlyLabelStyleVQo_ATG_A45_Qo_GGATGAWGtGG_Qo_AA012_ConditionalI0VyA65_yACyAD22SwimmingDistancePickerV_AD10TimePickerVtGAD14DistancePickerVGA65_yA69_AD12EnergyPickerVGGSgAD12AlertsButtonVSgAHyAA6ButtonVyA5_GATGSgA84_SgtGGAA14_PaddingLayoutVGtGSgMd);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(&lazy protocol witness table cache variable for type TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0030AlignedLeadingAccessoryContentD0VyAA08ModifiedI0VyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGALyAA5ColorVSgGGAA023AccessibilityAttachmentO0VGAHyAA0D0PAAE20writingToolsBehavioryQrAA0nuV0VFQOyAA9TextFieldVyAA0W0VG_Qo_ALySSSgGGG_AHyAA5GroupVyACyAzAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA05EmptyD0V0E4Core8StepTypeOAA7ForEachVySayA22_GA22_AzAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA5__A22_Qo_GG_AA20SegmentedPickerStyleVQo_Sg_AzAE20accessibilityElement8childrenQrAA0r5ChildV0V_tFQOyAA6HStackVyACyAHyA5_ATG_AA6SpacerVAHyAHyA17_yA5_So21NLSessionActivityGoalCA24_ySayA45_GA45_AzAEA26__A27_Qrqd___SbtSHRd__lFQOyAHyAzAE10labelStyleyQrqd__AA10LabelStyleRd__lFQOyAA5LabelVyA5_AJG_AA19TitleOnlyLabelStyleVQo_ATG_A45_Qo_GGATGAWGtGG_Qo_AA012_ConditionalI0VyA65_yACyAD22SwimmingDistancePickerV_AD10TimePickerVtGAD14DistancePickerVGA65_yA69_AD12EnergyPickerVGGSgAD12AlertsButtonVSgAHyAA6ButtonVyA5_GATGSgA84_SgtGGAA14_PaddingLayoutVGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>>, ModifiedContent<Group<TupleView<((<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, <<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<TupleView<(SwimmingDistancePicker, TimePicker)>, DistancePicker>, _ConditionalContent<TimePicker, EnergyPicker>>?, AlertsButton?, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>?, Button<Text>?)>>, _PaddingLayout>)>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>(unint64_t *a1, uint64_t *a2)
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

void one-time initialization function for cornerSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B2F8[v2];
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

  static IntervalPlatterConstants.cornerSize = *&v3;
}

{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B4B0[v2];
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

  static IntervalSecondPlatterConstants.cornerSize = *&v3;
}

void one-time initialization function for previewFontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B350[v2];
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

  static IntervalPlatterConstants.previewFontSize = *&v3;
}

void one-time initialization function for previewWidth()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B3A8[v2];
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

  static IntervalPlatterConstants.previewWidth = *&v3;
}

double one-time initialization function for previewPaddingFontOffset()
{
  if (one-time initialization token for previewFontSize != -1)
  {
    swift_once();
  }

  result = *&static IntervalPlatterConstants.previewFontSize + -10.5 + *&static IntervalPlatterConstants.previewFontSize + -10.5;
  *&static IntervalPlatterConstants.previewPaddingFontOffset = result;
  return result;
}

void one-time initialization function for stepViewMaxHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B400[v2];
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

  static IntervalPlatterConstants.stepViewMaxHeight = *&v3;
}

void one-time initialization function for goalIconFontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B458[v2];
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

  static IntervalPlatterConstants.goalIconFontSize = *&v3;
}

void one-time initialization function for stepNameFontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B508[v2];
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

  static IntervalSecondPlatterConstants.stepNameFontSize = *&v3;
}

void one-time initialization function for stepDetailFontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6B560[v2];
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

  static IntervalSecondPlatterConstants.stepDetailFontSize = *&v3;
}

double static IntervalPlatterConstants.cornerSize.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t getEnumTagSinglePayload for IntervalPlatterConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IntervalPlatterConstants(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type RoundedCorner and conformance RoundedCorner()
{
  result = lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner;
  if (!lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner;
  if (!lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner;
  if (!lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedCorner and conformance RoundedCorner);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedCorner(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedCorner(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>(unint64_t *a1, uint64_t *a2)
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

double protocol witness for Shape.path(in:) in conformance RoundedCorner@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  Path.init(_:)();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance RoundedCorner(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance RoundedCorner;
}

void protocol witness for Animatable.animatableData.modify in conformance RoundedCorner(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RoundedCorner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RoundedCorner and conformance RoundedCorner();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RoundedCorner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RoundedCorner and conformance RoundedCorner();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance RoundedCorner(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RoundedCorner and conformance RoundedCorner();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerPillView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerPillView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

id PacerPillView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v85 = type metadata accessor for AccessibilityChildBehavior();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
  MEMORY[0x28223BE20](v81);
  v4 = &v76 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA06_ShapeC0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K10TransitionVGG_Qo_Md);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v76 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGG_Qo_AA0i10AttachmentT0VGMd);
  MEMORY[0x28223BE20](v94);
  v82 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v76 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyACyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0G9ViewStyleOGGAA0I0VGALyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundM0VyAA06_ShapeN0VyAA16RoundedRectangleVAUGGGALyAA0D10TransitionVGGAA023AccessibilityAttachmentM0VGAGyAA0N0PAAE20accessibilityElement8childrenQrAA0X13ChildBehaviorV_tFQOyAGyAGyA3_yAA6CircleVAUGAZGA11_G_Qo_A14_G_GMd);
  MEMORY[0x28223BE20](v92);
  v93 = &v76 - v9;
  v10 = type metadata accessor for AccessibilityTraits();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGMd);
  MEMORY[0x28223BE20](v77);
  v13 = &v76 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGAA023AccessibilityAttachmentL0VGMd);
  MEMORY[0x28223BE20](v91);
  v78 = &v76 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v19 = v1[1];
  v21 = *(v1 + 16);
  v22 = *(v1 + 3);
  v23 = *(v1 + 4);
  if (*(v1 + 40) == 1)
  {
    if (*(v1 + 4))
    {
      goto LABEL_3;
    }

LABEL_9:
    *&v109 = v20;
    *(&v109 + 1) = v19;
    LOBYTE(v110) = v21;
    *(&v110 + 1) = v22;
    PacerViewConfiguration.text.getter(&v103);
    v114 = v105;
    v115 = v106;
    v116 = v107;
    LOWORD(v117) = v108;
    v112 = v103;
    v113 = v104;
    v96 = v20;
    v97 = v19;
    v98 = v21;
    v99 = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v100);
    v35 = *(&v102 + 1);

    KeyPath = swift_getKeyPath();
    *&v100 = v20;
    *(&v100 + 1) = v19;
    LOBYTE(v101) = v21;
    *(&v101 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v103);

    *&v109 = v20;
    *(&v109 + 1) = v19;
    LOBYTE(v110) = v21;
    *(&v110 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v100);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v100 = v20;
    *(&v100 + 1) = v19;
    LOBYTE(v101) = v21;
    *(&v101 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v103);
    v37 = *(&v103 + 1);

    v38 = v37 * 0.5;
    v39 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGMd) + 36)];
    v40 = *(type metadata accessor for RoundedRectangle() + 20);
    v41 = *MEMORY[0x277CE0118];
    v42 = type metadata accessor for RoundedCornerStyle();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = v38;
    v39[1] = v38;
    *&v100 = v20;
    *(&v100 + 1) = v19;
    LOBYTE(v101) = v21;
    *(&v101 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v103);
    v43 = v105;

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    *(v39 + *(v44 + 52)) = v43;
    *(v39 + *(v44 + 56)) = 256;
    v45 = static Alignment.center.getter();
    v47 = v46;
    v48 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd) + 36));
    *v48 = v45;
    v48[1] = v47;
    v49 = v116;
    *(v13 + 3) = v115;
    *(v13 + 4) = v49;
    v50 = v114;
    *(v13 + 1) = v113;
    *(v13 + 2) = v50;
    *v13 = v112;
    v51 = v109;
    *(v13 + 120) = v110;
    *(v13 + 136) = v111;
    *(v13 + 10) = v117;
    *(v13 + 11) = KeyPath;
    *(v13 + 12) = v35;
    *(v13 + 104) = v51;
    v52 = v77;
    v53 = &v13[*(v77 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    static ContentTransition.identity.getter();
    *v53 = swift_getKeyPath();
    v54 = v88;
    static AccessibilityTraits.updatesFrequently.getter();
    v55 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    v56 = v78;
    MEMORY[0x20F30A9C0](v54, v52, v55);
    (*(v89 + 8))(v54, v90);
    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>(v13, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>(v56, v93);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>(v56, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGAA023AccessibilityAttachmentL0VGMd);
  }

  static os_log_type_t.fault.getter();
  v34 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined consume of Environment<WorkoutViewStyle>.Content(v23, 0);
  (*(v16 + 8))(v18, v15);
  if (!v112)
  {
    goto LABEL_9;
  }

LABEL_3:
  *&v103 = v20;
  *(&v103 + 1) = v19;
  LOBYTE(v104) = v21;
  *(&v104 + 1) = v22;
  PacerViewConfiguration.pillConfiguration.getter(&v112);

  result = AXFormatFloatWithPercentage();
  if (result)
  {
    v25 = result;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v19 >= 0.0)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v29 = WorkoutUIBundle.super.isa;
      v75 = 0xE000000000000000;
      v31 = 0x800000020CB95360;
      v30 = 0xD00000000000001BLL;
      v32 = 0x617A696C61636F4CLL;
      v33 = 0xEB00000000656C62;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v29 = WorkoutUIBundle.super.isa;
      v75 = 0xE000000000000000;
      v30 = 0xD00000000000001CLL;
      v31 = 0x800000020CB953A0;
      v32 = 0x617A696C61636F4CLL;
      v33 = 0xEB00000000656C62;
    }

    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58 = 0;
    v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v30, *&v32, v29, v57, *(&v75 - 1));

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_20CB5DA80;
    *(v60 + 32) = v26;
    *(v60 + 40) = v28;
    *(v60 + 48) = v59;
    *&v112 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v61 = BidirectionalCollection<>.joined(separator:)();
    v63 = v62;

    *&v103 = v20;
    *(&v103 + 1) = v19;
    LOBYTE(v104) = v21;
    *(&v104 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v112);
    v64 = v114;

    *&v103 = v20;
    *(&v103 + 1) = v19;
    LOBYTE(v104) = v21;
    *(&v104 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v112);

    *&v100 = v20;
    *(&v100 + 1) = v19;
    LOBYTE(v101) = v21;
    *(&v101 + 1) = v22;
    PacerViewConfiguration.pillConfiguration.getter(&v103);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *(v118 + 6) = v100;
    *(&v118[1] + 6) = v101;
    *(&v118[2] + 6) = v102;
    v65 = v81;
    v66 = &v4[*(v81 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    static ContentTransition.identity.getter();
    *v66 = swift_getKeyPath();
    *v4 = v64;
    *(v4 + 4) = 256;
    v67 = v118[1];
    *(v4 + 10) = v118[0];
    *(v4 + 26) = v67;
    *(v4 + 42) = v118[2];
    *(v4 + 7) = *(&v118[2] + 14);
    v68 = v79;
    static AccessibilityChildBehavior.ignore.getter();
    v69 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    v70 = v80;
    View.accessibilityElement(children:)();
    (*(v83 + 8))(v68, v85);
    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>(v4, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
    *&v112 = v61;
    *(&v112 + 1) = v63;
    *&v103 = v65;
    *(&v103 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    v71 = v82;
    v72 = v86;
    View.accessibilityLabel<A>(_:)();
    (*(v84 + 8))(v70, v72);

    v73 = v88;
    static AccessibilityTraits.updatesFrequently.getter();
    v74 = v87;
    MEMORY[0x20F308AB0](v73, v94);
    (*(v89 + 8))(v73, v90);
    sub_20C67E1EC(v71);
    sub_20C67E254(v74, v93);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return sub_20C67E1EC(v74);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd);
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGAA023AccessibilityAttachmentL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>();
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text> and conformance <> _ConditionalContent<A, B>();
    _sSaySSGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _sSaySSGSayxGSKsWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGAA023AccessibilityAttachmentL0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyACyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAJyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundL0VyAA06_ShapeM0VyAA16RoundedRectangleVASGGGAJyAA0D10TransitionVGGAA023AccessibilityAttachmentL0VGAEyAA0M0PAAE20accessibilityElement8childrenQrAA0W13ChildBehaviorV_tFQOyAEyAEyA1_yAA6CircleVASGAXGA9_G_Qo_A12_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<ContentTransition>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaConfigurationRoomButtonWatch(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for MediaConfigurationRoomButtonWatch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double MediaConfigurationRoomButtonWatch.init(activityType:placement:)@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for ConfigurationNavigationModel();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *a3 = EnvironmentObject.init()();
  *(a3 + 8) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore30MediaPlaybackConfigurationItemCSgMd);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *(a3 + 48) = v9;
  *(a3 + 56) = *(&v9 + 1);
  State.init(wrappedValue:)();
  *(a3 + 64) = v9;
  *(a3 + 72) = *(&v9 + 1);
  *(a3 + 16) = a1;
  type metadata accessor for MediaPlaybackStore();
  v7 = a1;
  *(a3 + 24) = static MediaPlaybackStore.sharedInstance.getter();
  State.init(wrappedValue:)();

  result = *&v9;
  *(a3 + 32) = v9;
  *(a3 + 80) = v5;
  return result;
}

uint64_t MediaConfigurationRoomButtonWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36LazyNavigationDestinationViewBuilderVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26[-v4];
  v6 = v1[3];
  v31 = v1[2];
  v32 = v6;
  v33 = v1[4];
  v34 = *(v1 + 80);
  v7 = v1[1];
  v29 = *v1;
  v30 = v7;
  v8 = swift_allocObject();
  v9 = v1[3];
  *(v8 + 48) = v1[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v1[4];
  *(v8 + 96) = *(v1 + 80);
  v10 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  outlined init with copy of MediaConfigurationRoomButtonWatch(&v29, v28);
  UUID.init()();
  v11 = type metadata accessor for LazyNavigationDestinationViewBuilder();
  v12 = &v5[*(v11 + 20)];
  *v12 = partial apply for closure #1 in MediaConfigurationRoomButtonWatch.lazyBuilder.getter;
  v12[1] = v8;
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v27 = &v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAEy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAgEyAEyAA4TextVAA022_EnvironmentKeyWritingI0VyAA0Q9AlignmentOGGAN17HeaderHyphenationVGGATyAA5ColorVSgGGGSgMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>>? and conformance <A> A?();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type LazyNavigationDestinationViewBuilder and conformance LazyNavigationDestinationViewBuilder, type metadata accessor for LazyNavigationDestinationViewBuilder);
  NavigationLink<>.init<A>(value:label:)();
  v13 = swift_allocObject();
  v14 = v32;
  *(v13 + 48) = v31;
  *(v13 + 64) = v14;
  *(v13 + 80) = v33;
  *(v13 + 96) = v34;
  v15 = v30;
  *(v13 + 16) = v29;
  *(v13 + 32) = v15;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA012_ConditionalD0VyACyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAiCyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0S9AlignmentOGGAP17HeaderHyphenationVGGAVyAA5ColorVSgGGGSgs5NeverOGAA017_AppearanceActionK0VGMd) + 36));
  *v16 = partial apply for closure #2 in MediaConfigurationRoomButtonWatch.body.getter;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = 0;
  v17 = objc_opt_self();
  outlined init with copy of MediaConfigurationRoomButtonWatch(&v29, v28);
  v18 = [v17 defaultCenter];
  type metadata accessor for MediaPlaybackStore();
  v19 = static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVyAA14NavigationLinkVyAA012_ConditionalJ0VyAJyAJyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAJy07WorkoutB0023AlignedLeadingAccessoryjD0VyApJyAJyAA4TextVAA022_EnvironmentKeyWritingQ0VyAA0X9AlignmentOGGAW17HeaderHyphenationVGGA1_yAA5ColorVSgGGGSgs5NeverOGAA017_AppearanceActionQ0VGGMd);
  NSNotificationCenter.publisher(for:object:)();

  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 48) = v31;
  *(v21 + 64) = v22;
  *(v21 + 80) = v33;
  *(v21 + 96) = v34;
  v23 = v30;
  *(v21 + 16) = v29;
  *(v21 + 32) = v23;
  v24 = (a1 + *(v20 + 56));
  *v24 = partial apply for closure #3 in MediaConfigurationRoomButtonWatch.body.getter;
  v24[1] = v21;
  return outlined init with copy of MediaConfigurationRoomButtonWatch(&v29, v28);
}

uint64_t closure #1 in MediaConfigurationRoomButtonWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAGy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAiGyAGyAA4TextVAA022_EnvironmentKeyWritingJ0VyAA0R9AlignmentOGGAP17HeaderHyphenationVGGAVyAA5ColorVSgGG_GMd);
  MEMORY[0x28223BE20](v52);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  if (*(a1 + 80) == 2)
  {
    v56 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
    State.wrappedValue.getter();
    countAndFlagsBits = v55._countAndFlagsBits;
    if (v55._countAndFlagsBits)
    {
      dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
    }

    v54 = Image.init(_internalSystemName:)();
    v56 = *(a1 + 32);
    State.wrappedValue.getter();
    v17 = v55._countAndFlagsBits;
    if (v55._countAndFlagsBits && (v18 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter(), v17, (v18 & 1) != 0))
    {
      v19 = "MEDIA_PLAYBACK_OFF_AX_TITLE";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = WorkoutUIBundle.super.isa;
      v50 = 0xE000000000000000;
      v21 = 0xD000000000000017;
    }

    else
    {
      v19 = "ION_BUTTON_TITLE";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = WorkoutUIBundle.super.isa;
      v50 = 0xE000000000000000;
      v21 = 0xD00000000000001BLL;
    }

    v42 = v19 | 0x8000000000000000;
    v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v43.value._object = 0xEB00000000656C62;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v45 = 0;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, v43, v20, v44, *(&v50 - 1));

    v55 = v46;
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    v55 = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB033MediaConfigurationRoomButtonWatchV07LoadingC0OGMd);
    State.wrappedValue.getter();
    if (v54 == 2)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.99;
    }

    outlined init with take of ModifiedContent<Image, AccessibilityAttachmentModifier>(v7, v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    *&v10[*(v8 + 36)] = v47;
    outlined init with take of ModifiedContent<Image, AccessibilityAttachmentModifier>(v10, v13, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>(v13, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAD17HeaderHyphenationVGGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v48 = v53;
    _ConditionalContent<>.init(storage:)();
    _sSo8NSObjectCSgWOhTm_1(v13, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGMd);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAEy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAgEyAEyAA4TextVAA022_EnvironmentKeyWritingI0VyAA0Q9AlignmentOGGAN17HeaderHyphenationVGGATyAA5ColorVSgGGGMd);
    return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  }

  else
  {
    v15 = static VerticalAlignment.center.getter();
    v56 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
    State.wrappedValue.getter();
    v16 = v55._countAndFlagsBits;
    if (v55._countAndFlagsBits)
    {
      dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
    }

    v22 = Image.init(_internalSystemName:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = WorkoutUIBundle.super.isa;
    v57._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000020;
    v24._object = 0x800000020CB976C0;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v57);

    v55 = v27;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = Text.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    KeyPath = swift_getKeyPath();
    v36 = v32 & 1;
    LOBYTE(v55._countAndFlagsBits) = v32 & 1;
    v37 = static Color.white.getter();
    v38 = swift_getKeyPath();
    *v4 = v22;
    *(v4 + 1) = v28;
    *(v4 + 2) = v30;
    v4[24] = v36;
    *(v4 + 4) = v34;
    *(v4 + 5) = KeyPath;
    v4[48] = 0;
    *(v4 + 7) = 0x4022000000000000;
    *(v4 + 8) = v15;
    *(v4 + 9) = v38;
    *(v4 + 10) = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAD17HeaderHyphenationVGGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v39 = v53;
    _ConditionalContent<>.init(storage:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAEy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAgEyAEyAA4TextVAA022_EnvironmentKeyWritingI0VyAA0Q9AlignmentOGGAN17HeaderHyphenationVGGATyAA5ColorVSgGGGMd);
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }
}