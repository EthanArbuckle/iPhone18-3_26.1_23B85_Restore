unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path getter for WorkoutScrollingCoordinator.scrollToTop : WorkoutScrollingCoordinator@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t WorkoutScrollingCoordinator.scrollToTop.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator()
{
  result = lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator;
  if (!lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator)
  {
    type metadata accessor for WorkoutScrollingCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutScrollingCoordinator()
{
  result = type metadata singleton initialization cache for WorkoutScrollingCoordinator;
  if (!type metadata singleton initialization cache for WorkoutScrollingCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutScrollingCoordinator.scrollToTop.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in WorkoutScrollingCoordinator.scrollToTop.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t _s9WorkoutUI0A20ScrollingCoordinatorC11scrollToTopSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*WorkoutScrollingCoordinator.scrollToTop.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutScrollingCoordinator._scrollToTop.modify();
  return WorkoutScrollingCoordinator.scrollToTop.modify;
}

void WorkoutScrollingCoordinator.scrollToTop.modify(void *a1)
{
  WorkoutScrollingCoordinator.scrollToTop.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

id key path getter for WorkoutScrollingCoordinator.scrollToActivityType : WorkoutScrollingCoordinator@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void key path setter for WorkoutScrollingCoordinator.scrollToActivityType : WorkoutScrollingCoordinator(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutScrollingCoordinator.scrollToActivityType.setter(v1);
}

void *WorkoutScrollingCoordinator.scrollToActivityType.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void WorkoutScrollingCoordinator.scrollToActivityType.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for FIUIWorkoutActivityType();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void closure #1 in WorkoutScrollingCoordinator.scrollToActivityType.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  v5 = a2;
}

void (*WorkoutScrollingCoordinator.scrollToActivityType.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutScrollingCoordinator._scrollToActivityType.modify();
  return WorkoutScrollingCoordinator.scrollToActivityType.modify;
}

uint64_t WorkoutScrollingCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t WorkoutScrollingCoordinator.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t WorkoutScrollingCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WorkoutScrollingCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for WorkoutScrollingCoordinator()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata accessor for PacePickerViewWatch()
{
  result = type metadata singleton initialization cache for PacePickerViewWatch;
  if (!type metadata singleton initialization cache for PacePickerViewWatch)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacePickerViewWatch()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<PacePickerViewModel>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<PacePickerViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<PacePickerViewModel>)
  {
    type metadata accessor for PacePickerViewModel();
    lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel();
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<PacePickerViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel()
{
  result = lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel;
  if (!lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel)
  {
    type metadata accessor for PacePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel);
  }

  return result;
}

uint64_t PacePickerViewWatch.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

uint64_t PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleZ0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_vG0VGG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonZ5PhoneVGtGGMd);
  closure #1 in PacePickerViewWatch.body.getter(v1, (a1 + *(v3 + 44)));
  v4 = (*(v1 + *(type metadata accessor for PacePickerViewWatch() + 20) + 8) + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle);
  v6 = *v4;
  v5 = v4[1];
  v7 = objc_allocWithZone(MEMORY[0x277D75348]);

  [v7 initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v8 = Color.init(uiColor:)();

  v9 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMd);
  v11 = a1 + *(result + 36);
  *v11 = v6;
  *(v11 + 8) = v5;
  *(v11 + 16) = v8;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  return result;
}

uint64_t closure #1 in PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PacePickerViewWatch();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  outlined init with copy of PacePickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  outlined init with copy of PacePickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  Button.init(action:label:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v9, v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  *a2 = partial apply for closure #1 in closure #1 in PacePickerViewWatch.body.getter;
  a2[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSiAA7ForEachVySaySiGSiAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtMd);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v6, a2 + *(v16 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);

  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
}

double closure #1 in closure #1 in PacePickerViewWatch.body.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGMd);
  closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(a1, a2 + *(v4 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleV0VyAA09TintShapeY0VGG_AA6SpacerVtGGAA01_qR0VGMd) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v53 = type metadata accessor for Font.TextStyle();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v43 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v49);
  v12 = &v43 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v50 = &v43 - v18;
  v19 = (a1 + *(type metadata accessor for PacePickerViewWatch() + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = type metadata accessor for PacePickerViewModel();
  v23 = lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel();
  MEMORY[0x20F308920](v20, v21, v22, v23);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v55 = a1;
  v56 = v58;
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v44;
  (*(v7 + 32))(v44, v9, v46);
  v25 = (v24 + *(v45 + 36));
  v26 = v63;
  v25[4] = v62;
  v25[5] = v26;
  v25[6] = v64;
  v27 = v59;
  *v25 = v58;
  v25[1] = v27;
  v28 = v61;
  v25[2] = v60;
  v25[3] = v28;
  v29 = v52;
  v30 = v47;
  v31 = v53;
  (*(v52 + 104))(v47, *MEMORY[0x277CE0A80], v53);
  v32 = *MEMORY[0x277CE09A0];
  v33 = type metadata accessor for Font.Design();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v5, v32, v33);
  (*(v34 + 56))(v5, 0, 1, v33);
  v35 = static Font.system(_:design:weight:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v29 + 8))(v30, v31);
  KeyPath = swift_getKeyPath();
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v24, v12, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMd);
  v37 = &v12[*(v49 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  TintShapeStyle.init()();
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v12, v16, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  v38 = v50;
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v16, v50, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd);
  v39 = v51;
  sub_20C69A65C(v38, v51);
  v40 = v54;
  sub_20C69A65C(v39, v54);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGG_AA6SpacerVtMd) + 48);
  sub_20C69A6CC(v38);
  *v41 = 0;
  *(v41 + 8) = 1;
  return sub_20C69A6CC(v39);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PacePickerViewWatch();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[5] = *(*(a1 + *(v5 + 28) + 8) + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray);
  swift_getKeyPath();
  outlined init with copy of PacePickerViewWatch(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type [Int] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  v9[1] = MEMORY[0x277CE0BD8];
  v9[2] = MEMORY[0x277D83B88];
  v9[3] = MEMORY[0x277CE0BC8];
  v9[4] = MEMORY[0x277D83B98];
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PacePickerViewWatch();
  PacePickerViewModel.paceDisplayString(pace:)(v3);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in PacePickerViewWatch.body.getter()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PacePickerViewWatch();
  PacePickerViewModel.pickerChanged()();
  PacePickerViewWatch.dismiss.getter(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t closure #3 in closure #1 in PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x535F535452454C41;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xEA00000000005445;
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

uint64_t outlined init with take of PacePickerViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PacePickerViewWatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in closure #1 in PacePickerViewWatch.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PacePickerViewWatch() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in PacePickerViewWatch.body.getter(v4, a1);
}

uint64_t partial apply for closure #2 in closure #1 in PacePickerViewWatch.body.getter()
{
  type metadata accessor for PacePickerViewWatch();

  return closure #2 in closure #1 in PacePickerViewWatch.body.getter();
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_94()
{
  v1 = *(type metadata accessor for PacePickerViewWatch() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PacePickerViewWatch();

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMd);
    lazy protocol witness table accessor for type [Int] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance [A](unint64_t *a1, uint64_t *a2)
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

void WorkoutNotificationView.init(notification:formattingManager:resetIdleTimerHandler:interactiveDismissHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  MetricPlatterConstants.init()((a7 + 2));
  *a7 = a1;
  a7[1] = a2;
  a7[9] = a3;
  a7[10] = a4;
  a7[11] = a5;
  a7[12] = a6;
}

double WorkoutNotificationView.init(notification:formattingManager:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MetricPlatterConstants.init()(a3 + 16);
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  return result;
}

double WorkoutNotificationView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for WorkoutNotification.NotificationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  dispatch thunk of WorkoutNotification.notificationType.getter();
  v41 = v3;
  v11 = (*(v3 + 88))(v5, v2);
  if (v11 == *MEMORY[0x277D7DA18])
  {
    v12 = dispatch thunk of WorkoutNotification.units.getter();
    v13 = v6;
    MetricPlatterConstants.init()(&v57 + 8);
    *&v59[1] = swift_getKeyPath();
    BYTE8(v59[1]) = 0;
    *&v56 = v12;
    *(&v56 + 1) = v13;
    LOBYTE(v57) = 0;
    v44[0] = v58[0];
    v44[1] = v58[1];
    v45[0] = v59[0];
    *(v45 + 9) = *(v59 + 9);
    v43[0] = v56;
    v43[1] = v57;
    v59[0] = v45[0];
    *(v59 + 9) = *(v45 + 9);
    v63 = 0;
    BYTE9(v59[1]) = 0;
    outlined init with copy of WorkoutNotificationIntervalView(v43, &v51);
    lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
    _ConditionalContent<>.init(storage:)();
    v58[0] = v53[0];
    v58[1] = v53[1];
    v59[0] = *v54;
    *(v59 + 10) = *&v54[10];
    v56 = v51;
    v57 = v52;
    v64 = 0;
    BYTE10(v59[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53[0] = v48;
    v53[1] = v49;
    *v54 = v50[0];
    *&v54[11] = *(v50 + 11);
    v51 = v46;
    v52 = v47;
    v61[0] = 0;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of WorkoutNotificationIntervalView(v43);
    v67 = v58[0];
    v68 = v58[1];
    v69[0] = v59[0];
    *(v69 + 12) = *(v59 + 12);
    v65 = v56;
    v66 = v57;
    goto LABEL_17;
  }

  if (v11 != *MEMORY[0x277D7DA08])
  {
    if (v11 == *MEMORY[0x277D7DA28])
    {
      v16 = dispatch thunk of WorkoutNotification.units.getter();
      KeyPath = swift_getKeyPath();
      *&v56 = v16;
      *(&v56 + 1) = v6;
      v18 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = KeyPath;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 0;
      v63 = 0;
      outlined init with copy of WorkoutNotificationMilestoneView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
      lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 1;
      BYTE10(v59[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[11] = *(v50 + 11);
      v51 = v46;
      v52 = v47;
      v61[0] = 0;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationMilestoneView(v43);
    }

    else if (v11 == *MEMORY[0x277D7DA00])
    {
      v19 = dispatch thunk of WorkoutNotification.units.getter();
      v20 = swift_getKeyPath();
      *&v56 = v19;
      *(&v56 + 1) = v6;
      v21 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = v20;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 256;
      v63 = 1;
      outlined init with copy of WorkoutNotificationPacerCompleteView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
      lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 1;
      BYTE10(v59[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[11] = *(v50 + 11);
      v51 = v46;
      v52 = v47;
      v61[0] = 0;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationPacerCompleteView(v43);
    }

    else if (v11 == *MEMORY[0x277D7D9F8])
    {
      v22 = dispatch thunk of WorkoutNotification.units.getter();
      v23 = swift_getKeyPath();
      *&v56 = v22;
      *(&v56 + 1) = v6;
      v24 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = v23;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 0;
      v63 = 0;
      outlined init with copy of WorkoutNotificationRaceCompleteView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
      lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 0;
      BYTE2(v59[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[15] = *(v50 + 15);
      v51 = v46;
      v52 = v47;
      v61[0] = 1;
      v55 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationRaceCompleteView(v43);
    }

    else
    {
      if (v11 != *MEMORY[0x277D7DA20])
      {
        if (v11 == *MEMORY[0x277D7D9F0])
        {
          v30 = dispatch thunk of WorkoutNotification.units.getter();
          v31 = swift_getKeyPath();
          *&v43[0] = v30;
          *(&v43[0] + 1) = v6;
          *&v43[1] = v7;
          *(&v43[1] + 1) = v8;
          *&v44[0] = v9;
          *(&v44[0] + 1) = v10;
          *&v44[1] = v31;
          BYTE8(v44[1]) = 0;
          v56 = v43[0];
          v57 = v43[1];
          v58[0] = v44[0];
          *(v58 + 9) = *(v44 + 9);
          v63 = 0;
          BYTE9(v58[1]) = 0;
          v32 = v6;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v7);
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v9);
          outlined init with copy of WorkoutNotificationTranscriptView(v43, &v51);
          lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();
          _ConditionalContent<>.init(storage:)();
          v56 = v51;
          v57 = v52;
          v58[0] = v53[0];
          *(v58 + 10) = *(v53 + 10);
          v64 = 1;
          BYTE2(v59[1]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd);
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          v53[0] = v48;
          v53[1] = v49;
          *v54 = v50[0];
          *&v54[15] = *(v50 + 15);
          v51 = v46;
          v52 = v47;
          v61[0] = 1;
          v55 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of WorkoutNotificationTranscriptView(v43);
          goto LABEL_6;
        }

        if (v11 != *MEMORY[0x277D7DA10])
        {
          LocalizedStringKey.init(stringLiteral:)();
          v33 = Text.init(_:tableName:bundle:comment:)();
          v35 = v34;
          v37 = v36 & 1;
          v62 = v36 & 1;
          v60 = 1;
          v39 = v38;
          v40 = v33;
          *&v56 = v33;
          *(&v56 + 1) = v34;
          LOBYTE(v57) = v36 & 1;
          *(&v57 + 1) = *v61;
          DWORD1(v57) = *&v61[3];
          *(&v57 + 1) = v38;
          v58[0] = v43[0];
          *(v58 + 9) = *(v43 + 9);
          BYTE9(v58[1]) = 1;
          outlined copy of Text.Storage(v33, v34, v36 & 1);
          lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();

          _ConditionalContent<>.init(storage:)();
          v56 = v51;
          v57 = v52;
          v58[0] = v53[0];
          *(v58 + 10) = *(v53 + 10);
          v63 = 1;
          BYTE2(v59[1]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd);
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          v53[0] = v48;
          v53[1] = v49;
          *v54 = v50[0];
          *&v54[15] = *(v50 + 15);
          v51 = v46;
          v52 = v47;
          v64 = 1;
          v55 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined consume of Text.Storage(v40, v35, v37);

          v67 = v58[0];
          v68 = v58[1];
          v69[0] = v59[0];
          *(v69 + 12) = *(v59 + 12);
          v65 = v56;
          v66 = v57;
          (*(v41 + 8))(v5, v2);
          goto LABEL_17;
        }
      }

      *&v56 = dispatch thunk of WorkoutNotification.units.getter();
      *(&v56 + 1) = v6;
      v25 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = swift_getKeyPath();
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 256;
      v63 = 1;
      outlined init with copy of WorkoutNotificationStandardView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
      lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 0;
      BYTE2(v59[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[15] = *(v50 + 15);
      v51 = v46;
      v52 = v47;
      v61[0] = 1;
      v55 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationStandardView(v43);
    }

    v67 = v58[0];
    v68 = v58[1];
    v69[0] = v59[0];
    goto LABEL_16;
  }

  v14 = dispatch thunk of WorkoutNotification.units.getter();
  v15 = v6;
  MetricPlatterConstants.init()(&v57 + 8);
  *&v59[1] = swift_getKeyPath();
  BYTE8(v59[1]) = 0;
  *&v56 = v14;
  *(&v56 + 1) = v15;
  LOBYTE(v57) = 1;
  v44[0] = v58[0];
  v44[1] = v58[1];
  v45[0] = v59[0];
  *(v45 + 9) = *(v59 + 9);
  v43[0] = v56;
  v43[1] = v57;
  v59[0] = v45[0];
  *(v59 + 9) = *(v45 + 9);
  v63 = 1;
  BYTE9(v59[1]) = 1;
  outlined init with copy of WorkoutNotificationIntervalView(v43, &v51);
  lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
  _ConditionalContent<>.init(storage:)();
  v58[0] = v53[0];
  v58[1] = v53[1];
  v59[0] = *v54;
  *(v59 + 10) = *&v54[10];
  v56 = v51;
  v57 = v52;
  v64 = 0;
  BYTE10(v59[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v53[0] = v48;
  v53[1] = v49;
  *v54 = v50[0];
  *&v54[11] = *(v50 + 11);
  v51 = v46;
  v52 = v47;
  v61[0] = 0;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of WorkoutNotificationIntervalView(v43);
LABEL_6:
  v67 = v58[0];
  v68 = v58[1];
  v69[0] = v59[0];
LABEL_16:
  *(v69 + 12) = *(v59 + 12);
  v65 = v56;
  v66 = v57;
LABEL_17:
  v26 = v68;
  v27 = v42;
  v42[2] = v67;
  v27[3] = v26;
  v27[4] = v69[0];
  *(v27 + 76) = *(v69 + 12);
  result = *&v65;
  v29 = v66;
  *v27 = v65;
  v27[1] = v29;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd);
    lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
    lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd);
    lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd);
    lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd);
    lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
    lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGACyACyAD0ef4RacekH0VAD0ef8StandardH0VGACyAD0ef10TranscriptH0VAA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t MetricsGlyphSizingPreferenceKey.GlyphAnchor.anchor.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MetricsGlyphSizingPreferenceKey.GlyphAnchor.init(id:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MetricsGlyphSizingPreferenceKey.GlyphAnchor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a1[1];
  type metadata accessor for CGRect(0);
  v6 = v5;
  v7 = lazy protocol witness table accessor for type CGRect and conformance CGRect();

  return MEMORY[0x2821337E8](v4, v3, v6, v7);
}

unint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect()
{
  result = lazy protocol witness table cache variable for type CGRect and conformance CGRect;
  if (!lazy protocol witness table cache variable for type CGRect and conformance CGRect)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGRect and conformance CGRect);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsGlyphSizingPreferenceKey.GlyphAnchor(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a1[1];
  type metadata accessor for CGRect(0);
  v6 = v5;
  v7 = lazy protocol witness table accessor for type CGRect and conformance CGRect();

  return MEMORY[0x2821337E8](v4, v3, v6, v7);
}

uint64_t static MetricsGlyphSizingPreferenceKey.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MetricsGlyphSizingPreferenceKey.defaultValue.setter(uint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MetricsGlyphSizingPreferenceKey.defaultValue = a1;
}

uint64_t (*static MetricsGlyphSizingPreferenceKey.defaultValue.modify())()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static MetricsGlyphSizingPreferenceKey.defaultValue.modify;
}

uint64_t key path getter for static MetricsGlyphSizingPreferenceKey.defaultValue : MetricsGlyphSizingPreferenceKey.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static MetricsGlyphSizingPreferenceKey.defaultValue;
}

uint64_t key path setter for static MetricsGlyphSizingPreferenceKey.defaultValue : MetricsGlyphSizingPreferenceKey.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for defaultValue;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MetricsGlyphSizingPreferenceKey.defaultValue = v1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance MetricsGlyphSizingPreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static MetricsGlyphSizingPreferenceKey.defaultValue;
}

uint64_t getEnumTagSinglePayload for MetricsGlyphSizingPreferenceKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricsGlyphSizingPreferenceKey(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MetricsGlyphSizingPreferenceKey.GlyphAnchor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsGlyphSizingPreferenceKey.GlyphAnchor(uint64_t result, int a2, int a3)
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

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      __CocoaSet.count.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for NSUnitLength);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A], &_sSaySo16HKQuantitySampleCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for HKQuantitySample);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkoutConfiguration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [StandardWorkoutAddWorkoutRow] and conformance [A], &_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StandardWorkoutAddWorkoutRow();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](&lazy protocol witness table cache variable for type [FIUIWorkoutActivityType] and conformance [A], &_sSaySo23FIUIWorkoutActivityTypeCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23FIUIWorkoutActivityTypeCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HKQuantitySample(uint64_t a1, unint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type [WorkoutConfiguration] and conformance [A](unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for StartDatePicker()
{
  result = type metadata singleton initialization cache for StartDatePicker;
  if (!type metadata singleton initialization cache for StartDatePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for StartDatePicker()
{
  type metadata accessor for Binding<Date>();
  if (v0 <= 0x3F)
  {
    _s7SwiftUI7BindingVySbGMaTm_3(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClosedRange<Date>();
      if (v2 <= 0x3F)
      {
        _s7SwiftUI7BindingVySbGMaTm_3(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<Date>()
{
  if (!lazy cache variable for type metadata for Binding<Date>)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Date>);
    }
  }
}

void _s7SwiftUI7BindingVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StartDatePicker.dateDisplayString.getter()
{
  v1 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.FormatStyle.DateStyle();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd);
  v36 = v0;
  MEMORY[0x20F30B100]();
  v13 = Calendar.isDateInToday(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = *(v9 + 8);
  v15(v11, v8);
  if (v13)
  {
    v16 = "START_DATE_YESTERDAY_TITLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v29 = 0xE000000000000000;
    v18 = 0xD000000000000016;
  }

  else
  {
    static Calendar.autoupdatingCurrent.getter();
    MEMORY[0x20F30B100](v12);
    v19 = Calendar.isDateInYesterday(_:)();
    v14(v7, v4);
    v15(v11, v8);
    if ((v19 & 1) == 0)
    {
      v25 = MEMORY[0x20F30B100](v12);
      v26 = v30;
      MEMORY[0x20F302630](v25);
      v27 = v32;
      static Date.FormatStyle.TimeStyle.omitted.getter();
      countAndFlagsBits = Date.formatted(date:time:)();
      (*(v34 + 8))(v27, v35);
      (*(v31 + 8))(v26, v33);
      v14(v7, v4);
      return countAndFlagsBits;
    }

    v16 = "START_DATE_PICKER_TITLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v29 = 0xE000000000000000;
    v18 = 0xD00000000000001ALL;
  }

  v20 = v16 | 0x8000000000000000;
  v21.value._object = 0x800000020CB936F0;
  v21.value._countAndFlagsBits = 0xD000000000000012;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v23 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, v21, v17, v22, *(&v29 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t StartDatePicker.body.getter@<X0>(char *a1@<X8>)
{
  v142 = a1;
  v114 = type metadata accessor for WheelDatePickerStyle();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA05WheeligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
  MEMORY[0x28223BE20](v116);
  v115 = &v106 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v141 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v143 = &v106 - v7;
  v111 = type metadata accessor for GraphicalDatePickerStyle();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DatePickerComponents();
  v129 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v131 = &v106 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v128);
  v130 = &v106 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10DatePickerVyAA4TextVGMd);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v133 = &v106 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA09GraphicaligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
  MEMORY[0x28223BE20](v108);
  v107 = &v106 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v140 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v150 = &v106 - v18;
  started = type metadata accessor for StartDatePicker();
  v147 = started;
  v127 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v21 = v20;
  v22 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD05TupleG0VyAD4TextV_AhFyAD0G0PADE11buttonStyleyQrqd__AD015PrimitiveButtonP0Rd__lFQOyAFyAD0R0VyAOGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGG_AD08BorderedrP0VQo_AD023AccessibilityAttachmentV0VGA7_tGGMd);
  MEMORY[0x28223BE20](v23);
  v25 = &v106 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedL0VyAA6SpacerVAA12_FrameLayoutVGAA05TupleC0VyAA4TextV_AmKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedvT0VQo_AA023AccessibilityAttachmentZ0VGA10_tGG_SbQo_Md);
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v144 = &v106 - v26;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedL0VyAA6SpacerVAA12_FrameLayoutVGAA05TupleC0VyAA4TextV_AmKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedvT0VQo_AA023AccessibilityAttachmentZ0VGA10_tGG_SbQo__SbQo_Md);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v145 = &v106 - v27;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedL0VyAA6SpacerVAA12_FrameLayoutVGAA05TupleC0VyAA4TextV_AmKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedvT0VQo_AA023AccessibilityAttachmentZ0VGA10_tGG_SbQo__SbQo__SbQo_Md);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v148 = &v106 - v30;
  v31 = static VerticalAlignment.center.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = v156;
  v33 = v157;
  v34 = v158;
  v35 = v159;
  v163 = 1;
  v162 = v157;
  v161 = v159;
  *v25 = 0;
  v25[8] = 1;
  *(v25 + 2) = v32;
  v25[24] = v33;
  *(v25 + 4) = v34;
  v25[40] = v35;
  *(v25 + 3) = v160;
  v118 = v23;
  closure #2 in StartDatePicker.body.getter(v1, &v25[v23[13]]);
  *&v25[v23[14]] = 0x4022000000000000;
  *&v25[v23[15]] = v31;
  v36 = (v1 + *(started + 28));
  v149 = v1;
  v121 = *v36;
  v120 = *(v36 + 1);
  LOBYTE(v151) = v121;
  v152 = v120;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  LOBYTE(v151) = v155;
  v117 = v22;
  outlined init with copy of StartDatePicker(v1, v22);
  v37 = (*(v127 + 80) + 16) & ~*(v127 + 80);
  v119 = v21;
  v38 = swift_allocObject();
  outlined init with take of StartDatePicker(v22, v38 + v37);
  v39 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD05TupleG0VyAD4TextV_AhFyAD0G0PADE11buttonStyleyQrqd__AD015PrimitiveButtonP0Rd__lFQOyAFyAD0R0VyAOGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGG_AD08BorderedrP0VQo_AD023AccessibilityAttachmentV0VGA7_tGGMd);
  v40 = v118;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v25, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD05TupleG0VyAD4TextV_AhFyAD0G0PADE11buttonStyleyQrqd__AD015PrimitiveButtonP0Rd__lFQOyAFyAD0R0VyAOGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGG_AD08BorderedrP0VQo_AD023AccessibilityAttachmentV0VGA7_tGGMd);
  v41 = v147;
  v42 = v149;
  v43 = (v149 + v147[8]);
  v44 = *v43;
  v45 = *(v43 + 1);
  v126 = v44;
  LOBYTE(v151) = v44;
  v127 = v45;
  v152 = v45;
  State.wrappedValue.getter();
  v46 = v117;
  outlined init with copy of StartDatePicker(v42, v117);
  v47 = swift_allocObject();
  v48 = v46;
  outlined init with take of StartDatePicker(v46, v47 + v37);
  v151 = v40;
  v152 = MEMORY[0x277D839B0];
  v153 = v39;
  v49 = MEMORY[0x277D839C8];
  v154 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v122;
  v52 = v49;
  v53 = v144;
  View.onChange<A>(of:initial:_:)();

  (*(v123 + 8))(v53, v51);
  v54 = v41[5];
  v55 = v149;
  v56 = v149 + v54;
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v56) = *(v56 + 16);
  v151 = v57;
  v152 = v58;
  LOBYTE(v153) = v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v155, v59);
  outlined init with copy of StartDatePicker(v55, v48);
  v60 = swift_allocObject();
  outlined init with take of StartDatePicker(v48, v60 + v37);
  v151 = v51;
  v152 = MEMORY[0x277D839B0];
  v153 = OpaqueTypeConformance2;
  v154 = v52;
  swift_getOpaqueTypeConformance2();
  v61 = v124;
  v62 = v145;
  View.onChange<A>(of:initial:_:)();

  (*(v125 + 8))(v62, v61);
  LOBYTE(v151) = v121;
  v152 = v120;
  State.wrappedValue.getter();
  v63 = 1;
  if (v155 == 1)
  {
    v64 = LocalizedStringKey.init(stringLiteral:)();
    v144 = v65;
    v145 = v64;
    v66 = v149;
    Binding.projectedValue.getter();
    v67 = v147;
    outlined init with copy of ClosedRange<Date>(v66 + v147[6], v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI20DatePickerComponentsVGMd);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_20CB5DA70;
    static DatePickerComponents.date.getter();
    v151 = v68;
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents, MEMORY[0x277CDDFC8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI20DatePickerComponentsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [DatePickerComponents] and conformance [A], &_sSay7SwiftUI20DatePickerComponentsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v69 = v133;
    DatePicker<>.init(_:selection:in:displayedComponents:)();
    v70 = v109;
    GraphicalDatePickerStyle.init()();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type DatePicker<Text> and conformance DatePicker<A>, &_s7SwiftUI10DatePickerVyAA4TextVGMd);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type GraphicalDatePickerStyle and conformance GraphicalDatePickerStyle, MEMORY[0x277CDE290]);
    v71 = v107;
    v72 = v137;
    v73 = v111;
    View.datePickerStyle<A>(_:)();
    (*(v110 + 8))(v70, v73);
    (*(v135 + 8))(v69, v72);
    v74 = *(v66 + v67[9]);
    KeyPath = swift_getKeyPath();
    v151 = v74;

    v76 = AnyShapeStyle.init<A>(_:)();
    v77 = (v71 + *(v108 + 36));
    *v77 = KeyPath;
    v77[1] = v76;
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    View.listRowInsets(_:_:)();
    outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v71, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA09GraphicaligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
    v63 = 0;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_Md);
  v79 = 1;
  v80 = v150;
  (*(*(v78 - 8) + 56))(v150, v63, 1, v78);
  LOBYTE(v151) = v126;
  v152 = v127;
  State.wrappedValue.getter();
  v81 = v143;
  if (v155 == 1)
  {
    v146 = LocalizedStringKey.init(stringLiteral:)();
    v82 = v149;
    Binding.projectedValue.getter();
    outlined init with copy of ClosedRange<Date>(v82 + v147[6], v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI20DatePickerComponentsVGMd);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_20CB5DA70;
    static DatePickerComponents.hourAndMinute.getter();
    v151 = v83;
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents, MEMORY[0x277CDDFC8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI20DatePickerComponentsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [DatePickerComponents] and conformance [A], &_sSay7SwiftUI20DatePickerComponentsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v84 = v133;
    DatePicker<>.init(_:selection:in:displayedComponents:)();
    v85 = v112;
    WheelDatePickerStyle.init()();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type DatePicker<Text> and conformance DatePicker<A>, &_s7SwiftUI10DatePickerVyAA4TextVGMd);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle, MEMORY[0x277CDE068]);
    v86 = v115;
    v87 = v137;
    v88 = v114;
    View.datePickerStyle<A>(_:)();
    v89 = v85;
    v81 = v143;
    (*(v113 + 8))(v89, v88);
    (*(v135 + 8))(v84, v87);
    v90 = *(v82 + v147[9]);
    v91 = swift_getKeyPath();
    v151 = v90;

    v92 = AnyShapeStyle.init<A>(_:)();
    v93 = (v86 + *(v116 + 36));
    *v93 = v91;
    v93[1] = v92;
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    v80 = v150;
    View.listRowInsets(_:_:)();
    outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v86, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA05WheeligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
    v79 = 0;
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_Md);
  (*(*(v94 - 8) + 56))(v81, v79, 1, v94);
  v95 = v134;
  v96 = v81;
  v97 = *(v134 + 16);
  v98 = v132;
  v99 = v136;
  v97(v132, v148, v136);
  v100 = v140;
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v80, v140, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  v101 = v141;
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v81, v141, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  v102 = v142;
  v97(v142, v98, v99);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedL0VyAA6SpacerVAA12_FrameLayoutVGAA05TupleC0VyAA4TextV_AmKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedvT0VQo_AA023AccessibilityAttachmentZ0VGA10_tGG_SbQo__SbQo__SbQo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAKyAcAE010datePickerT0yQrqd__AA010DatePickerT0Rd__lFQOyAA10DatePickerVyATG_AA019GraphicalDatePickerT0VQo_A_yAA08AnyShapeT0VSgGG_Qo_SgAcAEA16_yQrA20__A24_tFQOyAKyAcAEA25_yQrqd__AAA26_Rd__lFQOyA29__AA015WheelDatePickerT0VQo_A36_G_Qo_SgtMd);
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v100, &v102[*(v103 + 48)], &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v101, &v102[*(v103 + 64)], &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v96, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v150, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  v104 = *(v95 + 8);
  v104(v148, v99);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v101, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA05WheelqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v100, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE15datePickerStyleyQrqd__AA04DateoP0Rd__lFQOyAA0qO0VyAA4TextVG_AA09GraphicalqoP0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeP0VSgGG_Qo_SgMd);
  return (v104)(v98, v99);
}

uint64_t closure #2 in StartDatePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v114 = type metadata accessor for AccessibilityTraits();
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v102 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = &v87 - v5;
  v106 = type metadata accessor for BorderedButtonStyle();
  v99 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v110 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartDatePicker();
  v115 = *(started - 8);
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](started);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v117 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v87 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v116);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedgE0VQo_Md);
  v118 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = &v87 - v23;
  MEMORY[0x28223BE20](v24);
  v113 = &v87 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v87 - v27;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = WorkoutUIBundle.super.isa;
  v124._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000017;
  v29._object = 0x800000020CBA4AB0;
  v30.value._object = 0x800000020CB936F0;
  v30.value._countAndFlagsBits = 0xD000000000000012;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v124._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v124);

  v120 = v32;
  lazy protocol witness table accessor for type String and conformance String();
  v97 = Text.init<A>(_:)();
  v96 = v33;
  v93 = v34;
  v98 = v35;
  outlined init with copy of StartDatePicker(a1, &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v89 = v8;
  v37 = swift_allocObject();
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = outlined init with take of StartDatePicker(v90, v37 + v36);
  MEMORY[0x28223BE20](v38);
  Button.init(action:label:)();
  v39 = a1 + *(started + 28);
  v40 = started;
  v41 = *v39;
  v42 = a1;
  v43 = *(v39 + 8);
  LOBYTE(v120._countAndFlagsBits) = *v39;
  v120._object = v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v95 = v42;
  v94 = v40;
  if (v123 == 1)
  {
    v44 = *(v42 + *(v40 + 36));
  }

  else
  {
    v44 = static Color.white.getter();
  }

  v45 = v106;
  KeyPath = swift_getKeyPath();
  v47 = *(v117 + 32);
  v117 += 32;
  v88 = v47;
  v47(v16, v12, v109);
  v48 = &v16[*(v116 + 36)];
  *v48 = KeyPath;
  v48[1] = v44;
  v49 = v110;
  BorderedButtonStyle.init()();
  v50 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v51 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v106 = v50;
  v105 = v51;
  View.buttonStyle<A>(_:)();
  v99 = *(v99 + 8);
  (v99)(v49, v45);
  outlined destroy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v16);
  LOBYTE(v120._countAndFlagsBits) = v41;
  v120._object = v43;
  State.wrappedValue.getter();
  if (v123 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd);
    v52 = v104;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_20CB5DA70;
    static AccessibilityTraits.isSelected.getter();
    v120._countAndFlagsBits = v53;
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v54 = v91;
    v55 = v114;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v120._countAndFlagsBits = MEMORY[0x277D84F90];
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v54 = v91;
    v55 = v114;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v52 = v104;
  }

  v120._countAndFlagsBits = v116;
  v120._object = v45;
  v56 = v45;
  v121 = v106;
  v122 = v105;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v112;
  v91 = OpaqueTypeConformance2;
  v59 = v107;
  MEMORY[0x20F30A9C0](v54, v112);
  v87 = *(v52 + 8);
  v87(v54, v55);
  v60 = *(v118 + 8);
  v118 += 8;
  v60(v59, v58);
  v61 = v95;
  v62 = v90;
  outlined init with copy of StartDatePicker(v95, v90);
  v63 = swift_allocObject();
  v64 = outlined init with take of StartDatePicker(v62, v63 + v36);
  MEMORY[0x28223BE20](v64);
  Button.init(action:label:)();
  v65 = v94;
  v66 = v61 + *(v94 + 32);
  v67 = *v66;
  v68 = *(v66 + 8);
  LOBYTE(v120._countAndFlagsBits) = *v66;
  v120._object = v68;
  State.wrappedValue.getter();
  if (v123 == 1)
  {
    v69 = *(v61 + *(v65 + 36));
  }

  else
  {
    v69 = static Color.white.getter();
  }

  v70 = swift_getKeyPath();
  v71 = v92;
  v88(v92, v108, v109);
  v72 = (v71 + *(v116 + 36));
  *v72 = v70;
  v72[1] = v69;
  v73 = v110;
  BorderedButtonStyle.init()();
  View.buttonStyle<A>(_:)();
  (v99)(v73, v56);
  outlined destroy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v71);
  LOBYTE(v120._countAndFlagsBits) = v67;
  v120._object = v68;
  State.wrappedValue.getter();
  if (v123 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_20CB5DA70;
    static AccessibilityTraits.isSelected.getter();
    v120._countAndFlagsBits = v74;
  }

  else
  {
    v120._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
  v75 = v102;
  v76 = v114;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v77 = v112;
  v78 = v113;
  v79 = v111;
  MEMORY[0x20F30A9C0](v75, v112, v91);
  v87(v75, v76);
  v60(v79, v77);
  v80 = v100;
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v119, v100, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  v81 = v101;
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v78, v101, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  v82 = v103;
  v83 = v97;
  v84 = v96;
  *v103 = v97;
  v82[1] = v84;
  LOBYTE(v76) = v93 & 1;
  *(v82 + 16) = v93 & 1;
  v82[3] = v98;
  v82[4] = 0;
  *(v82 + 40) = 1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAA0K0VyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedkI0VQo_AA023AccessibilityAttachmentO0VGA_tMd);
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v80, v82 + *(v85 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v81, v82 + *(v85 + 80), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined copy of Text.Storage(v83, v84, v76);

  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v113, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v119, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v81, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderediG0VQo_AA023AccessibilityAttachmentN0VGMd);
  outlined consume of Text.Storage(v83, v84, v76);
}

uint64_t closure #1 in closure #2 in StartDatePicker.body.getter()
{
  type metadata accessor for StartDatePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v0 = State.wrappedValue.getter();
  if (v2 == 1)
  {

    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  else
  {
    MEMORY[0x28223BE20](v0);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #1 in closure #2 in StartDatePicker.body.getter()
{
  type metadata accessor for StartDatePicker();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t closure #2 in closure #2 in StartDatePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  StartDatePicker.dateDisplayString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #3 in closure #2 in StartDatePicker.body.getter()
{
  type metadata accessor for StartDatePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v0 = State.wrappedValue.getter();
  if (v2 == 1)
  {

    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  else
  {
    MEMORY[0x28223BE20](v0);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #3 in closure #2 in StartDatePicker.body.getter()
{
  type metadata accessor for StartDatePicker();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t closure #4 in closure #2 in StartDatePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date.FormatStyle.DateStyle();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd);
  MEMORY[0x20F30B100](v12);
  static Date.FormatStyle.TimeStyle.omitted.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v13 = Date.formatted(date:time:)();
  v15 = v14;
  (*(v2 + 8))(v4, v21);
  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v8);
  v22 = v13;
  v23 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v19;
  return result;
}

void closure #3 in StartDatePicker.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for StartDatePicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
  }
}

void closure #4 in StartDatePicker.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for StartDatePicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
  }
}

void closure #5 in StartDatePicker.body.getter(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for StartDatePicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
    State.wrappedValue.setter();
  }
}

uint64_t outlined init with copy of StartDatePicker(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartDatePicker();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t outlined init with take of StartDatePicker(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartDatePicker();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t partial apply for closure #3 in StartDatePicker.body.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for StartDatePicker() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA05WheeligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10DatePickerVyAA4TextVGMd);
    type metadata accessor for WheelDatePickerStyle();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type DatePicker<Text> and conformance DatePicker<A>, &_s7SwiftUI10DatePickerVyAA4TextVGMd);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle, MEMORY[0x277CDE068]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15datePickerStyleyQrqd__AA04DategH0Rd__lFQOyAA0iG0VyAA4TextVG_AA09GraphicaligH0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeH0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10DatePickerVyAA4TextVGMd);
    type metadata accessor for GraphicalDatePickerStyle();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type DatePicker<Text> and conformance DatePicker<A>, &_s7SwiftUI10DatePickerVyAA4TextVGMd);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type GraphicalDatePickerStyle and conformance GraphicalDatePickerStyle, MEMORY[0x277CDE290]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.datePickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_95()
{
  v1 = (type metadata accessor for StartDatePicker() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVGMd) + 32);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);

  v6 = v2 + v1[8];
  v5(v6, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  v5(v6 + *(v7 + 36), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in StartDatePicker.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StartDatePicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined init with copy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Spacer, _FrameLayout>, TupleView<(Text, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>)>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutConfigurationColors(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationColors(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id static Localization.stepRemainingDistance(formattingManager:distanceInUnit:distanceUnit:platform:)(id result, uint64_t a2, char a3, double a4)
{
  if (one-time initialization token for useLongUnitString != -1)
  {
    v22 = result;
    swift_once();
    result = v22;
  }

  if (static DistanceRemainingMetricAppearance.useLongUnitString == 1)
  {
    result = [result localizedLongUnitStringForDistanceUnit:a2 distanceInUnit:a4];
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  result = [result localizedShortUnitStringForDistanceUnit_];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = specialized static Localization.remainingDistanceLocalizationKey(unit:platform:)(a2, a3 & 1);
  v13 = v12;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = v11;
  v16._object = v13;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CB5DA80;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v19 = MEMORY[0x277D839F8];
  *(v18 + 32) = v8;
  *(v18 + 40) = v10;
  v20 = MEMORY[0x277D83A80];
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = a4;
  v21 = static String.localizedStringWithFormat(_:_:)();

  return v21;
}

uint64_t one-time initialization function for useLongUnitString()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA4BC0;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v8);

  if (v4._countAndFlagsBits == 49 && v4._object == 0xE100000000000000)
  {

    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  static DistanceRemainingMetricAppearance.useLongUnitString = v6 & 1;
  return result;
}

uint64_t specialized static Localization.remainingDistanceLocalizationKey(unit:platform:)(uint64_t a1, char a2)
{
  v2 = 0xD00000000000002BLL;
  if (a2)
  {
    v2 = 0xD000000000000027;
  }

  v6 = v2;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v3 = 0x53524554454D5FLL;
      v4 = 0xE700000000000000;
LABEL_15:
      MEMORY[0x20F30BC00](v3, v4);
      return v6;
    }

    if (a1 == 2)
    {
      v3 = 0x54454D4F4C494B5FLL;
      v4 = 0xEB00000000535245;
      goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v3 = 0x53454C494D5FLL;
        goto LABEL_10;
      case 4:
        v3 = 0x53445241595FLL;
LABEL_10:
        v4 = 0xE600000000000000;
        goto LABEL_15;
      case 5:
        v3 = 0x544545465FLL;
        v4 = 0xE500000000000000;
        goto LABEL_15;
    }
  }

  _StringGuts.grow(_:)(25);
  MEMORY[0x20F30BC00](0xD000000000000017, 0x800000020CBA4B70);
  type metadata accessor for FIUIDistanceUnit(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MedallionCircleView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MedallionCircleView(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in MedallionCircleView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v16[0] = KeyPath;
  *(&v16[0] + 1) = v4;
  v16[1] = v13;
  v16[2] = v14;
  v16[3] = v15;
  *&v17[0] = v6;
  *(&v17[0] + 1) = a1;
  v17[2] = v11;
  v17[3] = v12;
  v17[1] = v10;
  v7 = v17[0];
  v8 = v16[0];
  a2[2] = v14;
  a2[3] = v15;
  *a2 = v8;
  a2[1] = v13;
  a2[6] = v11;
  a2[7] = v12;
  a2[4] = v7;
  a2[5] = v10;
  v18[0] = v6;
  v18[1] = a1;
  v20 = v11;
  v21 = v12;
  v19 = v10;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(v16, v22, &_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(v17, v22, &_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(v18, &_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  v22[0] = KeyPath;
  v22[1] = v4;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(v22, &_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
}

double protocol witness for View.body.getter in conformance MedallionCircleView@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in MedallionCircleView.body.getter(v3, &v13);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v29[6] = v19;
  v29[7] = v20;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(&v21, &v12, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AQtGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(v29, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AQtGMd);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v26;
  *(a1 + 80) = v25;
  *(a1 + 96) = v7;
  v8 = v28;
  *(a1 + 112) = v27;
  *(a1 + 128) = v8;
  v9 = v22;
  *(a1 + 16) = v21;
  *(a1 + 32) = v9;
  result = *&v23;
  v11 = v24;
  *(a1 + 48) = v23;
  *(a1 + 64) = v11;
  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AStGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t MetricRow.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB09MetricRowVGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7 + 16;
  MetricPlatterConstants.init()(v16);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB09MetricRowVGMd);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = &v8[*(v6 + 36)];
  v11 = v16[5];
  *(v10 + 4) = v16[4];
  *(v10 + 5) = v11;
  *(v10 + 6) = v16[6];
  v12 = v16[1];
  *v10 = v16[0];
  *(v10 + 1) = v12;
  v13 = v16[3];
  *(v10 + 2) = v16[2];
  *(v10 + 3) = v13;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v2);
  return outlined destroy of ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout>(v8);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB09MetricRowVGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricRow> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<MetricRow> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<MetricRow> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<MetricRow> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB09MetricRowVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<MetricRow> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<MetricRow>, _FlexFrameLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB09MetricRowVGAA16_FlexFrameLayoutVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MetricRow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetricRow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t LocalizationFeatureBridge.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalizationFeatureBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalizationFeatureBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance LocalizationFeatureBridge@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t LocalizationFeature.init(localizationFeatureBridge:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 1)
  {
    *a2 = 0;
  }

  else if (result == 2)
  {
    *a2 = 1;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalizationFeatureBridge and conformance LocalizationFeatureBridge()
{
  result = lazy protocol witness table cache variable for type LocalizationFeatureBridge and conformance LocalizationFeatureBridge;
  if (!lazy protocol witness table cache variable for type LocalizationFeatureBridge and conformance LocalizationFeatureBridge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizationFeatureBridge and conformance LocalizationFeatureBridge);
  }

  return result;
}

uint64_t WorkoutNotificationStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD19_ConditionalContentVyAD6HStackVyAD7ForEachVySay0A4Core0aC4UnitCGAoA0acnE0VGGAD08ModifiedI0VyAD6VStackVyASGAD16_FlexFrameLayoutVGGGMd);
  MetricPlatterConstants.init()(a1 + *(v5 + 56));
  return closure #2 in WorkoutNotificationStandardView.body.getter(v7);
}

uint64_t closure #2 in WorkoutNotificationStandardView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay11WorkoutCore0H16NotificationUnitCGAJ0hB00hjK4ViewVGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v39);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA7ForEachVySay11WorkoutCore0I16NotificationUnitCGAL0iB00ikL4ViewVGGAA08ModifiedD0VyAA6VStackVyAQGAA16_FlexFrameLayoutVG_GMd);
  MEMORY[0x28223BE20](v36);
  v38 = &v34 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
  MEMORY[0x28223BE20](v37);
  v10 = &v34 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a1 + 80);
  v15 = *(a1 + 72);
  v44 = v15;
  if (v45 != 1)
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(&v44, v42, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_3(&v44, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    (*(v12 + 8))(v14, v11);
    if (v41 != 11)
    {
      goto LABEL_3;
    }

LABEL_5:
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay11WorkoutCore0J16NotificationUnitCGAL0jB00jlmD0VGGMd);
    v43 = *a1;
    v40 = v43;
    swift_getKeyPath();
    v30 = swift_allocObject();
    v31 = *(a1 + 48);
    *(v30 + 48) = *(a1 + 32);
    *(v30 + 64) = v31;
    *(v30 + 80) = *(a1 + 64);
    *(v30 + 96) = *(a1 + 80);
    v32 = *(a1 + 16);
    *(v30 + 16) = *a1;
    *(v30 + 32) = v32;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(&v43, v42, &_sSay11WorkoutCore0A16NotificationUnitCGMd);
    outlined init with copy of WorkoutNotificationStandardView(a1, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance [A], &_sSay11WorkoutCore0A16NotificationUnitCGMd);
    lazy protocol witness table accessor for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit();
    lazy protocol witness table accessor for type WorkoutNotificationUnitView and conformance WorkoutNotificationUnitView();
    ForEach<>.init(_:id:content:)();
    v26 = &_s7SwiftUI6HStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(v10, v38, &_s7SwiftUI6HStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v28 = v10;
    return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_3(v28, v26);
  }

  v41 = v15;
  if (v15 == 11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = static HorizontalAlignment.leading.getter();
  v17 = *(a1 + 24);
  *v4 = v16;
  *(v4 + 1) = v17;
  v4[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay11WorkoutCore0J16NotificationUnitCGAL0jB00jlmD0VGGMd);
  v43 = *a1;
  v40 = v43;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  outlined init with copy of WorkoutNotificationStandardView(a1, v42);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(&v43, v42, &_sSay11WorkoutCore0A16NotificationUnitCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance [A], &_sSay11WorkoutCore0A16NotificationUnitCGMd);
  lazy protocol witness table accessor for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit();
  lazy protocol witness table accessor for type WorkoutNotificationUnitView and conformance WorkoutNotificationUnitView();
  ForEach<>.init(_:id:content:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v34;
  outlined init with take of VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>(v4, v34, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
  v22 = (v21 + *(v39 + 36));
  v23 = v42[5];
  v22[4] = v42[4];
  v22[5] = v23;
  v22[6] = v42[6];
  v24 = v42[1];
  *v22 = v42[0];
  v22[1] = v24;
  v25 = v42[3];
  v22[2] = v42[2];
  v22[3] = v25;
  v26 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay11WorkoutCore0H16NotificationUnitCGAJ0hB00hjK4ViewVGGAA16_FlexFrameLayoutVGMd;
  v27 = v35;
  outlined init with take of VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>(v21, v35, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay11WorkoutCore0H16NotificationUnitCGAJ0hB00hjK4ViewVGGAA16_FlexFrameLayoutVGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(v27, v38, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay11WorkoutCore0H16NotificationUnitCGAJ0hB00hjK4ViewVGGAA16_FlexFrameLayoutVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v28 = v27;
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_3(v28, v26);
}

id closure #1 in closure #1 in closure #2 in WorkoutNotificationStandardView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v7 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;

  return v7;
}

uint64_t protocol witness for View.body.getter in conformance WorkoutNotificationStandardView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD19_ConditionalContentVyAD6HStackVyAD7ForEachVySay0A4Core0aC4UnitCGAoA0acnE0VGGAD08ModifiedI0VyAD6VStackVyASGAD16_FlexFrameLayoutVGGGMd);
  MetricPlatterConstants.init()(a1 + *(v5 + 56));
  return closure #2 in WorkoutNotificationStandardView.body.getter(v7);
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationStandardView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationStandardView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit)
  {
    type metadata accessor for WorkoutNotificationUnit();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit);
  }

  return result;
}

uint64_t outlined init with take of VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay11WorkoutCore0H16NotificationUnitCGAJ0hB00hjK4ViewVGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F16NotificationUnitCGAH0fB00fhI4ViewVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, _ConditionalContent<HStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, ModifiedContent<VStack<ForEach<[WorkoutNotificationUnit], WorkoutNotificationUnit, WorkoutNotificationUnitView>>, _FlexFrameLayout>>> and conformance WorkoutNotificationResultView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_96()
{

  outlined consume of Environment<WorkoutViewStyle>.Content(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PowerMetricView.init(activityType:power:metricType:formattingManager:workoutPaused:lowPowerModeAnimationSuspended:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 48) = swift_getKeyPath();
  *(a8 + 56) = 0;
  *(a8 + 64) = swift_getKeyPath();
  *(a8 + 72) = 0;
  result = swift_getKeyPath();
  *(a8 + 80) = result;
  *(a8 + 88) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 41) = a7;
  return result;
}

uint64_t PowerMetricView.metricDescription.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  if (v5 > 44)
  {
    if (v5 == 45)
    {
      v7 = "_POWER_DESCRIPTION";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = WorkoutUIBundle.super.isa;
      v9 = 0xD00000000000001FLL;
      goto LABEL_24;
    }

    if (v5 == 46)
    {
      v16 = "INTERVAL_AVERAGE_POWER_DESCRIPTION";
      goto LABEL_44;
    }

    if (v5 != 49)
    {
      return 0xD000000000000012;
    }

    if (*(v0 + 72))
    {
      if (*(v0 + 64) != 3 && *(v0 + 64) != 5)
      {
LABEL_47:
        v24 = "AX_NO_POWER_DATA";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = WorkoutUIBundle.super.isa;
        v9 = 0xD00000000000001BLL;
        v32 = 0xE000000000000000;
LABEL_50:
        v14 = v24 | 0x8000000000000000;
        v12 = 0x617A696C61636F4CLL;
        v13 = 0xEB00000000656C62;
        goto LABEL_51;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_20C69ABC8(v6, 0);
      v22 = *(v2 + 8);
      v22(v4, v1);
      if (v34 != 3)
      {

        static os_log_type_t.fault.getter();
        v23 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_20C69ABC8(v6, 0);
        v22(v4, v1);
        if (v34 != 5)
        {
          goto LABEL_47;
        }
      }
    }

    v24 = "THIRTY_SECOND_AVERAGE_POWER";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v32 = 0xE000000000000000;
    v9 = 0xD000000000000024;
    goto LABEL_50;
  }

  switch(v5)
  {
    case 11:
      if (*(v0 + 72))
      {
        v10 = *(v0 + 64);
        if (v10 != 3 && v10 != 5)
        {
LABEL_34:
          if (v10 != 7)
          {
            return 0;
          }
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_20C69ABC8(v6, 0);
        v18 = *(v2 + 8);
        v18(v4, v1);
        if (v34 != 3)
        {

          static os_log_type_t.fault.getter();
          v19 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_20C69ABC8(v6, 0);
          v18(v4, v1);
          if (v34 != 5)
          {

            static os_log_type_t.fault.getter();
            v20 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_20C69ABC8(v6, 0);
            v18(v4, v1);
            v10 = v34;
            goto LABEL_34;
          }
        }
      }

      v16 = "CURRENT_POWER_DESCRIPTION_ONE_LINE";
      goto LABEL_44;
    case 12:
      if (*(v0 + 72))
      {
        if (*(v0 + 64) != 3 && *(v0 + 64) != 5)
        {
          return String.workoutLocalized()()._countAndFlagsBits;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v25 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_20C69ABC8(v6, 0);
        v26 = *(v2 + 8);
        v26(v4, v1);
        if (v34 != 3)
        {

          static os_log_type_t.fault.getter();
          v27 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_20C69ABC8(v6, 0);
          v26(v4, v1);
          if (v34 != 5)
          {
            return String.workoutLocalized()()._countAndFlagsBits;
          }
        }
      }

      v16 = "AVERAGE_POWER_DESCRIPTION_ONE_LINE";
LABEL_44:
      v28 = v16 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = WorkoutUIBundle.super.isa;
      v32 = 0xE000000000000000;
      v12 = 0x617A696C61636F4CLL;
      v13 = 0xEB00000000656C62;
      v14 = v28 | 0x8000000000000000;
      v9 = 0xD000000000000022;
      goto LABEL_51;
    case 44:
      v7 = "SPLIT_AVERAGE_POWER_DESCRIPTION";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = WorkoutUIBundle.super.isa;
      v9 = 0xD000000000000021;
LABEL_24:
      v32 = 0xE000000000000000;
      v12 = 0x617A696C61636F4CLL;
      v13 = 0xEB00000000656C62;
      v14 = v7 | 0x8000000000000000;
LABEL_51:
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      v30 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, *&v12, v8, v29, *(&v32 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
  }

  return 0xD000000000000012;
}

uint64_t PowerMetricView.valueString.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  if ((*(v0 + 16) & 1) != 0 || (v29 = v16, v20 = *(v0 + 8), [*v0 identifier] != 13) && v20 == 0.0)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v34._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x4E5F43495254454DLL;
    v22._object = 0xEE0045554C41564FLL;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v34)._countAndFlagsBits;
  }

  else
  {
    v32 = v20;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    (*(v5 + 104))(v7, *MEMORY[0x277D84688], v4);
    MEMORY[0x20F3024B0](v7, 0, 1, v9);
    (*(v5 + 8))(v7, v4);
    v26 = *(v29 + 8);
    v26(v11, v9);
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v3, v9);
    (*(v30 + 8))(v3, v31);
    v26(v14, v9);
    lazy protocol witness table accessor for type MetricTextWithAccessory<ModifiedContent<ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v26(v19, v9);
    return v33;
  }

  return countAndFlagsBits;
}

uint64_t PowerMetricView.unitString.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = 0;
  if ((*(v0 + 16) & 1) == 0 && *(v0 + 8) != 0.0)
  {
    if (*(v0 + 24) == 11)
    {
      v7 = *(v0 + 64);
      if (*(v0 + 72))
      {
        if (*(v0 + 64) != 7)
        {
          return 0;
        }
      }

      else
      {
        v8 = v3;

        static os_log_type_t.fault.getter();
        v9 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_20C69ABC8(v7, 0);
        (*(v2 + 8))(v5, v8);
        if (v13[15] != 7)
        {
          return 0;
        }
      }
    }

    v10 = [objc_opt_self() localizedShortPowerUnitString];
    if (v10)
    {
      v11 = v10;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    return 0;
  }

  return v6;
}

uint64_t PowerMetricView.accessibilityLabel.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v65 = *v0;
  v66 = v2;
  v67 = v3;
  v69 = *(v0 + 33);
  v70 = *(v0 + 49);
  v71 = *(v0 + 65);
  v72 = *(v0 + 81);
  v68 = *(v0 + 17);
  v4 = PowerMetricView.metricDescription.getter();
  v6 = v4;
  if (v5)
  {
    v50 = v4;
    v51 = v5;
    v41 = lazy protocol witness table accessor for type String and conformance String();
    v42 = v41;
    v39 = MEMORY[0x277D837D0];
    v40 = v41;
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v8 = v7;

    if (v3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_33;
    }
  }

  if ([v1 identifier] == 13)
  {
    v65 = v1;
    v66 = v2;
    v67 = v3;
    v69 = *(v0 + 33);
    v70 = *(v0 + 49);
    v71 = *(v0 + 65);
    v72 = *(v0 + 81);
    v68 = *(v0 + 17);
    v44 = PowerMetricView.valueString.getter();
    v45 = v9;
    v50 = v1;
    v51 = v2;
    v52 = v3;
    v54 = *(v0 + 33);
    v55 = *(v0 + 49);
    v56 = *(v0 + 65);
    v57 = *(v0 + 81);
    v53 = *(v0 + 17);
    v10 = &v50;
    v11 = 0;
    v46 = PowerMetricView.unitString.getter();
    v47 = v12;
    v48 = v6;
    v49 = v8;
    v13 = MEMORY[0x277D84F90];
LABEL_7:
    if (v11 <= 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14 + 1;
    v16 = 16 * v11 + 40;
    while (v11 != 3)
    {
      if (v15 == ++v11)
      {
        __break(1u);
        goto LABEL_38;
      }

      v17 = v16 + 16;
      v10 = *&v43[v16];
      v16 += 16;
      if (v10)
      {
        v18 = *&v43[v17 - 24];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v21 = &v13[16 * v20];
        *(v21 + 4) = v18;
        *(v21 + 5) = v10;
        goto LABEL_7;
      }
    }

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    swift_arrayDestroy();
    v65 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type MetricTextWithAccessory<ModifiedContent<ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v65 = v1;
    v66 = v2;
    v67 = v3;
    v69 = *(v0 + 33);
    v70 = *(v0 + 49);
    v71 = *(v0 + 65);
    v72 = *(v0 + 81);
    v68 = *(v0 + 17);
    v59 = PowerMetricView.valueString.getter();
    v60 = v22;
    v50 = v1;
    v51 = v2;
    v52 = v3;
    v54 = *(v0 + 33);
    v55 = *(v0 + 49);
    v56 = *(v0 + 65);
    v57 = *(v0 + 81);
    v53 = *(v0 + 17);
    v10 = &v50;
    v23 = 0;
    v61 = PowerMetricView.unitString.getter();
    v62 = v24;
    v63 = v6;
    v64 = v8;
    v13 = MEMORY[0x277D84F90];
LABEL_21:
    if (v23 <= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 + 1;
    v27 = 16 * v23 + 40;
    while (v23 != 3)
    {
      if (v26 == ++v23)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v28 = v27 + 16;
      v10 = *&v58[v27];
      v27 += 16;
      if (v10)
      {
        v29 = *(&v56 + v28 + 7);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v31 = *(v13 + 2);
        v30 = *(v13 + 3);
        if (v31 >= v30 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v13);
        }

        *(v13 + 2) = v31 + 1;
        v32 = &v13[16 * v31];
        *(v32 + 4) = v29;
        *(v32 + 5) = v10;
        goto LABEL_21;
      }
    }

    goto LABEL_35;
  }

LABEL_33:

  v10 = "STANCE_REMAINING_USE_LONG_UNITS";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_39:
    swift_once();
  }

  swift_beginAccess();
  v33 = WorkoutUIBundle.super.isa;
  v73._object = 0xE000000000000000;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35._object = (v10 | 0x8000000000000000);
  v35._countAndFlagsBits = 0xD000000000000010;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v73)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t PowerMetricView.animationsSuspended.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (*(v0 + 56) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_20C69ABC8(v7, 0);
    (*(v2 + 8))(v4, v1);
    LODWORD(v7) = v14[15];
  }

  if ((v7 | v5))
  {
    v11 = 1;
  }

  else
  {
    if (!v9)
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_20C69ABC8(v8, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v14[14];
    }

    v11 = v8 | v6;
  }

  return v11 & 1;
}

uint64_t PowerMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v21[2] = v1[2];
  v21[3] = v3;
  v22[0] = v1[4];
  *(v22 + 9) = *(v1 + 73);
  v4 = v1[1];
  v21[0] = *v1;
  v21[1] = v4;
  v20 = PowerMetricView.valueString.getter();
  v6 = v5;
  v7 = PowerMetricView.unitString.getter();
  v9 = v8;
  v10 = PowerMetricView.metricDescription.getter();
  v12 = v11;
  v13 = PowerMetricView.accessibilityLabel.getter();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB015ModifiedContentVyAFyAFyAA15PowerStatusViewVAD14_PaddingLayoutVGAD010_FixedSizeN0VGAD31AccessibilityAttachmentModifierVGSgGMd);
  v17 = v16[11];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v16[12];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(a1 + v16[13]) = 0x3FD6666666666666;
  *a1 = v20;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15;
  *(a1 + 72) = 0;
  return closure #1 in PowerMetricView.body.getter(v21, a1 + v16[10]);
}

uint64_t closure #1 in PowerMetricView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGAA010_FixedSizeJ0VGAA31AccessibilityAttachmentModifierVGMd);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  if (*(a1 + 3) == 11)
  {
    v41 = v10;
    v42 = v9;
    v14 = *(a1 + 16);
    v15 = 6;
    if (*(a1 + 40))
    {
      v16 = 6;
    }

    else
    {
      v16 = 1;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      v15 = 3;
    }

    if (*(a1 + 16))
    {
      v17 = 0.0;
    }

    else
    {
      v17 = *(a1 + 1);
    }

    v18 = a1[3];
    v19 = a1[4];
    v20 = a1[1];
    v51 = a1[2];
    v52 = v18;
    if (v14)
    {
      v21 = v16;
    }

    else
    {
      v21 = v15;
    }

    v53[0] = v19;
    *(v53 + 9) = *(a1 + 73);
    v49 = *a1;
    v50 = v20;
    v22 = PowerMetricView.animationsSuspended.getter();
    KeyPath = swift_getKeyPath();
    LODWORD(v24) = v22 & 1;
    v40 = static Edge.Set.leading.getter();
    v57 = *(a1 + 72);
    v56 = *(a1 + 8);
    if (v57 != 1)
    {
      outlined init with copy of Environment<WorkoutViewStyle>(&v56, &v49);
      static os_log_type_t.fault.getter();
      v38 = v4;
      v25 = static Log.runtimeIssuesLog.getter();
      v39 = v24;
      v24 = v21;
      v26 = v25;
      os_log(_:dso:log:_:_:)();

      v21 = v24;
      LOBYTE(v24) = v39;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_4(&v56, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
      (*(v5 + 8))(v7, v38);
    }

    EdgeInsets.init(_all:)();
    v55 = 0;
    v54 = 0;
    *&v44 = v21;
    *(&v44 + 1) = v17;
    LOBYTE(v45) = v24;
    *(&v45 + 1) = KeyPath;
    LOBYTE(v46) = 0;
    BYTE8(v46) = v40;
    *&v47 = v27;
    *(&v47 + 1) = v28;
    *v48 = v29;
    *&v48[8] = v30;
    v48[16] = 0;
    *&v48[17] = 257;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = WorkoutUIBundle.super.isa;
    v59._object = 0xE000000000000000;
    v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v32.value._object = 0xEB00000000656C62;
    v33._object = 0x800000020CBA1820;
    v33._countAndFlagsBits = 0xD000000000000022;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v32, v31, v34, v59);

    v43 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGAA010_FixedSizeJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    v51 = v46;
    v52 = v47;
    v53[0] = *v48;
    *(v53 + 15) = *&v48[15];
    v49 = v44;
    v50 = v45;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_4(&v49, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGAA010_FixedSizeJ0VGMd);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>(v13, a2);
    return (*(v41 + 56))(a2, 0, 1, v42);
  }

  else
  {
    v37 = *(v10 + 56);

    return v37(a2, 1, 1, v11);
  }
}

uint64_t getEnumTagSinglePayload for PowerMetricView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for PowerMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Environment<WorkoutViewStyle>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGAA010_FixedSizeJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<PowerStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PowerStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PowerStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PowerStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type PowerStatusView and conformance PowerStatusView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PowerStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB015PowerStatusViewVAA14_PaddingLayoutVGAA010_FixedSizeJ0VGAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MetricTextWithAccessory<ModifiedContent<ModifiedContent<ModifiedContent<PowerStatusView, _PaddingLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>?> and conformance MetricTextWithAccessory<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t IntervalTargetAlertsEntryView.init(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = a1;
  v3 = a1;
  MEMORY[0x20F305950]();
  v4 = dispatch thunk of TargetAlerts.intervalTargetAlertsEnabled.getter();

  *a2 = v4 & 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t IntervalTargetAlertsEntryView.body.getter@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAH09UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA9TupleViewVyAEyAA6ToggleVyAGGAJG_AEyAgA013_TraitWritingL0VyAA017ListRowBackgroundY3KeyVGGtGAA05EmptyW0VGMd);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA7SectionVyAA15ModifiedContentVyAJyAA4TextV07WorkoutB017HeaderHyphenationVGAM09UnstackedH15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA05TupleC0VyAJyAA6ToggleVyALGAOG_AJyAlA013_TraitWritingQ0VyAA25ListRowBackgroundTraitKeyVGGtGAA05EmptyC0VG_SbQo_Md);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v15 = *(v1 + 1);
  v16 = *(v1 + 2);
  v40 = *v1;
  v14 = v40;
  v41 = v15;
  v42 = v16;
  closure #2 in IntervalTargetAlertsEntryView.body.getter(v16, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAF31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMd);
  Section<>.init(header:content:)();
  v44[0] = v14;
  v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v44[0] = v43;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = v16;
  lazy protocol witness table accessor for type Section<ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier>, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>();

  v18 = v16;
  v19 = v32;
  View.onChange<A>(of:initial:_:)();

  (*(v33 + 8))(v9, v19);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    lazy protocol witness table accessor for type DemoSettingsView and conformance DemoSettingsView();
    v20 = v34;
    Section<>.init(footer:content:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v34;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGMd);
  (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
  v23 = v35;
  v24 = v36;
  v25 = *(v35 + 16);
  v26 = v37;
  v25(v36, v13, v37);
  v27 = v39;
  outlined init with copy of Section<EmptyView, EmptyView, DemoSettingsView>?(v20, v39, &_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGSgMd);
  v28 = v38;
  v25(v38, v24, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA7SectionVyAA15ModifiedContentVyAJyAA4TextV07WorkoutB017HeaderHyphenationVGAM09UnstackedH15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA05TupleC0VyAJyAA6ToggleVyALGAOG_AJyAlA013_TraitWritingQ0VyAA25ListRowBackgroundTraitKeyVGGtGAA05EmptyC0VG_SbQo__AHyA7_A7_AM012DemoSettingsC0VGSgtMd);
  outlined init with copy of Section<EmptyView, EmptyView, DemoSettingsView>?(v27, &v28[*(v29 + 48)], &_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGSgMd);
  outlined destroy of Section<EmptyView, EmptyView, DemoSettingsView>?(v20, &_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGSgMd);
  v30 = *(v23 + 8);
  v30(v13, v26);
  outlined destroy of Section<EmptyView, EmptyView, DemoSettingsView>?(v27, &_s7SwiftUI7SectionVyAA9EmptyViewVAE07WorkoutB0012DemoSettingsE0VGSgMd);
  return (v30)(v24, v26);
}

uint64_t closure #1 in IntervalTargetAlertsEntryView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v54 - v10;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v63._object = 0xE000000000000000;
  v12._object = 0x800000020CBA4D40;
  v12._countAndFlagsBits = 0xD000000000000030;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v63);

  v62 = v15;
  v60 = a1 & 1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v16 = WorkoutUIBundle.super.isa;
  v64._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000036;
  v17._object = 0x800000020CBA4D80;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20CB5DA70;
  v21 = [a3 effectiveTypeIdentifier];
  v22 = [a3 swimmingLocationType];
  v23 = [a3 isIndoor];
  v24 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
  v25 = MEMORY[0x20F30D330](v21, v22, v23, 0, v24);

  if (!v25)
  {
    v25 = [a3 localizedName];
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = v26;
  *(v20 + 40) = v28;
  v29 = String.init(format:_:)();
  v31 = v30;

  v58 = v29;
  v59 = v31;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  LOBYTE(v31) = v35;
  static Font.footnote.getter();
  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;

  outlined consume of Text.Storage(v32, v34, v31 & 1);

  static Color.secondary.getter();
  v41 = Text.foregroundColor(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  outlined consume of Text.Storage(v36, v38, v40 & 1);

  v58 = static Color.black.getter();
  v48 = AnyView.init<A>(_:)();
  v49 = v56;
  v50 = v57;
  outlined init with copy of Section<EmptyView, EmptyView, DemoSettingsView>?(v57, v56, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  v51 = v55;
  outlined init with copy of Section<EmptyView, EmptyView, DemoSettingsView>?(v49, v55, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAgA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGtMd) + 48);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45 & 1;
  *(v52 + 24) = v47;
  *(v52 + 32) = v48;
  outlined copy of Text.Storage(v41, v43, v45 & 1);

  outlined destroy of Section<EmptyView, EmptyView, DemoSettingsView>?(v50, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  outlined consume of Text.Storage(v41, v43, v45 & 1);

  return outlined destroy of Section<EmptyView, EmptyView, DemoSettingsView>?(v49, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
}

uint64_t closure #2 in IntervalTargetAlertsEntryView.body.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v17._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000020CBA4D00;
  v6._countAndFlagsBits = 0xD000000000000031;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CB5DA70;
  v9 = [a1 localizedName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAF31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #3 in IntervalTargetAlertsEntryView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  type metadata accessor for TargetAlerts();
  swift_allocObject();
  TargetAlerts.init(intervalTargetAlertsEnabled:)();
  static TargetAlertsStore.save(targetAlerts:activityType:)();
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier>, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier>, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier>, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAH09UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA9TupleViewVyAEyAA6ToggleVyAGGAJG_AEyAgA013_TraitWritingL0VyAA017ListRowBackgroundY3KeyVGGtGAA05EmptyW0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, UnstackedSectionSpacingModifier>, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoSettingsView and conformance DemoSettingsView()
{
  result = lazy protocol witness table cache variable for type DemoSettingsView and conformance DemoSettingsView;
  if (!lazy protocol witness table cache variable for type DemoSettingsView and conformance DemoSettingsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoSettingsView and conformance DemoSettingsView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalTargetAlertsEntryView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for IntervalTargetAlertsEntryView(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of Section<EmptyView, EmptyView, DemoSettingsView>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Section<EmptyView, EmptyView, DemoSettingsView>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutVoicePickerView.init(inferenceClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InferenceClient();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  WorkoutVoicePickerView.init(inferenceClient:selectedRowCallback:)(v8, 0, 0, a2);
  return (*(v5 + 8))(a1, v4);
}

uint64_t WorkoutVoicePickerView.voiceAssetsObserver.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WorkoutVoicePickerView() + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoicePickerView.Row()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x20F30CD90](1);
    v3 = v1;
  }

  MEMORY[0x20F30CD90](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutVoicePickerView.Row()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F30CD90](1);
  }

  return MEMORY[0x20F30CD90](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoicePickerView.Row()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x20F30CD90](1);
  }

  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutVoicePickerView.Row(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WorkoutVoicePickerView.selection.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutVoicePickerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00D15VoicePickerViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOGMd);
  State.wrappedValue.setter();
  result = State.wrappedValue.getter();
  if ((a2 & 1) == 0)
  {
    v8 = (v3 + *(v6 + 28));
    if (*v8)
    {
      return (*v8)(a1, 0);
    }
  }

  return result;
}

uint64_t WorkoutVoicePickerView.init(inferenceClient:selectedRowCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WorkoutVoicePickerView();
  v9 = a4 + v8[5];
  type metadata accessor for VoiceAssetsObserver();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340]);
  *v9 = Environment.init<A>(_:)();
  *(v9 + 8) = v10 & 1;
  v11 = a4 + v8[6];
  State.init(wrappedValue:)();
  *v11 = v16;
  *(v11 + 8) = v17;
  *(v11 + 16) = v18;
  v12 = a4 + v8[8];
  State.init(wrappedValue:)();
  *v12 = v16;
  *(v12 + 8) = v17;
  v13 = type metadata accessor for InferenceClient();
  result = (*(*(v13 - 8) + 32))(a4, a1, v13);
  v15 = (a4 + v8[7]);
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t type metadata accessor for WorkoutVoicePickerView()
{
  result = type metadata singleton initialization cache for WorkoutVoicePickerView;
  if (!type metadata singleton initialization cache for WorkoutVoicePickerView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoicePickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for WorkoutVoicePickerView();
  v4 = v3 - 8;
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = v5;
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for InlinePickerStyle();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV07WorkoutB00e5VoiceC4ViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleG0VyAE_AA15ModifiedContentVyAXyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAA5ColorVSgGGtGG_AKQo_GGMd);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV07WorkoutB00h5VoicefC0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAI_AA15ModifiedContentVyAZyAISgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA1_yAA5ColorVSgGGtGG_AOQo_GG_AA06InlinefE0VQo_Md);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA4TextV07WorkoutB00l5VoicejC0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAL_AA15ModifiedContentVyA1_yALSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_yAA5ColorVSgGGtGG_ARQo_GG_AA06InlinejI0VQo__Say19FitnessIntelligence014AudioSynthesisM0VGQo_Md);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v41 - v14;
  v15 = v2 + *(v4 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v47 = v16;
  v63._countAndFlagsBits = v16;
  v46 = v17;
  LOBYTE(v63._object) = v17;
  v45 = v18;
  v64 = v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00D15VoicePickerViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOGMd);
  State.projectedValue.getter();
  v59 = v2;
  v63 = v60;
  v64 = v61;
  v65 = v62;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v66._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._object = 0x800000020CB9B0E0;
  v21._countAndFlagsBits = 0xD000000000000014;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v66);

  v60 = v23;
  lazy protocol witness table accessor for type String and conformance String();
  v60._countAndFlagsBits = Text.init<A>(_:)();
  v60._object = v24;
  LOBYTE(v61) = v25 & 1;
  v62 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AA15ModifiedContentVyAPyANSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAA5ColorVSgGGtGG_07WorkoutB00t11VoicePickerE0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOQo_GMd);
  lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row();
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  v27 = lazy protocol witness table accessor for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Picker<Text, WorkoutVoicePickerView.Row, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV07WorkoutB00e5VoiceC4ViewV3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleG0VyAE_AA15ModifiedContentVyAXyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAA5ColorVSgGGtGG_AKQo_GGMd);
  v42 = v12;
  v28 = v49;
  View.pickerStyle<A>(_:)();
  (*(v48 + 8))(v7, v28);
  (*(v43 + 8))(v10, v8);
  v63._countAndFlagsBits = WorkoutVoicePickerView.voices.getter();
  v29 = v56;
  outlined init with copy of WorkoutVoicePickerView(v2, v56);
  v30 = *(v51 + 80);
  v51 = v2;
  v31 = (v30 + 16) & ~v30;
  v32 = swift_allocObject();
  outlined init with take of WorkoutVoicePickerView(v29, v32 + v31);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19FitnessIntelligence19AudioSynthesisVoiceVGMd);
  v60._countAndFlagsBits = v8;
  v60._object = v28;
  v61 = v27;
  v62 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = lazy protocol witness table accessor for type [AudioSynthesisVoice] and conformance <A> [A]();
  v35 = v52;
  v36 = v53;
  v37 = v42;
  View.onChange<A>(of:initial:_:)();

  (*(v50 + 8))(v37, v36);
  v60._countAndFlagsBits = v47;
  LOBYTE(v60._object) = v46;
  v61 = v45;
  State.wrappedValue.getter();
  outlined init with copy of WorkoutVoicePickerView(v51, v29);
  v38 = swift_allocObject();
  outlined init with take of WorkoutVoicePickerView(v29, v38 + v31);
  v60._countAndFlagsBits = v36;
  v60._object = v48;
  v61 = OpaqueTypeConformance2;
  v62 = v34;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row();
  v39 = v55;
  View.onChange<A>(of:initial:_:)();

  return (*(v54 + 8))(v35, v39);
}

uint64_t closure #1 in WorkoutVoicePickerView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoicePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v5 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  v6 = *(v5 + 16);

  v13[4] = 0;
  v13[5] = v6;
  swift_getKeyPath();
  outlined init with copy of WorkoutVoicePickerView(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of WorkoutVoicePickerView(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAA4TextV_AA15ModifiedContentVyAMyAKSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGtGG_07WorkoutB00r11VoicePickerC0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOQo_Md);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAGSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGALyAA5ColorVSgGGtGGMd);
  v10 = lazy protocol witness table accessor for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAGSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGALyAA5ColorVSgGGtGGMd);
  v11 = lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row();
  v13[0] = v9;
  v13[1] = &type metadata for WorkoutVoicePickerView.Row;
  v13[2] = v10;
  v13[3] = v11;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row()
{
  result = lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row;
  if (!lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row;
  if (!lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

__n128 closure #1 in closure #1 in WorkoutVoicePickerView.body.getter@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = static HorizontalAlignment.leading.getter();
  v18 = 1;
  closure #1 in closure #1 in closure #1 in WorkoutVoicePickerView.body.getter(v3, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  outlined init with copy of TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>(&v19, &v10, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAGyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA5ColorVSgGGtGMd);
  _sSo8NSObjectCSgWOhTm_4(v25, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAGyAESgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA5ColorVSgGGtGMd);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  *&v17[87] = v24;
  *&v17[71] = v23;
  *&v17[55] = v22;
  v5 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v6 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  v7 = *v17;
  *(a2 + 33) = *&v17[16];
  *(a2 + 17) = v7;
  result = *&v17[64];
  v9 = *&v17[80];
  *(a2 + 112) = *&v17[95];
  *(a2 + 120) = v3;
  *(a2 + 97) = v9;
  *(a2 + 81) = result;
  *(a2 + 65) = v6;
  *(a2 + 128) = 256;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutVoicePickerView.body.getter@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v48._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000020CB93CD0;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v9;
    *(result + 32) = a1 + 1;
    v10 = String.init(format:_:)();
    v12 = v11;

    v40 = v10;
    v41 = v12;
    lazy protocol witness table accessor for type String and conformance String();
    v13 = Text.init<A>(_:)();
    v33 = v14;
    v34 = v15;
    v17 = v16;
    v18 = WorkoutVoicePickerView.subtitle(_:)(a1);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (static Platform.current.getter())
    {
      v25 = static Font.footnote.getter();
    }

    else
    {
      v25 = static Font.callout.getter();
    }

    v26 = v25;
    KeyPath = swift_getKeyPath();
    v28 = static Color.gray.getter();
    v29 = swift_getKeyPath();
    v30 = v17 & 1;
    v35[64] = v30;
    *&v36 = v18;
    *(&v36 + 1) = v20;
    *&v37 = v22;
    *(&v37 + 1) = v24;
    *&v38 = KeyPath;
    *(&v38 + 1) = v26;
    *&v39 = v29;
    *(&v39 + 1) = v28;
    *a2 = v13;
    *(a2 + 8) = v33;
    *(a2 + 16) = v30;
    *(a2 + 24) = v34;
    v31 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v31;
    v32 = v39;
    *(a2 + 64) = v38;
    *(a2 + 80) = v32;
    v40 = v18;
    v41 = v20;
    v42 = v22;
    v43 = v24;
    v44 = KeyPath;
    v45 = v26;
    v46 = v29;
    v47 = v28;
    outlined copy of Text.Storage(v13, v33, v30);

    outlined init with copy of TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>(&v36, v35, &_s7SwiftUI15ModifiedContentVyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAHyAA5ColorVSgGGMd);
    _sSo8NSObjectCSgWOhTm_4(&v40, &_s7SwiftUI15ModifiedContentVyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAHyAA5ColorVSgGGMd);
    outlined consume of Text.Storage(v13, v33, v30);
  }

  return result;
}

uint64_t WorkoutVoicePickerView.subtitle(_:)(unint64_t a1)
{
  v2 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioSynthesisVoiceAsset();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v10 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v10 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D0A528])
  {
    (*(v3 + 96))(v5, v2);
    _sSo8NSObjectCSgWOhTm_4(v5, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd);
    v10 = "WORKOUT_BUDDY_VOICES";
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_5:
      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v19._object = 0xE000000000000000;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._object = (v10 | 0x8000000000000000);
      v13._countAndFlagsBits = 0xD000000000000019;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0;
      v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v19);

      v18 = v15;
      lazy protocol witness table accessor for type String and conformance String();
      return Text.init<A>(_:)();
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void *WorkoutVoicePickerView.voices.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for AudioSynthesisVoice();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v10;
  v36 = type metadata accessor for AudioSynthesisVoiceAsset();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v13 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  v34 = *(v13 + 16);
  if (v34)
  {
    v15 = 0;
    v32 = v11 + 16;
    v33 = v6;
    v16 = (v4 + 32);
    v30 = v11 + 8;
    v31 = (v4 + 56);
    v27 = v4;
    v29 = (v4 + 48);
    v38 = MEMORY[0x277D84F90];
    while (v15 < *(v13 + 16))
    {
      v17 = v13;
      v18 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15;
      v19 = v35;
      v20 = v36;
      (*(v11 + 16))(v35, v18, v36);
      v21 = v37;
      AudioSynthesisVoiceAsset.voice.getter();
      v22 = *v16;
      (*v16)(v2, v21, v3);
      (*v31)(v2, 0, 1, v3);
      (*(v11 + 8))(v19, v20);
      if ((*v29)(v2, 1, v3) == 1)
      {
        result = _sSo8NSObjectCSgWOhTm_4(v2, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd);
        v13 = v17;
      }

      else
      {
        v23 = v28;
        v22(v28, v2, v3);
        v22(v33, v23, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v13 = v17;
        v25 = v38[2];
        v24 = v38[3];
        if (v25 >= v24 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v38);
        }

        v26 = v38;
        v38[2] = v25 + 1;
        result = (v22)(v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, v33, v3);
      }

      if (v34 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_13:

    return v38;
  }

  return result;
}

uint64_t closure #3 in WorkoutVoicePickerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WorkoutVoicePickerView();
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v47 = type metadata accessor for Logger();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = WorkoutVoicePickerView.voices.getter()[2];

  if (v19 && (v20 = a3 + *(v4 + 32), v21 = *v20, v22 = *(v20 + 8), LOBYTE(v50) = v21, v45 = v22, v51 = v22, v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd), State.wrappedValue.getter(), (v49 & 1) == 0))
  {
    WorkoutVoicePickerView.voiceAssetsObserver.getter();
    v32 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
    v34 = v33;

    if (v34)
    {
      static WOLog.workoutVoice.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v50 = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v50);
        _os_log_impl(&dword_20C66F000, v35, v36, "%s No user selected index. Selecting initial voice to voice asset at index 0.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F30E080](v38, -1, -1);
        MEMORY[0x20F30E080](v37, -1, -1);
      }

      (*(v10 + 8))(v15, v47);
      v39 = 0;
    }

    else
    {
      static WOLog.workoutVoice.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v50 = v43;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v50);
        *(v42 + 12) = 2048;
        *(v42 + 14) = v32;
        _os_log_impl(&dword_20C66F000, v40, v41, "%s Setting initial selection to userSelectedIndex: %ld.", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x20F30E080](v43, -1, -1);
        MEMORY[0x20F30E080](v42, -1, -1);
      }

      (*(v10 + 8))(v18, v47);
      v39 = v32;
    }

    WorkoutVoicePickerView.selection.setter(v39, 0);
    LOBYTE(v50) = v21;
    v51 = v45;
    LOBYTE(v49) = 1;
    return State.wrappedValue.setter();
  }

  else
  {
    static WOLog.workoutVoice.getter();
    outlined init with copy of WorkoutVoicePickerView(a3, v9);
    outlined init with copy of WorkoutVoicePickerView(a3, v6);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136315650;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v49);
      *(v25 + 12) = 2048;
      v27 = WorkoutVoicePickerView.voices.getter()[2];

      outlined destroy of WorkoutVoicePickerView(v9);
      *(v25 + 14) = v27;
      *(v25 + 22) = 1024;
      v28 = &v6[*(v4 + 32)];
      v29 = *v28;
      v30 = *(v28 + 1);
      LOBYTE(v50) = v29;
      v51 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.getter();
      LODWORD(v27) = v48;
      outlined destroy of WorkoutVoicePickerView(v6);
      *(v25 + 24) = v27;
      _os_log_impl(&dword_20C66F000, v23, v24, "%s Not setting initial selection, voices count: %ld, didInitialSelection: %{BOOL}d", v25, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F30E080](v26, -1, -1);
      MEMORY[0x20F30E080](v25, -1, -1);
    }

    else
    {
      outlined destroy of WorkoutVoicePickerView(v6);
      outlined destroy of WorkoutVoicePickerView(v9);
    }

    return (*(v10 + 8))(v12, v47);
  }
}

uint64_t outlined init with copy of WorkoutVoicePickerView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoicePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutVoicePickerView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoicePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in WorkoutVoicePickerView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WorkoutVoicePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #3 in WorkoutVoicePickerView.body.getter(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #4 in WorkoutVoicePickerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  static WOLog.workoutVoice.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v29 = v11;
  if (!v16)
  {

    result = (*(v7 + 8))(v9, v6);
    if (v13)
    {
      return result;
    }

    return WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(v12, v29 ^ 1u);
  }

  v17 = swift_slowAlloc();
  v28[1] = a3;
  v18 = v17;
  v19 = swift_slowAlloc();
  v28[0] = v6;
  v20 = v19;
  v32 = v19;
  *v18 = 136315650;
  *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v32);
  *(v18 + 12) = 2080;
  v30 = v10;
  v31 = v11;
  v21 = String.init<A>(describing:)();
  v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v32);

  *(v18 + 14) = v23;
  *(v18 + 22) = 2080;
  v30 = v12;
  v31 = v13;
  v24 = String.init<A>(describing:)();
  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v32);

  *(v18 + 24) = v26;
  _os_log_impl(&dword_20C66F000, v14, v15, "%s oldValue: %s, newValue: %s", v18, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x20F30E080](v20, -1, -1);
  MEMORY[0x20F30E080](v18, -1, -1);

  result = (*(v7 + 8))(v9, v28[0]);
  if ((v13 & 1) == 0)
  {
    return WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(v12, v29 ^ 1u);
  }

  return result;
}

uint64_t partial apply for closure #4 in WorkoutVoicePickerView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WorkoutVoicePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #4 in WorkoutVoicePickerView.body.getter(a1, a2, v6);
}

uint64_t WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(unint64_t a1, int a2)
{
  v76 = a1;
  v68 = a2;
  v2 = type metadata accessor for EnvironmentValues();
  v61 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v60 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WorkoutVoicePickerView();
  v66 = *(v64 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v60 - v8;
  v69 = type metadata accessor for AudioSynthesisVoiceAsset();
  v74 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = v9;
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v60 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  static WOLog.workoutVoice.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v72 = v12;
  v70 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v4;
    v24 = swift_slowAlloc();
    v77[0] = v24;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, v77);
    *(v22 + 12) = 2048;
    *(v22 + 14) = v76;
    _os_log_impl(&dword_20C66F000, v19, v20, "%s Selecting voice at index: %ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    v4 = v23;
    v12 = v72;
    MEMORY[0x20F30E080](v25, -1, -1);
    MEMORY[0x20F30E080](v22, -1, -1);
  }

  v26 = *(v13 + 8);
  v26(v18, v12);
  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v27 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  v28 = *(v27 + 16);

  if (v28 > v76)
  {
    WorkoutVoicePickerView.voiceAssetsObserver.getter();
    v29 = dispatch thunk of VoiceAssetsObserver.assets.getter();

    if ((v76 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v29 + 16) > v76)
    {
      v31 = *(v74 + 16);
      v32 = *(v74 + 80);
      v33 = v69;
      v31(v73, v29 + ((v32 + 32) & ~v32) + *(v74 + 72) * v76, v69);

      if ((AudioSynthesisVoiceAsset.userSelected.getter() & 1) == 0)
      {
        v34 = type metadata accessor for TaskPriority();
        v35 = v65;
        (*(*(v34 - 8) + 56))(v65, 1, 1, v34);
        v36 = v67;
        outlined init with copy of WorkoutVoicePickerView(v75, v67);
        v37 = v63;
        v31(v63, v73, v33);
        type metadata accessor for MainActor();
        v38 = static MainActor.shared.getter();
        v39 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v40 = swift_allocObject();
        v41 = MEMORY[0x277D85700];
        *(v40 + 16) = v38;
        *(v40 + 24) = v41;
        outlined init with take of WorkoutVoicePickerView(v36, v40 + v39);
        (*(v74 + 32))(v40 + ((v4 + v32 + v39) & ~v32), v37, v33);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:), v40);
      }

      if (v68)
      {
        v42 = type metadata accessor for TaskPriority();
        v43 = v65;
        (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
        v44 = v67;
        outlined init with copy of WorkoutVoicePickerView(v75, v67);
        type metadata accessor for MainActor();
        v45 = static MainActor.shared.getter();
        v46 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v47 = swift_allocObject();
        v48 = MEMORY[0x277D85700];
        *(v47 + 16) = v45;
        *(v47 + 24) = v48;
        outlined init with take of WorkoutVoicePickerView(v44, v47 + v46);
        *(v47 + ((v4 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v76;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:), v47);
      }

      return (*(v74 + 8))(v73, v33);
    }

    __break(1u);
    return result;
  }

  static WOLog.workoutVoice.getter();
  v49 = v71;
  outlined init with copy of WorkoutVoicePickerView(v75, v71);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v75 = v15;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v77[0] = v53;
    *v52 = 136315650;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, v77);
    *(v52 + 12) = 2048;
    *(v52 + 14) = v76;
    *(v52 + 22) = 2048;
    v54 = *(v49 + *(v64 + 20) + 8);

    if ((v54 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v55 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v56 = v60;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v61 + 8))(v56, v2);
    }

    v57 = dispatch thunk of VoiceAssetsObserver.assets.getter();

    v58 = *(v57 + 16);

    outlined destroy of WorkoutVoicePickerView(v49);
    *(v52 + 24) = v58;
    _os_log_impl(&dword_20C66F000, v50, v51, "%s Unexpectedly trying to select out of range index: %ld, assets.count: %ld", v52, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x20F30E080](v53, -1, -1);
    MEMORY[0x20F30E080](v52, -1, -1);

    v59 = v75;
  }

  else
  {
    outlined destroy of WorkoutVoicePickerView(v49);

    v59 = v15;
  }

  return (v26)(v59, v72);
}

uint64_t closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for EnvironmentValues();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for WorkoutVoicePickerView();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for AudioSynthesisVoiceAsset();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for AudioSynthesisVoice();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v11;
  v5[26] = v10;

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:), v11, v10);
}

uint64_t closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)()
{
  v0[27] = WorkoutVoicePickerView.voiceAssetsObserver.getter();
  AudioSynthesisVoiceAsset.voice.getter();
  v4 = (*MEMORY[0x277D7E328] + MEMORY[0x277D7E328]);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);
  v2 = v0[23];

  return v4(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 208);
  v7 = *(v2 + 200);
  if (v0)
  {
    v8 = closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);
  }

  else
  {
    v8 = closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[6];

  static WOLog.workoutVoice.getter();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v25 = v0[16];
    v26 = v0[19];
    v8 = v0[15];
    v9 = v0[13];
    v24 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v27);
    *(v10 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v12 = String.init<A>(describing:)();
    v14 = v13;
    (*(v9 + 8))(v8, v24);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v27);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v5, v6, "%s selected asset: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v11, -1, -1);
    MEMORY[0x20F30E080](v10, -1, -1);

    (*(v7 + 8))(v26, v25);
  }

  else
  {
    v16 = v0[19];
    v17 = v0[16];
    v18 = v0[17];
    v19 = v0[15];
    v20 = v0[12];
    v21 = v0[13];

    (*(v21 + 8))(v19, v20);
    (*(v18 + 8))(v16, v17);
  }

  v22 = v0[1];

  return v22();
}

{
  v56 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  static WOLog.workoutVoice.getter();
  (*(v3 + 16))(v2, v6, v4);
  outlined init with copy of WorkoutVoicePickerView(v7, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v11)
  {
    v53 = v10;
    log = v9;
    v16 = *(v0 + 232);
    v50 = *(v0 + 80);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v17 = 136315906;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v55);
    *(v17 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v12 + 8))(v13, v15);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v55);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2112;
    v23 = v16;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v24;
    v51 = v18;
    *v18 = v24;
    *(v17 + 32) = 2080;
    v25 = *(v14 + *(v50 + 20) + 8);

    if ((v25 & 1) == 0)
    {
      v26 = *(v0 + 64);
      v27 = *(v0 + 72);
      v28 = *(v0 + 56);
      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v26 + 8))(v27, v28);
    }

    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 128);
    v33 = *(v0 + 88);
    v34 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
    v36 = v35;

    *(v0 + 16) = v34;
    *(v0 + 24) = v36 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v37 = Optional.description.getter();
    v39 = v38;
    outlined destroy of WorkoutVoicePickerView(v33);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v55);

    *(v17 + 34) = v40;
    _os_log_impl(&dword_20C66F000, log, v53, "%s error electing voice: %s, error: %@. Reverting back to last successful userSelectedAssetIndex %s", v17, 0x2Au);
    _sSo8NSObjectCSgWOhTm_4(v51, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v51, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v52, -1, -1);
    MEMORY[0x20F30E080](v17, -1, -1);

    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    v43 = *(v0 + 128);

    outlined destroy of WorkoutVoicePickerView(v14);
    (*(v12 + 8))(v13, v15);
    (*(v42 + 8))(v41, v43);
  }

  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v44 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v46 = v45;

  v47 = *(v0 + 232);
  if ((v46 & 1) == 0)
  {
    WorkoutVoicePickerView.selection.setter(v44, 0);
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);

  return WorkoutVoicePickerView.previewVoice(index:)(a5);
}

uint64_t closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoicePickerView.previewVoice(index:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for EnvironmentValues();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for WorkoutVoicePickerView();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for AudioSynthesisVoice();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for AudioSynthesisVoiceAsset();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[24] = v8;
  v2[25] = v7;

  return MEMORY[0x2822009F8](WorkoutVoicePickerView.previewVoice(index:), v8, v7);
}

uint64_t WorkoutVoicePickerView.previewVoice(index:)()
{
  v39 = v0;
  v1 = v0[3];
  WorkoutVoicePickerView.voiceAssetsObserver.getter();
  v2 = dispatch thunk of VoiceAssetsObserver.assets.getter();

  v3 = *(v2 + 16);

  if (v3 > v1)
  {
    v4 = v0[3];
    WorkoutVoicePickerView.voiceAssetsObserver.getter();
    v5 = dispatch thunk of VoiceAssetsObserver.assets.getter();

    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v0[3];
      if (*(v5 + 16) > v7)
      {
        v8 = v0[22];
        v9 = v0[19];
        v10 = v0[20];
        v11 = *(v10 + 16);
        v10 += 16;
        v12 = v5 + ((*(v10 + 64) + 32) & ~*(v10 + 64)) + *(v10 + 56) * v7;
        v0[26] = v11;
        v0[27] = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v11(v8, v12, v9);

        AudioSynthesisVoiceAsset.voice.getter();
        v13 = swift_task_alloc();
        v0[28] = v13;
        *v13 = v0;
        v13[1] = WorkoutVoicePickerView.previewVoice(index:);
        v6 = v0[18];

        return MEMORY[0x282160A88](v6);
      }
    }

    __break(1u);
    return MEMORY[0x282160A88](v6);
  }

  v14 = v0[9];
  v15 = v0[4];

  static WOLog.workoutVoice.getter();
  outlined init with copy of WorkoutVoicePickerView(v15, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[3];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v38);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v20;
    *(v21 + 22) = 2048;
    LOBYTE(v19) = *(v18 + *(v19 + 20) + 8);

    if ((v19 & 1) == 0)
    {
      v24 = v0[6];
      v23 = v0[7];
      v36 = v0[5];
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v24 + 8))(v23, v36);
    }

    v37 = v0[13];
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    v29 = dispatch thunk of VoiceAssetsObserver.assets.getter();

    v30 = *(v29 + 16);

    outlined destroy of WorkoutVoicePickerView(v28);
    *(v21 + 24) = v30;
    _os_log_impl(&dword_20C66F000, v16, v17, "%s Unexpectedly trying to preview with out of range index: %ld, assets.count: %ld", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v26 + 8))(v37, v27);
  }

  else
  {
    v31 = v0[13];
    v32 = v0[10];
    v33 = v0[11];
    outlined destroy of WorkoutVoicePickerView(v0[9]);

    (*(v33 + 8))(v31, v32);
  }

  v34 = v0[1];

  return v34();
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v2[29] = v0;

  v6 = *(v4 + 8);
  v2[30] = v6;
  v2[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[25];
  v8 = v2[24];
  if (v0)
  {
    v9 = WorkoutVoicePickerView.previewVoice(index:);
  }

  else
  {
    v9 = WorkoutVoicePickerView.previewVoice(index:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v16 = v0;

  static WOLog.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  if (v3)
  {
    v14 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v15);
    _os_log_impl(&dword_20C66F000, v1, v2, "%s previewing asset", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F30E080](v11, -1, -1);
    MEMORY[0x20F30E080](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v14, v5);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
  }

  v12 = v0[1];

  return v12();
}

{
  v42 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[21];
  v5 = v0[19];

  static WOLog.workoutVoice.getter();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[21];
    v32 = v0[20];
    v33 = v0[30];
    v34 = v0[19];
    v35 = v0[29];
    v10 = v0[17];
    v31 = v0[15];
    v39 = v0[12];
    v40 = v0[22];
    v37 = v0[11];
    v38 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000020CB8FB00, &v41);
    *(v11 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v13 = AudioSynthesisVoice.name.getter();
    v15 = v14;
    v33(v10, v31);
    v16 = *(v32 + 8);
    v16(v9, v34);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v41);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2112;
    v18 = v35;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&dword_20C66F000, v7, v8, "%s error previewing voice: %s, error: %@", v11, 0x20u);
    _sSo8NSObjectCSgWOhTm_4(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v36, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    (*(v37 + 8))(v39, v38);
    v16(v40, v34);
  }

  else
  {
    v20 = v0[29];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[19];
    v24 = v0[20];
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];

    v28 = *(v24 + 8);
    v28(v22, v23);
    (*(v26 + 8))(v25, v27);
    v28(v21, v23);
  }

  v29 = v0[1];

  return v29();
}

void type metadata completion function for WorkoutVoicePickerView()
{
  type metadata accessor for InferenceClient();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<VoiceAssetsObserver>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<WorkoutVoicePickerView.Row>(319, &lazy cache variable for type metadata for State<WorkoutVoicePickerView.Row>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<WorkoutVoicePickerView.Row>(319, &lazy cache variable for type metadata for State<Bool>);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<VoiceAssetsObserver>()
{
  if (!lazy cache variable for type metadata for Environment<VoiceAssetsObserver>)
  {
    type metadata accessor for VoiceAssetsObserver();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<VoiceAssetsObserver>);
    }
  }
}

void type metadata accessor for State<WorkoutVoicePickerView.Row>(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutVoicePickerView.Row(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoicePickerView.Row(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for WorkoutVoicePickerView.Row(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for WorkoutVoicePickerView.Row(uint64_t result, int a2)
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

uint64_t partial apply for closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WorkoutVoicePickerView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AudioSynthesisVoiceAsset() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);

  return closure #1 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutVoicePickerView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:);

  return closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #2 in WorkoutVoicePickerView.selectVoice(index:shouldPreview:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_97()
{
  v1 = type metadata accessor for WorkoutVoicePickerView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for InferenceClient();
  (*(*(v3 - 8) + 8))(v2, v3);

  if (*(v2 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

double partial apply for closure #1 in closure #1 in WorkoutVoicePickerView.body.getter@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WorkoutVoicePickerView();

  *&result = closure #1 in closure #1 in WorkoutVoicePickerView.body.getter(a1, a2).n128_u64[0];
  return result;
}

uint64_t outlined init with copy of TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo8NSObjectCSgWOhTm_4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.metricUnitFont()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x20F30ABE0](&KeyPath, a1, &type metadata for MetricUnitFont, a2);
  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, v6);
}

uint64_t getEnumTagSinglePayload for MetricUnitFont(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MetricUnitFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void one-time initialization function for scaleFactorForEnclosedText()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  specialized UIDevice.screenType.getter();

  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 mainScreen];
  [v6 nativeScale];
  v8 = v7;

  v9 = 0.5;
  if (v5 != v8)
  {
    v10 = [v2 mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = [v2 mainScreen];
    [v13 nativeScale];
    v15 = v14;

    v9 = v12 / v15 * 0.95 * 0.5;
  }

  static MetricUnitFont.scaleFactorForEnclosedText = *&v9;
}

uint64_t MetricUnitFont.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v119 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingH0VyAA0L0VSgGGAOy12CoreGraphics7CGFloatVGGAA4TextV_GMd);
  MEMORY[0x28223BE20](v108);
  v109 = (v97 - v3);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd);
  MEMORY[0x28223BE20](v118);
  v110 = v97 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingH0VyAA0L0VSgGGAOy12CoreGraphics7CGFloatVGGAOySiSgGGAY_GMd);
  MEMORY[0x28223BE20](v105);
  v106 = v97 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
  MEMORY[0x28223BE20](v113);
  v107 = v97 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
  MEMORY[0x28223BE20](v104);
  v99 = v97 - v7;
  v8 = type metadata accessor for Font.PrivateDesign();
  v115 = *(v8 - 8);
  v116 = v8;
  MEMORY[0x28223BE20](v8);
  v114 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x28223BE20](v10);
  v12 = v97 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAGyAGyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAJ0j5ValueL0VGAA022_EnvironmentKeyWritingH0VySbGGARy12CoreGraphics7CGFloatVGGAGyAGyAmRyAA0L0VSgGGAXGGACyAGyA3_ARySiSgGGA3_GGACyA3_AA4TextVG_GMd);
  MEMORY[0x28223BE20](v120);
  v14 = v97 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAJ0j5ValueL0VGAA022_EnvironmentKeyWritingH0VySbGGARy12CoreGraphics7CGFloatVGGAGyAGyAmRyAA0L0VSgGGAXGGACyAGyA3_ARySiSgGGA3_G_GMd);
  MEMORY[0x28223BE20](v15);
  v111 = v97 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAJ0j5ValueL0VGAA022_EnvironmentKeyWritingH0VySbGGARy12CoreGraphics7CGFloatVGGAGyAGyAmRyAA0L0VSgGGAXG_GMd);
  MEMORY[0x28223BE20](v101);
  v102 = v97 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
  MEMORY[0x28223BE20](v18);
  v103 = v97 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
  MEMORY[0x28223BE20](v121);
  v112 = v97 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGANy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x28223BE20](v100);
  v98 = v97 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v2;
  if (*(v2 + 8) == 1)
  {
    v122 = *v2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    v97[1] = v15;
    v28 = v12;
    v29 = v10;
    v30 = v14;
    v31 = v27;
    os_log(_:dso:log:_:_:)();

    v14 = v30;
    v10 = v29;
    v12 = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v26, 0);
    (*(v23 + 8))(v25, v22);
    LOBYTE(v26) = v122;
  }

  if (v26 > 6u)
  {
    if (v26 - 8 < 2)
    {
      goto LABEL_23;
    }

    if (v26 - 10 >= 2)
    {
      goto LABEL_20;
    }

    specialized static LayoutUtilities.layoutMetric(regular42:)(16.0);
    static Font.Weight.semibold.getter();
    v46 = v114;
    static Font.PrivateDesign.compactRounded.getter();
    v47 = static Font.system(size:weight:design:)();
    (*(v115 + 8))(v46, v116);
    KeyPath = swift_getKeyPath();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
    (*(*(v49 - 8) + 16))(v12, v117, v49);
    v50 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd) + 36)];
    *v50 = KeyPath;
    v50[1] = v47;
    if (one-time initialization token for scaleFactorForEnclosedText != -1)
    {
      swift_once();
    }

    v51 = static MetricUnitFont.scaleFactorForEnclosedText;
    v52 = swift_getKeyPath();
    v53 = &v12[*(v10 + 36)];
    *v53 = v52;
    v53[1] = v51;
    outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v12, v109, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    v54 = v110;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v54, v14, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v54, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd);
    v44 = v12;
    v45 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd;
  }

  else
  {
    if (v26 <= 3u)
    {
      if (v26 - 2 >= 2)
      {
        if (v26)
        {
          v32 = v14;
          v33 = swift_getKeyPath();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
          v35 = v98;
          (*(*(v34 - 8) + 16))(v98, v117, v34);
          v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGMd) + 36);
          *v36 = 256;
          *(v36 + 8) = v33;
          *(v36 + 16) = 0;
          v37 = swift_getKeyPath();
          v38 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGMd) + 36);
          *v38 = v37;
          *(v38 + 8) = 1;
          if (one-time initialization token for scaleFactorForEnclosedText != -1)
          {
            swift_once();
          }

          v39 = static MetricUnitFont.scaleFactorForEnclosedText;
          v40 = swift_getKeyPath();
          v41 = (v35 + *(v100 + 36));
          *v41 = v40;
          v41[1] = v39;
          outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v35, v102, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGANy12CoreGraphics7CGFloatVGGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
          v42 = v103;
          _ConditionalContent<>.init(storage:)();
          outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v42, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
          v43 = v112;
          _ConditionalContent<>.init(storage:)();
          outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v42, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
          outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v43, v32, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v43, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
          v44 = v35;
          v45 = &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGANy12CoreGraphics7CGFloatVGGMd;
          return outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v44, v45);
        }

LABEL_23:
        LocalizedStringKey.init(stringLiteral:)();
        v75 = Text.init(_:tableName:bundle:comment:)();
        v77 = v76;
        v78 = v109;
        *v109 = v75;
        v78[1] = v76;
        v80 = v79 & 1;
        *(v78 + 16) = v79 & 1;
        v78[3] = v81;
        swift_storeEnumTagMultiPayload();
        outlined copy of Text.Storage(v75, v77, v80);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();

        v82 = v110;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v82, v14, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined consume of Text.Storage(v75, v77, v80);

        v44 = v82;
        v45 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd;
        return outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v44, v45);
      }

LABEL_20:
      specialized static LayoutUtilities.layoutMetric(regular42:)(43.0);
      static Font.Weight.semibold.getter();
      v65 = v114;
      static Font.PrivateDesign.compactRounded.getter();
      v66 = static Font.system(size:weight:design:)();
      (*(v115 + 8))(v65, v116);
      v67 = swift_getKeyPath();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
      (*(*(v68 - 8) + 16))(v12, v117, v68);
      v69 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd) + 36)];
      *v69 = v67;
      v69[1] = v66;
      if (one-time initialization token for scaleFactorForEnclosedText != -1)
      {
        swift_once();
      }

      v70 = static MetricUnitFont.scaleFactorForEnclosedText;
      v71 = swift_getKeyPath();
      v72 = &v12[*(v10 + 36)];
      *v72 = v71;
      v72[1] = v70;
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v12, v106, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
      v73 = v107;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v73, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      v74 = v112;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v73, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v74, v14, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v74, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      v44 = v12;
      v45 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd;
      return outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v44, v45);
    }

    if (v26 - 5 >= 2)
    {
      specialized static LayoutUtilities.layoutMetric(regular42:)(30.0);
      static Font.Weight.semibold.getter();
      v83 = v114;
      static Font.PrivateDesign.compactRounded.getter();
      v84 = static Font.system(size:weight:design:)();
      (*(v115 + 8))(v83, v116);
      v85 = swift_getKeyPath();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
      v87 = v99;
      (*(*(v86 - 8) + 16))(v99, v117, v86);
      v88 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd) + 36));
      *v88 = v85;
      v88[1] = v84;
      if (one-time initialization token for scaleFactorForEnclosedText != -1)
      {
        swift_once();
      }

      v89 = static MetricUnitFont.scaleFactorForEnclosedText;
      v90 = swift_getKeyPath();
      v91 = (v87 + *(v10 + 36));
      *v91 = v90;
      v91[1] = v89;
      v92 = swift_getKeyPath();
      v93 = v87 + *(v104 + 36);
      *v93 = v92;
      *(v93 + 8) = 1;
      *(v93 + 16) = 0;
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v87, v106, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
      v94 = v107;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v94, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      v95 = v112;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v95, v14, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v95, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      v44 = v87;
      v45 = &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGAKySiSgGGMd;
    }

    else
    {
      specialized static LayoutUtilities.layoutMetric(regular42:)(26.0);
      static Font.Weight.semibold.getter();
      v55 = v114;
      static Font.PrivateDesign.compactRounded.getter();
      v56 = static Font.system(size:weight:design:)();
      (*(v115 + 8))(v55, v116);
      v57 = swift_getKeyPath();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
      (*(*(v58 - 8) + 16))(v12, v117, v58);
      v59 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd) + 36)];
      *v59 = v57;
      v59[1] = v56;
      if (one-time initialization token for scaleFactorForEnclosedText != -1)
      {
        swift_once();
      }

      v60 = static MetricUnitFont.scaleFactorForEnclosedText;
      v61 = swift_getKeyPath();
      v62 = &v12[*(v10 + 36)];
      *v62 = v61;
      v62[1] = v60;
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v12, v102, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
      v63 = v103;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v63, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
      v64 = v112;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v63, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v64, v14, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v64, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
      v44 = v12;
      v45 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd;
    }
  }

  return outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(v44, v45);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGANy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGAA022_EnvironmentKeyWritingF0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAF0h5ValueJ0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB014MetricUnitFontVGMd);
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAMySiSgGGAWGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingF0VyAA0J0VSgGGAKy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<MetricUnitFont> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAA022_EnvironmentKeyWritingG0VyAA0K0VSgGGAMy12CoreGraphics7CGFloatVGGAA4TextVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.allowsTightening : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>> and conformanc()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>> and conf;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>> and conf)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAEyAA014_ViewModifier_D0Vy07WorkoutB014MetricUnitFontVGAH0i5ValueK0VGAA022_EnvironmentKeyWritingG0VySbGGAPy12CoreGraphics7CGFloatVGGAEyAEyAkPyAA0K0VSgGGAVGGACyAEyA1_APySiSgGGA1_GGACyA1_AA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, MetricValueFont>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<MetricUnitFont>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, Text>> and conf);
  }

  return result;
}

uint64_t ExpandedLabelPicker.init(text:selection:alignment:defaultFocus:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
{
  type metadata accessor for ExpandedLabelPicker.Focused();
  swift_getWitnessTable();
  FocusState.init<A>()();
  *a9 = a11;
  *(a9 + 8) = a12;
  *(a9 + 16) = a13;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  a3 &= 1u;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a6;
  v18 = type metadata accessor for ExpandedLabelPicker();
  *(a9 + *(v18 + 64)) = a7;
  outlined copy of Text.Storage(a1, a2, a3);

  a8(v19);
  outlined consume of Text.Storage(a1, a2, a3);

  v20 = *(v18 + 68);
  v21 = type metadata accessor for Binding();
  return (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
}

uint64_t Picker.init(selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v14[4] = a3;
  v14[5] = a5;
  v14[0] = a4;
  v14[1] = a6;
  v14[2] = a2;
  v14[3] = a7;
  MEMORY[0x28223BE20](a1);
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (*(v9 + 16))(v14 - v11, a1, v8, v10);
  (v14[0])(v12);
  Picker.init(selection:label:content:)();
  return (*(v9 + 8))(a1, v8);
}

uint64_t one-time initialization function for expandedPickerLabelAlignment()
{
  lazy protocol witness table accessor for type VerticalAlignment.ExpandedPickerCenteredToPickerAlignment and conformance VerticalAlignment.ExpandedPickerCenteredToPickerAlignment();
  result = VerticalAlignment.init(_:)();
  static VerticalAlignment.expandedPickerLabelAlignment = result;
  return result;
}

uint64_t static VerticalAlignment.expandedPickerLabelAlignment.getter()
{
  if (one-time initialization token for expandedPickerLabelAlignment != -1)
  {
    swift_once();
  }

  return static VerticalAlignment.expandedPickerLabelAlignment;
}

Swift::Int ExpandedLabelPicker.Focused.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](a1 & 1);
  return Hasher._finalize()();
}

uint64_t ExpandedLabelPicker.focusState.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ExpandedLabelPicker.Focused();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FocusState();
  FocusState.wrappedValue.getter();
  return v2;
}

uint64_t ExpandedLabelPicker.focusState.setter()
{
  type metadata accessor for ExpandedLabelPicker.Focused();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FocusState();
  return FocusState.wrappedValue.setter();
}

uint64_t ExpandedLabelPicker.$focusState.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ExpandedLabelPicker.Focused();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FocusState();
  FocusState.projectedValue.getter();
  return v2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExpandedLabelPicker<A, B>.Focused()
{
  Hasher.init(_seed:)();
  ExpandedLabelPicker.Focused.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t ExpandedLabelPicker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v36 = a1[5];
  v37 = v4;
  v19 = v36;
  type metadata accessor for Picker();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for ExpandedLabelPicker.Focused();
  v6 = type metadata accessor for Optional();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CE0760];
  v7 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v19;
  v26 = v20;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v15);
  v16 = *(v9 + 8);
  v16(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)(v14, v8, v15);
  return (v16)(v14, v8);
}

uint64_t closure #1 in ExpandedLabelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a6;
  *&v122 = a2;
  *(&v122 + 1) = a3;
  *&v123 = a4;
  *(&v123 + 1) = a5;
  v108 = a5;
  v77 = type metadata accessor for ExpandedLabelPicker();
  v104 = *(v77 - 8);
  v101 = *(v104 + 64);
  MEMORY[0x28223BE20](v77);
  v102 = &v73 - v11;
  v103 = type metadata accessor for Binding();
  v76 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v75 = &v73 - v12;
  *&v122 = MEMORY[0x277CE0BD8];
  *(&v122 + 1) = a3;
  *&v123 = a2;
  *(&v123 + 1) = MEMORY[0x277CE0BC8];
  v13 = a2;
  v106 = a2;
  v107 = a4;
  *&v124 = a5;
  *(&v124 + 1) = a4;
  v14 = a4;
  v15 = type metadata accessor for Picker();
  v96 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v74 = &v73 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v94 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v91 = &v73 - v18;
  v98 = v15;
  WitnessTable = swift_getWitnessTable();
  v120[8] = WitnessTable;
  v120[9] = MEMORY[0x277CDFC60];
  v19 = swift_getWitnessTable();
  *&v122 = v17;
  *(&v122 + 1) = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v85 = &v73 - v21;
  v89 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v93 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v73 - v24;
  *&v122 = v13;
  *(&v122 + 1) = a3;
  *&v123 = v14;
  *(&v123 + 1) = v108;
  type metadata accessor for ExpandedLabelPicker.Focused();
  v25 = type metadata accessor for Optional();
  v95 = v17;
  *&v122 = v17;
  *(&v122 + 1) = v19;
  v81 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120[6] = OpaqueTypeConformance2;
  v120[7] = MEMORY[0x277CE0760];
  v26 = swift_getWitnessTable();
  v120[5] = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v100 = v23;
  *&v122 = v23;
  *(&v122 + 1) = v25;
  v80 = v25;
  v82 = v26;
  v83 = v27;
  *&v123 = v26;
  *(&v123 + 1) = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v84 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v86 = v31;
  v88 = type metadata accessor for ModifiedContent();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v99 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v97 = &v73 - v34;
  v36 = *(a1 + 24);
  v35 = *(a1 + 32);
  LOBYTE(v19) = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 56);
  outlined copy of Text.Storage(v36, v35, v19);

  v39 = v77;
  v40 = ExpandedLabelPicker.focusState.getter(v77) & 1;
  v41 = v36;
  v42 = v108;
  specialized ExpandedPickerLabel.init(text:alignment:focused:)(v41, v35, v19, v37, v38, v40, v121);
  v43 = v39;
  v44 = v75;
  (*(v76 + 16))(v75, a1 + *(v39 + 68), v103);
  v114[2] = v106;
  v114[3] = a3;
  v114[4] = v107;
  v114[5] = v42;
  v114[6] = a1;
  v109 = v106;
  v110 = a3;
  v111 = v107;
  v112 = v42;
  v113 = a1;
  v45 = v74;
  v103 = a3;
  Picker.init(selection:content:label:)(v44, partial apply for closure #1 in closure #1 in ExpandedLabelPicker.body.getter, v114, partial apply for closure #2 in closure #1 in ExpandedLabelPicker.body.getter, v106, v74, MEMORY[0x277CE0BC8]);
  if (one-time initialization token for minLabeledPickerHeight != -1)
  {
    swift_once();
  }

  if (one-time initialization token for maxLabeledPickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  v46 = v98;
  v47 = v91;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v96 + 8))(v45, v46);
  v48 = v85;
  v49 = v95;
  View.labelsHidden()();
  (*(v94 + 8))(v47, v49);
  if (one-time initialization token for expandedPickerLabelAlignment != -1)
  {
    swift_once();
  }

  v50 = v89;
  v51 = v90;
  View.alignmentGuide(_:computeValue:)();
  (*(v87 + 8))(v48, v50);
  *&v122 = ExpandedLabelPicker.$focusState.getter(v43);
  *(&v122 + 1) = v52;
  LOBYTE(v123) = v53;
  LOBYTE(v116) = 1;
  v98 = swift_checkMetadataState();
  v73 = v30;
  v54 = v100;
  v56 = v82;
  v55 = v83;
  View.focused<A>(_:equals:)();

  (*(v93 + 8))(v51, v54);
  v57 = v104;
  v58 = v102;
  (*(v104 + 16))(v102, a1, v43);
  v59 = (*(v57 + 80) + 48) & ~*(v57 + 80);
  v60 = swift_allocObject();
  v61 = v103;
  *(v60 + 2) = v106;
  *(v60 + 3) = v61;
  v62 = v108;
  *(v60 + 4) = v107;
  *(v60 + 5) = v62;
  (*(v57 + 32))(&v60[v59], v58, v43);
  *&v122 = v54;
  *(&v122 + 1) = v98;
  *&v123 = v56;
  *(&v123 + 1) = v55;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v99;
  v65 = v86;
  v66 = v73;
  View.onAppear(perform:)();

  (*(v84 + 8))(v66, v65);
  v120[2] = v63;
  v120[3] = MEMORY[0x277CE0790];
  v67 = v88;
  v68 = swift_getWitnessTable();
  v69 = v97;
  static ViewBuilder.buildExpression<A>(_:)(v64, v67, v68);
  v70 = v92;
  v71 = *(v92 + 8);
  v71(v64, v67);
  v116 = v121[0];
  v117 = v121[1];
  v118 = v121[2];
  v119 = v121[3];
  v120[0] = &v116;
  (*(v70 + 16))(v64, v69, v67);
  v120[1] = v64;
  outlined init with copy of ExpandedPickerLabel(v121, &v122);
  v115[0] = &type metadata for ExpandedPickerLabel;
  v115[1] = v67;
  v114[8] = lazy protocol witness table accessor for type ExpandedPickerLabel and conformance ExpandedPickerLabel();
  v114[9] = v68;
  static ViewBuilder.buildBlock<each A>(_:)(v120, 2uLL, v115);
  outlined destroy of ExpandedPickerLabel(v121);
  v71(v69, v67);
  v71(v64, v67);
  v122 = v116;
  v123 = v117;
  v124 = v118;
  v125 = v119;
  return outlined destroy of ExpandedPickerLabel(&v122);
}

uint64_t closure #1 in closure #1 in ExpandedLabelPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for ExpandedLabelPicker();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 60), a2, a4);
  static ViewBuilder.buildBlock<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

uint64_t closure #4 in closure #1 in ExpandedLabelPicker.body.getter(uint64_t a1)
{
  result = type metadata accessor for ExpandedLabelPicker();
  if (*(a1 + *(result + 64)) == 1)
  {
    return ExpandedLabelPicker.focusState.setter();
  }

  return result;
}

uint64_t type metadata completion function for ExpandedLabelPicker()
{
  type metadata accessor for ExpandedLabelPicker.Focused();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = type metadata accessor for FocusState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpandedLabelPicker(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  v10 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  if (v5 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = *(v6 + 64) - ((-17 - v10) | v10) - ((((-65 - v8) | v8) + ~v9 - v13) | v13) - 2;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (((v23 + 63) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
        if (v5 >= v11)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v6 + 48))((v10 + ((((v9 + v25 + v13 + 1) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v7);
        }
      }

      else
      {
        v24 = *(v23 + 48);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(v6 + 64) - ((-17 - v10) | v10) - ((((-65 - v8) | v8) + ~v9 - v13) | v13) == 2)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(v6 + 64) - ((-17 - v10) | v10) - ((((-65 - v8) | v8) + ~v9 - v13) | v13) - 2;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for ExpandedLabelPicker(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  if (*(v7 + 84) <= 0x7FFFFFFFu)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  v13 = v10 | 7;
  v14 = v9 + 1;
  v15 = (v9 + 1 + (v10 | 7) + ((v8 + 64) & ~v8)) & ~(v10 | 7);
  v16 = ((v10 + 16) & ~v10) + *(v7 + 64);
  v17 = v15 + v16;
  if (a3 > v12)
  {
    if (v17 <= 3)
    {
      v21 = ((a3 - v12 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v12 < a2)
  {
    v19 = ~v12 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_61:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v25 = (((v24 + 63) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
    if (v6 >= v11)
    {
      v30 = *(v5 + 56);

      v30(v25);
    }

    else
    {
      v26 = (v14 + v25 + v13) & ~v13;
      if (v11 >= a2)
      {
        v31 = *(v7 + 56);

        v31((v10 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10);
      }

      else
      {
        if (v16 <= 3)
        {
          v27 = ~(-1 << (8 * v16));
        }

        else
        {
          v27 = -1;
        }

        if (v16)
        {
          v28 = v27 & (~v11 + a2);
          if (v16 <= 3)
          {
            v29 = v16;
          }

          else
          {
            v29 = 4;
          }

          bzero(((v14 + v25 + v13) & ~v13), v16);
          if (v29 > 2)
          {
            if (v29 == 3)
            {
              *v26 = v28;
              *(v26 + 2) = BYTE2(v28);
            }

            else
            {
              *v26 = v28;
            }
          }

          else if (v29 == 1)
          {
            *v26 = v28;
          }

          else
          {
            *v26 = v28;
          }
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v24[5] = 0;
    v24[6] = 0;
    v24[3] = a2 & 0x7FFFFFFF;
    v24[4] = 0;
  }

  else
  {
    v24[6] = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for ExpandedLabelPicker.Focused(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExpandedLabelPicker.Focused(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #2 in closure #1 in ExpandedLabelPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined copy of Text.Storage(v3, v4, v5);
}

uint64_t partial apply for closure #4 in closure #1 in ExpandedLabelPicker.body.getter()
{
  v1 = *(type metadata accessor for ExpandedLabelPicker() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #4 in closure #1 in ExpandedLabelPicker.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ExpandedPickerLabel and conformance ExpandedPickerLabel()
{
  result = lazy protocol witness table cache variable for type ExpandedPickerLabel and conformance ExpandedPickerLabel;
  if (!lazy protocol witness table cache variable for type ExpandedPickerLabel and conformance ExpandedPickerLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpandedPickerLabel and conformance ExpandedPickerLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalAlignment.ExpandedPickerCenteredToPickerAlignment and conformance VerticalAlignment.ExpandedPickerCenteredToPickerAlignment()
{
  result = lazy protocol witness table cache variable for type VerticalAlignment.ExpandedPickerCenteredToPickerAlignment and conformance VerticalAlignment.ExpandedPickerCenteredToPickerAlignment;
  if (!lazy protocol witness table cache variable for type VerticalAlignment.ExpandedPickerCenteredToPickerAlignment and conformance VerticalAlignment.ExpandedPickerCenteredToPickerAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalAlignment.ExpandedPickerCenteredToPickerAlignment and conformance VerticalAlignment.ExpandedPickerCenteredToPickerAlignment);
  }

  return result;
}

void ActivityTypePicker.init(activityType:wheelchairStatusProvider:editMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = specialized static ActivityTypePicker.defaultSelectableActivityTypes(wheelchairStatusProvider:disallowed:)(a4, &outlined read-only object #0 of ActivityTypePicker.init(activityType:wheelchairStatusProvider:editMode:));
  v15 = [objc_opt_self() keyColors];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 nonGradientTextColor];

    if (v17)
    {
      v18 = Color.init(uiColor:)();
      swift_unknownObjectRelease();
      *a8 = a1;
      *(a8 + 8) = a2;
      *(a8 + 16) = a3;
      *(a8 + 24) = a5;
      *(a8 + 32) = a6;
      *(a8 + 40) = a7 & 1;
      *(a8 + 48) = v18;
      *(a8 + 56) = v14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void ActivityTypePicker.init(activityType:selectableActivityTypes:editMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = [objc_opt_self() keyColors];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 nonGradientTextColor];

    if (v18)
    {
      *(a8 + 48) = Color.init(uiColor:)();
      *(a8 + 56) = a4;
      *a8 = a1;
      *(a8 + 8) = a2;
      *(a8 + 16) = a3;
      *(a8 + 24) = a5;
      *(a8 + 32) = a6;
      *(a8 + 40) = a7 & 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #2 in static ActivityTypePicker.defaultSelectableActivityTypes(wheelchairStatusProvider:disallowed:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (!*(dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter() + 16))
  {
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  if ((v7 & 1) == 0)
  {
  }

  v23 = specialized Array._copyToContiguousArray()(v8);
  specialized MutableCollection<>.sort(by:)(&v23);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    v9 = v23;
    v23 = MEMORY[0x277D84F90];
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      goto LABEL_24;
    }

    for (i = *(v9 + 16); i; i = __CocoaSet.count.getter())
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
LABEL_11:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F30C990](v11, v9);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v9 + 32 + 8 * v11);
        }

        v14 = v13;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        v16 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
        v17 = [v16 effectiveTypeIdentifier];

        v18 = *(a4 + 16);
        v19 = (a4 + 32);
        while (v18)
        {
          v20 = *v19++;
          --v18;
          if (v20 == v17)
          {

            if (v11 != i)
            {
              goto LABEL_11;
            }

            goto LABEL_26;
          }
        }

        dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();

        MEMORY[0x20F30BCF0]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v23;
        if (v11 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_26:

    return specialized Array.append<A>(contentsOf:)(v12);
  }

  return result;
}

id ActivityTypePicker.activityImage()@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  *v32 = *v1;
  *&v32[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
  MEMORY[0x20F30B100](&v25, v8);
  v9 = v25;
  if (!v25)
  {
    v13 = Image.init(_internalSystemName:)();
    LOBYTE(v23[0]) = 1;
    *&v25 = v13;
    BYTE9(v28[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGyAeA18_AspectRatioLayoutVGAA06_FrameI0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
    result = _ConditionalContent<>.init(storage:)();
LABEL_8:
    v18 = *&v32[48];
    a1[2] = *&v32[32];
    a1[3] = v18;
    *(a1 + 58) = *&v32[58];
    v19 = *&v32[16];
    *a1 = *v32;
    a1[1] = v19;
    return result;
  }

  v10 = [v25 symbolName];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = Image.init(_internalSystemName:)();
    LOBYTE(v29) = 0;
    *v32 = v12;
    *&v32[8] = v25;
    *&v32[24] = v26;
    *&v32[40] = v27;
    *&v32[56] = v28[0];
    v32[72] = 0;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    *&v32[32] = v23[2];
    *&v32[48] = v24[0];
    *&v32[57] = *(v24 + 9);
    *v32 = v23[0];
    *&v32[16] = v23[1];
    v21 = 0;
    v32[73] = 0;
    outlined init with copy of _ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(v23, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGyAeA18_AspectRatioLayoutVGAA06_FrameI0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    result = outlined destroy of ModifiedContent<Button<_ConditionalContent<Text, Text>>, _EnvironmentKeyWritingModifier<Color?>>(v23, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGyAeA18_AspectRatioLayoutVGAA06_FrameI0VGGMd);
    *&v32[32] = v27;
    *&v32[48] = v28[0];
    *&v32[58] = *(v28 + 10);
    *v32 = v25;
    *&v32[16] = v26;
    goto LABEL_8;
  }

  result = FIUIStaticScalableWorkoutIconImageWithPadding();
  if (result)
  {
    v15 = result;
    v16 = [result imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v17 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    *&v22[22] = v30;
    *&v22[38] = v31;
    *&v22[6] = v29;
    *&v32[18] = *v22;
    LOBYTE(v25) = 1;
    v21 = 1;
    *v32 = v17;
    *&v32[8] = 0;
    *&v32[16] = 1;
    *&v32[34] = *&v22[16];
    *&v32[50] = *&v22[32];
    *&v32[64] = *(&v31 + 1);
    v32[72] = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double ActivityTypePicker.selectedActivityLabel()@<D0>(uint64_t a1@<X8>)
{
  countAndFlagsBits = v1[1]._countAndFlagsBits;
  v32 = *v1;
  *&v33 = countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
  MEMORY[0x20F30B100](&v27, v4);
  v5 = v27;
  if (v27)
  {
    v6 = [v27 localizedName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v32._countAndFlagsBits = v7;
    v32._object = v9;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = Text.init<A>(_:)();
    v12 = v11;
    v27 = v10;
    v28 = v11;
    v14 = v13 & 1;
    v29 = v13 & 1;
    v30 = v15;
    v31 = 0;
    outlined copy of Text.Storage(v10, v11, v13 & 1);

    outlined copy of Text.Storage(v10, v12, v14);

    _ConditionalContent<>.init(storage:)();

    outlined consume of Text.Storage(v10, v12, v14);

    outlined consume of Text.Storage(v10, v12, v14);
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = WorkoutUIBundle.super.isa;
    v35._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD000000000000013;
    v17._object = 0x800000020CBA4DC0;
    v18.value._object = 0x800000020CB936F0;
    v18.value._countAndFlagsBits = 0xD000000000000012;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v35);

    v32 = v20;
    lazy protocol witness table accessor for type String and conformance String();
    v27 = Text.init<A>(_:)();
    v28 = v22;
    v29 = v21 & 1;
    v30 = v23;
    v31 = 1;
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v32._countAndFlagsBits;
  v25 = v33;
  v26 = v34;
  *a1 = v32;
  *(a1 + 16) = v25;
  *(a1 + 32) = v26;
  return result;
}

uint64_t ActivityTypePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v70 = type metadata accessor for WheelPickerStyle();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v62 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayAKGAkcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AKQo_GG_AA05WheelfE0VQo_Md);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_SgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v62 - v8;
  v80 = type metadata accessor for AccessibilityTraits();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AccessibilityChildBehavior();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD012_ConditionalF0VyAHyAD5ImageVAFyAFyAjD18_AspectRatioLayoutVGAD06_FrameN0VGGAJGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD023AccessibilityAttachmentS0VGAD05TupleG0VyAD4TextV_AD6SpacerVAD0G0PADE27accessibilityRepresentation14representationQrqd__yXE_tADA7_Rd__lFQOyA8_ADE11buttonStyleyQrqd__AD20PrimitiveButtonStyleRd__lFQOyAFyAD6ButtonVyAHyA4_A4_GGAXG_AD19BorderedButtonStyleVQo__A2_yA15__A14_yAD05EmptyG0VGtGQo_tGGMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedL0VyAKyAA012_ConditionalL0VyAMyAA5ImageVAKyAKyAoA18_AspectRatioLayoutVGAA06_FrameR0VGGAOGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentW0VGAA05TupleC0VyAA4TextV_AA6SpacerVAcAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAMyA9_A9_GGA1_G_AA19BorderedButtonStyleVQo__A7_yA18__A17_yAA05EmptyC0VGtGQo_tGG_SbQo_Md);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v62 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0030AlignedLeadingAccessoryContentC0VyAA08ModifiedR0VyAOyAA012_ConditionalR0VyAQyAA5ImageVAOyAOyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0G18AttachmentModifierVGAA05TupleC0VyAA4TextV_AA6SpacerVAcAE0D14Representation14representationQrqd__yXE_tAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAOyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyC0VGtGQo_tGG_SbQo__Qo_Md);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v86 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_GMd);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = &v62 - v20;
  v21 = v1[1];
  v91 = *v1;
  *v92 = v21;
  v22 = v1[3];
  *&v92[16] = v1[2];
  v93 = v22;
  v23 = static VerticalAlignment.center.getter();
  closure #1 in ActivityTypePicker.body.getter(&v91);
  closure #2 in ActivityTypePicker.body.getter(&v91, &v13[v11[13]]);
  *&v13[v11[14]] = 0x4022000000000000;
  *&v13[v11[15]] = v23;
  v94 = *&v92[8];
  v95 = v92[24];
  v88 = *&v92[8];
  LOBYTE(v89) = v92[24];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](v87);
  v25 = swift_allocObject();
  v26 = *v92;
  v25[1] = v91;
  v25[2] = v26;
  v27 = v93;
  v25[3] = *&v92[16];
  v25[4] = v27;
  outlined init with copy of ActivityTypePicker(&v91, &v88);
  v28 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD012_ConditionalF0VyAHyAD5ImageVAFyAFyAjD18_AspectRatioLayoutVGAD06_FrameN0VGGAJGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD023AccessibilityAttachmentS0VGAD05TupleG0VyAD4TextV_AD6SpacerVAD0G0PADE27accessibilityRepresentation14representationQrqd__yXE_tADA7_Rd__lFQOyA8_ADE11buttonStyleyQrqd__AD20PrimitiveButtonStyleRd__lFQOyAFyAD6ButtonVyAHyA4_A4_GGAXG_AD19BorderedButtonStyleVQo__A2_yA15__A14_yAD05EmptyG0VGtGQo_tGGMd);
  v29 = MEMORY[0x277D839B0];
  View.onChange<A>(of:initial:_:)();

  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>>(v13, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD012_ConditionalF0VyAHyAD5ImageVAFyAFyAjD18_AspectRatioLayoutVGAD06_FrameN0VGGAJGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD023AccessibilityAttachmentS0VGAD05TupleG0VyAD4TextV_AD6SpacerVAD0G0PADE27accessibilityRepresentation14representationQrqd__yXE_tADA7_Rd__lFQOyA8_ADE11buttonStyleyQrqd__AD20PrimitiveButtonStyleRd__lFQOyAFyAD6ButtonVyAHyA4_A4_GGAXG_AD19BorderedButtonStyleVQo__A2_yA15__A14_yAD05EmptyG0VGtGQo_tGGMd);
  v30 = v72;
  static AccessibilityChildBehavior.combine.getter();
  *&v88 = v11;
  *(&v88 + 1) = v29;
  v89 = v28;
  v90 = MEMORY[0x277D839C8];
  v31 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityElement(children:)();
  (*(v74 + 8))(v30, v75);
  (*(v73 + 8))(v15, v31);
  v88 = v94;
  LOBYTE(v89) = v95;
  v33 = v24;
  MEMORY[0x20F30B100](v87, v24);
  if (LOBYTE(v87[0]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd);
    v34 = v78;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_20CB5DA70;
    static AccessibilityTraits.isSelected.getter();
    *&v88 = v35;
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v36 = v79;
    v37 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v34;
  }

  else
  {
    *&v88 = MEMORY[0x277D84F90];
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v36 = v79;
    v37 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v78;
  }

  *&v88 = v31;
  *(&v88 + 1) = OpaqueTypeConformance2;
  v39 = 1;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v81;
  v42 = v77;
  v43 = v86;
  MEMORY[0x20F30A9C0](v36, v77, v40);
  (*(v38 + 8))(v36, v37);
  (*(v76 + 8))(v43, v42);
  v88 = v94;
  LOBYTE(v89) = v95;
  MEMORY[0x20F30B100](v87, v33);
  v44 = v83;
  if (LOBYTE(v87[0]) == 1)
  {
    v88 = v91;
    v89 = *v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
    v45 = Binding.projectedValue.getter();
    *&v46 = MEMORY[0x28223BE20](v45);
    v88 = v46;
    v89 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo23FIUIWorkoutActivityTypeCGAeA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AEQo_GMd);
    lazy protocol witness table accessor for type FIUIWorkoutActivityType? and conformance <A> A?();
    lazy protocol witness table accessor for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v48 = v62;
    Picker.init(selection:label:content:)();
    v49 = v65;
    WheelPickerStyle.init()();
    v50 = lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type Picker<EmptyView, FIUIWorkoutActivityType?, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayAGGAgA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AGQo_GGMd);
    v51 = MEMORY[0x277CDDB70];
    v52 = v64;
    v53 = v66;
    v54 = v70;
    View.pickerStyle<A>(_:)();
    (*(v68 + 8))(v49, v54);
    (*(v63 + 8))(v48, v53);
    static Edge.Set.top.getter();
    *&v88 = v53;
    *(&v88 + 1) = v54;
    v89 = v50;
    v90 = v51;
    swift_getOpaqueTypeConformance2();
    v55 = v69;
    View.listRowInsets(_:_:)();
    (*(v67 + 8))(v52, v55);
    v39 = 0;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_Md);
  (*(*(v56 - 8) + 56))(v44, v39, 1, v56);
  v57 = v82;
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v41, v82, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_GMd);
  v58 = v84;
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v44, v84, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_SgMd);
  v59 = v85;
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v57, v85, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_GMd);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_G_AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA29_So23FIUIWorkoutActivityTypeCSgAA7ForEachVySayA52_GA52_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA13__A52_Qo_GG_AA16WheelPickerStyleVQo__Qo_SgtMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v58, v59 + *(v60 + 48), &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_SgMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>>(v44, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_SgMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>>(v41, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_GMd);
  outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>>(v58, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAcAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA05EmptyC0VSo23FIUIWorkoutActivityTypeCSgAA7ForEachVySayATGAtcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ATQo_GG_AA05WheelnM0VQo__Qo_SgMd);
  return outlined destroy of AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>>(v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA012_ConditionalD0VyAQyAA5ImageVACyACyAsA18_AspectRatioLayoutVGAA06_FrameX0VGGASGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA0I18AttachmentModifierVGAA05TupleE0VyAA4TextV_AA6SpacerVAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAQyA13_A13_GGA5_G_AA19BorderedButtonStyleVQo__A11_yA22__A21_yAA05EmptyE0VGtGQo_tGG_SbQo__Qo_A8_GMd);
}

uint64_t closure #1 in ActivityTypePicker.body.getter(uint64_t a1)
{
  ActivityTypePicker.activityImage()(&v9);
  v7 = v11;
  *v8 = *v12;
  *&v8[10] = *&v12[10];
  v5 = v9;
  v6 = v10;
  v2 = *(a1 + 48);
  *&v4 = swift_getKeyPath();
  *(&v4 + 1) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA5ImageVACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  v11 = v7;
  *v12 = *v8;
  *&v12[16] = *&v8[16];
  v13 = v4;
  v9 = v5;
  v10 = v6;
  return outlined destroy of ModifiedContent<Button<_ConditionalContent<Text, Text>>, _EnvironmentKeyWritingModifier<Color?>>(&v9, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA5ImageVACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
}

uint64_t closure #2 in ActivityTypePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v58 = type metadata accessor for BorderedButtonStyle();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v4 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA4TextVAGGGMd);
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v50[-v6];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4TextVAIGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v53);
  v9 = &v50[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA012_ConditionalI0VyAA4TextVAMGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedgE0VQo_Md);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v50[-v11];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaBRd__lFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA15ModifiedContentVyAA0J0VyAA012_ConditionalL0VyAA4TextVAOGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedjH0VQo__AA05TupleC0VyAP_AKyAA05EmptyC0VGtGQo_Md);
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v66 = &v50[-v14];
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v71._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x800000020CB99410;
  v17.value._object = 0x800000020CB936F0;
  v17.value._countAndFlagsBits = 0xD000000000000012;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v71);

  v68 = v19;
  lazy protocol witness table accessor for type String and conformance String();
  v55 = Text.init<A>(_:)();
  v54 = v20;
  v51 = v21;
  v56 = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  v23[1] = *a1;
  v23[2] = v24;
  v25 = *(a1 + 48);
  v23[3] = *(a1 + 32);
  v23[4] = v25;
  MEMORY[0x28223BE20](v23);
  outlined init with copy of ActivityTypePicker(a1, &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  v68 = *(a1 + 24);
  LOBYTE(v69) = *(a1 + 40);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v67, v26);
  if (v67 == 1 && (v68 = *a1, v69 = *(a1 + 16), v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd), MEMORY[0x20F30B100](&v67, v27), v67))
  {

    v28 = *(a1 + 48);
  }

  else
  {
    v28 = static Color.white.getter();
  }

  KeyPath = swift_getKeyPath();
  (*(v5 + 32))(v9, v7, v57);
  v30 = v53;
  v31 = &v9[*(v53 + 36)];
  *v31 = KeyPath;
  v31[1] = v28;
  BorderedButtonStyle.init()();
  v32 = lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<Text, Text>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v33 = _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v34 = v52;
  v35 = v58;
  View.buttonStyle<A>(_:)();
  (*(v61 + 8))(v4, v35);
  v36 = outlined destroy of ModifiedContent<Button<_ConditionalContent<Text, Text>>, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4TextVAIGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA4TextVAGG_AA6ButtonVyAA05EmptyD0VGtGMd);
  v68._countAndFlagsBits = v30;
  v68._object = v35;
  v69 = v32;
  v70 = v33;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<Text, Text>, Button<EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA4TextVAGG_AA6ButtonVyAA05EmptyD0VGtGMd);
  v37 = v66;
  v38 = v63;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v62 + 8))(v34, v38);
  v39 = v60;
  v40 = *(v60 + 16);
  v42 = v64;
  v41 = v65;
  v40(v64, v37, v65);
  v43 = v59;
  v44 = v55;
  v45 = v54;
  *v59 = v55;
  v43[1] = v45;
  v46 = v51 & 1;
  *(v43 + 16) = v51 & 1;
  v43[3] = v56;
  v43[4] = 0;
  *(v43 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaFRd__lFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA15ModifiedContentVyAA0L0VyAA012_ConditionalN0VyA2CGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA08BorderedlJ0VQo__AA05TupleE0VyAR_AOyAA05EmptyE0VGtGQo_tMd);
  v40(v43 + *(v47 + 64), v42, v41);
  outlined copy of Text.Storage(v44, v45, v46);
  v48 = *(v39 + 8);

  v48(v66, v41);
  v48(v42, v41);
  outlined consume of Text.Storage(v44, v45, v46);
}

uint64_t closure #3 in closure #2 in ActivityTypePicker.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9EmptyViewVGMd);
  v28 = *(v31 - 8);
  v4 = v28;
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = a1[1];
  v32[0] = *a1;
  v32[1] = v9;
  v10 = a1[3];
  v32[2] = a1[2];
  v32[3] = v10;
  ActivityTypePicker.selectedActivityLabel()(v33);
  v11 = v33[0];
  v29 = v33[1];
  v12 = v33[2];
  v13 = v33[3];
  v14 = v34;
  v15 = swift_allocObject();
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  outlined init with copy of ActivityTypePicker(a1, v32);
  v27 = v8;
  Button.init(action:label:)();
  v18 = *(v4 + 16);
  v19 = v30;
  v20 = v8;
  v21 = v31;
  v18(v30, v20, v31);
  v22 = v29;
  *a2 = v11;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEG_AA6ButtonVyAA9EmptyViewVGtMd);
  v18((a2 + *(v23 + 48)), v19, v21);
  outlined copy of _ConditionalContent<Text, Text>.Storage(v11, v22, v12);
  v24 = *(v28 + 8);
  v24(v27, v21);
  v24(v19, v21);
  return outlined consume of _ConditionalContent<Text, Text>.Storage(v11, v22, v12);
}

uint64_t closure #1 in closure #2 in ActivityTypePicker.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in ActivityTypePicker.body.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  outlined init with copy of Transaction(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v11);
}

void closure #3 in ActivityTypePicker.body.getter(__int128 *a1)
{
  v7 = *(a1 + 24);
  LOBYTE(v8) = *(a1 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v6, v2);
  if (v6 == 1)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
    MEMORY[0x20F30B100](&v6);
    if (v6)
    {

      return;
    }

    v3 = *(a1 + 7);
    if (v3 >> 62)
    {
      v5 = *(a1 + 7);
      v4 = __CocoaSet.count.getter();
      v3 = v5;
      if (v4)
      {
LABEL_6:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x20F30C990](0);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v4 = *(v3 + 32);
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v7 = *a1;
    v8 = *(a1 + 2);
    v6 = v4;
    Binding.wrappedValue.setter();
  }
}

uint64_t closure #4 in ActivityTypePicker.body.getter()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23FIUIWorkoutActivityTypeCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_So23FIUIWorkoutActivityTypeCQo_Md);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, Image>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, TupleView<(Text, Spacer, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0)>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type [FIUIWorkoutActivityType] and conformance [A], &_sSaySo23FIUIWorkoutActivityTypeCGMd);
  _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject, type metadata accessor for FIUIWorkoutActivityType);
  type metadata accessor for FIUIWorkoutActivityType();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}