double ScreenAssertionManager.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

Swift::Void __swiftcall ScreenAssertionManager.evaluateScreenAssertion(currentView:)(WorkoutUI::SessionCurrentView currentView)
{
  v2 = currentView;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*v2 == 3)
  {
    swift_beginAccess();
    outlined init with copy of Any?(v1 + 16, &v10);
    if (!v11)
    {
      outlined destroy of Any?(&v10);
      goto LABEL_10;
    }

    v7 = v1;
    outlined init with take of Any(&v10, v12);
    type metadata accessor for OS_dispatch_queue();
    *v6 = static OS_dispatch_queue.main.getter();
    (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
    v8 = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      if (one-time initialization token for shared == -1)
      {
LABEL_5:

        IdleTimerAssertion.releaseAssertion(_:)(v12);

        __swift_destroy_boxed_opaque_existential_0(v12);
        v1 = v7;
LABEL_10:
        memset(v12, 0, sizeof(v12));
        swift_beginAccess();
        outlined assign with take of Any?(v12, v1 + 16);
        swift_endAccess();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  ScreenAssertionManager.takeAssertionIfNeeded()();
}

Swift::Void __swiftcall ScreenAssertionManager.takeAssertionIfNeeded()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (([objc_opt_self() isRunningInStoreDemoMode] & 1) == 0)
  {
    swift_beginAccess();
    outlined init with copy of Any?(v0 + 16, v15);
    v12 = v15[3];
    outlined destroy of Any?(v15);
    if (v12)
    {
      return;
    }

    type metadata accessor for OS_dispatch_queue();
    *v8 = static OS_dispatch_queue.main.getter();
    (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
    v13 = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v8, v5);
    if (v13)
    {
      if (one-time initialization token for shared == -1)
      {
LABEL_8:

        IdleTimerAssertion.takeAssertion()(v15);

        swift_beginAccess();
        outlined assign with take of Any?(v15, v0 + 16);
        swift_endAccess();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_8;
  }

  static WOLog.devices.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20C66F000, v9, v10, "Running in store demo mode, do not take screen assertion to allow screen saver", v11, 2u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall ScreenAssertionManager.releaseAssertion()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  outlined init with copy of Any?(v0 + 16, &v8);
  if (!v9)
  {
    outlined destroy of Any?(&v8);
    goto LABEL_6;
  }

  outlined init with take of Any(&v8, v10);
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_8:
    swift_once();
  }

  IdleTimerAssertion.releaseAssertion(_:)(v10);

  __swift_destroy_boxed_opaque_existential_0(v10);
LABEL_6:
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  outlined assign with take of Any?(v10, v1 + 16);
  swift_endAccess();
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ScreenAssertionManager.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t EmbeddedMultiSportConfigurationView.init(multiSportConfiguration:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EmbeddedMultiSportConfigurationView.body.getter()
{
  MultiSportWorkoutConfiguration.subConfigs.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIy07WorkoutB0023AlignedLeadingAccessorykC0VyAIyAJ0L9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyAIyAA4TextVAJ17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA0_yAA17ButtonBorderShapeVGG_Qo_Md);
  lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore04GoalA13ConfigurationCGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration();
  return ForEach<>.init(_:content:)();
}

void closure #1 in EmbeddedMultiSportConfigurationView.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = static VerticalAlignment.center.getter();
  v39 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v10 = [objc_opt_self() keyColors];
  if (v10)
  {
    v11 = v10;
    v34 = v9;
    v35 = v5;
    v12 = v6;
    v36 = v3;
    v37 = a1;
    v38 = v2;
    v13 = [v10 nonGradientTextColor];

    if (v13)
    {
      v33 = Color.init(uiColor:)();
      v32 = static HorizontalAlignment.leading.getter();
      v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v15 = [v14 localizedName];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v40 = v16;
      v41 = v18;
      lazy protocol witness table accessor for type String and conformance String();
      v19 = Text.init<A>(_:)();
      v21 = v20;
      v23 = v22;
      LOBYTE(v40) = 1;
      v25 = v24 & 1;
      v42 = v24 & 1;
      v26 = static Color.white.getter();
      KeyPath = swift_getKeyPath();
      v28 = &v8[*(v12 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
      static ButtonBorderShape.roundedRectangle.getter();
      *v28 = swift_getKeyPath();
      *v8 = v39;
      *(v8 + 1) = 2;
      v29 = v32;
      *(v8 + 2) = v33;
      v8[24] = 1;
      *(v8 + 4) = v29;
      *(v8 + 5) = 0;
      v8[48] = 1;
      *(v8 + 7) = v19;
      *(v8 + 8) = v21;
      v8[72] = v25;
      *(v8 + 10) = v23;
      *(v8 + 11) = 0x4022000000000000;
      *(v8 + 12) = v34;
      *(v8 + 13) = KeyPath;
      *(v8 + 14) = v26;
      v30 = v35;
      static AccessibilityChildBehavior.combine.getter();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
      View.accessibilityElement(children:)();
      (*(v36 + 8))(v30, v38);
      outlined destroy of ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>(v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAA0A9TypeImageVAD17_FlipForRTLEffectVGAD6VStackVyAFyAD4TextVAA17HeaderHyphenationVGGGMd);
    lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration()
{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration)
  {
    type metadata accessor for GoalWorkoutConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance EmbeddedMultiSportConfigurationView()
{
  MultiSportWorkoutConfiguration.subConfigs.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIy07WorkoutB0023AlignedLeadingAccessorykC0VyAIyAJ0L9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyAIyAA4TextVAJ17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA0_yAA17ButtonBorderShapeVGG_Qo_Md);
  lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore04GoalA13ConfigurationCGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration();
  return ForEach<>.init(_:content:)();
}

uint64_t getEnumTagSinglePayload for EmbeddedMultiSportConfigurationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EmbeddedMultiSportConfigurationView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ForEach<[GoalWorkoutConfiguration], UUID, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GoalWorkoutConfiguration], UUID, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GoalWorkoutConfiguration], UUID, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore04GoalE13ConfigurationCG10Foundation4UUIDVAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyARy0eB0023AlignedLeadingAccessorysK0VyARyAS0E9TypeImageVAA05_FlipC9RTLEffectVGAA6VStackVyARyAA4TextVAS17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA9_yAA17ButtonBorderShapeVGG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GoalWorkoutConfiguration], UUID, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, VStack<ModifiedContent<Text, HeaderHyphenation>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAD0E9TypeImageVAA17_FlipForRTLEffectVGAA6VStackVyACyAA4TextVAD17HeaderHyphenationVGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA17ButtonBorderShapeVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MirrorPowerZonesMetricsPlatter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for MirrorPowerZonesMetricsPlatter(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t closure #1 in MirrorPowerZonesMetricsPlatter.body.getter(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 16);
  result = specialized EnumeratedSequence<>.index(_:offsetBy:limitedBy:)(0, 0, *(*(a1 + 104) + 16), v3, 0, v2);
  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v17[0] = 0;
  v17[1] = 0;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v2;

  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(v17);

  v16 = v9;
  swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = *(a1 + 80);
  v10[5] = *(a1 + 64);
  v10[6] = v11;
  v10[7] = *(a1 + 96);
  v12 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v12;
  v13 = *(a1 + 48);
  v10[3] = *(a1 + 32);
  v10[4] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in MirrorPowerZonesMetricsPlatter.body.getter;
  *(v14 + 24) = v10;
  outlined init with copy of MirrorPowerZonesMetricsPlatter(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0gJ5StyleOGGMd);
  lazy protocol witness table accessor for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A](&lazy protocol witness table cache variable for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A], &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, C();
  return ForEach<>.init(_:id:content:)();
}

int *closure #1 in closure #1 in MirrorPowerZonesMetricsPlatter.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  closure #1 in closure #1 in closure #1 in MirrorPowerZonesMetricsPlatter.body.getter(a2, a3, v10);
  result = MEMORY[0x20F30D420](a2);
  if (result)
  {
    v15 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co();
    View.accessibilityIdentifier(_:)();

    result = outlined destroy of Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio(v10, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v16 = *(a3 + 104);
      if (*(v16 + 16) > a1)
      {
        v17 = *(v16 + a1 + 32);
        KeyPath = swift_getKeyPath();
        outlined init with take of ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condi(v13, a4);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0gJ5StyleOGGMd);
        v19 = a4 + result[9];
        *v19 = KeyPath;
        *(v19 + 8) = v17;
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in MirrorPowerZonesMetricsPlatter.body.getter@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014ZoneMetricViewVACyACyACyACyACyACyAF06EnergyhI0VAJGACyAF09HeartRatehI0VAF0kl9AggregatehI0VGGACyACyAoHGACyAF06TimeInghI0VAHGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyJGGACyACyAJA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_GMd);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for ZoneMetricView();
  MEMORY[0x28223BE20](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 47 && (v17 = *(a2 + 5), v34 = *(a2 + 4), v35 = v17, v36 = *(a2 + 6), v18 = *(a2 + 1), v30 = *a2, v31 = v18, v19 = *(a2 + 3), v32 = *(a2 + 2), v33 = v19, (MirrorPowerZonesMetricsPlatter.hasConfiguredZones()() & 1) == 0))
  {
    v22 = *MEMORY[0x277D7DF98];
    v23 = type metadata accessor for ZoneViewType();
    (*(*(v23 - 8) + 104))(v16, v22, v23);
    v24 = &v16[v14[5]];
    type metadata accessor for LivePowerZone();
    static LivePowerZone.minCanonicalPowerZones()();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd);
    swift_allocObject();
    v26 = LiveZones.init(zones:currentZoneIndex:isStale:)();
    v24[3] = v25;
    v24[4] = lazy protocol witness table accessor for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A](&lazy protocol witness table cache variable for type LiveZones<LivePowerZone> and conformance LiveZones<A>, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd);
    *v24 = v26;
    v27 = &v16[v14[8]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = &v16[v14[6]];
    *v28 = 0;
    v28[8] = 1;
    v16[v14[7]] = 1;
    outlined init with copy of ZoneMetricView(v16, v13);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ZoneMetricView(v16);
  }

  else
  {
    v20 = type metadata accessor for MetricPlatterType();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(a1, v7, a2[3], a2[4], *a2, v10);
    outlined destroy of Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio(v7, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMe(v10, v13, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  }
}

uint64_t MirrorPowerZonesMetricsPlatter.hasConfiguredZones()()
{

  v0 = PowerMetricsPublisher.livePowerZones.getter();

  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = dispatch thunk of LiveZones.zones.getter();

  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      type metadata accessor for Zone();

      v2 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for Zone();
  v2 = v1;
LABEL_5:

  type metadata accessor for CyclingPowerZonesConfigurationEditor();
  v3 = MEMORY[0x20F306B50](v2);

  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t protocol witness for View.body.getter in conformance MirrorPowerZonesMetricsPlatter()
{
  v1 = v0[5];
  v5[4] = v0[4];
  v5[5] = v1;
  v5[6] = v0[6];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = v0[3];
  v5[2] = v0[2];
  v5[3] = v3;
  return closure #1 in MirrorPowerZonesMetricsPlatter.body.getter(v5);
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[2];
  v4 = *(result[4] + 16);
  if (*result == v4 || v3 == v4)
  {
    v6 = v3 - v2;
    if (!__OFSUB__(v3, v2))
    {
LABEL_10:
      if (v6)
      {
        v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi6offset_So19HKWorkoutMetricTypeV7elementt_Tt1g5(v6, 0);
        v10 = specialized Slice._copyContents(initializing:)(v12, v9 + 4, v6);
        outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMe(v1, &v11, &_ss5SliceVys18EnumeratedSequenceVySaySo19HKWorkoutMetricTypeVGGGMd);

        if (v10 == v6)
        {
          return v9;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
  }

  v7 = result[3];
  v8 = result[1];
  v6 = v7 - v8;
  if (!__OFSUB__(v7, v8))
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D15MediaSuggestionVGMd);
      v7 = *(type metadata accessor for WorkoutMediaSuggestion() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_2(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for WorkoutMediaSuggestion();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t specialized Slice._copyContents(initializing:)(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 1);
  v7 = v3[4];
  if (!a2)
  {
    v9 = 0;
    v8 = *v3;
    v10 = v3[1];
    goto LABEL_18;
  }

  if (!a3)
  {
    v8 = *v3;
    v10 = v3[1];
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = v3[2];
    v9 = v6 - v4;
    if (v6 == v4)
    {
      v10 = v3[1];
LABEL_18:
      *result = v4;
      *(result + 8) = v5;
      *(result + 16) = v6;
      *(result + 32) = v7;
      *(result + 40) = v8;
      *(result + 48) = v10;
      return v9;
    }

    v11 = 0;
    while ((v4 & 0x8000000000000000) == 0)
    {
      v12 = v11;
      v13 = v4 + v11;
      if (v13 >= v6)
      {
        break;
      }

      if (v13 >= *(v7 + 16))
      {
        goto LABEL_20;
      }

      if ((v5 ^ 0x7FFFFFFFFFFFFFFFLL) == v12)
      {
        goto LABEL_21;
      }

      v14 = *(v7 + 8 * v4 + 32 + 8 * v12);
      *a2 = v5 + v12;
      a2[1] = v14;
      if (a3 - 1 == v12)
      {
        v8 = v4 + v12 + 1;
        v9 = a3;
LABEL_17:
        v10 = v5 + v12 + 1;
        goto LABEL_18;
      }

      a2 += 2;
      v11 = v12 + 1;
      if (v9 == v12 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized EnumeratedSequence<>.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 1)
  {
    if (v6 < 0 || v6 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a3)
  {
    return 0;
  }

LABEL_9:
  v7 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t specialized static MirrorPowerZonesMetricsPlatter.reorderSupportedMetrics(_:)(void *a1)
{
  v1 = a1;
  if (a1[2] < 3uLL || a1[4] != 47)
  {

    return v1;
  }

  v2 = a1[5];

  if (v2 != 11)
  {
    return v1;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v1[4] = 11;
  if (v1[2] >= 2uLL)
  {
    v1[5] = 47;
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, C()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricV;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricV)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0gJ5StyleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationM();
    lazy protocol witness table accessor for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricV);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationM()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElev;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElev)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co();
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElev);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Conditio();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Conditio()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014ZoneMetricViewVACyACyACyACyACyACyAD06EnergygH0VAHGACyAD09HeartRategH0VAD0jk9AggregategH0VGGACyACyAmFGACyAD06TimeInfgH0VAFGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwHGGACyACyAHA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, Po;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, Po)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, Po);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView()
{
  result = lazy protocol witness table cache variable for type EnergyMetricView and conformance EnergyMetricView;
  if (!lazy protocol witness table cache variable for type EnergyMetricView and conformance EnergyMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyMetricView and conformance EnergyMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd);
    lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView()
{
  result = lazy protocol witness table cache variable for type TimeInZoneMetricView and conformance TimeInZoneMetricView;
  if (!lazy protocol witness table cache variable for type TimeInZoneMetricView and conformance TimeInZoneMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeInZoneMetricView and conformance TimeInZoneMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
    lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView()
{
  result = lazy protocol witness table cache variable for type PaceMetricView and conformance PaceMetricView;
  if (!lazy protocol witness table cache variable for type PaceMetricView and conformance PaceMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaceMetricView and conformance PaceMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
    lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
    lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView()
{
  result = lazy protocol witness table cache variable for type DistanceMetricView and conformance DistanceMetricView;
  if (!lazy protocol witness table cache variable for type DistanceMetricView and conformance DistanceMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceMetricView and conformance DistanceMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView()
{
  result = lazy protocol witness table cache variable for type LapsMetricView and conformance LapsMetricView;
  if (!lazy protocol witness table cache variable for type LapsMetricView and conformance LapsMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapsMetricView and conformance LapsMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGMd);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGMd);
    lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView()
{
  result = lazy protocol witness table cache variable for type CadenceMetricView and conformance CadenceMetricView;
  if (!lazy protocol witness table cache variable for type CadenceMetricView and conformance CadenceMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CadenceMetricView and conformance CadenceMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD07CurrentfhI0VGMd);
    lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView();
    lazy protocol witness table accessor for type CurrentElevationMetricView and conformance CurrentElevationMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView()
{
  result = lazy protocol witness table cache variable for type ElevationChangeMetricView and conformance ElevationChangeMetricView;
  if (!lazy protocol witness table cache variable for type ElevationChangeMetricView and conformance ElevationChangeMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ElevationChangeMetricView and conformance ElevationChangeMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CurrentElevationMetricView and conformance CurrentElevationMetricView()
{
  result = lazy protocol witness table cache variable for type CurrentElevationMetricView and conformance CurrentElevationMetricView;
  if (!lazy protocol witness table cache variable for type CurrentElevationMetricView and conformance CurrentElevationMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentElevationMetricView and conformance CurrentElevationMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMR, lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView()
{
  result = lazy protocol witness table cache variable for type PowerMetricView and conformance PowerMetricView;
  if (!lazy protocol witness table cache variable for type PowerMetricView and conformance PowerMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerMetricView and conformance PowerMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAD014FlightsClimbedgH0VGMd);
    lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
    lazy protocol witness table accessor for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView()
{
  result = lazy protocol witness table cache variable for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView;
  if (!lazy protocol witness table cache variable for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGMd);
    lazy protocol witness table accessor for type SegmentDurationMetricView and conformance SegmentDurationMetricView();
    lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentDurationMetricView and conformance SegmentDurationMetricView()
{
  result = lazy protocol witness table cache variable for type SegmentDurationMetricView and conformance SegmentDurationMetricView;
  if (!lazy protocol witness table cache variable for type SegmentDurationMetricView and conformance SegmentDurationMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentDurationMetricView and conformance SegmentDurationMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView()
{
  result = lazy protocol witness table cache variable for type DistanceDetailMetricView and conformance DistanceDetailMetricView;
  if (!lazy protocol witness table cache variable for type DistanceDetailMetricView and conformance DistanceDetailMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceDetailMetricView and conformance DistanceDetailMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD06EnergygH0VGMd);
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAD05PowergH0VGMd);
    lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
    lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
    lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAD12MetricDetailVGMd);
    lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(&lazy protocol witness table cache variable for type WorkoutTimeView and conformance WorkoutTimeView, type metadata accessor for WorkoutTimeView);
    lazy protocol witness table accessor for type MetricDetail and conformance MetricDetail();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricDetail and conformance MetricDetail()
{
  result = lazy protocol witness table cache variable for type MetricDetail and conformance MetricDetail;
  if (!lazy protocol witness table cache variable for type MetricDetail and conformance MetricDetail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricDetail and conformance MetricDetail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMR, lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGMd);
    lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView()
{
  result = lazy protocol witness table cache variable for type StrideLengthMetricView and conformance StrideLengthMetricView;
  if (!lazy protocol witness table cache variable for type StrideLengthMetricView and conformance StrideLengthMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrideLengthMetricView and conformance StrideLengthMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB029VerticalOscillationMetricViewVAFGACyAD017GroundContactTimehI0VAIGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMR, lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMR, lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView()
{
  result = lazy protocol witness table cache variable for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView;
  if (!lazy protocol witness table cache variable for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView()
{
  result = lazy protocol witness table cache variable for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView;
  if (!lazy protocol witness table cache variable for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGMd);
    lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView();
    lazy protocol witness table accessor for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView()
{
  result = lazy protocol witness table cache variable for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView;
  if (!lazy protocol witness table cache variable for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA6HStackVyAA05TupleF0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAmN0l15DescriptionCoreN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGMd);
    lazy protocol witness table accessor for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZoneMetricView and conformance ZoneMetricView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condi(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ZoneMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneMetricView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ZoneMetricView(uint64_t a1)
{
  v2 = type metadata accessor for ZoneMetricView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMe(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for MirrorHeartRateZonesMetricsPlatter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for MirrorHeartRateZonesMetricsPlatter(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 16);
  result = specialized EnumeratedSequence<>.index(_:offsetBy:limitedBy:)(0, 0, *(*(a1 + 104) + 16), v3, 0, v2);
  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v17[0] = 0;
  v17[1] = 0;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v2;

  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(v17);

  v16 = v9;
  swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = *(a1 + 80);
  v10[5] = *(a1 + 64);
  v10[6] = v11;
  v10[7] = *(a1 + 96);
  v12 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v12;
  v13 = *(a1 + 48);
  v10[3] = *(a1 + 32);
  v10[4] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter;
  *(v14 + 24) = v10;
  outlined init with copy of MirrorHeartRateZonesMetricsPlatter(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB0010ZoneMetricE0VAMyAMyAMyAMyAMyAMyAN06EnergypE0VARGAMyAN09HeartRatepE0VAN0rs9AggregatepE0VGGAMyAMyAwPGAMyAN06TimeInopE0VAPGGGAMyAMyAMyA0_AN04PacepE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancepE0VAN04LapspE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencepE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangepE0VAN016CurrentElevationpE0VGGAMyAMyAN05PowerpE0VA31_GAMyA31_AN014FlightsClimbedpE0VGGGAMyAMyAMyAN015SegmentDurationpE0VAN0x6DetailpE0VGAMyA5_ARGGAMyAMyARA31_GAMyA31_ACyACyAN0nuE0VAN0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthpE0VA64_GGAMyAMyAN019VerticalOscillationpE0VA68_GAMyAN013GroundContactupE0VA71_GGGAMyAMyA25_AN016DownhillRunCountpE0VGAMyA20_AA6HStackVyAA05TupleE0VyACyAA4TextVAN0P9ValueFontVG_ACyACyA83_AN0P19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA0I18AttachmentModifierVG_Qo_AA30_EnvironmentKeyWritingModifierVyAN0nE5StyleOGGMd);
  _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A], &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

int *closure #1 in closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v26 = a4;
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalK0Vy07WorkoutB0010ZoneMetricC0VAMyAMyAMyAMyAMyAMyAN06EnergypC0VARGAMyAN09HeartRatepC0VAN0rs9AggregatepC0VGGAMyAMyAwPGAMyAN06TimeInopC0VAPGGGAMyAMyAMyA0_AN04PacepC0VGAMyA5_A5_GGAMyA7_AMyAN08DistancepC0VAN04LapspC0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencepC0VAA05EmptyC0VGA18_GA18_GAMyAN015ElevationChangepC0VAN016CurrentElevationpC0VGGAMyAMyAN05PowerpC0VA31_GAMyA31_AN014FlightsClimbedpC0VGGGAMyAMyAMyAN015SegmentDurationpC0VAN0x6DetailpC0VGAMyA5_ARGGAMyAMyARA31_GAMyA31_AIyAIyAN0nuC0VAN0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthpC0VA64_GGAMyAMyAN019VerticalOscillationpC0VA68_GAMyAN013GroundContactupC0VA71_GGGAMyAMyA25_AN016DownhillRunCountpC0VGAMyA20_AA6HStackVyAA05TupleC0VyAIyAA4TextVAN0P9ValueFontVG_AIyAIyA83_AN0P19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA0G18AttachmentModifierVG_Qo_Md);
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v25 - v16;
  v27 = a3;
  closure #1 in closure #1 in closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter(a3, a2, v11);
  result = MEMORY[0x20F30D420](a2);
  if (result)
  {
    v19 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Co();
    View.accessibilityIdentifier(_:)();

    _s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGWOhTm_0(v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationM();
    View.accessibilityElement(children:)();
    (*(v28 + 8))(v8, v29);
    result = _s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGWOhTm_0(v14, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v20 = *(v27 + 104);
      if (*(v20 + 16) > v30)
      {
        v21 = *(v20 + v30 + 32);
        KeyPath = swift_getKeyPath();
        v23 = v26;
        (*(v15 + 32))(v26, v17, v25);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB0010ZoneMetricE0VAMyAMyAMyAMyAMyAMyAN06EnergypE0VARGAMyAN09HeartRatepE0VAN0rs9AggregatepE0VGGAMyAMyAwPGAMyAN06TimeInopE0VAPGGGAMyAMyAMyA0_AN04PacepE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancepE0VAN04LapspE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencepE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangepE0VAN016CurrentElevationpE0VGGAMyAMyAN05PowerpE0VA31_GAMyA31_AN014FlightsClimbedpE0VGGGAMyAMyAMyAN015SegmentDurationpE0VAN0x6DetailpE0VGAMyA5_ARGGAMyAMyARA31_GAMyA31_ACyACyAN0nuE0VAN0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthpE0VA64_GGAMyAMyAN019VerticalOscillationpE0VA68_GAMyAN013GroundContactupE0VA71_GGGAMyAMyA25_AN016DownhillRunCountpE0VGAMyA20_AA6HStackVyAA05TupleE0VyACyAA4TextVAN0P9ValueFontVG_ACyACyA83_AN0P19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA0I18AttachmentModifierVG_Qo_AA30_EnvironmentKeyWritingModifierVyAN0nE5StyleOGGMd);
        v24 = v23 + result[9];
        *v24 = KeyPath;
        *(v24 + 8) = v21;
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v30);
  v10 = v28 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014ZoneMetricViewVACyACyACyACyACyACyAF06EnergyhI0VAJGACyAF09HeartRatehI0VAF0kl9AggregatehI0VGGACyACyAoHGACyAF06TimeInghI0VAHGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyJGGACyACyAJA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_GMd);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - v11;
  v13 = type metadata accessor for ZoneMetricView();
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HeartRateMetricsPublisher.liveHeartRateZones.getter())
  {
    v16 = dispatch thunk of LiveZones.zones.getter();

    if (v16 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v17 > 0;
    if (a2 != 38)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if (a2 != 38)
    {
      goto LABEL_9;
    }
  }

  if (!v18)
  {
    v19 = *MEMORY[0x277D7DFA0];
    v20 = type metadata accessor for ZoneViewType();
    (*(*(v20 - 8) + 104))(v15, v19, v20);
    v21 = &v15[v13[5]];
    type metadata accessor for LiveHeartRateZone();
    MEMORY[0x20F3058D0]();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd);
    swift_allocObject();
    v28[1] = a3;
    v23 = LiveZones.init(zones:currentZoneIndex:isStale:)();
    v21[3] = v22;
    v21[4] = _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type LiveZones<LiveHeartRateZone> and conformance LiveZones<A>, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd);
    *v21 = v23;
    v24 = &v15[v13[8]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = &v15[v13[6]];
    *v25 = 0;
    v25[8] = 1;
    v15[v13[7]] = 1;
    outlined init with copy of ZoneMetricView(v15, v12);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI14ZoneMetricViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ZoneMetricView(v15);
  }

LABEL_9:
  v27 = type metadata accessor for MetricPlatterType();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(a2, v8, *(a1 + 24), *(a1 + 32), *a1, v10);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGWOhTm_0(v8, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMe(v10, v12);
  swift_storeEnumTagMultiPayload();
  _s9WorkoutUI14ZoneMetricViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
  _ConditionalContent<>.init(storage:)();
  return _s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGWOhTm_0(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
}

uint64_t protocol witness for View.body.getter in conformance MirrorHeartRateZonesMetricsPlatter()
{
  v1 = v0[5];
  v5[4] = v0[4];
  v5[5] = v1;
  v5[6] = v0[6];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = v0[3];
  v5[2] = v0[2];
  v5[3] = v3;
  return closure #1 in MirrorHeartRateZonesMetricsPlatter.body.getter(v5);
}

uint64_t specialized static MirrorHeartRateZonesMetricsPlatter.reorderSupportedMetrics(_:)(void *a1)
{
  v1 = a1;
  if (a1[2] < 3uLL || a1[4] != 38)
  {

    return v1;
  }

  v2 = a1[5];

  if (v2 != 5)
  {
    return v1;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v1[4] = 5;
  if (v1[2] >= 2uLL)
  {
    v1[5] = 38;
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB0010ZoneMetricE0VAMyAMyAMyAMyAMyAMyAN06EnergypE0VARGAMyAN09HeartRatepE0VAN0rs9AggregatepE0VGGAMyAMyAwPGAMyAN06TimeInopE0VAPGGGAMyAMyAMyA0_AN04PacepE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancepE0VAN04LapspE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencepE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangepE0VAN016CurrentElevationpE0VGGAMyAMyAN05PowerpE0VA31_GAMyA31_AN014FlightsClimbedpE0VGGGAMyAMyAMyAN015SegmentDurationpE0VAN0x6DetailpE0VGAMyA5_ARGGAMyAMyARA31_GAMyA31_ACyACyAN0nuE0VAN0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthpE0VA64_GGAMyAMyAN019VerticalOscillationpE0VA68_GAMyAN013GroundContactupE0VA71_GGGAMyAMyA25_AN016DownhillRunCountpE0VGAMyA20_AA6HStackVyAA05TupleE0VyACyAA4TextVAN0P9ValueFontVG_ACyACyA83_AN0P19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA0I18AttachmentModifierVG_Qo_AA30_EnvironmentKeyWritingModifierVyAN0nE5StyleOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB014ZoneMetricViewVAGyAGyAGyAGyAGyAGyAH06EnergyiJ0VALGAGyAH09HeartRateiJ0VAH0lm9AggregateiJ0VGGAGyAGyAqJGAGyAH06TimeInhiJ0VAJGGGAGyAGyAGyAvH04PaceiJ0VGAGyA_A_GGAGyA1_AGyAH08DistanceiJ0VAH04LapsiJ0VGGGGAGyAGyAGyAGyAGyAGyAH07CadenceiJ0VAA05EmptyJ0VGA12_GA12_GAGyAH015ElevationChangeiJ0VAH07CurrentviJ0VGGAGyAGyAH05PoweriJ0VA25_GAGyA25_AH014FlightsClimbediJ0VGGGAGyAGyAGyAH015SegmentDurationiJ0VAH0r6DetailiJ0VGAGyA_ALGGAGyAGyALA25_GAGyA25_ACyACyAH0goJ0VAH0I6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAGyAGyAGyAGyA35_A_GAGyAH012StrideLengthiJ0VA58_GGAGyAGyAH019VerticalOscillationiJ0VA62_GAGyAH013GroundContactoiJ0VA65_GGGAGyAGyA19_AH016DownhillRunCountiJ0VGAGyA14_AA6HStackVyAA05TupleJ0VyACyAA4TextVAH0I9ValueFontVG_ACyACyA77_AH0I19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ZoneMetricView, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationM();
    swift_getOpaqueTypeConformance2();
    _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI14ZoneMetricViewVAC05SwiftB00E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMe(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB014ZoneMetricViewVAEyAEyAEyAEyAEyAEyAF06EnergyhI0VAJGAEyAF09HeartRatehI0VAF0kl9AggregatehI0VGGAEyAEyAoHGAEyAF06TimeInghI0VAHGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyJGGAEyAEyAJA23_GAEyA23_AA08ModifiedE0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA58_GGAEyAEyAF019VerticalOscillationhI0VA62_GAEyAF013GroundContactnhI0VA65_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t FIUIDistanceUnit.init(hkUnit:)(void *a1)
{
  v2 = specialized FIUIDistanceUnit.init(hkUnit:)(a1);

  return v2;
}

uint64_t specialized FIUIDistanceUnit.init(hkUnit:)(void *a1)
{
  type metadata accessor for NSObject();
  v2 = objc_opt_self();
  v3 = [v2 meterUnit];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 1;
  }

  v6 = [v2 meterUnitWithMetricPrefix_];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 2;
  }

  v8 = [v2 mileUnit];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    return 3;
  }

  v10 = [v2 yardUnit];
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    return 4;
  }

  v12 = [v2 footUnit];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    return 5;
  }

  _StringGuts.grow(_:)(42);

  v14 = [a1 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  MEMORY[0x20F30BC00](v15, v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateStatusView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeartRateStatusView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

id HeartRateStatusView.makeUIView(context:)()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v13 = *(v0 + 24);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v8, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v8) = v13;
  }

  v12 = v8;
  return specialized static SharedHeartRateViewFunctionality.makeHRView(animationsSuspended:state:workoutViewStyle:heartRate:)(v7, v5, &v12, v6);
}

id protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance HeartRateStatusView(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  [a1 setAnimationsSuspended_];
  [a1 setState_];

  return [a1 setBeatsPerMinute_];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance HeartRateStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HeartRateStatusView and conformance HeartRateStatusView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HeartRateStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HeartRateStatusView and conformance HeartRateStatusView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance HeartRateStatusView()
{
  lazy protocol witness table accessor for type HeartRateStatusView and conformance HeartRateStatusView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type HeartRateStatusView and conformance HeartRateStatusView()
{
  result = lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView;
  if (!lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView;
  if (!lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateStatusView and conformance HeartRateStatusView);
  }

  return result;
}

id specialized static SharedHeartRateViewFunctionality.makeHRView(animationsSuspended:state:workoutViewStyle:heartRate:)(char a1, uint64_t a2, unsigned __int8 *a3, double a4)
{
  v5 = 0xD000000000000014;
  v6 = *a3;
  v7 = 0xD000000000000013;
  v8 = "HeartAnimating_Watch";
  v9 = "058BD47212BundleLookup";
  v10 = "HeartFilled_Watch";
  if (v6 > 0xB)
  {
    goto LABEL_31;
  }

  if (((1 << v6) & 0xC60) == 0)
  {
    if (((1 << v6) & 0x1C) != 0)
    {
      v21 = objc_opt_self();
      v22 = [v21 currentDevice];
      v23 = specialized UIDevice.screenType.getter();

      if (v23 >= 9u)
      {
        v9 = "HeartAnimating_Phone_75";
      }

      else
      {
        v9 = "HeartLowPower_Phone_63";
      }

      v24 = [v21 currentDevice];
      v25 = specialized UIDevice.screenType.getter();

      if (v25 >= 9u)
      {
        v8 = "HeartFilled_Phone_75";
      }

      else
      {
        v8 = "HeartAnimating_Phone_81";
      }

      v26 = [v21 currentDevice];
      v27 = specialized UIDevice.screenType.getter();

      v18 = "HeartFilled_Phone_81";
      v19 = v27;
      v20 = "HeartLowPower_Phone_81";
      goto LABEL_18;
    }

LABEL_31:
    v29 = 0xD000000000000014;
    v5 = 0xD000000000000011;
    goto LABEL_22;
  }

  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = specialized UIDevice.screenType.getter();

  if (v13 >= 9u)
  {
    v9 = "HeartAnimating_Phone_60";
  }

  else
  {
    v9 = "HeartLowPower_Watch";
  }

  v14 = [v11 currentDevice];
  v15 = specialized UIDevice.screenType.getter();

  if (v15 >= 9u)
  {
    v8 = "HeartFilled_Phone_60";
  }

  else
  {
    v8 = "HeartAnimating_Phone_63";
  }

  v16 = [v11 currentDevice];
  v17 = specialized UIDevice.screenType.getter();

  v18 = "HeartFilled_Phone_63";
  v19 = v17;
  v20 = "HeartLowPower_Phone_63";
LABEL_18:
  v28 = v20 - 32;
  v7 = 0xD000000000000016;
  if (v19 >= 9)
  {
    v10 = v28;
  }

  else
  {
    v10 = v18;
  }

  v29 = 0xD000000000000017;
LABEL_22:
  v30 = 91;
  v31 = 10;
  if (((1 << v6) & 0x301) == 0)
  {
    v31 = 9;
    v30 = 90;
  }

  if (v6 <= 9)
  {
    v32 = v31;
  }

  else
  {
    v32 = 9;
  }

  if (v6 <= 9)
  {
    v33 = v30;
  }

  else
  {
    v33 = 90;
  }

  type metadata accessor for SharedHeartRateViewFunctionality.BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass_];
  v36 = objc_allocWithZone(MEMORY[0x277D0A7F0]);
  v37 = MEMORY[0x20F30BAD0](v5, v8 | 0x8000000000000000);

  v38 = MEMORY[0x20F30BAD0](v29, v9 | 0x8000000000000000);

  v39 = MEMORY[0x20F30BAD0](v7, v10 | 0x8000000000000000);

  v40 = [v36 initWithFrame:v37 heartFilledImageName:v38 heartSpriteImageName:v39 heartSuspendedSpriteImageName:v33 spriteFrameCount:v32 spriteColumnCount:v35 resourceBundle:{0.0, 0.0, 0.0, 0.0}];

  [v40 setAnimationsSuspended_];
  [v40 setState_];
  [v40 setBeatsPerMinute_];
  return v40;
}

uint64_t static AssetLoadStatus.workoutAssetLoadStatus(for:)(char a1, char a2)
{
  if (a2 == -1)
  {
    return 5;
  }

  if (a2)
  {
    return qword_20CB66208[a1];
  }

  return 6;
}

uint64_t closure #1 in MirroredStartWatchAppUltraModeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - v2;
  Label.init(title:icon:)();
  v4 = *(v1 + 68);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v5 = &v3[v4];
  swift_beginAccess();
  v6 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000036;
  v7._object = 0x800000020CB96360;
  v8.value._object = 0x800000020CB936F0;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v19);

  v18 = v10;
  lazy protocol witness table accessor for type String and conformance String();
  *v5 = Text.init<A>(_:)();
  *(v5 + 1) = v11;
  v5[16] = v12 & 1;
  *(v5 + 3) = v13;

  Button.init(action:label:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGGMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v15 = lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v18._countAndFlagsBits = v14;
  v18._object = v15;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>>(v3, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for FitnessUILocalizationFeature();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = String.fitnessUILocalizedString(feature:)();
  v8 = v7;
  outlined destroy of WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>>(v4, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  v13[0] = v6;
  v13[1] = v8;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #3 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = v13;
  MEMORY[0x20F30C1F0](0, v7, v4, v8);
  _Block_release(v8);

  (*(v15 + 8))(v4, v2);
  v10 = (*(v5 + 8))(v7, v14);
  return (*(a1 + 80))(v10);
}

uint64_t closure #2 in closure #3 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x800000020CB963A0;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #4 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  static ToolbarItemPlacement.cancellationAction.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v5 = lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in closure #4 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.close.getter();

  return MEMORY[0x20F30AF90](v4, partial apply for closure #1 in closure #1 in closure #4 in closure #1 in MirroredStartWatchAppUltraModeView.body.getter, a1);
}

uint64_t protocol witness for View.body.getter in conformance MirroredStartWatchAppUltraModeView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVAA5ImageVGAmA6ButtonVyAMGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytARyAA07DefaultmJ0VGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>(unint64_t *a1, uint64_t *a2)
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

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x20F30C990](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A0Cy11WorkoutCore24MirroredWidgetAttributesVGMd);
        v15 = &protocol witness table for <> Activity<A>;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of ActivityProtocol(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);

        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v16;
        }

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A0Cy11WorkoutCore24MirroredWidgetAttributesVGMd);
        v15 = &protocol witness table for <> Activity<A>;
        *&v13 = v10;
        *(v3 + 16) = v12 + 1;
        outlined init with take of ActivityProtocol(&v13, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x20F30C990](i, a1);
        type metadata accessor for CGColorRef(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColorRef(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CatalogLockup();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore13CatalogLockupVSgMd);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      outlined init with take of ActivityContent<MirroredWidgetAttributes.ContentState>?(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &_s11SeymourCore13CatalogLockupVSgMd);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:);

  return v11(a5, a6);
}

uint64_t closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:);

  return v11(a5, a6);
}

uint64_t protocol witness for ActivityProtocol.updateLiveActivity(_:alertConfiguration:) in conformance <> Activity<A>(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit18AlertConfigurationVSgMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = *v2;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  outlined init with copy of ActivityContent<MirroredWidgetAttributes.ContentState>?(v23, v7, &_s11ActivityKit18AlertConfigurationVSgMd);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v16;
  (*(v9 + 32))(&v20[v18], v12, v8);
  outlined init with take of ActivityContent<MirroredWidgetAttributes.ContentState>?(v7, &v20[v19], &_s11ActivityKit18AlertConfigurationVSgMd);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:), v20);
}

uint64_t protocol witness for ActivityProtocol.endLiveActivity(_:dismissalPolicy:) in conformance <> Activity<A>(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = *v2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  outlined init with copy of ActivityContent<MirroredWidgetAttributes.ContentState>?(a1, v11, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v15;
  outlined init with take of ActivityContent<MirroredWidgetAttributes.ContentState>?(v11, &v19[v17], &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:), v19);
}

uint64_t getEnumTagSinglePayload for LiveActivityManager(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for LiveActivityManager(uint64_t result, int a2, int a3)
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

void *protocol witness for ActivityManaging.getAllActivities() in conformance LiveActivityManager()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A0Cy11WorkoutCore24MirroredWidgetAttributesVGMd);
  v0 = static Activity.activities.getter();
  v1 = specialized _arrayForceCast<A, B>(_:)(v0);

  return v1;
}

uint64_t protocol witness for ActivityManaging.requestActivity(attributes:content:) in conformance LiveActivityManager@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit8PushTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A0Cy11WorkoutCore24MirroredWidgetAttributesVGMd);
  v7 = type metadata accessor for PushType();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = static Activity.request(attributes:content:pushType:)();
  result = outlined destroy of PushType?(v5);
  if (!v1)
  {
    a1[3] = v6;
    a1[4] = &protocol witness table for <> Activity<A>;
    *a1 = v8;
  }

  return result;
}

uint64_t outlined destroy of PushType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit8PushTypeVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ActivityUIDismissalPolicy() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:);

  return closure #1 in Activity<>.endLiveActivity(_:dismissalPolicy:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t outlined init with copy of ActivityContent<MirroredWidgetAttributes.ContentState>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit18AlertConfigurationVSgMd) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:);

  return closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in Activity<>.updateLiveActivity(_:alertConfiguration:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with take of ActivityContent<MirroredWidgetAttributes.ContentState>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *PickerPresentationContext.init(style:overrideColor:overrideDisplayName:displayImage:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Swift::Int PickerPresentationContext.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PickerPresentationContext.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PickerPresentationContext.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t PickerPresentationContext.overrideDisplayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t lazy protocol witness table accessor for type PickerPresentationContext.Style and conformance PickerPresentationContext.Style()
{
  result = lazy protocol witness table cache variable for type PickerPresentationContext.Style and conformance PickerPresentationContext.Style;
  if (!lazy protocol witness table cache variable for type PickerPresentationContext.Style and conformance PickerPresentationContext.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerPresentationContext.Style and conformance PickerPresentationContext.Style);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerPresentationContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PickerPresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerPresentationContext.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PickerPresentationContext.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Platform.intervalViewingFont.getter(int a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Font.PrivateDesign();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12, v14);
  if (v23)
  {
    static Font.PrivateDesign.compact.getter();
    static Font.Weight.regular.getter();
    static Font.system(_:design:weight:)();
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v12);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
    v17 = Font.leading(_:)();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v18 = *MEMORY[0x277CE0990];
    v19 = type metadata accessor for Font.Design();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v3, v18, v19);
    (*(v20 + 56))(v3, 0, 1, v19);
    static Font.Weight.regular.getter();
    v17 = static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v3);
    (*(v13 + 8))(v16, v12);
  }

  return v17;
}

id QuickStartWorkoutFullSizeView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return v2;
}

uint64_t QuickStartWorkoutFullSizeView.controlType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of QuickStartWorkoutControlType(v2);
}

uint64_t outlined copy of QuickStartWorkoutControlType(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t QuickStartWorkoutFullSizeView.init(configuration:viewStyle:controlType:containerPadding:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(result + 8);
  v6 = *(result + 9);
  v7 = *a2;
  *a4 = *result;
  *(a4 + 8) = v5;
  *(a4 + 9) = v6;
  *(a4 + 10) = v7;
  *(a4 + 16) = *a3;
  *(a4 + 32) = a5;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  return result;
}

uint64_t QuickStartWorkoutFullSizeView.init(configuration:viewStyle:controlType:containerPadding:cornerRadius:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v7 = *(result + 8);
  v8 = *(result + 9);
  v9 = *a2;
  *a6 = *result;
  *(a6 + 8) = v7;
  *(a6 + 9) = v8;
  *(a6 + 10) = v9;
  *(a6 + 16) = *a3;
  *(a6 + 32) = a7;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5 & 1;
  return result;
}

uint64_t QuickStartWorkoutFullSizeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  return closure #1 in QuickStartWorkoutFullSizeView.body.getter(v4, a1);
}

uint64_t closure #1 in QuickStartWorkoutFullSizeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = type metadata accessor for PlainButtonStyle();
  v39 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0F0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AkLEAMyQrSbFQOyAOyAA017ContainerRelativeM0VASG_Qo_G_AA08ModifiedH0VyAA6VStackVyAGyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartw7OptionsF0VtGG_A7_0xyw5ImageF0VA6_A0_yA0_yA7_0xyW5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA17_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGGMd);
  v38 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v37 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA6ZStackVyAA05TupleC0VyAA19_ConditionalContentVyAC9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeC0VyAA16RoundedRectangleVAA5ColorVG_Qo_AcNEAOyQrSbFQOyAQyAA017ContainerRelativeP0VAUG_Qo_G_AA08ModifiedK0VyAA6VStackVyAKyAA6HStackVyAKyAA6SpacerV_07WorkoutB0010QuickStartz7OptionsC0VtGG_A9_010QuickStartz5ImageC0VA8_A2_yA2_yA9_010QuickStartZ5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA19_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGG_AA05PlaingE0VQo_Md);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v37 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP9WidgetKitE9widgetURLyQr10Foundation0J0VSgFQOyAA6ZStackVyAA05TupleF0VyACyAgHE0I10AccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AgHEARyQrSbFQOyATyAA017ContainerRelativeO0VAXG_Qo_G_AA08ModifiedD0VyAA6VStackVyAQyAA6HStackVyAQyAA6SpacerV_07WorkoutB0010QuickStarty7OptionsF0VtGG_A12_0z5Starty5ImageF0VA11_A5_yA5_yA12_0z5StartY5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA22_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGG_Qo_AgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA37_G_AA16PlainButtonStyleVQo__GMd);
  MEMORY[0x28223BE20](v41);
  v43 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (&v37 - v14);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE9widgetURLyQr10Foundation0G0VSgFQOyAA6ZStackVyAA05TupleC0VyAA19_ConditionalContentVyAcDE0F10AccentableyQrSbFQOyAA06_ShapeC0VyAA16RoundedRectangleVAA5ColorVG_Qo_AcDEAPyQrSbFQOyARyAA017ContainerRelativeN0VAVG_Qo_G_AA08ModifiedL0VyAA6VStackVyAMyAA6HStackVyAMyAA6SpacerV_07WorkoutB0010QuickStartx7OptionsC0VtGG_A10_0yzx5ImageC0VA9_A3_yA3_yA10_0yzX5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA20_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGG_Qo_Md);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v37 - v17;
  v52[0] = *(a1 + 16);
  v19 = *&v52[0];
  if (*&v52[0])
  {
    v20 = *(&v52[0] + 1);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = *(a1 + 16);
    *(v21 + 32) = *a1;
    *(v21 + 48) = v22;
    *(v21 + 64) = *(a1 + 32);
    *(v21 + 80) = *(a1 + 48);
    MEMORY[0x28223BE20](v21);
    *(&v37 - 2) = a1;
    outlined init with copy of QuickStartWorkoutControlType(v52, &v48);
    outlined init with copy of QuickStartWorkoutControlType(v52, &v48);
    outlined init with copy of QuickStartWorkoutFullSizeView(a1, &v48);
    started = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
    Button.init(action:label:)();
    PlainButtonStyle.init()();
    v24 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0F0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AkLEAMyQrSbFQOyAOyAA017ContainerRelativeM0VASG_Qo_G_AA08ModifiedH0VyAA6VStackVyAGyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartw7OptionsF0VtGG_A7_0xyw5ImageF0VA6_A0_yA0_yA7_0xyW5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA17_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGGMd);
    v25 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    v26 = v44;
    v27 = v46;
    View.buttonStyle<A>(_:)();
    (*(v39 + 8))(v4, v27);
    (*(v38 + 8))(v6, v26);
    v28 = v40;
    v29 = v45;
    (*(v40 + 16))(v43, v8, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v13;
    v49 = started;
    swift_getOpaqueTypeConformance2();
    v48 = v26;
    v49 = v27;
    v50 = v24;
    v51 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of QuickStartWorkoutControlType(v52);
    return (*(v28 + 8))(v8, v29);
  }

  else
  {
    *v15 = static Alignment.center.getter();
    v15[1] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA0D0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVG_Qo_AmNEAOyQrSbFQOyAQyAA017ContainerRelativeO0VAUG_Qo_G_AA08ModifiedJ0VyAA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_07WorkoutB0010QuickStarty7OptionsD0VtGG_A9_0z5Starty5ImageD0VA8_A2_yA2_yA9_0z5StartY5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA19_y12CoreGraphics7CGFloatVGGtGGAA08_PaddingG0VGtGGMd);
    closure #1 in QuickStartWorkoutFullSizeView.controlLabel()(a1, v15 + *(v32 + 44));
    WorkoutConfiguration.launchURL()();
    v33 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
    View.widgetURL(_:)();
    outlined destroy of URL?(v12, &_s10Foundation3URLVSgMd);
    outlined destroy of ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>(v15, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
    v34 = v42;
    (*(v16 + 16))(v43, v18, v42);
    swift_storeEnumTagMultiPayload();
    v48 = v13;
    v49 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0F0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AkLEAMyQrSbFQOyAOyAA017ContainerRelativeM0VASG_Qo_G_AA08ModifiedH0VyAA6VStackVyAGyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartw7OptionsF0VtGG_A7_0xyw5ImageF0VA6_A0_yA0_yA7_0xyW5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA17_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGGMd);
    v36 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    v48 = v44;
    v49 = v46;
    v50 = v35;
    v51 = v36;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v16 + 8))(v18, v34);
  }
}

void closure #1 in closure #1 in QuickStartWorkoutFullSizeView.body.getter(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v7, &v4);
  a1(&v5);
}

uint64_t closure #2 in closure #1 in QuickStartWorkoutFullSizeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA0D0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVG_Qo_AmNEAOyQrSbFQOyAQyAA017ContainerRelativeO0VAUG_Qo_G_AA08ModifiedJ0VyAA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_07WorkoutB0010QuickStarty7OptionsD0VtGG_A9_0z5Starty5ImageD0VA8_A2_yA2_yA9_0z5StartY5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA19_y12CoreGraphics7CGFloatVGGtGGAA08_PaddingG0VGtGGMd);
  return closure #1 in QuickStartWorkoutFullSizeView.controlLabel()(a1, a2 + *(v5 + 44));
}

uint64_t closure #1 in QuickStartWorkoutFullSizeView.controlLabel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAGyQrSbFQOyAIyAA017ContainerRelativeJ0VAMG_Qo_GMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v30[-v7 - 8];
  v9 = *(a1 + 16);
  v47 = *a1;
  *v48 = v9;
  *&v48[16] = *(a1 + 32);
  v48[32] = *(a1 + 48);
  QuickStartWorkoutFullSizeView.backgroundView()(&v30[-v7 - 8]);
  v10 = static HorizontalAlignment.leading.getter();
  v31 = 0;
  closure #1 in closure #1 in QuickStartWorkoutFullSizeView.controlLabel()(a1, &v47);
  v37 = *&v48[64];
  v38 = *&v48[80];
  v39 = *&v48[96];
  v34 = *&v48[16];
  v35 = *&v48[32];
  v36 = *&v48[48];
  v32 = v47;
  v33 = *v48;
  v41[5] = *&v48[64];
  v41[6] = *&v48[80];
  v41[7] = *&v48[96];
  v41[8] = *&v48[112];
  v41[1] = *v48;
  v41[2] = *&v48[16];
  v41[3] = *&v48[32];
  v41[4] = *&v48[48];
  v40 = *&v48[112];
  v41[0] = v47;
  outlined init with copy of TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v32, &v42, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_07WorkoutB0010QuickStartg7OptionsD0VtGG_AH0hig5ImageD0VAgA15ModifiedContentVyAPyAH0hiG5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGATy12CoreGraphics7CGFloatVGGtGMd);
  outlined destroy of URL?(v41, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_07WorkoutB0010QuickStartg7OptionsD0VtGG_AH0hig5ImageD0VAgA15ModifiedContentVyAPyAH0hiG5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGATy12CoreGraphics7CGFloatVGGtGMd);
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[23] = v33;
  *&v30[39] = v34;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[7] = v32;
  v11 = v31;
  LOBYTE(a1) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_20C67A754(v8, v5);
  v20 = v29;
  sub_20C67A754(v5, v29);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAGyQrSbFQOyAIyAA017ContainerRelativeJ0VAMG_Qo_G_AA08ModifiedD0VyAA6VStackVyAA05TupleE0VyAA6HStackVyAZyAA6SpacerV_07WorkoutB0010QuickStartu7OptionsE0VtGG_A3_0vwu5ImageE0VA2_AVyAVyA3_0vwU5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA13_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtMd) + 48);
  v42 = v10;
  LOBYTE(v43[0]) = v11;
  *(&v43[6] + 1) = *&v30[96];
  *(&v43[7] + 1) = *&v30[112];
  *(&v43[8] + 1) = *&v30[128];
  *&v43[9] = *&v30[143];
  *(&v43[2] + 1) = *&v30[32];
  *(&v43[3] + 1) = *&v30[48];
  *(&v43[4] + 1) = *&v30[64];
  *(&v43[5] + 1) = *&v30[80];
  *(&v43[1] + 1) = *&v30[16];
  *(v43 + 1) = *v30;
  BYTE8(v43[9]) = a1;
  *&v44 = v13;
  *(&v44 + 1) = v15;
  *&v45 = v17;
  *(&v45 + 1) = v19;
  v46 = 0;
  *(v21 + 208) = 0;
  v22 = v43[6];
  *(v21 + 96) = v43[5];
  *(v21 + 112) = v22;
  v23 = v43[8];
  *(v21 + 128) = v43[7];
  *(v21 + 144) = v23;
  v24 = v43[2];
  *(v21 + 32) = v43[1];
  *(v21 + 48) = v24;
  v25 = v43[4];
  *(v21 + 64) = v43[3];
  *(v21 + 80) = v25;
  v26 = v43[0];
  *v21 = v42;
  *(v21 + 16) = v26;
  v27 = v44;
  *(v21 + 160) = v43[9];
  *(v21 + 176) = v27;
  *(v21 + 192) = v45;
  outlined init with copy of TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v42, &v47, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartj7OptionsG0VtGG_AL0klj5ImageG0VAkCyACyAL0klJ5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGAVy12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGMd);
  outlined destroy of ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>(v8, &_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAGyQrSbFQOyAIyAA017ContainerRelativeJ0VAMG_Qo_GMd);
  *&v48[97] = *&v30[96];
  *&v48[113] = *&v30[112];
  *v49 = *&v30[128];
  *&v48[33] = *&v30[32];
  *&v48[49] = *&v30[48];
  *&v48[65] = *&v30[64];
  *&v48[81] = *&v30[80];
  *&v48[1] = *v30;
  v47 = v10;
  v48[0] = v11;
  *&v49[15] = *&v30[143];
  *&v48[17] = *&v30[16];
  v50 = a1;
  v51 = v13;
  v52 = v15;
  v53 = v17;
  v54 = v19;
  v55 = 0;
  outlined destroy of URL?(&v47, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartj7OptionsG0VtGG_AL0klj5ImageG0VAkCyACyAL0klJ5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGAVy12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGMd);
  return outlined destroy of ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>(v5, &_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAGyQrSbFQOyAIyAA017ContainerRelativeJ0VAMG_Qo_GMd);
}

uint64_t QuickStartWorkoutFullSizeView.backgroundView()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeC0VyAA017ContainerRelativeH0VAA5ColorVG_Qo_Md);
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AgHEAIyQrSbFQOyAKyAA017ContainerRelativeK0VAOG_Qo__GMd);
  MEMORY[0x28223BE20](v26);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeC0VyAA16RoundedRectangleVAA5ColorVG_Qo_Md);
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v26 - v11;
  if (*(v1 + 48))
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v30 = Color.init(uiColor:)();
    LOWORD(v31) = 256;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    started = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ShapeView<ContainerRelativeShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    View.widgetAccentable(_:)();

    v15 = v29;
    (*(v2 + 16))(v6, v4, v29);
    swift_storeEnumTagMultiPayload();
    v16 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    v30 = v7;
    v31 = v16;
    swift_getOpaqueTypeConformance2();
    v30 = v13;
    v31 = started;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v2 + 8))(v4, v15);
  }

  else
  {
    v18 = *(v1 + 40);
    v19 = *(type metadata accessor for RoundedRectangle() + 20);
    v20 = *MEMORY[0x277CE0118];
    v21 = type metadata accessor for RoundedCornerStyle();
    (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
    *v9 = v18;
    *(v9 + 1) = v18;
    WorkoutConfiguration.displayPlatterColor.getter();
    *&v9[*(v7 + 52)] = Color.init(uiColor:)();
    *&v9[*(v7 + 56)] = 256;
    v22 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    View.widgetAccentable(_:)();
    outlined destroy of URL?(v9, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    v23 = v27;
    (*(v10 + 16))(v6, v12, v27);
    swift_storeEnumTagMultiPayload();
    v30 = v7;
    v31 = v22;
    swift_getOpaqueTypeConformance2();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    v25 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ShapeView<ContainerRelativeShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    v30 = v24;
    v31 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v23);
  }
}

uint64_t closure #1 in closure #1 in QuickStartWorkoutFullSizeView.controlLabel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = static VerticalAlignment.top.getter();
  v34 = 1;
  v36 = *(a1 + 8);
  v35 = *a1;
  v4 = v35;
  v5 = v36 & 1;
  v19 = *(a1 + 10);
  v20 = v36 & 1;
  v6 = HIBYTE(v36) & 1;
  v21 = HIBYTE(v36) & 1;
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v35, &v48);
  v33 = 1;
  v7 = v35;
  v8 = v36;
  v9 = HIBYTE(v36);
  KeyPath = swift_getKeyPath();
  v8 &= 1u;
  v9 &= 1u;
  v11 = swift_getKeyPath();
  v37 = v22;
  LOBYTE(v38) = 1;
  v39 = 0;
  v40[0] = 1;
  *&v40[8] = v4;
  v40[16] = v5;
  v40[17] = v6;
  v40[18] = v19;
  v45 = v22;
  v46 = v38;
  *v47 = *v40;
  *&v47[15] = *&v40[15];
  v32 = 1;
  *&v41 = v7;
  BYTE8(v41) = v8;
  BYTE9(v41) = v9;
  BYTE10(v41) = v19;
  *&v42 = KeyPath;
  *(&v42 + 1) = 1;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = v11;
  v44 = 0x3FE999999999999ALL;
  *&v31[55] = 0x3FE999999999999ALL;
  *&v31[39] = v43;
  *&v31[23] = v42;
  *&v31[7] = v41;
  v12 = *v47;
  v13 = *&v47[16];
  *(a2 + 16) = v38;
  *(a2 + 32) = v12;
  *a2 = v22;
  *(a2 + 48) = v13;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 65) = v9;
  *(a2 + 66) = v19;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v14 = *v31;
  v15 = *&v31[16];
  v16 = *&v31[32];
  *(a2 + 128) = *&v31[47];
  *(a2 + 113) = v16;
  *(a2 + 97) = v15;
  *(a2 + 81) = v14;
  v48 = v7;
  v49 = v8;
  v50 = v9;
  v51 = v19;
  v52 = KeyPath;
  v53 = 1;
  v54 = 0;
  v55 = v11;
  v56 = 0x3FE999999999999ALL;
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v35, v23);
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v35, v23);
  outlined init with copy of TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v37, v23, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_07WorkoutB0010QuickStartg7OptionsE0VtGGMd);
  v17 = v7;
  outlined init with copy of TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v41, v23, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB0010QuickStartE5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGAHy12CoreGraphics7CGFloatVGGMd);
  outlined destroy of URL?(&v48, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB0010QuickStartE5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGAHy12CoreGraphics7CGFloatVGGMd);

  v23[0] = v22;
  v23[1] = 0;
  v24 = 1;
  v25 = 0;
  v26 = 1;
  v27 = v4;
  v28 = v20;
  v29 = v21;
  v30 = v19;
  return outlined destroy of URL?(v23, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_07WorkoutB0010QuickStartg7OptionsE0VtGGMd);
}

uint64_t protocol witness for View.body.getter in conformance QuickStartWorkoutFullSizeView@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  return closure #1 in QuickStartWorkoutFullSizeView.body.getter(v4, a1);
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI010QuickStartA11ControlTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutFullSizeView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutFullSizeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4ViewP9WidgetKitE9widgetURLyQr10Foundation0J0VSgFQOyAA6ZStackVyAA05TupleF0VyAEyAgHE0I10AccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AgHEARyQrSbFQOyATyAA017ContainerRelativeO0VAXG_Qo_G_AA08ModifiedE0VyAA6VStackVyAQyAA6HStackVyAQyAA6SpacerV_07WorkoutB0010QuickStarty7OptionsF0VtGG_A12_0z5Starty5ImageF0VA11_A5_yA5_yA12_0z5StartY5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA22_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGG_Qo_AgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA37_G_AA16PlainButtonStyleVQo_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE9widgetURLyQr10Foundation0I0VSgFQOyAA6ZStackVyAA05TupleE0VyACyAeFE0H10AccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAPyQrSbFQOyARyAA017ContainerRelativeN0VAVG_Qo_G_AA08ModifiedD0VyAA6VStackVyAOyAA6HStackVyAOyAA6SpacerV_07WorkoutB0010QuickStartx7OptionsE0VtGG_A10_0yzx5ImageE0VA9_A3_yA3_yA10_0yzX5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA20_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGG_Qo_AeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyA35_G_AA16PlainButtonStyleVQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AiJEAKyQrSbFQOyAMyAA017ContainerRelativeL0VAQG_Qo_G_AA08ModifiedG0VyAA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_07WorkoutB0010QuickStartv7OptionsE0VtGG_A5_0wxv5ImageE0VA4_AZyAZyA5_0wxV5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA15_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGMd);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0F0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AkLEAMyQrSbFQOyAOyAA017ContainerRelativeM0VASG_Qo_G_AA08ModifiedH0VyAA6VStackVyAGyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartw7OptionsF0VtGG_A7_0xyw5ImageF0VA6_A0_yA0_yA7_0xyW5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA17_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0F0P9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVG_Qo_AkLEAMyQrSbFQOyAOyAA017ContainerRelativeM0VASG_Qo_G_AA08ModifiedH0VyAA6VStackVyAGyAA6HStackVyAGyAA6SpacerV_07WorkoutB0010QuickStartw7OptionsF0VtGG_A7_0xyw5ImageF0VA6_A0_yA0_yA7_0xyW5LabelVAA30_EnvironmentKeyWritingModifierVySiSgGGA17_y12CoreGraphics7CGFloatVGGtGGAA14_PaddingLayoutVGtGGGMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.widgetURL(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
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

uint64_t outlined destroy of ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>, ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, QuickStartWorkoutOptionsView)>>, QuickStartWorkoutImageView, Spacer, ModifiedContent<ModifiedContent<QuickStartWorkoutLabel, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<CGFloat>>)>>, _PaddingLayout>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double SessionHeartDevicesButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  v5 = AppStorage.init<A>(wrappedValue:_:store:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11[8] = 0;
  static Font.Weight.semibold.getter();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  outlined destroy of Font.Design?(v4);
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  v9 = v13;
  *(a1 + 40) = v12;
  *(a1 + 8) = implicit closure #2 in implicit closure #1 in variable initialization expression of DeviceConnectionMenu._devicesProvider;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 56) = v9;
  result = *&v14;
  *(a1 + 72) = v14;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v7;
  return result;
}

double specialized SessionHeartDevicesButton.init()()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB66788[v2];
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

  v17 = [v0 currentDevice];
  specialized UIDevice.screenType.getter();

  v18 = [v4 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = [v4 mainScreen];
  [v21 nativeScale];
  v23 = v22;

  if (v20 != v23)
  {
    v24 = [v4 mainScreen];
    [v24 scale];

    v25 = [v4 mainScreen];
    [v25 nativeScale];
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for SessionHeartDevicesButton(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SessionHeartDevicesButton(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DeviceConnectionMenu, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DeviceConnectionMenu, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DeviceConnectionMenu, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020DeviceConnectionMenuVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<DeviceConnectionMenu, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DeviceConnectionMenu, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DeviceConnectionMenu, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DeviceConnectionMenu, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DeviceConnectionMenu, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020DeviceConnectionMenuVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type DeviceConnectionMenu and conformance DeviceConnectionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DeviceConnectionMenu, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceConnectionMenu and conformance DeviceConnectionMenu()
{
  result = lazy protocol witness table cache variable for type DeviceConnectionMenu and conformance DeviceConnectionMenu;
  if (!lazy protocol witness table cache variable for type DeviceConnectionMenu and conformance DeviceConnectionMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceConnectionMenu and conformance DeviceConnectionMenu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

id one-time initialization function for percentageFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setNumberStyle_];
  result = [v4 setMinimumIntegerDigits_];
  static ActivityRingsAccessibility.percentageFormatter = v4;
  return result;
}

id static ActivityRingsAccessibility.percentageFormatter.getter()
{
  if (one-time initialization token for percentageFormatter != -1)
  {
    swift_once();
  }

  v1 = static ActivityRingsAccessibility.percentageFormatter;

  return v1;
}

uint64_t static ActivityRingsAccessibility.label(for:isWheelchairUser:)(void *a1, char a2)
{
  v3 = [a1 activityMoveMode];
  v4 = &selRef__moveMinutesCompletionPercentage;
  if (v3 != 2)
  {
    v4 = &selRef__activeEnergyCompletionPercentage;
  }

  [a1 *v4];
  v6 = specialized static ActivityRingsAccessibility.formattedPercentage(_:)(v5);
  v8 = v7;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v10._countAndFlagsBits = 0xD000000000000014;
  v50._object = 0xE000000000000000;
  v11.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CB96430;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20CB5DA70;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 64) = v15;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  v16 = String.init(format:_:)();
  v47 = v17;
  v48 = v16;

  [a1 _exerciseTimeCompletionPercentage];
  v19 = specialized static ActivityRingsAccessibility.formattedPercentage(_:)(v18);
  v21 = v20;
  v22 = WorkoutUIBundle.super.isa;
  v51._object = 0xE000000000000000;
  v23._object = 0x800000020CB96450;
  v23._countAndFlagsBits = 0xD000000000000018;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v51);

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20CB5DA70;
  *(v26 + 56) = v14;
  *(v26 + 64) = v15;
  *(v26 + 32) = v19;
  *(v26 + 40) = v21;
  v27 = String.init(format:_:)();
  v29 = v28;

  [a1 _standHoursCompletionPercentage];
  v31 = specialized static ActivityRingsAccessibility.formattedPercentage(_:)(v30);
  v33 = v32;
  v34 = WorkoutUIBundle.super.isa;
  v35 = "AX_EXERCISING_PERCENTAGE";
  if (a2)
  {
    v35 = "AX_STANDING_PERCENTAGE";
    v36 = 0xD000000000000018;
  }

  else
  {
    v36 = 0xD000000000000016;
  }

  v52._object = 0xE000000000000000;
  v37 = v35 | 0x8000000000000000;
  v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v38.value._object = 0xEB00000000656C62;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, v38, v34, v39, v52);

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20CB5DA70;
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = v15;
  *(v40 + 32) = v31;
  *(v40 + 40) = v33;
  v41 = String.init(format:_:)();
  v43 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20CB5EA80;
  *(v44 + 32) = v48;
  *(v44 + 40) = v47;
  *(v44 + 48) = v27;
  *(v44 + 56) = v29;
  *(v44 + 64) = v41;
  *(v44 + 72) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v45 = BidirectionalCollection<>.joined(separator:)();

  return v45;
}

uint64_t specialized static ActivityRingsAccessibility.formattedPercentage(_:)(double a1)
{
  v2 = objc_opt_self();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = [v2 localizedStringFromNumber:isa numberStyle:3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a1 <= 0.00001)
  {
    a1 = 0.00001;
  }

  if (one-time initialization token for percentageFormatter != -1)
  {
    swift_once();
  }

  v6 = static ActivityRingsAccessibility.percentageFormatter;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = [v6 stringFromNumber_];

  if (v8)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t SessionPauseResumeStartButton.pauseResumeLabel.getter()
{
  v1 = 0xD000000000000011;
  v2 = *(v0 + 40);
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    if (WorkoutStatePublisher.workoutPaused.getter())
    {
      v1 = 0xD000000000000012;
      v3 = "WORKOUT_ORB_START";
    }

    else
    {
      v3 = "ame constraints specified.";
    }
  }

  else
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v4 = "WORKOUT_ORB_PAUSE";
    if (*(v2 + 18))
    {
      v4 = "WORKOUT_ORB_START";
    }

    v3 = (v4 - 32);
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._object = (v3 | 0x8000000000000000);
  v7._countAndFlagsBits = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

void SessionPauseResumeStartButton.symbolForegroundColor.getter()
{
  if (WorkoutStatePublisher.gpsLock.getter() & 1) == 0 || (WorkoutStatePublisher.workoutStarted.getter())
  {
    if (WorkoutStatePublisher.workoutStarted.getter())
    {
      if (WorkoutStatePublisher.workoutPaused.getter())
      {

        static Color.yellow.getter();
        return;
      }
    }

    else
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();
    }

    static Color.white.getter();
    return;
  }

  v0 = [objc_opt_self() keyColors];
  if (!v0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v1 = v0;
  v2 = [v0 nonGradientTextColor];

  if (!v2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  Color.init(uiColor:)();
}

uint64_t SessionPauseResumeStartButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA6CircleVAA03AnyG5StyleVG_AA15ModifiedContentVyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGMd);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v11);
  v37 = &v37 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGMd);
  MEMORY[0x28223BE20](v41);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - v15;
  outlined init with copy of SessionPauseResumeStartButton(v1, &v49);
  v16 = swift_allocObject();
  v17 = v52;
  v16[3] = v51;
  v16[4] = v17;
  v16[5] = v53;
  v18 = v50;
  v16[1] = v49;
  v16[2] = v18;
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA03AnyF5StyleVG_AA15ModifiedContentVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGtGGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA03AnyF5StyleVG_AA15ModifiedContentVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGtGGMd);
  Button.init(action:label:)();
  if (WorkoutStatePublisher.isGymKit.getter())
  {
    v19 = 0.35;
  }

  else
  {
    v19 = 1.0;
  }

  (*(v39 + 32))(v7, v3, v40);
  *&v7[*(v5 + 44)] = v19;
  v20 = WorkoutStatePublisher.isGymKit.getter();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  v23 = v38;
  outlined init with take of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>(v7, v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGMd);
  v24 = *(v9 + 44);
  v25 = v37;
  v26 = (v23 + v24);
  *v26 = KeyPath;
  v26[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_3;
  v26[2] = v22;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  outlined init with take of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>(v23, v25, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGMd);
  v27 = (v25 + *(v11 + 36));
  v28 = v50;
  *v27 = v49;
  v27[1] = v28;
  v27[2] = v51;
  v29 = *(v1 + 40);
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    if (WorkoutStatePublisher.workoutPaused.getter())
    {
      if (one-time initialization token for resumeWorkout == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else
  {
    swift_getKeyPath();
    v48 = v29;
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v29 + 18))
    {
      if (one-time initialization token for precisionStart == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  if (one-time initialization token for pauseWorkout != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_12:

  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v30 = v42;
  View.accessibilityIdentifier(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v25, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGMd);
  started = SessionPauseResumeStartButton.pauseResumeLabel.getter();
  v47 = v31;
  lazy protocol witness table accessor for type String and conformance String();
  v32 = v43;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGAA01_di4KindQ0VyAMGGMd);
  v34 = v44;
  v35 = (v44 + *(v33 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.accessibility.getter();
  *v35 = 0;
  return outlined init with take of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>(v32, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGMd);
}

uint64_t closure #1 in SessionPauseResumeStartButton.body.getter(void *a1)
{
  v2 = a1[5];
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    WorkoutStatePublisher.workoutPaused.getter();
  }

  else
  {
    swift_getKeyPath();
    v11 = v2;
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v2 + 18))
    {
      v3 = a1[3];
      v4 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v3);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 5;
      return (*(v4 + 8))(&v11, v3, v4);
    }
  }

  if ((WorkoutStatePublisher.workoutPaused.getter() & 1) != 0 && (WorkoutStatePublisher.pausedReasons.getter() & 4) != 0)
  {
    v9 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
    result = swift_beginAccess();
    if (*(v2 + v9) == 1)
    {
      *(v2 + v9) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    v6 = WorkoutStatePublisher.workoutPaused.getter();
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v12 = 0;
    v13 = 0;
    v11 = 1;
    v14 = v6 & 1;
    (*(v8 + 8))(&v11, v7, v8);
    return outlined consume of SessionControl(1, 0, 0, v6 & 1);
  }

  return result;
}

double closure #2 in SessionPauseResumeStartButton.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in closure #2 in SessionPauseResumeStartButton.body.getter(a1, &v10);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v19 = v13;
  outlined init with copy of TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>(&v14, &v9);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v18, &_s7SwiftUI9TupleViewVyAA06_ShapeD0VyAA6CircleVAA03AnyE5StyleVG_AA15ModifiedContentVyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGtGMd);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v7;
  result = *&v16;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  return result;
}

uint64_t closure #1 in closure #2 in SessionPauseResumeStartButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Material();
  MEMORY[0x28223BE20](v7);
  v8 = *(a1 + 40);
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    if (WorkoutStatePublisher.workoutPaused.getter())
    {
      static Color.yellow.getter();
      v9 = Color.opacity(_:)();

      v19 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    v19 = v8;
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  static Material.regular.getter();
LABEL_6:
  v10 = AnyShapeStyle.init<A>(_:)();
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    WorkoutStatePublisher.workoutPaused.getter();
  }

  else
  {
    swift_getKeyPath();
    v19 = v8;
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
  }

  v11 = Image.init(systemName:)();
  static Font.Weight.semibold.getter();
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v6, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  SessionPauseResumeStartButton.symbolForegroundColor.getter();
  v16 = v15;
  result = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = 256;
  *(a2 + 16) = v11;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v13;
  *(a2 + 40) = result;
  *(a2 + 48) = v16;
  return result;
}

void SessionPauseResumeStartButton.init(sessionControls:sessionViewModel:workoutStatePublisher:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SessionControls(a1, a3);
  *(a3 + 40) = a2;
  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  *(a3 + 48) = ObservedObject.init(wrappedValue:)();
  *(a3 + 56) = v5;
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = specialized UIDevice.screenType.getter();

  v9 = dbl_20CB66A70[v8];
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v10 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v10 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v9 = v9 * (v19 / v22 * 0.95);
  }

  *(a3 + 64) = v9;
  v23 = [v6 currentDevice];
  v24 = specialized UIDevice.screenType.getter();

  v25 = dbl_20CB66AC8[v24];
  v26 = [v10 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [v10 mainScreen];
  [v29 nativeScale];
  v31 = v30;

  if (v28 != v31)
  {
    v32 = [v10 mainScreen];
    [v32 scale];
    v34 = v33;

    v35 = [v10 mainScreen];
    [v35 nativeScale];
    v37 = v36;

    v25 = v25 * (v34 / v37 * 0.95);
  }

  *(a3 + 72) = v25;
}

uint64_t outlined init with take of SessionControls(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for SessionPauseResumeStartButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for SessionPauseResumeStartButton(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA6CircleVAA03AnyG5StyleVG_AA15ModifiedContentVyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA06_ShapeD0VyAA6CircleVAA03AnyE5StyleVG_AA15ModifiedContentVyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGtGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGAA01_di4KindQ0VyAMGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA03AnyI5StyleVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAA5ColorVSgGGtGGGAA14_OpacityEffectVGAA01_no9TransformQ0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentQ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutStatePublisher and conformance WorkoutStatePublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ActivityRingsViewPhone(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ActivityRingsViewPhone(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone()
{
  result = lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone;
  if (!lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone;
  if (!lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone);
  }

  return result;
}

void *ActivityRingsViewPhone.makeUIView(context:)()
{
  v1 = v0;
  v2 = [objc_opt_self() activityRingGroupForRingType_];
  v3 = [objc_allocWithZone(MEMORY[0x277CE8EA8]) initWithRingGroup_];

  v4 = ARUIRingsView.withRingGroupDiameter(_:)();
  v5 = ARUIRingsView.withRingGroupThickness(_:)();

  v6 = ARUIRingsView.withRingGroupInterspacing(_:)();
  v7 = [objc_opt_self() clearColor];
  v8 = UIView.backgroundColor(_:)();

  v9 = ARUIRingsView.emptyRings()();
  [v9 hk:*v1 configureWithActivitySummary:*(v1 + 16) animated:?];
  if (*(v1 + 17))
  {
    v10 = *(v1 + 18);
    v11 = objc_opt_self();
    v12 = &selRef_wheelchairSpriteSheet;
    if ((v10 & 1) == 0)
    {
      v12 = &selRef_defaultSpriteSheet;
    }

    v13 = [v11 *v12];
    v14 = [v9 ringGroup];
    [v14 setSpriteSheet_];

    v15 = [v9 ringGroup];
    [v15 playSpriteAnimation];
  }

  return v9;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ActivityRingsViewPhone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ActivityRingsViewPhone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ActivityRingsViewPhone()
{
  lazy protocol witness table accessor for type ActivityRingsViewPhone and conformance ActivityRingsViewPhone();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t SessionControlsSheetHeights.init(sessionViewModel:controlsState:metricsPublisher:sessionControls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v54 = a4;
  v55 = a5;
  v51 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMd) - 8;
  MEMORY[0x28223BE20](v57);
  v9 = v50 - v8;
  v10 = type metadata accessor for SessionControlsSheet();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v50 - v15;
  v59 = 0;
  static Binding.constant(_:)();
  v17 = v61;
  v18 = v62;
  v19 = v63;
  outlined init with copy of SessionControls(a4, &v16[v11[10]]);
  *v16 = v17;
  *(v16 + 1) = v18;
  v16[16] = v19;
  v53 = type metadata accessor for SessionViewModel();
  v52 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  v56 = a1;

  v50[1] = a2;

  v20 = v51;
  v51 = v20;
  Bindable<A>.init(wrappedValue:)();
  v50[3] = type metadata accessor for SessionControlsState();
  v50[2] = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  *&v16[v11[9]] = v20;
  v21 = &v16[v11[11]];
  v58 = 0;
  State.init(wrappedValue:)();
  v22 = v60;
  *v21 = v59;
  *(v21 + 1) = v22;
  v23 = &v16[v11[12]];
  v58 = 0;
  State.init(wrappedValue:)();
  v24 = v60;
  *v23 = v59;
  *(v23 + 1) = v24;
  v25 = &v16[v11[13]];
  v58 = 0;
  State.init(wrappedValue:)();
  v26 = v60;
  *v25 = v59;
  *(v25 + 1) = v26;
  v27 = objc_opt_self();
  v28 = [v27 mainScreen];
  [v28 bounds];

  outlined init with copy of SessionControlsSheet(v16, v9);
  *&v9[*(v57 + 44)] = 256;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMd);
  v30 = objc_allocWithZone(v29);
  v31 = UIHostingController.init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v33 = v32;

  v59 = 1;
  static Binding.constant(_:)();
  v34 = v61;
  v35 = v62;
  LOBYTE(a2) = v63;
  v36 = v54;
  outlined init with copy of SessionControls(v54, &v13[v11[10]]);
  *v13 = v34;
  *(v13 + 1) = v35;
  v13[16] = a2;

  Bindable<A>.init(wrappedValue:)();
  Bindable<A>.init(wrappedValue:)();
  *&v13[v11[9]] = v51;
  v37 = &v13[v11[11]];
  v58 = 0;
  State.init(wrappedValue:)();
  v38 = v60;
  *v37 = v59;
  *(v37 + 1) = v38;
  v39 = &v13[v11[12]];
  v58 = 0;
  State.init(wrappedValue:)();
  v40 = v60;
  *v39 = v59;
  *(v39 + 1) = v40;
  v41 = &v13[v11[13]];
  v58 = 0;
  State.init(wrappedValue:)();
  v42 = v60;
  *v41 = v59;
  *(v41 + 1) = v42;
  v43 = [v27 mainScreen];
  [v43 bounds];

  outlined init with copy of SessionControlsSheet(v13, v9);
  *&v9[*(v57 + 44)] = 256;
  v44 = objc_allocWithZone(v29);
  v45 = UIHostingController.init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v47 = v46;

  __swift_destroy_boxed_opaque_existential_1(v36);
  outlined destroy of SessionControlsSheet(v13);
  result = outlined destroy of SessionControlsSheet(v16);
  v49 = v55;
  *v55 = v33;
  v49[1] = v47;
  return result;
}

uint64_t _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SessionControlsSheetHeights(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SessionControlsSheetHeights(uint64_t result, int a2, int a3)
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

uint64_t protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance SafetyMonitorSessionDetailsView()
{
  v1 = type metadata accessor for UUID();
  v2 = MEMORY[0x28223BE20](v1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
  v5 = objc_allocWithZone(type metadata accessor for DefaultInitiatorSessionDetailsViewController());
  return DefaultInitiatorSessionDetailsViewController.init(sessionID:)();
}

void protocol witness for static UIViewControllerRepresentable.dismantleUIViewController(_:coordinator:) in conformance SafetyMonitorSessionDetailsView(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (v2)
  {

    v2(v3);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance SafetyMonitorSessionDetailsView@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  type metadata accessor for SafetyMonitorSessionDetailsCoordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *a2 = v7;

  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SafetyMonitorSessionDetailsView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView(&lazy protocol witness table cache variable for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SafetyMonitorSessionDetailsView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView(&lazy protocol witness table cache variable for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance SafetyMonitorSessionDetailsView()
{
  lazy protocol witness table accessor for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView(&lazy protocol witness table cache variable for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t SafetyMonitorSessionDetailsCoordinator.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SafetyMonitorSessionDetailsView()
{
  result = type metadata singleton initialization cache for SafetyMonitorSessionDetailsView;
  if (!type metadata singleton initialization cache for SafetyMonitorSessionDetailsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SafetyMonitorSessionDetailsView()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t lazy protocol witness table accessor for type SafetyMonitorSessionDetailsView and conformance SafetyMonitorSessionDetailsView(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafetyMonitorSessionDetailsView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *SafetyMonitorMessageComposeView.makeUIViewController(context:)(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for URLComponents();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WOMFMessageComposeViewController();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled] = a3 == 9;
  *&v13[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType] = a4;
  if (*&a2[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric] == a3)
  {
    v14 = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v37 - 2) = a2;
    *(&v37 - 1) = a3;
    v40 = a2;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager();
    v16 = a2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v17 = *&v13[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager];
  *&v13[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager] = a2;

  v18 = v13;
  [v18 setMessageComposeDelegate_];
  URLComponents.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  type metadata accessor for URLQueryItem();
  v19 = swift_allocObject();
  v37 = xmmword_20CB5DA70;
  *(v19 + 16) = xmmword_20CB5DA70;
  static PayloadKeys.sessionStartEntryTypeKey.getter();
  v40 = a3;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  v20 = [objc_allocWithZone(MEMORY[0x277CD68F8]) init];
  v21 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
  v22 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];

  [(objc_class *)v20 setLayout:v22];
  [(objc_class *)v20 setRequiresValidation:1];
  URLComponents.url.getter();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v26 = 0;
  if ((*(v24 + 48))(v9, 1, v23) != 1)
  {
    URL._bridgeToObjectiveC()(v25);
    v26 = v27;
    (*(v24 + 8))(v9, v23);
  }

  [(objc_class *)v20 setURL:v26];

  [v18 setMessage:v20 withExtensionBundleIdentifier:*MEMORY[0x277D4AD30]];
  swift_getKeyPath();
  v40 = a2;
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *&a2[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle];
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    v30 = v28;
    v31 = [v30 primaryHandle];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v29 + 32) = v32;
    *(v29 + 40) = v34;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setRecipients_];

    v20 = isa;
  }

  (*(v38 + 8))(v12, v39);
  return v18;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SafetyMonitorMessageComposeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SafetyMonitorMessageComposeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance SafetyMonitorMessageComposeView()
{
  lazy protocol witness table accessor for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

Swift::Void __swiftcall WOMFMessageComposeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = aBlock - v8;
  v10 = type metadata accessor for WOMFMessageComposeViewController();
  v24.receiver = v1;
  v24.super_class = v10;
  objc_msgSendSuper2(&v24, sel_viewDidAppear_, a1);
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled) == 1)
  {
    static WOLog.safety.getter();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] messageComposeTimeout enabled for %f seconds", v14, 0xCu);
      MEMORY[0x20F30E080](v14, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in WOMFMessageComposeViewController.viewDidAppear(_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_10;
    v17 = _Block_copy(aBlock);

    v18 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:30.0];
    _Block_release(v17);
    v19 = *&v11[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer];
    *&v11[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer] = v18;
  }

  else
  {
    static WOLog.safety.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20C66F000, v20, v21, "[SafetyCheckIn] messageComposeTimeout disabled, no auto dismiss", v22, 2u);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void closure #1 in WOMFMessageComposeViewController.viewDidAppear(_:)()
{
  v0 = type metadata accessor for CheckInControllerDismissalReason();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static WOLog.safety.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] messageComposeTimeout of %f seconds fired, auto dismiss WOMFMessageComposeViewController", v13, 0xCu);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = *&v10[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager];
    if (v14)
    {
      (*(v1 + 104))(v3, *MEMORY[0x277D4AF40], v0);
      v15 = v14;
      SafetyMonitorManager.submitCheckInRemindersResponseMetric(reason:workoutActivityType:)();

      (*(v1 + 8))(v3, v0);
    }

    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall WOMFMessageComposeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WOMFMessageComposeViewController();
  v16.receiver = v1;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, sel_viewDidDisappear_, a1);
  v8 = OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer;
  v9 = *&v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer];
  if (v9)
  {
    v10 = v9;
    if ([v10 isValid])
    {
      v11 = v1;
      [v10 invalidate];
      static WOLog.safety.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] messageComposeTimeout invalidated", v14, 2u);
        MEMORY[0x20F30E080](v14, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      v1 = v11;
    }

    else
    {
    }
  }

  v15 = *&v1[v8];
  *&v1[v8] = 0;
}

id WOMFMessageComposeViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v2[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled] = 0;
  *&v2[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType] = 3000;
  *&v2[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager] = 0;
  *&v2[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeout] = 0x403E000000000000;
  *&v2[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer] = 0;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for WOMFMessageComposeViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id WOMFMessageComposeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled] = 0;
  *&v3[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType] = 3000;
  *&v3[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager] = 0;
  *&v3[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeout] = 0x403E000000000000;
  *&v3[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer] = 0;
  if (a2)
  {
    v5 = MEMORY[0x20F30BAD0]();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for WOMFMessageComposeViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id WOMFMessageComposeViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeoutEnabled] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_workoutActivityType] = 3000;
  *&v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_safetyMonitorManager] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimeout] = 0x403E000000000000;
  *&v1[OBJC_IVAR____TtC9WorkoutUI32WOMFMessageComposeViewController_messageComposeTimer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WOMFMessageComposeViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id WOMFMessageComposeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WOMFMessageComposeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for SafetyMonitorMessageComposeView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SafetyMonitorMessageComposeView(uint64_t result, int a2, int a3)
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

id key path getter for SafetyMonitorManager.mostLikelyReceiverHandle : SafetyMonitorManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  *a2 = v4;

  return v4;
}

void key path setter for SafetyMonitorManager.mostLikelyReceiverHandle : SafetyMonitorManager(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SafetyMonitorManager.mostLikelyReceiverHandle.setter(v1);
}

unint64_t lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager()
{
  result = lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager;
  if (!lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager)
  {
    type metadata accessor for SafetyMonitorManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SlidingGradientText()
{
  result = type metadata singleton initialization cache for SlidingGradientText;
  if (!type metadata singleton initialization cache for SlidingGradientText)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SlidingGradientText()
{
  type metadata accessor for Int?(319, &lazy cache variable for type metadata for Int?, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Int?(319, &lazy cache variable for type metadata for State<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Int?(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<LayoutDirection>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Int?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Environment<LayoutDirection>()
{
  if (!lazy cache variable for type metadata for Environment<LayoutDirection>)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<LayoutDirection>);
    }
  }
}

uint64_t SlidingGradientText.direction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SlidingGradientText();
  outlined init with copy of Environment<LayoutDirection>.Content(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
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

double SlidingGradientText.startPointWhenTextIsNotGradient.getter()
{
  v1 = type metadata accessor for LayoutDirection();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-v6];
  SlidingGradientText.direction.getter(&v12[-v6]);
  (*(v2 + 104))(v4, *MEMORY[0x277CDFA88], v1);
  v8 = static LayoutDirection.== infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = *(v0 + 64);
  if (v8)
  {
    v14 = *(v0 + 56);
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    if (v13 == 1)
    {
      static UnitPoint.trailing.getter();
    }

    else
    {
      return -0.5;
    }
  }

  else
  {
    v14 = *(v0 + 56);
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    if (v13 == 1)
    {
      static UnitPoint.leading.getter();
    }

    else
    {
      return 1.5;
    }
  }

  return result;
}

uint64_t SlidingGradientText.endPointWhenTextIsGradient.getter()
{
  v1 = type metadata accessor for LayoutDirection();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-v6];
  SlidingGradientText.direction.getter(&v12[-v6]);
  (*(v2 + 104))(v4, *MEMORY[0x277CDFA88], v1);
  v8 = static LayoutDirection.== infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = *(v0 + 64);
  if (v8)
  {
    v14 = *(v0 + 56);
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    result = State.wrappedValue.getter();
    if ((v13 & 1) == 0)
    {
      return static UnitPoint.leading.getter();
    }
  }

  else
  {
    v14 = *(v0 + 56);
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    result = State.wrappedValue.getter();
    if ((v13 & 1) == 0)
    {
      return static UnitPoint.trailing.getter();
    }
  }

  return result;
}

__n128 SlidingGradientText.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SlidingGradientText();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *v1;
  v7 = v1[1];
  v30 = v6;
  v31.n128_u64[0] = v7;
  lazy protocol witness table accessor for type String and conformance String();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v2 + 48);
  v30 = *(v2 + 40);
  v31.n128_u64[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v16 = v29;
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  v21 = v12 & 1;
  LOBYTE(v29) = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20CB5EA80;
  *(v22 + 32) = static Color.gray.getter();
  *(v22 + 40) = static Color.white.getter();
  *(v22 + 48) = static Color.gray.getter();
  SlidingGradientText.startPointWhenTextIsNotGradient.getter();
  SlidingGradientText.endPointWhenTextIsGradient.getter();
  MEMORY[0x20F30B340](v22);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v23 = v30;
  outlined init with copy of SlidingGradientText(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v25 = swift_allocObject();
  outlined init with take of SlidingGradientText(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v21;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v23;
  result = v31;
  *(a1 + 88) = v32;
  *(a1 + 72) = result;
  *(a1 + 104) = partial apply for closure #1 in SlidingGradientText.body.getter;
  *(a1 + 112) = v25;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t closure #1 in SlidingGradientText.body.getter(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    static Animation.linear(duration:)();
    Animation.repeatForever(autoreverses:)();
  }

  else
  {
    static Animation.linear(duration:)();
    Animation.repeatCount(_:autoreverses:)();
  }

  MEMORY[0x28223BE20](v1);
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in SlidingGradientText.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t outlined init with copy of SlidingGradientText(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingGradientText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SlidingGradientText(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingGradientText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SlidingGradientText.body.getter()
{
  v1 = *(type metadata accessor for SlidingGradientText() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in SlidingGradientText.body.getter(v2);
}

uint64_t outlined init with copy of Environment<LayoutDirection>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA12_ScaleEffectVGAA24_ForegroundStyleModifierVyAA14LinearGradientVGGAA017_AppearanceActionJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_ScaleEffectVGAA24_ForegroundStyleModifierVyAA14LinearGradientVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _ScaleEffect>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA12_ScaleEffectVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA14LinearGradientVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

uint64_t SessionControlsLeadingButton.init(sessionViewModel:sessionControls:publisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = specialized UIDevice.screenType.getter();

  v9 = dbl_20CB671E8[v8];
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v10 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v10 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v9 = v9 * (v19 / v22 * 0.95);
  }

  *(a4 + 112) = v9;
  v23 = [v6 currentDevice];
  v24 = specialized UIDevice.screenType.getter();

  v25 = dbl_20CB67240[v24];
  v26 = [v10 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [v10 mainScreen];
  [v29 nativeScale];
  v31 = v30;

  if (v28 != v31)
  {
    v32 = [v10 mainScreen];
    [v32 scale];
    v34 = v33;

    v35 = [v10 mainScreen];
    [v35 nativeScale];
    v37 = v36;

    v25 = v25 * (v34 / v37 * 0.95);
  }

  *(a4 + 120) = v25;
  *a4 = a1;
  outlined init with copy of SessionControls(a2, a4 + 8);
  type metadata accessor for MetricsPublisher();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);

  v38 = v47;
  *(a4 + 48) = ObservedObject.init(wrappedValue:)();
  *(a4 + 56) = v39;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  *(a4 + 64) = ObservedObject.init(wrappedValue:)();
  *(a4 + 72) = v40;
  MetricsPublisher.multisportMetricsPublisher.getter();
  type metadata accessor for MultisportMetricsPublisher();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type MultisportMetricsPublisher and conformance MultisportMetricsPublisher, MEMORY[0x277D7E5A8]);
  *(a4 + 80) = ObservedObject.init(wrappedValue:)();
  *(a4 + 88) = v41;
  MetricsPublisher.intervalsMetricsPublisher.getter();
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518]);
  v42 = ObservedObject.init(wrappedValue:)();
  v44 = v43;

  result = __swift_destroy_boxed_opaque_existential_1(a2);
  *(a4 + 96) = v42;
  *(a4 + 104) = v44;
  return result;
}

uint64_t SessionControlsLeadingButton.symbolName.getter()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.workoutConfigurationType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7E0F8])
  {
LABEL_2:
    v9[1] = MetricsPublisher.segmentIndex.getter();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v5;
    MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
    return v10;
  }

  if (v4 == *MEMORY[0x277D7E110])
  {
    if (IntervalsMetricsPublisher.intervalNextStep.getter())
    {

      return 0x6F662E776F727261;
    }
  }

  else
  {
    if (v4 == *MEMORY[0x277D7E100] || v4 == *MEMORY[0x277D7E108])
    {
      goto LABEL_2;
    }

    if (v4 != *MEMORY[0x277D7E0F0])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    MetricsPublisher.multisportWorkoutInAutoMode.getter();
    v8 = MultisportMetricsPublisher.nextMultisportActivity.getter();
    if (v8)
    {

      return 0x6F662E776F727261;
    }
  }

  return 0x6568632E67616C66;
}

uint64_t SessionControlsLeadingButton.axSymbolLabel.getter()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.workoutConfigurationType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7E0F8])
  {
LABEL_2:
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v15 = 0xE000000000000000;
    v6 = 0x617A696C61636F4CLL;
    v7 = 0xEB00000000656C62;
    v8 = 0x800000020CB966B0;
    v9 = 0xD00000000000001CLL;
LABEL_15:
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, *&v6, v5, v11, *(&v15 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v4 == *MEMORY[0x277D7E110])
  {
LABEL_12:
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v15 = 0xE000000000000000;
    v9 = 0x5F54554F4B524F57;
    v8 = 0xEC0000005458454ELL;
    v6 = 0x617A696C61636F4CLL;
    v7 = 0xEB00000000656C62;
    goto LABEL_15;
  }

  if (v4 == *MEMORY[0x277D7E100] || v4 == *MEMORY[0x277D7E108])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277D7E0F0])
  {
    MetricsPublisher.multisportWorkoutInAutoMode.getter();
    goto LABEL_12;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SessionControlsLeadingButton.axSymbolValue.getter()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.workoutConfigurationType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7E0F8])
  {
LABEL_2:
    v7[1] = MetricsPublisher.segmentIndex.getter();
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  if (v4 != *MEMORY[0x277D7E110])
  {
    if (v4 == *MEMORY[0x277D7E100] || v4 == *MEMORY[0x277D7E108])
    {
      goto LABEL_2;
    }

    if (v4 != *MEMORY[0x277D7E0F0])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    MetricsPublisher.multisportWorkoutInAutoMode.getter();
  }

  return 0;
}

uint64_t SessionControlsLeadingButton.disabled.getter()
{
  v1 = type metadata accessor for ConfigurationType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    WorkoutStatePublisher.workoutPaused.getter();
  }

  else
  {
    swift_getKeyPath();
    v11[1] = v5;
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v5 + 18))
    {
      goto LABEL_17;
    }
  }

  MetricsPublisher.workoutConfigurationType.getter();
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x277D7E0F8])
  {
LABEL_5:
    v7 = WorkoutStatePublisher.workoutPaused.getter();
    return v7 & 1;
  }

  if (v6 == *MEMORY[0x277D7E110])
  {
    if (IntervalsMetricsPublisher.intervalThisStep.getter())
    {

      v7 = 0;
      return v7 & 1;
    }

LABEL_17:
    v7 = 1;
    return v7 & 1;
  }

  if (v6 == *MEMORY[0x277D7E100] || v6 == *MEMORY[0x277D7E108])
  {
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D7E0F0])
  {
    if ((MetricsPublisher.multisportWorkoutInAutoMode.getter() & 1) == 0)
    {
      v9 = MultisportMetricsPublisher.nextMultisportActivity.getter();
      if (v9)
      {

        v7 = 0;
        return v7 & 1;
      }
    }

    goto LABEL_17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SessionControlsLeadingButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  outlined init with copy of SessionControlsLeadingButton(v1, &v32);
  v11 = swift_allocObject();
  v12 = v37;
  v11[5] = v36;
  v11[6] = v12;
  v13 = v39;
  v11[7] = v38;
  v11[8] = v13;
  v14 = v33;
  v11[1] = v32;
  v11[2] = v14;
  v15 = v35;
  v11[3] = v34;
  v11[4] = v15;
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGAA14_OpacityEffectVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v16 = SessionControlsLeadingButton.disabled.getter();
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16 & 1;
  v19 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGMd) + 36)];
  *v19 = KeyPath;
  v19[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_4;
  v19[2] = v18;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v4[*(v2 + 36)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v30 = SessionControlsLeadingButton.axSymbolLabel.getter();
  v31 = v22;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v4, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGMd);
  v30 = SessionControlsLeadingButton.axSymbolValue.getter();
  v31 = v23;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  specialized SessionControlsLeadingButton.accessibilityIdentifier.getter();

  v24 = v28;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  result = static ContentShapeKinds.accessibility.getter();
  *v25 = 0;
  return result;
}

uint64_t closure #1 in SessionControlsLeadingButton.body.getter(void *a1)
{
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.workoutConfigurationType.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E0F8])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D7E110])
  {
    v7 = 3;
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D7E100] || v6 == *MEMORY[0x277D7E108])
  {
LABEL_2:
    v7 = 1;
LABEL_5:
    v8 = a1[4];
    v9 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v8);
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = v7;
    v13 = 5;
    (*(v9 + 8))(v12, v8, v9);
    return outlined consume of SessionControl(v7, 0, 0, 5u);
  }

  if (v6 != *MEMORY[0x277D7E0F0])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = MetricsPublisher.multisportWorkoutInAutoMode.getter();
  if ((result & 1) == 0)
  {
    result = MultisportMetricsPublisher.nextMultisportActivity.getter();
    if (result)
    {

      v7 = 2;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t closure #2 in SessionControlsLeadingButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGtGGMd);
  closure #1 in closure #2 in SessionControlsLeadingButton.body.getter(v4 + *(v6 + 44));
  if (SessionControlsLeadingButton.disabled.getter())
  {
    v7 = 0.35;
  }

  else
  {
    v7 = 1.0;
  }

  outlined init with take of ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGAA14_OpacityEffectVGMd);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t closure #1 in closure #2 in SessionControlsLeadingButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  static Material.regular.getter();
  *&v11[*(v6 + 64)] = 256;
  SessionControlsLeadingButton.symbolName.getter();
  v12 = Image.init(systemName:)();
  v13 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Font.Weight.regular.getter();
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  v17 = swift_getKeyPath();
  outlined init with copy of _ShapeView<Circle, Material>(v11, v8);
  outlined init with copy of _ShapeView<Circle, Material>(v8, a1);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGGtMd) + 48));
  *v18 = v12;
  v18[1] = KeyPath;
  v18[2] = v13;
  v18[3] = v17;
  v18[4] = v16;

  outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v11, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);

  return outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(v8, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionControlsLeadingButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for SessionControlsLeadingButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_AEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized SessionControlsLeadingButton.accessibilityIdentifier.getter()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.workoutConfigurationType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7E0F8])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277D7E110])
  {
    if (one-time initialization token for nextInterval != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.SessionControls.nextInterval;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D7E100] || v4 == *MEMORY[0x277D7E108])
  {
LABEL_2:
    if (one-time initialization token for markSegment != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.SessionControls.markSegment;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D7E0F0])
  {
    MetricsPublisher.multisportWorkoutInAutoMode.getter();
    if (one-time initialization token for nextLeg != -1)
    {
      swift_once();
    }

    v5 = &static WorkoutAccessibilityIdentifier.SessionControls.nextLeg;
    return *v5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGtGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _ShapeView<Circle, Material>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGtGGAA14_OpacityEffectVGGAA01_mn9TransformP0VySbGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>>, _OpacityEffect>>, _EnvironmentKeyTransformModifier<Bool>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for SessionControlsView_iOS(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for SessionControlsView_iOS(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t SessionControlsView_iOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAF0g16PauseResumeStartJ0VAjA19_ConditionalContentVyAF0g12HeartDevicesJ0VAF0gh14ExpandCollapseJ0VGtGGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGMd);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v33);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v32 - v12;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v13 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAJ0j16PauseResumeStartM0VAnA19_ConditionalContentVyAJ0j12HeartDevicesM0VAJ0jk14ExpandCollapseM0VGtGGMd) + 44)];
  v32 = v1;
  closure #1 in SessionControlsView_iOS.body.getter(v1, v13);
  v14 = v1[7];
  swift_getKeyPath();
  *&v52[0] = v14;
  lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v14 + 17))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  outlined init with take of HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>(v4, v8, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAF0g16PauseResumeStartJ0VAjA19_ConditionalContentVyAF0g12HeartDevicesJ0VAF0gh14ExpandCollapseJ0VGtGGMd);
  *&v8[*(v6 + 44)] = v15;
  swift_getKeyPath();
  *&v52[0] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v14 + 17);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  outlined init with take of HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>(v8, v10, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGMd);
  v19 = &v10[*(v33 + 36)];
  *v19 = KeyPath;
  v19[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_5;
  v19[2] = v18;
  swift_getKeyPath();
  *&v52[0] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v20 = v34;
  View.accessibilityHidden(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v21 = static Alignment.center.getter();
  v23 = v22;
  closure #2 in SessionControlsView_iOS.body.getter(v32, &v37);
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  v47 = v40;
  *&v51 = v21;
  *(&v51 + 1) = v23;
  v24 = v20;
  v25 = v35;
  outlined init with take of HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>(v24, v35, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA31AccessibilityAttachmentModifierVGMd);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA31AccessibilityAttachmentModifierVGAA16_OverlayModifierVyAH0J11LockOverlayVSgGGMd) + 36));
  v27 = v49;
  v26[4] = v48;
  v26[5] = v27;
  v28 = v51;
  v26[6] = v50;
  v26[7] = v28;
  v29 = v45;
  *v26 = v44;
  v26[1] = v29;
  v30 = v47;
  v26[2] = v46;
  v26[3] = v30;
  v52[0] = v37;
  v52[1] = v38;
  v52[5] = v42;
  v52[6] = v43;
  v52[3] = v40;
  v52[4] = v41;
  v52[2] = v39;
  v53 = v21;
  v54 = v23;
  outlined init with copy of _OverlayModifier<ControlsLockOverlay?>(&v44, &v36, &_s7SwiftUI16_OverlayModifierVy07WorkoutB0012ControlsLockC0VSgGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(v52, &_s7SwiftUI16_OverlayModifierVy07WorkoutB0012ControlsLockC0VSgGMd);
}

uint64_t closure #1 in SessionControlsView_iOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = type metadata accessor for SessionControlsExpandCollapseButton();
  MEMORY[0x28223BE20](v22);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB025SessionHeartDevicesButtonVAF0g22ControlsExpandCollapseJ0V_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SessionHeartDevicesButtonVAD0f22ControlsExpandCollapseI0VGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v14 = &v23[-v13 - 8];
  v15 = *(a1 + 8);
  outlined init with copy of SessionControls(a1 + 16, &v24);
  v16 = *a1;
  swift_retain_n();
  SessionControlsLeadingButton.init(sessionViewModel:sessionControls:publisher:)(v15, &v24, v16, v28);
  outlined init with copy of SessionControls(a1 + 16, &v24);
  MetricsPublisher.workoutStatePublisher.getter();
  SessionPauseResumeStartButton.init(sessionControls:sessionViewModel:workoutStatePublisher:)(&v24, v15, v27);
  v17 = type metadata accessor for WorkoutFeatures();
  v25 = v17;
  v26 = lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DDC0], v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if ((v17 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    *v8 = specialized SessionHeartDevicesButton.init()();
    *(v8 + 1) = v19;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton();
    lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type SessionControlsExpandCollapseButton and conformance SessionControlsExpandCollapseButton, type metadata accessor for SessionControlsExpandCollapseButton);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {

    SessionControlsExpandCollapseButton.init(controlsState:)(v5);
    outlined init with copy of SessionControlsExpandCollapseButton(v5, v8);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton();
    lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type SessionControlsExpandCollapseButton and conformance SessionControlsExpandCollapseButton, type metadata accessor for SessionControlsExpandCollapseButton);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of SessionControlsExpandCollapseButton(v5);
  }

  outlined init with copy of SessionControlsLeadingButton(v28, &v24);
  outlined init with copy of SessionPauseResumeStartButton(v27, v23);
  outlined init with copy of _OverlayModifier<ControlsLockOverlay?>(v14, v11, &_s7SwiftUI19_ConditionalContentVy07WorkoutB025SessionHeartDevicesButtonVAD0f22ControlsExpandCollapseI0VGMd);
  outlined init with copy of SessionControlsLeadingButton(&v24, a2);
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  outlined init with copy of SessionPauseResumeStartButton(v23, a2 + 144);
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28SessionControlsLeadingButtonV_05SwiftB06SpacerVAA0c16PauseResumeStartF0VAfD19_ConditionalContentVyAA0c12HeartDevicesF0VAA0cd14ExpandCollapseF0VGtMd);
  outlined init with copy of _OverlayModifier<ControlsLockOverlay?>(v11, a2 + *(v20 + 96), &_s7SwiftUI19_ConditionalContentVy07WorkoutB025SessionHeartDevicesButtonVAD0f22ControlsExpandCollapseI0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(v14, &_s7SwiftUI19_ConditionalContentVy07WorkoutB025SessionHeartDevicesButtonVAD0f22ControlsExpandCollapseI0VGMd);
  outlined destroy of SessionPauseResumeStartButton(v27);
  outlined destroy of SessionControlsLeadingButton(v28);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(v11, &_s7SwiftUI19_ConditionalContentVy07WorkoutB025SessionHeartDevicesButtonVAD0f22ControlsExpandCollapseI0VGMd);
  outlined destroy of SessionPauseResumeStartButton(v23);
  return outlined destroy of SessionControlsLeadingButton(&v24);
}

uint64_t closure #2 in SessionControlsView_iOS.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(v4 + 17) == 1)
  {
    v7 = a1[8];
    v6 = a1[9];

    State.init(wrappedValue:)();
    v8 = v16;
    v9 = v17;
    result = State.init(wrappedValue:)();
    v10 = v16;
    v11 = v17;
    v12 = xmmword_20CB672A0;
    v13 = xmmword_20CB672B0;
    v14 = xmmword_20CB672C0;
    v15 = xmmword_20CB672D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    v15 = 0uLL;
    v14 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v13;
  *(a2 + 96) = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAF0g16PauseResumeStartJ0VAjA19_ConditionalContentVyAF0g12HeartDevicesJ0VAF0gh14ExpandCollapseJ0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton()
{
  result = lazy protocol witness table cache variable for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton;
  if (!lazy protocol witness table cache variable for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionHeartDevicesButton and conformance SessionHeartDevicesButton);
  }

  return result;
}

uint64_t outlined init with copy of _OverlayModifier<ControlsLockOverlay?>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SessionControlsExpandCollapseButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionControlsExpandCollapseButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SessionControlsExpandCollapseButton(uint64_t a1)
{
  v2 = type metadata accessor for SessionControlsExpandCollapseButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, _OverlayModifier<ControlsLockOverlay?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, _OverlayModifier<ControlsLockOverlay?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, _OverlayModifier<ControlsLockOverlay?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA31AccessibilityAttachmentModifierVGAA16_OverlayModifierVyAH0J11LockOverlayVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ControlsLockOverlay?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy07WorkoutB0012ControlsLockC0VSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, _OverlayModifier<ControlsLockOverlay?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVy07WorkoutB028SessionControlsLeadingButtonV_AA6SpacerVAH0i16PauseResumeStartL0VAlA012_ConditionalD0VyAH0i12HeartDevicesL0VAH0ij14ExpandCollapseL0VGtGGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SessionControlsState and conformance SessionControlsState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(SessionControlsLeadingButton, Spacer, SessionPauseResumeStartButton, Spacer, _ConditionalContent<SessionHeartDevicesButton, SessionControlsExpandCollapseButton>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t RaceRouteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 64);
  type metadata accessor for RaceRouteLocationsModel();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type RaceRouteLocationsModel and conformance RaceRouteLocationsModel, type metadata accessor for RaceRouteLocationsModel);
  v5 = v4;
  StateObject.wrappedValue.getter();
  v20 = implicit closure #2 in implicit closure #1 in variable initialization expression of MapViewRepresentable._mapWrapper;
  v21 = 0;
  v22 = 0;
  v23 = v5;
  v24 = ObservedObject.init(wrappedValue:)();
  v25 = v6;
  v7 = swift_allocObject();
  v8 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 64);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  outlined init with copy of RaceRouteView(v2, v19);
  lazy protocol witness table accessor for type MapViewRepresentable and conformance MapViewRepresentable();
  View.onTapGesture(count:perform:)();

  v10 = StateObject.wrappedValue.getter();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07WorkoutB003MapE13RepresentableV_Qo_AA25_AppearanceActionModifierVGMd) + 36));
  *v11 = partial apply for implicit closure #2 in implicit closure #1 in RaceRouteView.body.getter;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  v12 = *(v2 + 40);
  v13 = swift_allocObject();
  v14 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v2 + 64);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07WorkoutB003MapD13RepresentableV_Qo_AA25_AppearanceActionModifierVGGMd);
  *(a1 + *(v16 + 52)) = v12;
  v17 = (a1 + *(v16 + 56));
  *v17 = partial apply for closure #2 in RaceRouteView.body.getter;
  v17[1] = v13;
  outlined init with copy of RaceRouteView(v2, v19);
}

void closure #2 in RaceRouteView.body.getter()
{
  type metadata accessor for RaceRouteLocationsModel();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type RaceRouteLocationsModel and conformance RaceRouteLocationsModel, type metadata accessor for RaceRouteLocationsModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = [Strong rendererForOverlay_];

      if (!v2)
      {
        return;
      }

      type metadata accessor for RaceRoutePathRenderer();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        RaceRoutePathRenderer.updateHighlightValues()();
        [v4 setNeedsDisplay];
      }
    }

    else
    {
      v2 = v5;
    }
  }
}

uint64_t specialized RaceRouteView.init(navigationTitle:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  type metadata accessor for NSTimer();
  v9 = [objc_opt_self() mainRunLoop];
  v10 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of NSRunLoop.SchedulerOptions?(v8);
  v26 = v11;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v12 = ConnectablePublisher.autoconnect()();

  v28 = 1;
  State.init(wrappedValue:)();
  v13 = v26;
  v14 = v27;
  v28 = 0;
  v15 = type metadata accessor for RaceMapViewDelegate();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR____TtC9WorkoutUI19RaceMapViewDelegate__viewModel];
  swift_beginAccess();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type RaceRouteLocationsModel and conformance RaceRouteLocationsModel, type metadata accessor for RaceRouteLocationsModel);
  swift_retain_n();
  *v17 = ObservedObject.init(wrappedValue:)();
  v17[1] = v18;
  swift_endAccess();
  *&v16[OBJC_IVAR____TtC9WorkoutUI19RaceMapViewDelegate_polylineUpdateCadence] = 0x3FA999999999999ALL;
  v25.receiver = v16;
  v25.super_class = v15;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  RaceRouteLocationsModel.load()();

  v21 = v28;
  v22 = v24;
  *a4 = v23;
  *(a4 + 8) = v22;
  *(a4 + 16) = partial apply for implicit closure #1 in RaceRouteView.init(navigationTitle:viewModel:);
  *(a4 + 24) = a3;
  *(a4 + 32) = v21;
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *(a4 + 64) = v19;
  return result;
}

unint64_t type metadata accessor for NSTimer()
{
  result = lazy cache variable for type metadata for NSTimer;
  if (!lazy cache variable for type metadata for NSTimer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimer);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RaceRouteView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for RaceRouteView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm_21()
{

  outlined consume of StateObject<RaceRouteLocationsModel>.Storage();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<Publishers.Autoconnect<NSTimer.TimerPublisher>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AppearanceActionModifier>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<Publishers.Autoconnect<NSTimer.TimerPublisher>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AppearanceActionModifier>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<Publishers.Autoconnect<NSTimer.TimerPublisher>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AppearanceActionModifier>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07WorkoutB003MapD13RepresentableV_Qo_AA25_AppearanceActionModifierVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<Publishers.Autoconnect<NSTimer.TimerPublisher>, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AppearanceActionModifier>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionExtraControlsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t storeEnumTagSinglePayload for SessionExtraControlsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SessionExtraControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA15ModifiedContentVyAOy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAEyAOyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AgAE18confirmationDialog_AI15titleVisibilityAJ7messageQrqd___AmA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAU_SSAEyA2__A2_tGA1_Qo_SgAUtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyACyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAGyACyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AiAE18confirmationDialog_AK15titleVisibilityAL7messageQrqd___AoA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAU_SSAGyA2__A2_tGA1_Qo_SgAUtGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x402E000000000000;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAA15ModifiedContentVyASy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGG_SSAIyASyAA0T0VyAA4TextVGAXG_A7_tGQo__AYSgA10_AkAE18confirmationDialog_AM15titleVisibilityAN7messageQrqd___AqA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAY_SSAIyA6__A6_tGA5_Qo_SgAYtGGMd);
  closure #1 in SessionExtraControlsView.body.getter(v2, &v6[*(v10 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v12 = static Edge.Set.leading.getter();
  *(inited + 32) = v12;
  v13 = static Edge.Set.trailing.getter();
  *(inited + 33) = v13;
  v14 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  outlined init with take of VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>(v6, v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA15ModifiedContentVyAOy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAEyAOyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AgAE18confirmationDialog_AI15titleVisibilityAJ7messageQrqd___AmA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAU_SSAEyA2__A2_tGA1_Qo_SgAUtGGMd);
  v15 = &v9[*(v7 + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = static Edge.Set.top.getter();
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  outlined init with take of VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>(v9, a1, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyACyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAGyACyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AiAE18confirmationDialog_AK15titleVisibilityAL7messageQrqd___AoA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAU_SSAGyA2__A2_tGA1_Qo_SgAUtGGAA14_PaddingLayoutVGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyACyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAGyACyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AiAE18confirmationDialog_AK15titleVisibilityAL7messageQrqd___AoA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAU_SSAGyA2__A2_tGA1_Qo_SgAUtGGAA14_PaddingLayoutVGA18_GMd);
  v27 = a1 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t closure #1 in SessionExtraControlsView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v199 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVG_SSAA05TupleC0VyAA0S0VyAA4TextVG_A0_tGA_Qo_Md);
  v196 = *(v3 - 8);
  v197 = v3;
  MEMORY[0x28223BE20](v3);
  v189 = &v176 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVG_SSAA05TupleC0VyAA0S0VyAA4TextVG_A0_tGA_Qo_SgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v212 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v223 = &v176 - v8;
  v9 = type metadata accessor for Material();
  v216 = *(v9 - 8);
  v217 = v9;
  MEMORY[0x28223BE20](v9);
  v215 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v201 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v200 = &v176 - v13;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v205 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v198 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v225 = &v176 - v16;
  MEMORY[0x28223BE20](v17);
  v186 = &v176 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v211 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v210 = &v176 - v22;
  MEMORY[0x28223BE20](v23);
  v222 = &v176 - v24;
  MEMORY[0x28223BE20](v25);
  v221 = &v176 - v26;
  v27 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd);
  MEMORY[0x28223BE20](v203);
  v204 = &v176 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAKy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformR0VySbGG_SSAA05TupleC0VyAKyAA0O0VyAA4TextVGAPG_A1_tGQo_Md);
  v208 = *(v34 - 8);
  v209 = v34;
  MEMORY[0x28223BE20](v34);
  v207 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v220 = &v176 - v37;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v218 = objc_opt_self();
  v219 = ObjCClassFromMetadata;
  v39 = [v218 bundleForClass_];
  static Locale.current.getter();
  v213 = String.init(localized:table:bundle:locale:comment:)();
  v202 = v40;
  v41 = static Color.red.getter();
  static Color.red.getter();
  v42 = Color.opacity(_:)();

  *&v239 = v42;
  v43 = AnyShapeStyle.init<A>(_:)();
  v44 = *(a1 + 168);
  v45 = *(a1 + 176);
  LOBYTE(v239) = v44;
  *(&v239 + 1) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  LOBYTE(ObjCClassFromMetadata) = v251[0];
  v224 = a1;
  outlined init with copy of SessionExtraControlsView(a1, &v239);
  v47 = swift_allocObject();
  v48 = v248;
  *(v47 + 144) = v247;
  *(v47 + 160) = v48;
  *(v47 + 176) = v249;
  *(v47 + 192) = v250;
  v49 = v244;
  *(v47 + 80) = v243;
  *(v47 + 96) = v49;
  v50 = v246;
  *(v47 + 112) = v245;
  *(v47 + 128) = v50;
  v51 = v240;
  *(v47 + 16) = v239;
  *(v47 + 32) = v51;
  v52 = v242;
  *(v47 + 48) = v241;
  *(v47 + 64) = v52;
  v239 = xmmword_20CB67590;
  v240._countAndFlagsBits = v213;
  v240._object = v202;
  *&v241 = v41;
  *(&v241 + 1) = v43;
  LOWORD(v242) = ObjCClassFromMetadata;
  *(&v242 + 1) = partial apply for closure #1 in closure #1 in SessionExtraControlsView.body.getter;
  *&v243 = v47;
  if (one-time initialization token for endWorkout != -1)
  {
    swift_once();
  }

  v53 = lazy protocol witness table accessor for type SessionExtraControlsButton and conformance SessionExtraControlsButton();
  v54 = v204;
  v213 = v53;
  View.accessibilityIdentifier(_:)();
  v251[2] = v241;
  v251[3] = v242;
  v252 = v243;
  v251[0] = v239;
  v251[1] = v240;
  outlined destroy of SessionExtraControlsButton(v251);
  LOBYTE(v239) = v44;
  *(&v239 + 1) = v45;
  State.wrappedValue.getter();
  v55 = v234;
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  v58 = &v54[*(v203 + 36)];
  *v58 = KeyPath;
  v58[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_6;
  v58[2] = v57;
  String.LocalizationValue.init(stringLiteral:)();
  v59 = [v218 bundleForClass_];
  static Locale.current.getter();
  v206 = v32;
  v202 = v29;
  *&v234 = String.init(localized:table:bundle:locale:comment:)();
  *(&v234 + 1) = v60;
  v61 = *(v224 + 160);
  LOBYTE(v226) = *(v224 + 152);
  v227 = v61;
  v188 = v46;
  v62 = State.projectedValue.getter();
  v193 = &v176;
  LODWORD(v192) = LOBYTE(v240._countAndFlagsBits);
  MEMORY[0x28223BE20](v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v63 = lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
  v187 = v63;
  v64 = v224;
  v65 = v204;
  View.alert<A, B>(_:isPresented:actions:)();

  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v65, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd);
  v66 = *(v64 + 24);
  v67 = *(v64 + 32);
  __swift_project_boxed_opaque_existential_1(v64, v66);
  v240._countAndFlagsBits = 0;
  v239 = 6uLL;
  LOBYTE(v240._object) = 5;
  if (((*(v67 + 16))(&v239, v66, v67) & 1) == 0)
  {
    v102 = v205[7];
    v102(v221, 1, 1, v214);
    v101 = &unk_277DA8000;
    goto LABEL_25;
  }

  v68 = *(v64 + 40);
  swift_getKeyPath();
  v204 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *&v239 = v68;
  v193 = _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  v203 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  v70 = v200;
  v71 = v201;
  v191 = *(v201 + 16);
  v192 = v201 + 16;
  v72 = v195;
  v191(v200, v68 + v69, v195);
  v184 = *MEMORY[0x277D7DB90];
  v73 = v71 + 104;
  v190 = *(v71 + 104);
  v74 = v194;
  v190(v194);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v77 = *(v71 + 8);
  v76 = v71 + 8;
  v75 = v77;
  v77(v74, v72);
  v77(v70, v72);
  if (v239 == v234)
  {
    v78 = 0x6D726F6665766177;
  }

  else
  {
    v78 = 0xD000000000000015;
  }

  v79 = 0xEF656C626275622ELL;
  if (v239 != v234)
  {
    v79 = 0x800000020CB93CF0;
  }

  v180 = v79;
  v181 = v78;
  swift_getKeyPath();
  *&v239 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v183 = v68;
  v80 = v200;
  v191(v200, v68 + v203, v72);
  v185 = v73;
  (v190)(v74, v184, v72);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v75(v74, v72);
  v201 = v76;
  v182 = v75;
  v75(v80, v72);
  if (v239 == v234)
  {
    v81 = 0xD000000000000026;
  }

  else
  {
    v81 = 0xD000000000000024;
  }

  if (v239 == v234)
  {
    v82 = "TE_IN_SESSION_BUTTON";
  }

  else
  {
    v82 = "SAFETY_CHECK_IN_SESSION_BUTTON";
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v83 = WorkoutUIBundle.super.isa;
  v253._object = 0xE000000000000000;
  v84._object = (v82 | 0x8000000000000000);
  v84._countAndFlagsBits = v81;
  v85.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v85.value._object = 0xEB00000000656C62;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v253._countAndFlagsBits = 0;
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v83, v86, v253);
  object = v87._object;
  countAndFlagsBits = v87._countAndFlagsBits;

  v177 = static Color.white.getter();
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v88 = v217;
  v89 = __swift_project_value_buffer(v217, static SessionViewColors.buttonBackground);
  (*(v216 + 16))(v215, v89, v88);
  v176 = AnyShapeStyle.init<A>(_:)();
  swift_getKeyPath();
  v90 = v183;
  *&v239 = v183;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = v200;
  v92 = v195;
  v191(v200, v90 + v203, v195);
  v93 = v194;
  (v190)(v194, *MEMORY[0x277D7DB88], v92);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v94 = v182;
  v182(v93, v92);
  v94(v91, v92);
  LOBYTE(v88) = v239 == v234;
  outlined init with copy of SessionExtraControlsView(v224, &v239);
  v95 = swift_allocObject();
  v96 = v248;
  *(v95 + 144) = v247;
  *(v95 + 160) = v96;
  *(v95 + 176) = v249;
  *(v95 + 192) = v250;
  v97 = v244;
  *(v95 + 80) = v243;
  *(v95 + 96) = v97;
  v98 = v246;
  *(v95 + 112) = v245;
  *(v95 + 128) = v98;
  v99 = v240;
  *(v95 + 16) = v239;
  *(v95 + 32) = v99;
  v100 = v242;
  *(v95 + 48) = v241;
  *(v95 + 64) = v100;
  *&v239 = v181;
  *(&v239 + 1) = v180;
  v240._countAndFlagsBits = countAndFlagsBits;
  v240._object = object;
  *&v241 = v177;
  *(&v241 + 1) = v176;
  LOBYTE(v242) = 0;
  BYTE1(v242) = v88;
  *(&v242 + 2) = v230;
  WORD3(v242) = WORD2(v230);
  *(&v242 + 1) = partial apply for closure #3 in closure #1 in SessionExtraControlsView.body.getter;
  *&v243 = v95;
  swift_getKeyPath();
  *&v234 = v90;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v191(v91, v90 + v203, v92);
  (v190)(v93, v184, v92);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v94(v93, v92);
  v94(v91, v92);
  if (v234 == v226)
  {
    v101 = &unk_277DA8000;
    if (one-time initialization token for unMuteWorkoutBuddy == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

  v101 = &unk_277DA8000;
  if (one-time initialization token for muteWorkoutBuddy != -1)
  {
LABEL_46:
    swift_once();
  }

LABEL_24:
  v64 = v224;

  v103 = v186;
  View.accessibilityIdentifier(_:)();

  v236 = v241;
  v237 = v242;
  v238 = v243;
  v234 = v239;
  v235 = v240;
  outlined destroy of SessionExtraControlsButton(&v234);
  v104 = v221;
  outlined init with take of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>(v103, v221);
  v102 = v205[7];
  v102(v104, 0, 1, v214);
LABEL_25:
  v105 = *(v64 + 24);
  v106 = *(v64 + 32);
  __swift_project_boxed_opaque_existential_1(v64, v105);
  v240._countAndFlagsBits = 0;
  v239 = 5uLL;
  LOBYTE(v240._object) = 5;
  if ((*(v106 + 16))(&v239, v105, v106))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v107 = WorkoutUIBundle.super.isa;
    v254._object = 0xE000000000000000;
    v108._countAndFlagsBits = 0xD00000000000001ELL;
    v108._object = 0x800000020CB96770;
    v109.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v109.value._object = 0xEB00000000656C62;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v254._countAndFlagsBits = 0;
    v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v107, v110, v254);

    v112 = static Color.white.getter();
    if (one-time initialization token for buttonBackground != -1)
    {
      swift_once();
    }

    v113 = v217;
    v114 = __swift_project_value_buffer(v217, static SessionViewColors.buttonBackground);
    (*(v216 + 16))(v215, v114, v113);
    v115 = AnyShapeStyle.init<A>(_:)();
    outlined init with copy of SessionExtraControlsView(v64, &v239);
    v116 = swift_allocObject();
    v117 = v248;
    *(v116 + 144) = v247;
    *(v116 + 160) = v117;
    *(v116 + 176) = v249;
    *(v116 + 192) = v250;
    v118 = v244;
    *(v116 + 80) = v243;
    *(v116 + 96) = v118;
    v119 = v246;
    *(v116 + 112) = v245;
    *(v116 + 128) = v119;
    v120 = v240;
    *(v116 + 16) = v239;
    *(v116 + 32) = v120;
    v121 = v242;
    *(v116 + 48) = v241;
    *(v116 + 64) = v121;
    *&v234 = 0xD000000000000015;
    *(&v234 + 1) = 0x800000020CB947A0;
    v235 = v111;
    *&v236 = v112;
    *(&v236 + 1) = v115;
    LOWORD(v237) = 0;
    *(&v237 + 2) = v230;
    WORD3(v237) = WORD2(v230);
    *(&v237 + 1) = partial apply for closure #4 in closure #1 in SessionExtraControlsView.body.getter;
    v238 = v116;
    if (one-time initialization token for safetyCheckIn != -1)
    {
      swift_once();
    }

    v122 = v225;
    View.accessibilityIdentifier(_:)();
    v241 = v236;
    v242 = v237;
    *&v243 = v238;
    v239 = v234;
    v240 = v235;
    outlined destroy of SessionExtraControlsButton(&v239);
    v123 = v222;
    outlined init with take of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>(v122, v222);
    v102(v123, 0, 1, v214);
    v101 = &unk_277DA8000;
  }

  else
  {
    v102(v222, 1, 1, v214);
  }

  v124 = *(v64 + 24);
  v125 = *(v64 + 32);
  __swift_project_boxed_opaque_existential_1(v64, v124);
  v240._countAndFlagsBits = 0;
  v239 = 4uLL;
  LOBYTE(v240._object) = 5;
  if ((*(v125 + 16))(&v239, v124, v125))
  {
    String.LocalizationValue.init(stringLiteral:)();
    v126 = [v218 v101[437]];
    static Locale.current.getter();
    v127 = String.init(localized:table:bundle:locale:comment:)();
    v129 = v128;
    v130 = static Color.white.getter();
    if (one-time initialization token for buttonBackground != -1)
    {
      swift_once();
    }

    v131 = v217;
    v132 = __swift_project_value_buffer(v217, static SessionViewColors.buttonBackground);
    (*(v216 + 16))(v215, v132, v131);
    v133 = AnyShapeStyle.init<A>(_:)();
    outlined init with copy of SessionExtraControlsView(v64, &v239);
    v134 = swift_allocObject();
    v135 = v248;
    *(v134 + 144) = v247;
    *(v134 + 160) = v135;
    *(v134 + 176) = v249;
    *(v134 + 192) = v250;
    v136 = v244;
    *(v134 + 80) = v243;
    *(v134 + 96) = v136;
    v137 = v246;
    *(v134 + 112) = v245;
    *(v134 + 128) = v137;
    v138 = v240;
    *(v134 + 16) = v239;
    *(v134 + 32) = v138;
    v139 = v242;
    *(v134 + 48) = v241;
    *(v134 + 64) = v139;
    *&v234 = 0xD000000000000011;
    *(&v234 + 1) = 0x800000020CB96710;
    v235._countAndFlagsBits = v127;
    v235._object = v129;
    *&v236 = v130;
    *(&v236 + 1) = v133;
    LOWORD(v237) = 0;
    *(&v237 + 2) = v232;
    WORD3(v237) = v233;
    *(&v237 + 1) = partial apply for closure #5 in closure #1 in SessionExtraControlsView.body.getter;
    v238 = v134;
    if (one-time initialization token for stopMirroring != -1)
    {
      swift_once();
    }

    View.accessibilityIdentifier(_:)();
    v241 = v236;
    v242 = v237;
    *&v243 = v238;
    v239 = v234;
    v240 = v235;
    outlined destroy of SessionExtraControlsButton(&v239);
    String.LocalizationValue.init(stringLiteral:)();
    v140 = [v218 bundleForClass_];
    static Locale.current.getter();
    v230 = String.init(localized:table:bundle:locale:comment:)();
    v231 = v141;
    v142 = *(v64 + 144);
    v228 = *(v64 + 136);
    v229 = v142;
    v143 = State.projectedValue.getter();
    v205 = &v176;
    MEMORY[0x28223BE20](v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AHtGMd);
    lazy protocol witness table accessor for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AHtGMd);
    v144 = v189;
    v145 = v225;
    View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

    v101 = &unk_277DA8000;

    outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v145, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
    v147 = v196;
    v146 = v197;
    v148 = v223;
    (*(v196 + 32))(v223, v144, v197);
    v149 = v148;
    v150 = v219;
    (*(v147 + 56))(v149, 0, 1, v146);
  }

  else
  {
    (*(v196 + 56))(v223, 1, 1, v197);
    v150 = v219;
  }

  v151 = v218;
  String.LocalizationValue.init(stringLiteral:)();
  v152 = [v151 v101[437]];
  static Locale.current.getter();
  v153 = String.init(localized:table:bundle:locale:comment:)();
  v155 = v154;
  v156 = static Color.white.getter();
  v157 = v220;
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v158 = v217;
  v159 = __swift_project_value_buffer(v217, static SessionViewColors.buttonBackground);
  (*(v216 + 16))(v215, v159, v158);
  v160 = AnyShapeStyle.init<A>(_:)();
  v162 = *(v224 + 120);
  v161 = *(v224 + 128);
  v234 = xmmword_20CB675A0;
  v235._countAndFlagsBits = v153;
  v235._object = v155;
  *&v236 = v156;
  *(&v236 + 1) = v160;
  LOWORD(v237) = 0;
  *(&v237 + 2) = v230;
  WORD3(v237) = WORD2(v230);
  *(&v237 + 1) = v162;
  v238 = v161;
  v163 = one-time initialization token for lockControls;

  if (v163 != -1)
  {
    swift_once();
  }

  View.accessibilityIdentifier(_:)();
  v241 = v236;
  v242 = v237;
  *&v243 = v238;
  v239 = v234;
  v240 = v235;
  outlined destroy of SessionExtraControlsButton(&v239);
  v164 = v207;
  v165 = *(v208 + 16);
  v166 = v209;
  v165(v207, v157, v209);
  v167 = v210;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v221, v210, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  v168 = v211;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v222, v211, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  sub_20C67ADDC(v223, v212);
  v169 = v198;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v225, v198, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v170 = v199;
  v165(v199, v164, v166);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAKy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformR0VySbGG_SSAA05TupleC0VyAKyAA0O0VyAA4TextVGAPG_A1_tGQo__AQSgA4_AcAE18confirmationDialog_AE15titleVisibilityAF7messageQrqd___AiA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAQ_SSAWyA0__A0_tGA_Qo_SgAQtMd);
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v167, &v170[v171[12]], &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v168, &v170[v171[16]], &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  v172 = v212;
  sub_20C67ADDC(v212, &v170[v171[20]]);
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v169, &v170[v171[24]], &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v225, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  sub_20C67AE4C(v223);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v222, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v221, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  v173 = v209;
  v174 = *(v208 + 8);
  v174(v220, v209);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v169, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  sub_20C67AE4C(v172);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v211, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v210, &_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGSgMd);
  return (v174)(v207, v173);
}

void closure #1 in closure #1 in SessionExtraControlsView.body.getter()
{
  if (FIUIShouldConfirmEndingWorkout())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
  }

  else
  {
    SessionExtraControlsView.endWorkout()();
  }
}

void SessionExtraControlsView.endWorkout()()
{
  v1 = *(v0 + 176);
  LOBYTE(v5) = *(v0 + 168);
  v6 = v1;
  v9 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v6 = 0;
  v7 = 0;
  v5 = 2;
  v8 = 2;
  (*(v3 + 8))(&v5, v2, v3);
  v4 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v4 impactOccurred];
}

uint64_t closure #2 in closure #1 in SessionExtraControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v40 - v14;
  MEMORY[0x28223BE20](v15);
  v44 = &v40 - v16;
  MEMORY[0x28223BE20](v17);
  v48 = &v40 - v18;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = objc_opt_self();
  v43 = ObjCClassFromMetadata;
  v20 = [v42 bundleForClass_];
  static Locale.current.getter();
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v53 = v21;
  static ButtonRole.destructive.getter();
  v22 = type metadata accessor for ButtonRole();
  v23 = *(v22 - 8);
  v41 = *(v23 + 56);
  v40 = v23 + 56;
  v41(v5, 0, 1, v22);
  outlined init with copy of SessionExtraControlsView(a1, v50);
  v24 = swift_allocObject();
  v25 = v50[9];
  *(v24 + 144) = v50[8];
  *(v24 + 160) = v25;
  *(v24 + 176) = v50[10];
  *(v24 + 192) = v51;
  v26 = v50[5];
  *(v24 + 80) = v50[4];
  *(v24 + 96) = v26;
  v27 = v50[7];
  *(v24 + 112) = v50[6];
  *(v24 + 128) = v27;
  v28 = v50[1];
  *(v24 + 16) = v50[0];
  *(v24 + 32) = v28;
  v29 = v50[3];
  *(v24 + 48) = v50[2];
  *(v24 + 64) = v29;
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for stopWorkoutEnd != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  View.accessibilityIdentifier(_:)();
  v30 = *(v49 + 8);
  v49 += 8;
  v30(v10, v8);
  String.LocalizationValue.init(stringLiteral:)();
  v31 = [v42 bundleForClass_];
  static Locale.current.getter();
  *&v50[0] = String.init(localized:table:bundle:locale:comment:)();
  *(&v50[0] + 1) = v32;
  static ButtonRole.cancel.getter();
  v41(v5, 0, 1, v22);
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for stopWorkoutCancel != -1)
  {
    swift_once();
  }

  v33 = v44;
  View.accessibilityIdentifier(_:)();
  v30(v10, v8);
  v34 = v48;
  v35 = v45;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v48, v45, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v36 = v46;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v33, v46, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v37 = v47;
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v35, v47, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AKtMd);
  outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(v36, v37 + *(v38 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v33, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v34, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v36, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(v35, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t closure #3 in closure #1 in SessionExtraControlsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  outlined init with copy of SessionControls(a1, v22);
  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v11 = *(a1 + 40);
  swift_getKeyPath();
  v17 = v11;
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  (*(v3 + 16))(v8, v11 + v12, v2);
  (*(v3 + 104))(v5, *MEMORY[0x277D7DB90], v2);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  v14 = 6;
  if (v17 == v21)
  {
    v14 = 7;
  }

  v18 = 0;
  v19 = 0;
  v17 = v14;
  v20 = 5;
  (*(v10 + 8))(&v17, v9, v10);
  outlined consume of SessionControl(v17, v18, v19, v20);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t closure #4 in closure #1 in SessionExtraControlsView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  swift_getKeyPath();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  v4 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v3) = v4[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession];

  if (v3 != 1)
  {
    [objc_opt_self() hasUserCompletedOnboarding];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #6 in closure #1 in SessionExtraControlsView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v39 - v11;
  MEMORY[0x28223BE20](v12);
  v45 = &v39 - v13;
  MEMORY[0x28223BE20](v14);
  v42 = &v39 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = ObjCClassFromMetadata;
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v19;
  static ButtonRole.destructive.getter();
  v20 = type metadata accessor for ButtonRole();
  v21 = *(v20 - 8);
  v40 = *(v21 + 56);
  v41 = v21 + 56;
  v40(v4, 0, 1, v20);
  outlined init with copy of SessionExtraControlsView(v43, v49);
  v22 = swift_allocObject();
  v23 = v49[9];
  *(v22 + 144) = v49[8];
  *(v22 + 160) = v23;
  *(v22 + 176) = v49[10];
  *(v22 + 192) = v50;
  v24 = v49[5];
  *(v22 + 80) = v49[4];
  *(v22 + 96) = v24;
  v25 = v49[7];
  *(v22 + 112) = v49[6];
  *(v22 + 128) = v25;
  v26 = v49[1];
  *(v22 + 16) = v49[0];
  *(v22 + 32) = v26;
  v27 = v49[3];
  *(v22 + 48) = v49[2];
  *(v22 + 64) = v27;
  lazy protocol witness table accessor for type String and conformance String();
  v28 = v42;
  Button<>.init<A>(_:role:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v29 = [v17 bundleForClass_];
  static Locale.current.getter();
  *&v49[0] = String.init(localized:table:bundle:locale:comment:)();
  *(&v49[0] + 1) = v30;
  static ButtonRole.cancel.getter();
  v40(v4, 0, 1, v20);
  v31 = v45;
  Button<>.init<A>(_:role:action:)();
  v32 = *(v8 + 16);
  v33 = v46;
  v32(v46, v28, v7);
  v34 = v47;
  v32(v47, v31, v7);
  v35 = v48;
  v32(v48, v33, v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVG_AFtMd);
  v32(&v35[*(v36 + 48)], v34, v7);
  v37 = *(v8 + 8);
  v37(v31, v7);
  v37(v28, v7);
  v37(v34, v7);
  return (v37)(v33, v7);
}

uint64_t closure #7 in closure #1 in SessionExtraControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t outlined init with take of VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SessionExtraControlsButton and conformance SessionExtraControlsButton()
{
  result = lazy protocol witness table cache variable for type SessionExtraControlsButton and conformance SessionExtraControlsButton;
  if (!lazy protocol witness table cache variable for type SessionExtraControlsButton and conformance SessionExtraControlsButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionExtraControlsButton and conformance SessionExtraControlsButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type SessionExtraControlsButton and conformance SessionExtraControlsButton();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #6 in closure #1 in SessionExtraControlsView.body.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 4;
  v5 = 5;
  return (*(v2 + 8))(v4, v1, v2);
}

uint64_t objectdestroyTm_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t outlined init with copy of ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyACyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAGyACyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AiAE18confirmationDialog_AK15titleVisibilityAL7messageQrqd___AoA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAU_SSAGyA2__A2_tGA1_Qo_SgAUtGGAA14_PaddingLayoutVGA18_GMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaHRd_0_r0_lFQOyACyACy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAGyACyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AiAE18confirmationDialog_AK15titleVisibilityAL7messageQrqd___AoA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAU_SSAGyA2__A2_tGA1_Qo_SgAUtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE5alert_11isPresented7actionsQrqd___AA7BindingVySbGqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA15ModifiedContentVyAOy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformT0VySbGG_SSAEyAOyAA0Q0VyAA4TextVGATG_A3_tGQo__AUSgA6_AgAE18confirmationDialog_AI15titleVisibilityAJ7messageQrqd___AmA10VisibilityOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAU_SSAEyA2__A2_tGA1_Qo_SgAUtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>.0, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>?, (<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0)?, ModifiedContent<SessionExtraControlsButton, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t PredictedActivityPickerItemRow.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
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

uint64_t PredictedActivityPickerItemRow.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PredictedActivityPickerItemRow();
  v5 = (a2 + v4[6]);
  type metadata accessor for FIUIFormattingManager();
  lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = (a2 + v4[7]);
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  result = EnvironmentObject.init()();
  *v7 = result;
  v7[1] = v9;
  *(a2 + v4[5]) = a1;
  return result;
}

uint64_t PredictedActivityPickerItemRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v39 = type metadata accessor for AccessibilityTraits();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PredictedActivityPickerItemRow();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAA08ModifiedE0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGGGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessorylC0VyAA08ModifiedL0VyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleC0VyAA4TextV_A7_tGGGA3_yA5_yAPyAPyAPyArTyAA4FontVSgGGAXGA_GSg_APyAA6SpacerVAA12_FrameLayoutVGA7_A7_tGGGG_Qo_Md);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA012_ConditionalD0Vy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleE0VyAA4TextV_A7_tGGGA3_yA5_yACyACyACyArTyAA4FontVSgGGAXGA_GSg_ACyAA6SpacerVAA12_FrameLayoutVGA7_A7_tGGGG_Qo_AA0i10AttachmentV0VGMd);
  MEMORY[0x28223BE20](v38);
  v17 = &v32 - v16;
  outlined init with copy of PredictedActivityPickerItemRow(v1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject() + v18;
  outlined init with take of PredictedActivityPickerItemRow(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA08ModifiedD0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleI0VyAA4TextV_A_tGGGAWyAYyAHyAHyAHyAjLyAA4FontVSgGGAPGASGSg_AHyAA6SpacerVAA12_FrameLayoutVGA_A_tGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> _ConditionalContent<A, B>();
  v20 = v17;
  Button.init(action:label:)();
  static AccessibilityChildBehavior.combine.getter();
  v21 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAA08ModifiedE0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGGGGMd);
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v5, v35);
  (*(v9 + 8))(v11, v8);
  v22 = v36;
  static AccessibilityTraits.isSelected.getter();
  v43 = v8;
  v44 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v32;
  MEMORY[0x20F30AA50](v22, v32, OpaqueTypeConformance2);
  (*(v37 + 8))(v22, v39);
  (*(v33 + 8))(v15, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20CB5DA80;
  if (one-time initialization token for predictedActivity != -1)
  {
    swift_once();
  }

  v26 = qword_27C7E85E0;
  *(v25 + 32) = static WorkoutAccessibilityIdentifier.ActivityPicker.predictedActivity;
  *(v25 + 40) = v26;

  v27 = PredictedActivityPickerItem.activityType.getter();
  v28 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
  v30 = v29;

  *(v25 + 48) = v28;
  *(v25 + 56) = v30;
  v43 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  BidirectionalCollection<>.joined(separator:)();

  ModifiedContent<>.accessibilityIdentifier(_:)();

  return sub_20C67B020(v20);
}

uint64_t closure #1 in PredictedActivityPickerItemRow.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutFeatures();
  v19[3] = v6;
  v19[4] = lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DD88], v6);
  LOBYTE(v6) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v6)
  {
    PredictedActivityPickerItemRow.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    (*(v3 + 8))(v5, v2);
  }

  v8 = type metadata accessor for PredictedActivityPickerItemRow();
  result = PredictedActivityPickerItem.topSuggested.getter();
  if (result)
  {
    v10 = *(a1 + *(v8 + 28));
    if (v10)
    {
      v11 = result;
      swift_beginAccess();
      v12 = *(v10 + 16);

      v13 = v12;
      v14 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

      if (v14)
      {
        v15 = 8;
      }

      else
      {
        v15 = 1;
      }

      v16 = *(v10 + 16);
      dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

      v17 = *(v10 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

      v17(v11, v15);
    }

    else
    {
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

__n128 closure #2 in PredictedActivityPickerItemRow.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorkoutFeatures();
  v53.n128_u64[1] = v2;
  *&v54 = lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DD88], v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v52);
  if (v2)
  {
    v17 = static VerticalAlignment.center.getter();
    type metadata accessor for PredictedActivityPickerItemRow();
    v4 = PredictedActivityPickerItem.activityType.getter();
    v5 = [v4 symbolName];

    if (v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = Image.init(_internalSystemName:)();
      v6 = static Color.black.getter();
      KeyPath = swift_getKeyPath();
      v8 = 1;
    }

    else
    {
      KeyPath = 0;
      v6 = 0;
      v8 = 0;
    }

    v10 = static HorizontalAlignment.leading.getter();
    LOBYTE(v52) = 1;
    closure #1 in closure #2 in closure #2 in PredictedActivityPickerItemRow.body.getter(&v31);
    *&v18[55] = v34;
    *&v18[39] = v33;
    *&v18[23] = v32;
    *&v18[7] = v31;
    v42 = v5;
    v43 = KeyPath;
    *v44 = v6;
    v44[8] = v8;
    *&v44[16] = v10;
    *&v44[24] = 0;
    v44[32] = v52;
    v45 = *v18;
    *&v48[15] = *(&v34 + 1);
    *v48 = *&v18[48];
    v47 = *&v18[32];
    v46 = *&v18[16];
    *&v48[23] = 0x4022000000000000;
    *&v48[31] = v17;
    _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA08ModifiedD0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGG_GWOi_(&v42);
  }

  else
  {
    v9 = static HorizontalAlignment.leading.getter();
    closure #3 in closure #2 in PredictedActivityPickerItemRow.body.getter(&v52);
    v28 = v60;
    v29 = v61;
    v24 = v56;
    v25 = v57;
    v26 = v58;
    v27 = v59;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v55;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    v34 = v55;
    v35 = v56;
    v36 = v57;
    v37 = v58;
    v30 = v62;
    v31 = v52;
    v32 = v53;
    v33 = v54;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(&v20, &v42, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA17_FlipForRTLEffectVGSg_AEyAA6SpacerVAA12_FrameLayoutVGAA4TextVA2_tGMd);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(&v31, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA17_FlipForRTLEffectVGSg_AEyAA6SpacerVAA12_FrameLayoutVGAA4TextVA2_tGMd);
    *&v19[119] = v27;
    *&v19[135] = v28;
    *&v19[151] = v29;
    *&v19[167] = v30;
    *&v19[55] = v23;
    *&v19[71] = v24;
    *&v19[87] = v25;
    *&v19[103] = v26;
    *&v19[7] = v20;
    *&v19[23] = v21;
    *&v19[39] = v22;
    v49 = *&v19[128];
    v50 = *&v19[144];
    *v51 = *&v19[160];
    v47 = *&v19[64];
    *v48 = *&v19[80];
    *&v48[16] = *&v19[96];
    *&v48[32] = *&v19[112];
    *&v44[1] = *v19;
    *&v44[17] = *&v19[16];
    v45 = *&v19[32];
    v42 = v9;
    v43 = 0;
    v44[0] = 0;
    *&v51[15] = *(&v30 + 1);
    v46 = *&v19[48];
    _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA08ModifiedD0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGG_GWOi0_(&v42);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD6VStackVyAD05TupleG0VyAD4TextV_AYtGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGSg_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA4_tGGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD6VStackVyAD05TupleG0VyAD4TextV_AYtGGGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGSg_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA4_tGGMd);
  _ConditionalContent<>.init(storage:)();
  v11 = v61;
  v12 = v63[0];
  *(a1 + 160) = v62;
  *(a1 + 176) = v12;
  *(a1 + 185) = *(v63 + 9);
  v13 = v59;
  *(a1 + 96) = v58;
  *(a1 + 112) = v13;
  *(a1 + 128) = v60;
  *(a1 + 144) = v11;
  v14 = v55;
  *(a1 + 32) = v54;
  *(a1 + 48) = v14;
  v15 = v57;
  *(a1 + 64) = v56;
  *(a1 + 80) = v15;
  result = v53;
  *a1 = v52;
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in closure #2 in closure #2 in PredictedActivityPickerItemRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PredictedActivityPickerItemRow();
  v1 = PredictedActivityPickerItem.activityType.getter();
  v2 = [v1 localizedName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Color.black.getter();
  v8 = Text.foregroundColor(_:)();
  v10 = v9;
  v12 = v11;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v36 = v14;
  v37 = v13;
  v16 = v15;
  v35 = v17;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  v18 = PredictedActivityPickerItem.activityType.getter();
  FIUIWorkoutActivityType.startDateString.getter();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v8) = v22;
  static Color.black.getter();
  Color.opacity(_:)();

  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  LOBYTE(v3) = v26;

  outlined consume of Text.Storage(v19, v21, v8 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  outlined consume of Text.Storage(v23, v25, v3 & 1);

  *a1 = v37;
  *(a1 + 8) = v16;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v36;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v31 & 1;
  *(a1 + 56) = v33;
  outlined copy of Text.Storage(v37, v16, v35 & 1);

  outlined copy of Text.Storage(v27, v29, v31 & 1);

  outlined consume of Text.Storage(v27, v29, v31 & 1);

  outlined consume of Text.Storage(v37, v16, v35 & 1);
}

uint64_t closure #3 in closure #2 in PredictedActivityPickerItemRow.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v86 = type metadata accessor for Font.Leading();
  v1 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  type metadata accessor for PredictedActivityPickerItemRow();
  v7 = PredictedActivityPickerItem.activityType.getter();
  v8 = [v7 symbolName];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = Image.init(_internalSystemName:)();
    if (one-time initialization token for displayImageSize != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Font.Design();
    v10 = *(*(v9 - 8) + 56);
    v82 = 1;
    v10(v6, 1, 1, v9);
    v11 = static Font.system(size:weight:design:)();
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(v6, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    v13 = static Color.black.getter();
    v14 = swift_getKeyPath();

    v80 = KeyPath;

    v81 = v11;

    v87 = v14;

    v79 = v13;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v87 = 0;
    v79 = 0;
    v82 = 0;
  }

  v83 = v8;
  if (one-time initialization token for iconToNameSpacing != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v78 = v95;
  v77 = v97;
  v76 = v99;
  v75 = v100;
  v94 = 1;
  v93 = v96;
  v92 = v98;
  v15 = PredictedActivityPickerItem.activityType.getter();
  v16 = FIUIWorkoutActivityType.actionString.getter();
  v18 = v17;

  v90 = v16;
  v91 = v18;
  v84 = lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.body.getter();
  v24 = v86;
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v86);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v24);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v32 = v31;
  v34 = v33;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  static Color.black.getter();
  v73 = Text.foregroundColor(_:)();
  v85 = v35;
  LOBYTE(v27) = v36;
  v86 = v37;

  outlined consume of Text.Storage(v30, v32, v34 & 1);

  v38 = PredictedActivityPickerItem.activityType.getter();
  v39 = FIUIWorkoutActivityType.startDateString.getter();
  v41 = v40;

  v90 = v39;
  v91 = v41;
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Color.black.getter();
  Color.opacity(_:)();

  v84 = Text.foregroundColor(_:)();
  v48 = v47;
  v67 = v47;
  v68 = v49;
  v69 = v50;

  outlined consume of Text.Storage(v42, v44, v46 & 1);

  v70 = v94;
  v71 = v93;
  v72 = v92;
  LOBYTE(v19) = v27 & 1;
  LOBYTE(v90) = v27 & 1;
  v89 = v27 & 1;
  v51 = v83;
  v52 = v80;
  v53 = v81;
  v54 = v87;
  v55 = v79;
  v56 = v82;
  outlined copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?(v83);
  v57 = v73;
  outlined copy of Text.Storage(v73, v85, v19);
  v58 = v86;

  LOBYTE(v19) = v68 & 1;
  outlined copy of Text.Storage(v84, v48, v68 & 1);
  v59 = v69;

  v87 = v54;
  outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?(v51);
  v88 = v19;
  v60 = v89;
  v61 = v74;
  *v74 = v51;
  v61[1] = v52;
  v61[2] = v53;
  v61[3] = v54;
  v61[4] = v55;
  *(v61 + 40) = v56;
  v61[6] = 0;
  *(v61 + 56) = v70;
  v61[8] = v78;
  *(v61 + 72) = v71;
  v61[10] = v77;
  *(v61 + 88) = v72;
  v62 = v75;
  v61[12] = v76;
  v61[13] = v62;
  v63 = v85;
  v61[14] = v57;
  v61[15] = v63;
  *(v61 + 128) = v60;
  v64 = v84;
  v61[17] = v58;
  v61[18] = v64;
  v65 = v67;
  v61[19] = v67;
  *(v61 + 160) = v19;
  v61[21] = v59;
  outlined consume of Text.Storage(v64, v65, v19);

  outlined consume of Text.Storage(v57, v63, v90);

  return outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?(v51);
}

uint64_t type metadata accessor for PredictedActivityPickerItemRow()
{
  result = type metadata singleton initialization cache for PredictedActivityPickerItemRow;
  if (!type metadata singleton initialization cache for PredictedActivityPickerItemRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for FIUIFormattingManager()
{
  result = lazy cache variable for type metadata for FIUIFormattingManager;
  if (!lazy cache variable for type metadata for FIUIFormattingManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIUIFormattingManager);
  }

  return result;
}

uint64_t outlined init with copy of PredictedActivityPickerItemRow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActivityPickerItemRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PredictedActivityPickerItemRow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActivityPickerItemRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PredictedActivityPickerItemRow.body.getter()
{
  v1 = *(type metadata accessor for PredictedActivityPickerItemRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in PredictedActivityPickerItemRow.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA08ModifiedD0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleI0VyAA4TextV_A_tGGGAWyAYyAHyAHyAHyAjLyAA4FontVSgGGAPGASGSg_AHyAA6SpacerVAA12_FrameLayoutVGA_A_tGGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD6VStackVyAD05TupleG0VyAD4TextV_AYtGGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGSg_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA4_tGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}