uint64_t outlined init with take of TransitionThinkingView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionThinkingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TransitionThinkingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransitionThinkingView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #1 in TransitionThinkingView.body.getter(v4, a1);
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVG_GMd);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v19, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    *a3 = v19;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for TransitionThinkingView()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA12TimelineViewVyAA08PeriodicE8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotF0VAA15_RotationEffectVGGALGMd);
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountdownBottomOverlay(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CountdownBottomOverlay(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t CountdownBottomOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v29 = a1;
  v28[1] = a3;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v28[0]);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  *&v35[0] = a1;
  *(&v35[0] + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = static Font.title.getter();
  v21 = swift_getKeyPath();
  v34 = v16 & 1;
  *&v30 = v12;
  *(&v30 + 1) = v14;
  LOBYTE(v31) = v16 & 1;
  *(&v31 + 1) = v18;
  *&v32 = KeyPath;
  BYTE8(v32) = 1;
  *&v33 = v21;
  *(&v33 + 1) = v20;
  static Font.Weight.medium.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  v35[0] = v30;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v33;
  outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(v35, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
  v22 = static VerticalAlignment.bottom.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a2;
  *(v23 + 32) = a4;
  v24 = &v11[*(v9 + 36)];
  *v24 = v22;
  v24[1] = partial apply for closure #1 in CountdownBottomOverlay.body.getter;
  v24[2] = v23;
  v25 = *MEMORY[0x277CDF9D8];
  v26 = type metadata accessor for DynamicTypeSize();
  (*(*(v26 - 8) + 104))(v8, v25, v26);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(v8, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    return sub_20C69950C(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadDataType.stringKey.getter()
{
  v1 = v0;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  v4 = MEMORY[0x28223BE20](DataType);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, DataType, v4);
  v7 = (*(v3 + 88))(v6, DataType);
  if (v7 == *MEMORY[0x277D0FED8])
  {
    (*(v3 + 96))(v6, DataType);
    v10[0] = 0x74756F6B726F77;
    v10[1] = 0xE700000000000000;
    v8 = HKWorkoutActivityType.description.getter();
    MEMORY[0x20F30BC00](v8);

    return v10[0];
  }

  else if (v7 == *MEMORY[0x277D0FEE0])
  {
    return 0x7961446C6C61;
  }

  else if (v7 == *MEMORY[0x277D0FEE8])
  {
    return 0x6F6B726F576C6C61;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static DemoUtilities.cacheLoadValues(_:dataType:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  _StringGuts.grow(_:)(26);

  Data = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](Data);

  _StringGuts.grow(_:)(28);

  v4 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v4);

  if (v2)
  {
    v5 = *(v2 + 16);
    if (v5 != 29 || (v5 = *(v1 + 16), v5 != 29))
    {

      lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
      swift_allocError();
      *v16 = v5;
      *(v16 + 8) = 29;
      *(v16 + 16) = 0;
      return swift_willThrow();
    }

    v6 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 29, 0);
    v7 = 0;
    v8 = v40;
    do
    {
      v9 = Double.description.getter();
      v41 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v9;
        v15 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v15;
        v9 = v14;
        v6 = MEMORY[0x277D84F90];
        v8 = v41;
      }

      *(v8 + 16) = v12 + 1;
      v13 = v8 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v7 += 8;
    }

    while (v7 != 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v38 = BidirectionalCollection<>.joined(separator:)();
    v39 = v20;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 29, 0);
    v21 = 0;
    v22 = v6;
    do
    {
      v23 = Double.description.getter();
      v25 = v24;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      }

      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v21 += 8;
    }

    while (v21 != 232);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = MEMORY[0x20F30BAD0](0xD000000000000018, 0x800000020CBA4330);

    v33 = MEMORY[0x20F30BAD0](v38, v39);

    v18 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v32, v33, *MEMORY[0x277D09540]);

    v34 = MEMORY[0x20F30BAD0](0xD00000000000001ALL, 0x800000020CBA4350);

    v35 = MEMORY[0x20F30BAD0](v29, v31);

    CFPreferencesSetAppValue(v34, v35, v18);
  }

  else
  {
    v17 = MEMORY[0x20F30BAD0](0xD000000000000018, 0x800000020CBA4330);

    v18 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v17, 0, *MEMORY[0x277D09540]);

    v19 = MEMORY[0x20F30BAD0](0xD00000000000001ALL, 0x800000020CBA4350);

    CFPreferencesSetAppValue(v19, 0, v18);
  }

  result = CFPreferencesAppSynchronize(v18);
  if (result)
  {
    return result;
  }

  lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  return swift_willThrow();
}

uint64_t static DemoUtilities.cacheWorkouts(_:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI04DemoA0VGMd);
    lazy protocol witness table accessor for type [DemoWorkout] and conformance <A> [A](&lazy protocol witness table cache variable for type [DemoWorkout] and conformance <A> [A], lazy protocol witness table accessor for type DemoWorkout and conformance DemoWorkout);
    v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v1)
    {
    }

    v7 = v3;
    v8 = v2;
    v9 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4310);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v9, isa, *MEMORY[0x277D09540]);

    outlined consume of Data._Representation(v8, v7);
  }

  else
  {
    v5 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4310);
    v6 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v5, 0, *MEMORY[0x277D09540]);
  }

  result = CFPreferencesAppSynchronize(v6);
  if (!result)
  {
    lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t DemoUtilities.DemoError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0xD00000000000002CLL;
  }

  _StringGuts.grow(_:)(31);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v4);

  MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CBA4370);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v5);

  return 0x6465746365707845;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(void (**a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v365 = a1;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v373 = v314 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySNy9HealthKit8DayIndexVGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v321 = v314 - v7;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMd);
  MEMORY[0x28223BE20](v320);
  v359 = (v314 - v8);
  DataType = type metadata accessor for TrainingLoadDataType();
  v330 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v349 = v314 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v318 = v314 - v11;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  MEMORY[0x28223BE20](BaselineComparison - 8);
  v372 = (v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v326 = v314 - v15;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v356);
  v371 = (v314 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v325 = v314 - v18;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v340 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v348 = v314 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v324 = v314 - v21;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v329 = *(ChronicBaseline - 8);
  MEMORY[0x28223BE20](ChronicBaseline);
  v388 = v314 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v354 = v314 - v24;
  MEMORY[0x28223BE20](v25);
  v335 = v314 - v26;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v328 = *(AcuteBaseline - 8);
  MEMORY[0x28223BE20](AcuteBaseline);
  v389 = v314 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v353 = v314 - v29;
  MEMORY[0x28223BE20](v30);
  v332 = v314 - v31;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v363);
  v362 = v314 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v361 = v314 - v34;
  v382 = type metadata accessor for DayIndex();
  v391 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v374 = v314 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v334 = v314 - v37;
  MEMORY[0x28223BE20](v38);
  v390 = (v314 - v39);
  MEMORY[0x28223BE20](v40);
  v350 = v314 - v41;
  MEMORY[0x28223BE20](v42);
  v367 = (v314 - v43);
  MEMORY[0x28223BE20](v44);
  v327 = v314 - v45;
  MEMORY[0x28223BE20](v46);
  v345 = (v314 - v47);
  MEMORY[0x28223BE20](v48);
  v346 = (v314 - v49);
  MEMORY[0x28223BE20](v50);
  v385 = v314 - v51;
  MEMORY[0x28223BE20](v52);
  v342 = (v314 - v53);
  MEMORY[0x28223BE20](v54);
  v380 = v314 - v55;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
  MEMORY[0x28223BE20](v364);
  v358 = (v314 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v57);
  v369 = v314 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  MEMORY[0x28223BE20](v59 - 8);
  v351 = v314 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v352 = (v314 - v62);
  MEMORY[0x28223BE20](v63);
  v375 = (v314 - v64);
  MEMORY[0x28223BE20](v65);
  v337 = v314 - v66;
  MEMORY[0x28223BE20](v67);
  v378 = (v314 - v68);
  MEMORY[0x28223BE20](v69);
  v343 = (v314 - v70);
  MEMORY[0x28223BE20](v71);
  v344 = v314 - v72;
  MEMORY[0x28223BE20](v73);
  v379 = v314 - v74;
  MEMORY[0x28223BE20](v75);
  v384 = (v314 - v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexVSgMd);
  MEMORY[0x28223BE20](v77 - 8);
  v333 = v314 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v339 = v314 - v80;
  MEMORY[0x28223BE20](v81);
  v386 = v314 - v82;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v366);
  v341 = (v314 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v84);
  v370 = v314 - v85;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
  MEMORY[0x28223BE20](v323);
  v387 = v314 - v86;
  v87 = type metadata accessor for Logger();
  v368 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v336 = (v314 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v89);
  v319 = v314 - v90;
  MEMORY[0x28223BE20](v91);
  v322 = v314 - v92;
  v393 = type metadata accessor for CharacterSet();
  v93 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v392 = v314 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  Data = TrainingLoadDataType.stringKey.getter();
  v381 = v95;
  v397 = 0;
  v398 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v397 = 0xD000000000000018;
  v398 = 0x800000020CBA4330;
  v360 = a2;
  v96 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v96);

  v97 = MEMORY[0x20F30BAD0](v397, v398);

  v98 = *MEMORY[0x277D09540];
  v99 = CFPreferencesCopyAppValue(v97, *MEMORY[0x277D09540]);

  v338 = 0;
  if (v99)
  {
    v395 = v99;
    v100 = swift_dynamicCast();
    if (v100)
    {
      v101 = v397;
    }

    else
    {
      v101 = 0;
    }

    if (v100)
    {
      v3 = v398;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v101 = 0;
  }

  v397 = 0;
  v398 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v397 = 0xD00000000000001ALL;
  v398 = 0x800000020CBA4350;
  v102 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v102);

  v103 = MEMORY[0x20F30BAD0](v397, v398);

  v104 = CFPreferencesCopyAppValue(v103, v98);

  if (!v104 || ((v395 = v104, (v105 = swift_dynamicCast()) == 0) ? (v106 = 0) : (v106 = v397), !v105 ? (v107 = 0) : (v107 = v398), !v3 || !v107))
  {

    return 0;
  }

  v347 = v93;
  v397 = v101;
  v398 = v3;
  v395 = 44;
  v396 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v108 = StringProtocol.components<A>(separatedBy:)();

  v109 = *(v108 + 16);
  v110 = MEMORY[0x277D84F90];
  v317 = v87;
  if (v109)
  {
    v315 = v106;
    v316 = v107;
    v395 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
    v111 = v395;
    v112 = (v347 + 8);
    v314[1] = v108;
    v113 = (v108 + 40);
    do
    {
      v114 = *v113;
      v397 = *(v113 - 1);
      v398 = v114;

      v115 = v392;
      static CharacterSet.whitespaces.getter();
      v116 = StringProtocol.trimmingCharacters(in:)();
      v118 = v117;
      (*v112)(v115, v393);

      v395 = v111;
      v120 = *(v111 + 16);
      v119 = *(v111 + 24);
      if (v120 >= v119 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
        v111 = v395;
      }

      *(v111 + 16) = v120 + 1;
      v121 = v111 + 16 * v120;
      *(v121 + 32) = v116;
      *(v121 + 40) = v118;
      v113 += 2;
      --v109;
    }

    while (v109);
    v383 = v111;

    v107 = v316;
    v106 = v315;
    v110 = MEMORY[0x277D84F90];
  }

  else
  {

    v383 = MEMORY[0x277D84F90];
  }

  v397 = v106;
  v398 = v107;
  v395 = 44;
  v396 = 0xE100000000000000;
  v122 = StringProtocol.components<A>(separatedBy:)();

  v123 = *(v122 + 16);
  if (v123)
  {
    v395 = v110;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
    v124 = v395;
    v125 = (v347 + 8);
    v316 = v122;
    v126 = (v122 + 40);
    do
    {
      v127 = *v126;
      v397 = *(v126 - 1);
      v398 = v127;

      v128 = v392;
      static CharacterSet.whitespaces.getter();
      v129 = StringProtocol.trimmingCharacters(in:)();
      v131 = v130;
      (*v125)(v128, v393);

      v395 = v124;
      v133 = *(v124 + 16);
      v132 = *(v124 + 24);
      if (v133 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1);
        v124 = v395;
      }

      *(v124 + 16) = v133 + 1;
      v134 = v124 + 16 * v133;
      *(v134 + 32) = v129;
      *(v134 + 40) = v131;
      v126 += 2;
      --v123;
    }

    while (v123);
    v347 = v124;
  }

  else
  {

    v347 = MEMORY[0x277D84F90];
  }

  v136 = v383;
  v137 = *(v383 + 16);
  v138 = v338;
  v139 = v379;
  if (!v137)
  {
    v149 = MEMORY[0x277D84F90];
    goto LABEL_99;
  }

  v393 = v137 - 1;
  if (v137 != 1)
  {
    goto LABEL_75;
  }

  v140 = *(v383 + 32);
  v141 = *(v383 + 40);
  if ((v140 != 0x676E69646E6570 || v141 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v140 == 0x617461446F6ELL && v141 == 0xE600000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v136 = v383, (result & 1) != 0))
    {

      return MEMORY[0x277D84F90];
    }

LABEL_75:
    v226 = 0;
    v227 = v136 + 40;
    v149 = MEMORY[0x277D84F90];
    while (1)
    {
      v369 = v149;
      v228 = v227;
      v229 = (v227 + 16 * v226);
      v230 = v226;
      while (1)
      {
        if (v230 >= *(v136 + 16))
        {
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          return result;
        }

        v232 = *(v229 - 1);
        v231 = *v229;
        v395 = 0;
        MEMORY[0x28223BE20](result);
        v314[-2] = &v395;
        if ((v231 & 0x1000000000000000) == 0)
        {
          if ((v231 & 0x2000000000000000) != 0)
          {
            v397 = v232;
            v398 = v231 & 0xFFFFFFFFFFFFFFLL;

            if (v232 >= 0x21u || ((0x100003E01uLL >> v232) & 1) == 0)
            {
              v234 = _swift_stdlib_strtod_clocale();
              if (v234)
              {
LABEL_88:
                v394 = *v234 == 0;
                goto LABEL_90;
              }
            }

            goto LABEL_89;
          }

          if ((v232 & 0x1000000000000000) != 0)
          {
            v233 = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v233 >= 0x21 || ((0x100003E01uLL >> v233) & 1) == 0)
            {
              v234 = _swift_stdlib_strtod_clocale();
              if (v234)
              {
                goto LABEL_88;
              }
            }

LABEL_89:
            v394 = 0;
            goto LABEL_90;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
LABEL_90:

        v136 = v383;
        if (v394)
        {
          break;
        }

        ++v230;
        v229 += 2;
        if (v137 == v230)
        {
          v149 = v369;
          goto LABEL_99;
        }
      }

      v235 = v395;
      v149 = v369;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
        v149 = result;
      }

      v237 = *(v149 + 2);
      v236 = *(v149 + 3);
      if (v237 >= v236 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v236 > 1), v237 + 1, 1, v149);
        v149 = result;
      }

      v226 = v230 + 1;
      *(v149 + 2) = v237 + 1;
      *&v149[8 * v237 + 32] = v235;
      v136 = v383;
      v227 = v228;
      if (v393 == v230)
      {
LABEL_99:

        if (*(v149 + 2) == 29 && *(v347 + 16) == 29)
        {
          v369 = v149;
          v238 = v319;
          static WOLog.trainingLoad.getter();
          v239 = v381;

          v240 = Logger.logObject.getter();
          v241 = static os_log_type_t.default.getter();

          v242 = os_log_type_enabled(v240, v241);
          v338 = v138;
          if (v242)
          {
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v397 = v244;
            *v243 = 136315138;
            v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v239, &v397);

            *(v243 + 4) = v245;
            _os_log_impl(&dword_20C66F000, v240, v241, "Demo Data overriding acute and chronic values for %s on graph.", v243, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v244);
            MEMORY[0x20F30E080](v244, -1, -1);
            MEMORY[0x20F30E080](v243, -1, -1);
          }

          else
          {
          }

          (v368[1])(v238, v317);
          v256 = v391;
          v257 = v359;
          v258 = v329;
          v259 = v370;
          GregorianDayRange.dayIndexRange.getter();
          v260 = v256[2];
          v393 = (v256 + 2);
          v261 = v380;
          v262 = v382;
          v260(v380, v259, v382);
          outlined destroy of ClosedRange<DayIndex>(v259, &_sSNy9HealthKit8DayIndexVGMd);
          v263 = v346;
          DayIndex.init(integerLiteral:)();
          static DayIndex.- infix(_:_:)();
          v264 = v256[1];
          v264(v263, v262);
          v384 = v264;
          v385 = (v256 + 1);
          v264(v261, v262);
          v265 = v260;
          v266 = v321;
          GregorianDayRange.dayIndexRange.getter();
          outlined init with copy of ClosedRange<DayIndex>(v266, v257, &_sSNy9HealthKit8DayIndexVGMd);
          v267 = v256[7];
          v381 = *(v320 + 36);
          v386 = v267;
          (v267)(v257 + v381, 1, 1, v262);
          outlined destroy of ClosedRange<DayIndex>(v266, &_sSNy9HealthKit8DayIndexVGMd);
          v387 = (v256 + 6);
          v365 = (v256 + 4);
          v346 = (v328 + 16);
          v345 = (v258 + 16);
          v344 = (v330 + 16);
          v343 = (v330 + 88);
          LODWORD(v370) = *MEMORY[0x277D0FED8];
          v336 = (v330 + 96);
          v335 = (v330 + 8);
          v342 = (v340 + 32);
          v341 = (v258 + 8);
          v340 = v328 + 8;
          v368 = MEMORY[0x277D84F90];
          v392 = 464;
          v383 = 32;
          v268 = v358;
          v269 = v369;
          v379 = v265;
          v391 = v256 + 7;
          while (1)
          {
            v270 = v378;
            (v265)(v378, v257, v262);
            (v386)(v270, 0, 1, v262);
            v271 = *(v364 + 48);
            outlined init with copy of ClosedRange<DayIndex>(v257 + v381, v268, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            outlined init with copy of ClosedRange<DayIndex>(v270, v268 + v271, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            v272 = *v387;
            if ((*v387)(v268, 1, v262) == 1)
            {
              break;
            }

            v273 = v337;
            outlined init with copy of ClosedRange<DayIndex>(v268, v337, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            if (v272(v268 + v271, 1, v262) == 1)
            {
              v384(v273, v262);
              v269 = v369;
              v265 = v379;
LABEL_117:
              outlined destroy of ClosedRange<DayIndex>(v268, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
              outlined destroy of ClosedRange<DayIndex>(v378, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
              goto LABEL_119;
            }

            v274 = v380;
            (*v365)(v380, v268 + v271, v262);
            _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
            v275 = dispatch thunk of static Equatable.== infix(_:_:)();
            v276 = v384;
            v384(v273, v262);
            v276(v274, v262);
            outlined destroy of ClosedRange<DayIndex>(v268, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            outlined destroy of ClosedRange<DayIndex>(v378, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            v269 = v369;
            v265 = v379;
            if (v275)
            {
              goto LABEL_148;
            }

LABEL_119:
            v277 = v381;
            v278 = v375;
            outlined init with take of ClosedRange<DayIndex><>.Index(v257 + v381, v375, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            v279 = v278;
            v280 = v352;
            outlined init with copy of ClosedRange<DayIndex>(v279, v352, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            if (v272(v280, 1, v262) == 1)
            {
              v281 = *(v366 + 36);
              _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
              result = dispatch thunk of static Comparable.>= infix(_:_:)();
              v282 = v365;
              if ((result & 1) == 0)
              {
                __break(1u);
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              v283 = v257 + v281;
              v277 = v381;
              (v265)(v257 + v381, v283, v262);
            }

            else
            {
              v282 = v365;
              (*v365)(v380, v280, v262);
              _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
              result = dispatch thunk of static Comparable.> infix(_:_:)();
              if ((result & 1) == 0)
              {
                goto LABEL_150;
              }

              v395 = -1;
              _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
              v284 = v380;
              dispatch thunk of Strideable.advanced(by:)();
              v384(v284, v262);
            }

            (v386)(v257 + v277, 0, 1, v262);
            outlined destroy of ClosedRange<DayIndex>(v375, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            v285 = v351;
            outlined init with copy of ClosedRange<DayIndex>(v257 + v277, v351, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
            result = (v272)(v285, 1, v262);
            if (result == 1)
            {
              goto LABEL_154;
            }

            v286 = *v282;
            v268 = v350;
            (*v282)(v350, v285, v262);
            v286(v390, v268, v262);
            v287 = [objc_opt_self() appleEffortScoreUnit];
            if (!v392)
            {
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              outlined destroy of ClosedRange<DayIndex>(v268, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
              outlined destroy of ClosedRange<DayIndex>(v378, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
LABEL_148:

              outlined destroy of ClosedRange<DayIndex>(v257, &_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMd);
              v384(v367, v262);
              return v368;
            }

            v257 = v391;
            v288 = v383 - 4;
            if ((v383 - 4) >= *(v269 + 2))
            {
              goto LABEL_144;
            }

            v289 = v287;
            v268 = [objc_opt_self() quantityWithUnit:v287 doubleValue:*&v269[8 * v383]];

            TrainingLoadAcuteBaseline.init(quantity:)();
            if (v288 >= *(v347 + 16))
            {
              goto LABEL_145;
            }

            v291 = *(v347 + v392 + 16);
            v290 = *(v347 + v392 + 24);
            if (v291 == 0x617461446F6ELL && v290 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v292 = v390;
              (v265)(v380, v390, v262);
              v293 = v339;
              (v265)(v339, v292, v262);
              v294 = v262;
              (v386)(v293, 0, 1, v262);
            }

            else
            {
              v295 = v390;
              (v379)(v334, v390, v262);
              v296 = v333;
              (v379)(v333, v367, v262);
              (v386)(v296, 0, 1, v262);
              v395 = 0;

              v297 = v291;
              v298 = v338;
              specialized String.withCString<A>(_:)(v297, v290);
              v338 = v298;

              v292 = v295;
              v265 = v379;
              v294 = v262;
            }

            TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)();
            (v265)(v374, v292, v294);
            _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
            v268 = v367;
            if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
            {
              goto LABEL_146;
            }

            v299 = v361;
            (v265)(v361, v268, v294);
            v300 = v363;
            (v265)(v299 + *(v363 + 48), v292, v294);
            v301 = v362;
            outlined init with copy of ClosedRange<DayIndex>(v299, v362, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
            v302 = *(v300 + 48);
            v303 = v371;
            v286(v371, v301, v294);
            v304 = v301 + v302;
            v305 = v384;
            v384(v304, v294);
            outlined init with take of ClosedRange<DayIndex><>.Index(v299, v301, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
            v286(v303 + *(v356 + 36), v301 + *(v300 + 48), v294);
            v305(v301, v294);
            (*v346)(v353, v389, AcuteBaseline);
            (*v345)(v354, v388, ChronicBaseline);
            TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)();
            v306 = v349;
            v307 = DataType;
            (*v344)(v349, v360, DataType);
            v308 = (*v343)(v306, v307);
            if (v308 == v370)
            {
              (*v336)(v306, v307);
            }

            else
            {
              (*v335)(v306, v307);
            }

            v257 = v359;
            v269 = v369;
            v309 = v348;
            TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)();
            (*v342)(v373, v309, SampleDaySummary);
            v310 = v368;
            v311 = v368[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v397 = v310;
            v313 = v390;
            v268 = v358;
            v265 = v379;
            v262 = v382;
            if (!isUniquelyReferenced_nonNull_native || v311 >= v310[3] >> 1)
            {
              v368 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v311 + 1, 1, v310);
              v397 = v368;
            }

            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v373);
            (*v341)(v388, ChronicBaseline);
            (*v340)(v389, AcuteBaseline);
            v384(v313, v262);
            v392 -= 16;
            --v383;
          }

          if (v272(v268 + v271, 1, v262) == 1)
          {
            goto LABEL_147;
          }

          goto LABEL_117;
        }

        v246 = v336;
        static WOLog.trainingLoad.getter();
        v247 = v381;

        v248 = v347;

        v249 = Logger.logObject.getter();
        v250 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          v252 = swift_slowAlloc();
          v397 = v252;
          *v251 = 136315650;
          v253 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v247, &v397);

          *(v251 + 4) = v253;
          *(v251 + 12) = 2048;
          v254 = *(v149 + 2);

          *(v251 + 14) = v254;

          *(v251 + 22) = 2048;
          v255 = *(v248 + 16);

          *(v251 + 24) = v255;

          _os_log_impl(&dword_20C66F000, v249, v250, "Demo Data for %s was invalid - expected 29 comma-separated doubles, ended up with %ld acute and %ld chronic", v251, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v252);
          MEMORY[0x20F30E080](v252, -1, -1);
          MEMORY[0x20F30E080](v251, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (v368[1])(v246, v317);
        return 0;
      }
    }
  }

  v142 = v322;
  static WOLog.trainingLoad.getter();
  v143 = v381;

  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v397 = v147;
    *v146 = 136315138;
    v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v143, &v397);

    *(v146 + 4) = v148;
    _os_log_impl(&dword_20C66F000, v144, v145, "Demo Data overriding acute and chronic values for %s on graph to pending.", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x20F30E080](v147, -1, -1);
    MEMORY[0x20F30E080](v146, -1, -1);
  }

  else
  {
  }

  (v368[1])(v142, v317);
  v150 = v391;
  v151 = v369;
  v152 = v323;
  v153 = v370;
  GregorianDayRange.dayIndexRange.getter();
  v154 = v387;
  outlined init with copy of ClosedRange<DayIndex>(v153, v387, &_sSNy9HealthKit8DayIndexVGMd);
  v155 = *(v152 + 36);
  v156 = v150[2];
  v157 = v382;
  v378 = v150 + 2;
  v375 = v156;
  (v156)(&v155[v154], v153, v382);
  v158 = v155;
  outlined destroy of ClosedRange<DayIndex>(v153, &_sSNy9HealthKit8DayIndexVGMd);
  v159 = v150[7];
  v150 += 7;
  v389 = v159;
  (v159)(&v155[v154], 0, 1, v157);
  v383 = (v150 - 1);
  v390 = (v150 - 3);
  v391 = v150;
  v381 = (v150 - 6);
  v372 = (v328 + 16);
  v371 = (v329 + 16);
  v367 = (v330 + 16);
  v359 = (v330 + 88);
  LODWORD(v373) = *MEMORY[0x277D0FED8];
  v350 = (v330 + 96);
  v349 = (v330 + 8);
  v358 = (v329 + 8);
  v352 = (v328 + 8);
  v351 = v340 + 32;
  v368 = MEMORY[0x277D84F90];
  v374 = v155;
  while (1)
  {
    v160 = v384;
    v161 = v382;
    (v389)(v384, 1, 1, v382);
    v162 = *(v364 + 48);
    outlined init with copy of ClosedRange<DayIndex>(&v158[v387], v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    outlined init with copy of ClosedRange<DayIndex>(v160, v151 + v162, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v163 = *v383;
    if ((*v383)(v151, 1, v161) == 1)
    {
      outlined destroy of ClosedRange<DayIndex>(v160, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
      if (v163(v151 + v162, 1, v382) == 1)
      {
        outlined destroy of ClosedRange<DayIndex>(v387, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
        v225 = &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd;
        goto LABEL_141;
      }

      goto LABEL_49;
    }

    outlined init with copy of ClosedRange<DayIndex>(v151, v139, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    if (v163(v151 + v162, 1, v382) == 1)
    {
      outlined destroy of ClosedRange<DayIndex>(v160, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
      (*v381)(v139, v382);
LABEL_49:
      outlined destroy of ClosedRange<DayIndex>(v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
      v151 = v387;
      goto LABEL_51;
    }

    v164 = (v151 + v162);
    v165 = v139;
    v166 = v380;
    v167 = v382;
    (*v390)(v380, v164, v382);
    _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
    LODWORD(v393) = dispatch thunk of static Equatable.== infix(_:_:)();
    v168 = *v381;
    (*v381)(v166, v167);
    outlined destroy of ClosedRange<DayIndex>(v384, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v168(v165, v167);
    outlined destroy of ClosedRange<DayIndex>(v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v151 = v387;
    if (v393)
    {
      break;
    }

LABEL_51:
    v169 = v344;
    outlined init with copy of ClosedRange<DayIndex>(&v158[v151], v344, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    result = (v163)(v169, 1, v382);
    if (result == 1)
    {
      goto LABEL_156;
    }

    v170 = *v390;
    v171 = v382;
    (*v390)(v386, v169, v382);
    v172 = v343;
    outlined init with take of ClosedRange<DayIndex><>.Index(&v158[v151], v343, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    result = (v163)(v172, 1, v171);
    v173 = v346;
    v174 = v385;
    if (result == 1)
    {
      goto LABEL_155;
    }

    v175 = v342;
    v170(v342, v172, v382);
    _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v392 = *v381;
      v393 = v381 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v392)(v175, v382);
      v176 = 1;
    }

    else
    {
      v397 = 1;
      _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
      v177 = v382;
      dispatch thunk of Strideable.advanced(by:)();
      v392 = *v381;
      v393 = v381 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v392)(v175, v177);
      v176 = 0;
    }

    v178 = &v158[v151];
    v179 = v382;
    v180 = v389;
    (v389)(v178, v176, 1, v382);
    v181 = v386;
    (v180)(v386, 0, 1, v179);
    v170(v174, v181, v179);
    v182 = v370;
    GregorianDayRange.dayIndexRange.getter();
    v183 = v375;
    (v375)(v173, v182 + *(v366 + 36), v179);
    outlined destroy of ClosedRange<DayIndex>(v182, &_sSNy9HealthKit8DayIndexVGMd);
    v184 = v345;
    DayIndex.init(integerLiteral:)();
    v185 = v380;
    static DayIndex.- infix(_:_:)();
    v186 = v392;
    (v392)(v184, v179);
    v186(v173, v179);
    GregorianDayRange.dayIndexRange.getter();
    v183(v173, v182 + *(v366 + 36), v179);
    outlined destroy of ClosedRange<DayIndex>(v182, &_sSNy9HealthKit8DayIndexVGMd);
    v187 = _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_152;
    }

    v388 = v187;
    v188 = v361;
    v189 = v382;
    v170(v361, v185, v382);
    v190 = v363;
    v170((v188 + *(v363 + 48)), v173, v189);
    v191 = v362;
    outlined init with copy of ClosedRange<DayIndex>(v188, v362, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v192 = *(v190 + 48);
    v193 = v341;
    v170(v341, v191, v189);
    v194 = v191 + v192;
    v195 = v392;
    v196 = v393;
    (v392)(v194, v189);
    outlined init with take of ClosedRange<DayIndex><>.Index(v188, v191, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v197 = v170;
    v170((v193 + *(v366 + 36)), (v191 + *(v190 + 48)), v189);
    v195(v191, v189);
    v198 = v385;
    if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
    {
      outlined destroy of ClosedRange<DayIndex>(v193, &_sSNy9HealthKit8DayIndexVGMd);
      v151 = v369;
      v158 = v374;
LABEL_63:
      v195(v198, v382);
      goto LABEL_64;
    }

    v199 = dispatch thunk of static Comparable.<= infix(_:_:)();
    outlined destroy of ClosedRange<DayIndex>(v193, &_sSNy9HealthKit8DayIndexVGMd);
    v151 = v369;
    v158 = v374;
    if ((v199 & 1) == 0)
    {
      goto LABEL_63;
    }

    v200 = [objc_opt_self() appleEffortScoreUnit];
    v201 = [objc_opt_self() quantityWithUnit:v200 doubleValue:5.0];

    TrainingLoadAcuteBaseline.init(quantity:)();
    v202 = v382;
    v393 = v196;
    v203 = v375;
    (v375)(v380, v198, v382);
    v204 = v370;
    GregorianDayRange.dayIndexRange.getter();
    v205 = v346;
    v203(v346, v204 + *(v366 + 36), v202);
    outlined destroy of ClosedRange<DayIndex>(v204, &_sSNy9HealthKit8DayIndexVGMd);
    v206 = v345;
    DayIndex.init(integerLiteral:)();
    v207 = v339;
    static DayIndex.- infix(_:_:)();
    v195(v206, v202);
    v195(v205, v202);
    v208 = v203;
    (v389)(v207, 0, 1, v202);
    TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)();
    v203(v327, v198, v202);
    v209 = v370;
    GregorianDayRange.dayIndexRange.getter();
    v208(v205, v209, v202);
    outlined destroy of ClosedRange<DayIndex>(v209, &_sSNy9HealthKit8DayIndexVGMd);
    DayIndex.init(integerLiteral:)();
    v210 = v380;
    static DayIndex.- infix(_:_:)();
    v195(v206, v202);
    v195(v205, v202);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_153;
    }

    v211 = v195;
    v212 = v361;
    v213 = v382;
    v214 = v197;
    v197(v361, v210, v382);
    v215 = v363;
    v208(v212 + *(v363 + 48), v198, v213);
    v216 = v362;
    outlined init with copy of ClosedRange<DayIndex>(v212, v362, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v217 = *(v215 + 48);
    v218 = v325;
    v214(v325, v216, v213);
    v211(v216 + v217, v213);
    outlined init with take of ClosedRange<DayIndex><>.Index(v212, v216, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v214(&v218[*(v356 + 36)], (v216 + *(v215 + 48)), v213);
    v211(v216, v213);
    (*v372)(v353, v332, AcuteBaseline);
    (*v371)(v354, v335, ChronicBaseline);
    TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)();
    v219 = v318;
    v220 = DataType;
    (*v367)(v318, v360, DataType);
    LODWORD(v218) = (*v359)(v219, v220);
    if (v218 == v373)
    {
      (*v350)(v219, v220);
    }

    else
    {
      (*v349)(v219, v220);
    }

    v151 = v369;
    TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)();
    v221 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v374;
    if ((v221 & 1) == 0)
    {
      v368 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v368[2] + 1, 1, v368);
    }

    v223 = v368[2];
    v222 = v368[3];
    if (v223 >= v222 >> 1)
    {
      v368 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v222 > 1, v223 + 1, 1, v368);
    }

    (*v358)(v335, ChronicBaseline);
    (*v352)(v332, AcuteBaseline);
    v211(v198, v382);
    v224 = v368;
    v368[2] = v223 + 1;
    (*(v340 + 32))(v224 + ((*(v340 + 80) + 32) & ~*(v340 + 80)) + *(v340 + 72) * v223, v324, SampleDaySummary);
LABEL_64:
    v139 = v379;
  }

  v225 = &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd;
LABEL_141:
  outlined destroy of ClosedRange<DayIndex>(v151, v225);
  (v389)(v386, 1, 1, v382);
  return v368;
}

id specialized static DemoUtilities.effortValue(for:)(void *a1)
{
  result = [a1 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x800000020CB958C0), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v4, v7);

      type metadata accessor for HKQuantity();
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError()
{
  result = lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError;
  if (!lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DemoUtilities(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DemoUtilities.DemoError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DemoUtilities.DemoError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for DemoUtilities.DemoError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for DemoUtilities.DemoError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<DayIndex>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ClosedRange<DayIndex><>.Index(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9HealthKit8DayIndexVACSLAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<DayIndex>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t one-time initialization function for analyticsQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static EffortUtilities.analyticsQueue = result;
  return result;
}

unint64_t EffortUtilities.OvernightVitalsState.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EffortUtilities.OvernightVitalsState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EffortUtilities.OvernightVitalsState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t static EffortUtilities.analyticsTaskIdentifier(workoutActivity:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = UUID.uuidString.getter();
  v11[0] = 0xD000000000000016;
  v11[1] = 0x800000020CBA4400;
  MEMORY[0x20F30BC00](v8);

  v9 = v11[0];
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t static EffortUtilities.sendPostWorkoutAnalytics(workout:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(void *a1, void *a2, void *a3, void *a4)
{
  v13[0] = 0xD000000000000025;
  v13[1] = 0x800000020CBA4420;
  v13[2] = [a1 workoutActivityType];
  IsIndoor = _HKWorkoutIsIndoor(a1);
  v15 = a2;
  v16 = a3;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = a3;

  v9 = a2;
  v10 = v8;

  v11 = v9;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v13);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(a4);
}

uint64_t static EffortUtilities.sendDidDeeplinktoVitalsAnalyticsEvent(source:vitalsState:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 == 3)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (v9 == 4)
  {
    v10 = 1;
LABEL_5:
    _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA018DeepLinkedToVitalsfG0AELLV_Tt0B5(0xD00000000000002CLL, 0x800000020CBA4450, v10 | (*a2 << 8));
  }

  v12 = v6;
  static WOLog.trainingLoad.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v17 = 0xE600000000000000;
    v18 = 0x736C61746976;
    v19 = 0x800000020CB931F0;
    v20 = 0xD00000000000001FLL;
    if (v9 != 2)
    {
      v20 = 0xD000000000000014;
      v19 = 0x800000020CB93230;
    }

    if (v9)
    {
      v18 = 0xD000000000000015;
      v17 = 0x800000020CB931D0;
    }

    if (v9 <= 1)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if (v9 <= 1)
    {
      v22 = v17;
    }

    else
    {
      v22 = v19;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_20C66F000, v13, v14, "Unexpected source for deeplink analytics event: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  return (*(v5 + 8))(v8, v12);
}

void closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &aBlock[-1] - v7;
  v9 = [objc_opt_self() sharedConnection];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isHealthDataSubmissionAllowed];

    if (v11)
    {
      static WOLog.trainingLoad.getter();
      outlined init with copy of AnalyticsEvent(a1, aBlock);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v32 = v2;
        v16 = v15;
        *&v37[0] = v15;
        *v14 = 136315138;
        v17 = v34;
        v18 = v35;
        __swift_project_boxed_opaque_existential_1(aBlock, v34);
        v19 = (*(v18 + 1))(v17, v18);
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0Tm_4(aBlock);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v37);

        *(v14 + 4) = v22;
        _os_log_impl(&dword_20C66F000, v12, v13, "Preparing to send analytics for event %s.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
        MEMORY[0x20F30E080](v16, -1, -1);
        MEMORY[0x20F30E080](v14, -1, -1);

        (*(v3 + 8))(v8, v32);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
        __swift_destroy_boxed_opaque_existential_0Tm_4(aBlock);
      }

      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      v28 = (*(v27 + 8))(v26, v27);
      v29 = MEMORY[0x20F30BAD0](v28);

      outlined init with copy of AnalyticsEvent(a1, v37);
      v30 = swift_allocObject();
      outlined init with take of AnalyticsEvent(v37, v30 + 16);
      v35 = partial apply for closure #1 in closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:);
      v36 = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v34 = &block_descriptor_10_2;
      v31 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v31);
    }

    else
    {
      static WOLog.trainingLoad.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20C66F000, v23, v24, "Health data submission not allowed. Not sending analytics.", v25, 2u);
        MEMORY[0x20F30E080](v25, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized WorkoutTrainingLoadAnalyticsEvent.generatePayload()()
{
  v1 = type metadata accessor for AppleExertionScale();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v44 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
  MEMORY[0x28223BE20](v45);
  v47 = &v42[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v48 = &v42[-v8];
  MEMORY[0x28223BE20](v9);
  v46 = &v42[-v10];
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v42[-v15];
  v17 = *(v0 + 40);
  AppleExertionScale.init(quantity:)();
  v18 = *(v0 + 32);
  AppleExertionScale.init(quantity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB6DA60;
  *(inited + 32) = 0x7974697669746361;
  v51 = inited + 32;
  *(inited + 40) = 0xEC00000065707954;
  v20 = HKWorkoutActivityType.description.getter();
  v21 = MEMORY[0x20F30BAD0](v20);

  *(inited + 48) = v21;
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  v50 = v0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6174536E4974706FLL;
  *(inited + 88) = 0xEB00000000737574;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020CBA4550;
  v52 = v2;
  v22 = *(v2 + 48);
  v23 = v13;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020CBA4570;
  if (v22(v13, 1, v1) == 1 || v22(v16, 1, v1) == 1)
  {
    v24 = 0;
    v25 = &unk_277DA8000;
    v26 = v49;
    v27 = v48;
    goto LABEL_4;
  }

  v35 = *(v45 + 48);
  v36 = v47;
  outlined init with copy of AppleExertionScale?(v13, v47);
  outlined init with copy of AppleExertionScale?(v16, &v36[v35]);
  if (v22(v36, 1, v1) == 1)
  {
    v37 = v22(&v36[v35], 1, v1) == 1;
    v38 = v36;
    v25 = &unk_277DA8000;
    v26 = v49;
    v27 = v48;
    if (v37)
    {
      outlined destroy of SleepingSampleDaySummary?(v38, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      v24 = 0;
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  outlined init with copy of AppleExertionScale?(v36, v46);
  v39 = v22(&v36[v35], 1, v1);
  v40 = v36;
  v25 = &unk_277DA8000;
  v26 = v49;
  v27 = v48;
  if (v39 == 1)
  {
    v41 = v40;
    (*(v52 + 8))(v46, v1);
    v38 = v41;
LABEL_17:
    outlined destroy of SleepingSampleDaySummary?(v38, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
    v24 = 1;
    goto LABEL_4;
  }

  (*(v52 + 32))(v44, &v40[v35], v1);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v52 + 8);
  (v45)(v44, v1);
  (v45)(v46, v1);
  outlined destroy of SleepingSampleDaySummary?(v47, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v24 = v43 ^ 1;
LABEL_4:
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000020CBA4590;
  outlined init with copy of AppleExertionScale?(v16, v27);
  if (v22(v27, 1, v1) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v27, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v28 = 0;
  }

  else
  {
    v28 = AppleExertionScale.analyticsEffortDifference(from:)();
    (*(v52 + 8))(v27, v1);
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v25[424]];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000020CBA45B0;
  outlined init with copy of AppleExertionScale?(v16, v26);
  if (v22(v26, 1, v1) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v26, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v29 = 0;
  }

  else
  {
    v29 = AppleExertionScale.analyticsBucketDifference(from:)();
    (*(v52 + 8))(v26, v1);
  }

  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v25[424]];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v31 = *(v50 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v30;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v53);

  v33 = v53;
  outlined destroy of SleepingSampleDaySummary?(v23, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  outlined destroy of SleepingSampleDaySummary?(v16, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  return v33;
}

{
  v47 = type metadata accessor for AppleExertionScale();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = *(v0 + 48);
  AppleExertionScale.init(quantity:)();
  v17 = *(v0 + 40);
  AppleExertionScale.init(quantity:)();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB6DA60;
  *(inited + 32) = 0x7974697669746361;
  v49 = inited + 32;
  *(inited + 40) = 0xEC00000065707954;
  v19 = HKWorkoutActivityType.description.getter();
  v20 = MEMORY[0x20F30BAD0](v19);

  *(inited + 48) = v20;
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  v52 = v0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6174536E4974706FLL;
  *(inited + 88) = 0xEB00000000737574;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020CBA4550;
  v53 = v1;
  v21 = *(v1 + 48);
  v22 = v47;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020CBA4570;
  v54 = v12;
  if (v21(v12, 1, v22) == 1)
  {
    v23 = 0;
    v24 = v51;
    v25 = v15;
LABEL_5:
    v26 = v48;
    v27 = &unk_277DA8000;
    goto LABEL_6;
  }

  v25 = v15;
  if (v21(v15, 1, v22) == 1)
  {
    v23 = 0;
    v24 = v51;
    goto LABEL_5;
  }

  v36 = v46;
  v37 = *(v45 + 48);
  outlined init with copy of AppleExertionScale?(v54, v46);
  outlined init with copy of AppleExertionScale?(v15, v36 + v37);
  v27 = &unk_277DA8000;
  if (v21(v36, 1, v22) == 1)
  {
    v38 = v21((v36 + v37), 1, v22) == 1;
    v39 = v36;
    v24 = v51;
    v26 = v48;
    if (v38)
    {
      outlined destroy of SleepingSampleDaySummary?(v39, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      v23 = 0;
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v40 = v44;
  outlined init with copy of AppleExertionScale?(v36, v44);
  if (v21((v36 + v37), 1, v22) == 1)
  {
    (*(v53 + 8))(v40, v22);
    v39 = v36;
    v24 = v51;
    v26 = v48;
LABEL_19:
    outlined destroy of SleepingSampleDaySummary?(v39, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
    v23 = 1;
    goto LABEL_6;
  }

  (*(v53 + 32))(v43, v36 + v37, v22);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
  LODWORD(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v53 + 8);
  v41(v43, v22);
  v41(v44, v22);
  outlined destroy of SleepingSampleDaySummary?(v36, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v23 = v45 ^ 1;
  v24 = v51;
  v26 = v48;
LABEL_6:
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000020CBA4590;
  outlined init with copy of AppleExertionScale?(v25, v26);
  if (v21(v26, 1, v22) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v26, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v28 = 0;
  }

  else
  {
    v28 = AppleExertionScale.analyticsEffortDifference(from:)();
    (*(v53 + 8))(v26, v22);
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v27[424]];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000020CBA45B0;
  outlined init with copy of AppleExertionScale?(v25, v24);
  if (v21(v24, 1, v22) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v24, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v29 = 0;
  }

  else
  {
    v29 = AppleExertionScale.analyticsBucketDifference(from:)();
    (*(v53 + 8))(v24, v22);
  }

  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v27[424]];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  *(v31 + 32) = 0xD000000000000013;
  *(v31 + 40) = 0x800000020CBA45D0;
  *(v31 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v31);
  swift_setDeallocating();
  outlined destroy of SleepingSampleDaySummary?(v31 + 32, &_sSS_So8NSObjectCtMd);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v30;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v32, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v55);

  v34 = v55[0];
  outlined destroy of SleepingSampleDaySummary?(v54, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  outlined destroy of SleepingSampleDaySummary?(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  return v34;
}

uint64_t ViewedTrainingLoadDetailsAnalyticsEvent.generatePayload()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0x6174536E4974706FLL;
  *(inited + 40) = 0xEB00000000737574;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t DeepLinkedToVitalsAnalyticsEvent.generatePayload()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000020CBA4530;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  v6 = v5;

  return v6;
}

uint64_t protocol witness for AnalyticsEvent.eventName.getter in conformance DeepLinkedToVitalsAnalyticsEvent()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA025ViewedTrainingLoadDetailsfG0AELLV_Tt0B5(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &unk_2823A5290;
  v24 = &protocol witness table for ViewedTrainingLoadDetailsAnalyticsEvent;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v12 = one-time initialization token for analyticsQueue;

  if (v12 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v21, v20);
  v13 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v20, v13 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
}

uint64_t _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = &unk_2823A5310;
  v19[4] = &protocol witness table for EndOfWorkoutAnalyticsEvent;
  v9 = swift_allocObject();
  v19[0] = v9;
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  outlined init with copy of EndOfWorkoutAnalyticsEvent(a1, aBlock);
  if (one-time initialization token for analyticsQueue != -1)
  {
    swift_once();
  }

  v14[1] = static EffortUtilities.analyticsQueue;
  outlined init with copy of AnalyticsEvent(v19, v17);
  v11 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v17, v11 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37_1;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v19);
}

uint64_t _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA07UpdatedcfG0AELLV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = &unk_2823A5420;
  v19[4] = &protocol witness table for UpdatedEffortAnalyticsEvent;
  v9 = swift_allocObject();
  v19[0] = v9;
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  outlined init with copy of UpdatedEffortAnalyticsEvent(a1, aBlock);
  if (one-time initialization token for analyticsQueue != -1)
  {
    swift_once();
  }

  v14[1] = static EffortUtilities.analyticsQueue;
  outlined init with copy of AnalyticsEvent(v19, v17);
  v11 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v17, v11 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v19);
}

uint64_t _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA018DeepLinkedToVitalsfG0AELLV_Tt0B5(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3 >> 8;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &unk_2823A54B0;
  v26 = &protocol witness table for DeepLinkedToVitalsAnalyticsEvent;
  v22[0] = a1;
  v22[1] = a2;
  v23 = v3 & 1;
  v24 = v6;
  v13 = one-time initialization token for analyticsQueue;

  if (v13 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v22, v21);
  v14 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v21, v14 + 16);
  aBlock[4] = partial apply for closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v22);
}

uint64_t _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA013LoadAndVitalsfG0AELLV_Tt0g5(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &unk_2823A53A0;
  v24 = &protocol witness table for LoadAndVitalsAnalyticsEvent;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v12 = one-time initialization token for analyticsQueue;

  if (v12 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v21, v20);
  v13 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v20, v13 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id specialized static EffortUtilities.analyticsTaskIdentifier(workout:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 fiui_finalWorkoutUUID];
  if (result)
  {
    v8 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = UUID.uuidString.getter();
    v11[0] = 0xD000000000000016;
    v11[1] = 0x800000020CBA4400;
    MEMORY[0x20F30BC00](v9);

    v10 = v11[0];
    (*(v3 + 8))(v6, v2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static EffortUtilities.sendDidViewTrainingLoadAnalytics(from:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrainingLoadURLBuilder.getTrainingLoadSource(from:)(&v9);
  if (v9 == 6)
  {
    static WOLog.trainingLoad.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C66F000, v4, v5, "Unable to determine source from url", v6, 2u);
      MEMORY[0x20F30E080](v6, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA025ViewedTrainingLoadDetailsfG0AELLV_Tt0B5(0xD000000000000023, 0x800000020CBA4500, v9);
  }
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(void *a1)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GregorianDayRange();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v13 = [objc_opt_self() hk_gregorianCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  static GregorianDayRange.previousWeek(through:gregorianCalendar:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance29SleepingSampleDaySummaryQueryCyAA0cdeF0VGMd));
  v15 = SleepingSampleDaySummaryQuery.init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)();
  [v18 executeQuery_];

  return (*(v10 + 8))(v12, v17);
}

uint64_t specialized static EffortUtilities.sendPostWorkoutAnalytics(workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 workoutConfiguration];
  v9 = [v8 activityType];

  v10 = [a1 workoutConfiguration];
  v11 = [v10 locationType];

  v17[0] = 0xD000000000000025;
  v17[1] = 0x800000020CBA4420;
  v17[2] = v9;
  v18 = v11 == 2;
  v19 = a2;
  v20 = a3;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = a3;

  v13 = a2;
  v14 = v12;

  v15 = v13;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v17);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(a4);
}

uint64_t specialized static EffortUtilities.sendUpdatedEffortAnalyticsEvent(workout:workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 sourceRevision];
  v9 = [v8 source];

  v10 = [v9 _hasFirstPartyBundleID];
  if (a2)
  {
    v11 = a2;
    v12 = [v11 workoutConfiguration];
    v13 = [v12 activityType];

    v14 = [v11 workoutConfiguration];
    v15 = [v14 locationType];

    IsIndoor = v15 == 2;
  }

  else
  {
    v13 = [a1 workoutActivityType];
    IsIndoor = _HKWorkoutIsIndoor(a1);
  }

  v20[0] = 0xD000000000000029;
  v20[1] = 0x800000020CBA44B0;
  v21 = v10;
  v22 = v13;
  v23 = IsIndoor;
  v24 = a3;
  v25 = a4;
  v17 = a4;
  v18 = a3;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA07UpdatedcfG0AELLV_Tt0g5(v20);
  return outlined destroy of UpdatedEffortAnalyticsEvent(v20);
}

unint64_t lazy protocol witness table accessor for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState()
{
  result = lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState;
  if (!lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortUtilities.OvernightVitalsState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EffortUtilities.OvernightVitalsState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of AnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_4(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with take of AnalyticsEvent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(unint64_t *a1, uint64_t *a2)
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

uint64_t specialized closure #1 in static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(void *a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SleepingSampleBaselineAvailability();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SleepingSampleBaselineComparison();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepingSampleDaySummary();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance24SleepingSampleDaySummaryVSgMd);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  if (a2)
  {
    static WOLog.trainingLoad.getter();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    outlined consume of Result<[SleepingSampleDaySummary], Error>(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v7;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = a1;
      v52 = v25;
      *v24 = 136315138;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v27 = String.init<A>(describing:)();
      v29 = v4;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v52);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v21, v22, "Failed to query sleep samples due to %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_4(v25);
      MEMORY[0x20F30E080](v25, -1, -1);
      MEMORY[0x20F30E080](v24, -1, -1);

      return (*(v5 + 8))(v23, v29);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    v45 = v19;
    v32 = a1[2];
    if (v32)
    {
      v44 = v13;
      v33 = v13 + 16;
      v34 = *(v13 + 16);
      v35 = (v46 + 8);
      v36 = (v48 + 8);
      v37 = (v33 - 8);
      v38 = a1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v47 = v34;
      v48 = v33;
      v46 = *(v33 + 56);
      while (1)
      {
        v47(v15, v38, v12, v17);
        SleepingSampleDaySummary.timeAsleep.getter();
        SleepingSampleBaselineComparison.availability.getter();
        (*v35)(v11, v49);
        v39 = SleepingSampleBaselineAvailability.isAvailable.getter();
        (*v36)(v9, v50);
        if (v39)
        {
          break;
        }

        (*v37)(v15, v12);
        v38 += v46;
        if (!--v32)
        {
          v40 = 0;
          v41 = 1;
          v13 = v44;
          goto LABEL_13;
        }
      }

      v13 = v44;
      (*(v44 + 32))(v45, v15, v12);
      v41 = 0;
      v40 = 1;
    }

    else
    {
      v40 = 0;
      v41 = 1;
    }

LABEL_13:
    v42 = v45;
    (*(v13 + 56))(v45, v41, 1, v12);
    outlined destroy of SleepingSampleDaySummary?(v42, &_s13HealthBalance24SleepingSampleDaySummaryVSgMd);
    return _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA013LoadAndVitalsfG0AELLV_Tt0g5(0xD000000000000017, 0x800000020CBA44E0, v40);
  }
}

void outlined consume of Result<[SleepingSampleDaySummary], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for ViewedTrainingLoadDetailsAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ViewedTrainingLoadDetailsAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndOfWorkoutAnalyticsEvent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EndOfWorkoutAnalyticsEvent(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent(uint64_t result, int a2, int a3)
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

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v42 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of [String : NSObject].Iterator._Variant();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of SleepingSampleDaySummary?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized LoadAndVitalsAnalyticsEvent.generatePayload()(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0x6174536E4974706FLL;
  *(inited + 40) = 0xEB00000000737574;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000020CBA45F0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

uint64_t getEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource()
{
  result = lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource;
  if (!lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource);
  }

  return result;
}

void closure #1 in MirroredStartWatchAppView.body.getter(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v38[-v7];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd);
  MEMORY[0x28223BE20](v40);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  v41 = static Color.black.getter();
  v39 = static Edge.Set.all.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v18 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4610);
  v19 = [objc_opt_self() imageNamed:v18 inBundle:v17];

  if (v19)
  {
    v20 = Image.init(uiImage:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43 = v20;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();

    v21 = static Alignment.top.getter();
    v23 = v22;
    v24 = a1;
    v25 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v5, v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd);
    v26 = &v8[*(v6 + 36)];
    *v26 = v25;
    *(v26 + 1) = v24;
    *(v26 + 2) = 0;
    v26[24] = 0;
    *(v26 + 4) = 0x4038000000000000;
    *(v26 + 5) = v21;
    *(v26 + 6) = v23;
    v27 = static Alignment.bottom.getter();
    v29 = v28;
    v30 = WorkoutUIBundle.super.isa;
    v54._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000020;
    v31._object = 0x800000020CBA4630;
    v32.value._object = 0x800000020CB936F0;
    v32.value._countAndFlagsBits = 0xD000000000000012;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v54);

    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v8, v13, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMd);
    v35 = &v13[*(v40 + 36)];
    *v35 = v34;
    v35[1]._countAndFlagsBits = 0x4038000000000000;
    v35[1]._object = v27;
    v35[2]._countAndFlagsBits = v29;
    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v13, v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v16, v10);
    v36 = v42;
    *v42 = v41;
    *(v36 + 8) = v39;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_ACyACyACyACyAA5ImageVAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayN0Vy07WorkoutB0012CountdownTopO0VGGARyAS0q6BottomO0VGGtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v10, v36 + *(v37 + 48));

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v16);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v10);
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for View.body.getter in conformance MirroredStartWatchAppView(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ColorVAA017_SafeAreaIgnoringG0VG_AKyAKyAKyAKyAA5ImageVAA06_FrameG0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayS0Vy07WorkoutB0012CountdownTopT0VGGAZyA_0v6BottomT0VGGtGGMd);
  closure #1 in MirroredStartWatchAppView.body.getter(v3, (a1 + *(v5 + 44)));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_AGyAGyAGyAGyAA5ImageVAA06_FrameL0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayQ0Vy07WorkoutB0012CountdownTopR0VGGAVyAW0t6BottomR0VGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalsHRZoneView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsHRZoneView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized IntervalsHRZoneView.withinRange.getter(*(a1 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAR0n4UnitP0VGAA012_EnvironmenturS0VyA1_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyA1_A9_GAA010_AlignmentrS0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA32_GA14_GAA016_ForegroundStyleS0VyAA5ColorVGGAZG_AKyAA6SpacerVAA010_FlexFrameG0VGAR20IntervalsRangeSliderVSgtGGMd);
  closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyACyAA4TextVAN15MetricValueFontVGAA013_TraitWritingH0VyAA0p8PriorityY3KeyVGG_ACyACyAA5ImageVAN0v4UnitX0VGAA015_EnvironmentKeyzH0VyA12_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA12_A20_GAA010_AlignmentzH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA43_GA25_GAJGA9_G_ACyAA6SpacerVAA05_FlexoP0VGAN20IntervalsRangeSliderVSgtGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v69);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);
  MEMORY[0x28223BE20](v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAP0n4UnitP0VGAA012_EnvironmenturS0VyA_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyA_A7_GAA010_AlignmentrS0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
  closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v7[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGMd) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GMd) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  *&v7[*(v5 + 36)] = xmmword_20CB71760;
  v39 = *(a1 + 40);
  specialized IntervalsHRZoneView.withinRange.getter(v39);
  v40 = *(v3 + 104);
  v67 = *MEMORY[0x277CE0EE0];
  v68 = v3 + 104;
  v66 = v40;
  v40(v73);
  v41 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v7, v9, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMd);
  *&v9[*(v69 + 36)] = v41;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v9, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMd);
  *&v14[*(v10 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v42 = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v74[55] = v79;
  *&v74[71] = v80;
  *&v74[87] = v81;
  *&v74[103] = v82;
  *&v74[7] = v76;
  *&v74[23] = v77;
  v75 = 1;
  *&v74[39] = v78;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if ((dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter() & 1) == 0)
  {
    v49 = specialized IntervalsHRZoneView.targetState.getter(v39);
    v51 = v50;
    specialized IntervalsHRZoneView.withinRange.getter(v39);
    v66(v73, v67, v72);
    v52 = Color.init(_:red:green:blue:opacity:)();
    specialized IntervalsRangeSlider.init(state:color:)(v49, v51 & 1, v52, &v83);
    v43 = v83;
    v44 = v84;
    v45 = v85;
    v46 = v86;
    v47 = v87;
    v48 = v88;
  }

  v72 = v47;
  v73 = v48;
  v53 = v46;
  v54 = v44;
  v55 = v70;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v42, v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);
  v56 = v71;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v55, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_ACyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtMd);
  v58 = v56 + *(v57 + 48);
  v59 = *&v74[80];
  *(v58 + 73) = *&v74[64];
  *(v58 + 89) = v59;
  *(v58 + 105) = *&v74[96];
  v60 = *&v74[16];
  *(v58 + 9) = *v74;
  *(v58 + 25) = v60;
  v61 = *&v74[48];
  *(v58 + 41) = *&v74[32];
  *v58 = 0;
  *(v58 + 8) = 1;
  *(v58 + 120) = *&v74[111];
  *(v58 + 57) = v61;
  v62 = (v56 + *(v57 + 64));
  *v62 = v43;
  v62[1] = v54;
  v62[2] = v45;
  v62[3] = v53;
  v63 = v73;
  v62[4] = v72;
  v62[5] = v63;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v42, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  *v22 = static VerticalAlignment.lastTextBaseline.getter();
  *(v22 + 1) = 0x4008000000000000;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityP3KeyVGG_AKyAKyAA5ImageVAN0m4UnitO0VGAA012_EnvironmenttqR0VyAY5ScaleOGGtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(&v22[*(v23 + 44)]);
  *&v22[*(v17 + 44)] = xmmword_20CB8CDA0;
  *v9 = static VerticalAlignment.firstTextBaseline.getter();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd);
  closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v9[*(v24 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  v26 = &v6[*(v4 + 44)];
  *v26 = 0;
  *(v26 + 1) = KeyPath;
  v26[16] = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v27 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v27 = v27 + 1.0;
  }

  v28 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v6, v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  v29 = &v15[*(v10 + 36)];
  *v29 = 0;
  *(v29 + 1) = v27;
  *(v29 + 2) = v28;
  v29[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v22, v19, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v15, v12, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  v30 = v34;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v19, v34, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAUA1_GAA010_AlignmentnO0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v12, v30 + *(v31 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v15, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v22, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v12, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v19, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v42 = specialized IntervalsHRZoneView.valueString.getter();
  v43 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v30 = v10;
  v31 = v11;
  v13 = v12;
  v32 = v14;
  KeyPath = swift_getKeyPath();
  v15 = v13 & 1;
  LOBYTE(v42) = v13 & 1;
  LOBYTE(v38) = 0;
  v16 = Image.init(systemName:)();
  v17 = swift_getKeyPath();
  v18 = &v8[*(v3 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v20 = *MEMORY[0x277CE1050];
  v21 = type metadata accessor for Image.Scale();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v8 = v16;
  *(v8 + 1) = v17;
  v8[16] = 0;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v8, v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v22 = v31;
  *&v38 = v10;
  *(&v38 + 1) = v31;
  LOBYTE(v39) = v15;
  *(&v39 + 1) = *v37;
  DWORD1(v39) = *&v37[3];
  v23 = v32;
  v24 = KeyPath;
  *(&v39 + 1) = v32;
  LOWORD(v40) = 256;
  *(&v40 + 2) = v35;
  WORD3(v40) = v36;
  *(&v40 + 1) = KeyPath;
  LOBYTE(v41) = 0;
  DWORD1(v41) = *&v34[3];
  *(&v41 + 1) = *v34;
  *(&v41 + 1) = 0x3FF0000000000000;
  v25 = v38;
  v26 = v39;
  v27 = v41;
  a1[2] = v40;
  a1[3] = v27;
  *a1 = v25;
  a1[1] = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGG_ACyACyAA5ImageVAF0g4UnitI0VGAA012_EnvironmentokL0VyAQ5ScaleOGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v5, a1 + *(v28 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v38, &v42, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v42 = v30;
  v43 = v22;
  v44 = v15;
  *v45 = *v37;
  *&v45[3] = *&v37[3];
  v46 = v23;
  v47 = 256;
  v48 = v35;
  v49 = v36;
  v50 = v24;
  v51 = 0;
  *&v52[3] = *&v34[3];
  *v52 = *v34;
  v53 = 0x3FF0000000000000;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v42, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMd);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v30 - v9);
  v11 = Image.init(_internalSystemName:)();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v14 = *MEMORY[0x277CE1050];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = static VerticalAlignment.firstTextBaseline.getter();
  v17 = (v10 + *(v5 + 44));
  *v17 = v16;
  v17[1] = closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter;
  v17[2] = 0;
  v30[2] = MEMORY[0x20F305B10](*(a1 + 24), *(a1 + 32));
  v30[3] = v18;
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.localizedUppercase.getter();
  v21 = v20;

  v30[0] = v19;
  v30[1] = v21;
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v11) = v25;
  v27 = v26;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v7, a2, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd) + 48);
  *v28 = v22;
  *(v28 + 8) = v24;
  *(v28 + 16) = v11 & 1;
  *(v28 + 24) = v27;
  outlined copy of Text.Storage(v22, v24, v11 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined consume of Text.Storage(v22, v24, v11 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
}

uint64_t protocol witness for View.body.getter in conformance IntervalsHRZoneView@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAKyAA4TextVAV15MetricValueFontVGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA18_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA18_A26_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA49_GA31_GARGA15_G_AKyAA6SpacerVAA05_FlexuG0VGAV20IntervalsRangeSliderVSgtGGtGGMd);
  closure #1 in IntervalsHRZoneView.body.getter(v7, (a1 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyACyAA4TextVAR15MetricValueFontVGAA013_TraitWritingK0VyAA0s8PriorityZ3KeyVGG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA14_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA14_A22_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA45_GA27_GANGA11_G_ACyAA6SpacerVAA05_FlexrS0VGAR20IntervalsRangeSliderVSgtGGtGGAR0W3RowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

BOOL specialized IntervalsHRZoneView.withinRange.getter(double a1)
{
  *&v2 = COERCE_DOUBLE(HeartRateMetricsPublisher.currentHeartRate.getter());
  if (v3)
  {
    return 0;
  }

  v5 = *&v2;
  v6 = dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter();
  v7 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
  if ((v6 & 1) == 0)
  {
    if (v9)
    {
      if (v5 >= 0.0)
      {
        v11 = 300.0;
        return v11 > v5;
      }
    }

    else if (v7 <= v5)
    {
      v11 = v8;
      return v11 > v5;
    }

    return 0;
  }

  v10 = v8;
  if (v9)
  {
    v10 = 300.0;
  }

  return vabdd_f64(v5, v10) <= a1;
}

double specialized IntervalsHRZoneView.percentageOfRangeValue.getter(double a1)
{
  v2 = HeartRateMetricsPublisher.currentHeartRate.getter();
  v3 = 0.0;
  if ((v4 & 1) == 0)
  {
    v5 = *&v2;
    if (specialized IntervalsHRZoneView.withinRange.getter(a1))
    {
      v6 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
      if (v7)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v6;
      }

      dispatch thunk of HeartRateTargetZone.applicableRange.getter();
      if (v10)
      {
        v11 = 300.0;
      }

      else
      {
        v11 = v9;
      }

      v12 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
      if (v13)
      {
        v12 = 0.0;
      }

      return (v5 - v8) / (v11 - v12);
    }
  }

  return v3;
}

uint64_t specialized IntervalsHRZoneView.targetState.getter(double a1)
{
  v2 = HeartRateMetricsPublisher.currentHeartRate.getter();
  if (v3)
  {
    return 0;
  }

  v5 = *&v2;
  dispatch thunk of HeartRateTargetZone.applicableRange.getter();
  if (v7)
  {
    if (v5 <= 300.0)
    {
      goto LABEL_5;
    }

    return 1;
  }

  if (v6 < v5)
  {
    return 1;
  }

LABEL_5:
  v8 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
  if (v9)
  {
    if (v5 >= 0.0)
    {
      return specialized IntervalsHRZoneView.percentageOfRangeValue.getter(a1);
    }

    return 0;
  }

  if (v5 < v8)
  {
    return 0;
  }

  return specialized IntervalsHRZoneView.percentageOfRangeValue.getter(a1);
}

uint64_t specialized IntervalsHRZoneView.valueString.getter()
{
  v0 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = HeartRateMetricsPublisher.currentHeartRate.getter();
  if (v13)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v22._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._object = 0x800000020CB9A400;
    v16._countAndFlagsBits = 0xD000000000000011;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v22)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v21[0] = v12;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v3, v5);
    (*(v1 + 8))(v3, v0);
    v20 = *(v6 + 8);
    v20(v8, v5);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v20(v11, v5);
    return v21[1];
  }
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for IntervalsPowerZoneView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsPowerZoneView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized IntervalsPowerZoneView.withinRange.getter(*(a1 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAR0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyAWA3_GAA010_AlignmentuV0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA26_GA8_GAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAA012_ConditionalJ0VyAKyAR20IntervalsRangeSliderVAA07_HiddenV0VGA47_GtGGMd);
  closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyAA4TextVAN15MetricValueFontVG_ACyACyAA5ImageVAN0v4UnitX0VGAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA6_A14_GAA017_AlignmentWritingH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA37_GA19_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAN20IntervalsRangeSliderVAA07_HiddenH0VGA53_GtGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for PowerZonesAlertZoneType();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Color.RGBColorSpace();
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v68);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  MEMORY[0x28223BE20](v14);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v19);
  v76 = &v67 - v20;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAP0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyAUA1_GAA010_AlignmentuV0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
  closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v11[*(v21 + 44)]);
  v22 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  v71 = v4;
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGMd) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GMd) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  *&v11[*(v9 + 36)] = xmmword_20CB71760;
  v42 = *(a1 + 40);
  specialized IntervalsPowerZoneView.withinRange.getter(v42);
  v43 = *MEMORY[0x277CE0EE0];
  v44 = *(v75 + 104);
  v75 += 104;
  v44(v8, v43, v74);
  v45 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v11, v13, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMd);
  *&v13[*(v68 + 36)] = v45;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v13, v18, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMd);
  *&v18[*(v14 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v18, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v68 = static IntervalsTargetView.horizontalSpacingToSlider;
  v46 = specialized IntervalsPowerZoneView.targetState.getter(v42);
  v48 = v47;
  specialized IntervalsPowerZoneView.withinRange.getter(v42);
  v44(v8, v43, v74);
  v49 = Color.init(_:red:green:blue:opacity:)();
  v50 = v71;
  specialized IntervalsRangeSlider.init(state:color:)(v46, v48 & 1, v49, v77);
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v51 = v69;
  v52 = v70;
  if ((*(v69 + 88))(v50, v70) == *MEMORY[0x277D7E428])
  {
    (*(v51 + 96))(v50, v52);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    v54 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v54 - 8) + 8))(&v50[v53], v54);
  }

  else
  {
    (*(v51 + 8))(v50, v52);
  }

  specialized View.isHidden(_:)(v78);
  outlined destroy of IntervalsRangeSlider(v77);
  v55 = v72;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v76, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  v56 = v78[0];
  v57 = v78[1];
  v58 = v78[2];
  v59 = v78[3];
  v60 = v78[4];
  v61 = v78[5];
  LODWORD(v75) = v79;
  v62 = v73;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v55, v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalD0VyACyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtMd);
  v64 = v62 + *(v63 + 48);
  *v64 = v68;
  *(v64 + 8) = 0;
  v65 = v62 + *(v63 + 64);
  *v65 = v56;
  *(v65 + 8) = v57;
  *(v65 + 16) = v58;
  *(v65 + 24) = v59;
  *(v65 + 32) = v60;
  *(v65 + 40) = v61;
  *(v65 + 48) = v75 & 1;
  outlined copy of _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>.Storage();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  outlined consume of _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>.Storage();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  *v20 = static VerticalAlignment.lastTextBaseline.getter();
  *(v20 + 1) = 0x4008000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAN0m4UnitO0VGAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v20[*(v21 + 44)]);
  *&v20[*(v15 + 44)] = xmmword_20CB8CF90;
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd);
  closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v7[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v7, v4, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  v24 = &v4[*(v2 + 44)];
  *v24 = 0;
  *(v24 + 1) = KeyPath;
  v24[16] = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v25 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v25 = v25 + 1.0;
  }

  v26 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v4, v13, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  v27 = &v13[*(v8 + 36)];
  *v27 = 0;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;
  v27[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v20, v17, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v13, v10, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  v28 = v32;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v17, v32, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAoWGAA010_AlignmentqR0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v10, v28 + *(v29 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v13, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v20, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v17, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v42 = specialized IntervalsPowerZoneView.valueString.getter();
  v43 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v31 = v10;
  v32 = v11;
  v13 = v12;
  v33 = v14;
  KeyPath = swift_getKeyPath();
  v15 = v13 & 1;
  LOBYTE(v42) = v13 & 1;
  LOBYTE(v38) = 0;
  v16 = Image.init(systemName:)();
  v17 = swift_getKeyPath();
  v18 = &v8[*(v3 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v20 = *MEMORY[0x277CE1050];
  v21 = type metadata accessor for Image.Scale();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v8 = v16;
  *(v8 + 1) = v17;
  v8[16] = 0;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v22 = v32;
  *&v38 = v10;
  *(&v38 + 1) = v32;
  LOBYTE(v39) = v15;
  *(&v39 + 1) = *v37;
  DWORD1(v39) = *&v37[3];
  v23 = v33;
  v24 = KeyPath;
  *(&v39 + 1) = v33;
  LOWORD(v40) = 256;
  *(&v40 + 2) = v35;
  WORD3(v40) = v36;
  *(&v40 + 1) = KeyPath;
  v41 = 0;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  *(a1 + 48) = 0;
  *(a1 + 16) = v26;
  *(a1 + 32) = v27;
  *a1 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAF0g4UnitI0VGAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v5, a1 + *(v28 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v38, &v42, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v42 = v31;
  v43 = v22;
  v44 = v15;
  *v45 = *v37;
  *&v45[3] = *&v37[3];
  v46 = v23;
  v47 = 256;
  v48 = v35;
  v49 = v36;
  v50 = v24;
  v51 = 0;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v42, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v28 - v7);
  v9 = Image.init(_internalSystemName:)();
  v10 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v12 = *MEMORY[0x277CE1050];
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = static VerticalAlignment.firstTextBaseline.getter();
  v15 = (v8 + *(v3 + 44));
  *v15 = v14;
  v15[1] = closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter;
  v15[2] = 0;
  v28[2] = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
  v28[3] = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.localizedUppercase.getter();
  v19 = v18;

  v28[0] = v17;
  v28[1] = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v9) = v23;
  v25 = v24;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v5, a1, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd) + 48);
  *v26 = v20;
  *(v26 + 8) = v22;
  *(v26 + 16) = v9 & 1;
  *(v26 + 24) = v25;
  outlined copy of Text.Storage(v20, v22, v9 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined consume of Text.Storage(v20, v22, v9 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
}

double specialized View.isHidden(_:)@<D0>(uint64_t a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance IntervalsPowerZoneView@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAA4TextVAV15MetricValueFontVG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA12_A20_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA43_GA25_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalJ0VyAKyAV20IntervalsRangeSliderVAA07_HiddenN0VGA59_GtGGtGGMd);
  closure #1 in IntervalsPowerZoneView.body.getter(v7, (a1 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t specialized IntervalsPowerZoneView.currentRange.getter()
{
  v0 = type metadata accessor for PowerZonesAlertZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D7E430])
  {
    (*(v1 + 8))(v3, v0);
    return dispatch thunk of PowerZonesAlertTargetZone.applicableRange.getter();
  }

  (*(v1 + 96))(v3, v0);
  v4 = *v3;

  if (!PowerMetricsPublisher.livePowerZones.getter())
  {
    return dispatch thunk of PowerZonesAlertTargetZone.applicableRange.getter();
  }

  v5 = dispatch thunk of LiveZones.zones.getter();

  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](v4, v5);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:

    dispatch thunk of Zone.logicalSpan.getter();
  }

  __break(1u);
  return result;
}

BOOL specialized IntervalsPowerZoneView.withinRange.getter(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = PowerMetricsPublisher.currentPower.getter();
  if (v7)
  {
    return 0;
  }

  v9 = *&v6;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D7E428])
  {
    (*(v3 + 96))(v5, v2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    v11 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
    specialized IntervalsPowerZoneView.currentRange.getter();
    return vabdd_f64(v9, v12) <= a1;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    specialized IntervalsPowerZoneView.currentRange.getter();
    return v14 <= v9 && v13 > v9;
  }
}

uint64_t specialized IntervalsPowerZoneView.targetState.getter(double a1)
{
  *&v2 = COERCE_DOUBLE(PowerMetricsPublisher.currentPower.getter());
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = *&v2;
  specialized IntervalsPowerZoneView.currentRange.getter();
  if (v6 < v5)
  {
    return 1;
  }

  specialized IntervalsPowerZoneView.currentRange.getter();
  if (v7 > v5)
  {
LABEL_2:
    *&result = 0.0;
    return result;
  }

  *&v8 = COERCE_DOUBLE(PowerMetricsPublisher.currentPower.getter());
  if ((v9 & 1) != 0 || (v10 = *&v8, !specialized IntervalsPowerZoneView.withinRange.getter(a1)))
  {
    *&result = 0.0;
  }

  else
  {
    specialized IntervalsPowerZoneView.currentRange.getter();
    v12 = v10 - v11;
    specialized IntervalsPowerZoneView.currentRange.getter();
    v14 = v13;
    specialized IntervalsPowerZoneView.currentRange.getter();
    *&result = v12 / (v14 - v15);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMd);
    lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider()
{
  result = lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider;
  if (!lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized IntervalsPowerZoneView.valueString.getter()
{
  v0 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = PowerMetricsPublisher.currentPower.getter();
  if (v13)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v22._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x45554C41564F4ELL;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v15._object = 0xE700000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v22)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v21[0] = v12;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v3, v5);
    (*(v1 + 8))(v3, v0);
    v20 = *(v6 + 8);
    v20(v8, v5);
    _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v20(v11, v5);
    return v21[1];
  }
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> and con()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMd);
    _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyA_yAEyAGyAA4TextVAR15MetricValueFontVG_AGyAGyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_AGyAGyA_yAEyAGyAGyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalG0VyAGyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGMd);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a);
  }

  return result;
}

uint64_t _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for NextIntervalHintView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NextIntervalHintView(uint64_t result, int a2, int a3)
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

__n128 NextIntervalHintView.body.getter@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  if (a1)
  {

    v6 = WorkoutStep.goal.getter();
    v7 = [v6 goalTypeIdentifier];

    v8 = WorkoutStep.goal.getter();
    v9 = v8;
    if (v7 == 2)
    {
      [v8 doubleValue];
      v11 = v10;

      type metadata accessor for ElapsedTimeFormatter();
      v12 = MEMORY[0x20F305C20](1, 0, v11);
      v14 = v13;
    }

    else
    {
      v12 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
      v14 = v20;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v45._object = 0xE000000000000000;
    v22._object = 0x800000020CBA4660;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v45);

    v26 = WorkoutStep.goal.getter();
    v27 = [v26 goalTypeIdentifier];

    LOBYTE(v26) = v27 != 0;
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a2;
    v28[4] = a1;
    swift_retain_n();
    v29 = a2;
    _s9WorkoutUI25NextIntervalOrLegPillViewV11description17metricDescription06centerK11OnCapHeight4iconACyxGSS_SSSbxyctcfC05SwiftB015ModifiedContentVyAKyAI5ImageVAI18_AspectRatioLayoutVGAI06_FrameW0VG_Tt3g5(v12, v14, v25._countAndFlagsBits, v25._object, v26, partial apply for closure #1 in NextIntervalHintView.body.getter, v28, v35);
    v41 = v35[4];
    v42 = v35[5];
    v43 = v36;
    v37 = v35[0];
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    outlined init with copy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(v35, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(v35);
    v41 = v33[4];
    v42 = v33[5];
    v43 = v34;
    v37 = v33[0];
    v38 = v33[1];
    v39 = v33[2];
    v40 = v33[3];
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v44._object = 0xE000000000000000;
    v16._object = 0x800000020CBA4660;
    v16._countAndFlagsBits = 0xD000000000000015;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v44);

    specialized NextIntervalOrLegPillView<>.init(isLast:metricDescription:)(1, v19._countAndFlagsBits, v19._object, v33);
    HIBYTE(v34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd);
    _ConditionalContent<>.init(storage:)();
  }

  v30 = v42;
  a3[4] = v41;
  a3[5] = v30;
  a3[6].n128_u16[0] = v43;
  v31 = v38;
  *a3 = v37;
  a3[1] = v31;
  result = v40;
  a3[2] = v39;
  a3[3] = result;
  return result;
}

double closure #1 in NextIntervalHintView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WorkoutStep.stepType.getter();
  StepType.scaleableImage.getter();
  (*(v7 + 8))(v9, v6);
  Image.init(uiImage:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v10 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *&v14[38] = v17;
  *&v14[22] = v16;
  *&v14[6] = v15;
  v11 = *&v14[16];
  *(a1 + 18) = *v14;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v11;
  result = *&v14[32];
  *(a1 + 50) = *&v14[32];
  *(a1 + 64) = *&v14[46];
  return result;
}

uint64_t lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025NextIntervalOrLegPillViewVyAA08ModifiedD0VyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGGAFyAJGGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutControlType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutControlType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for QuickStartWorkoutControlType(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PowerTargetValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PowerTargetValue(uint64_t result, int a2, int a3)
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

void PowerTargetValue.body.getter(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = specialized PowerTargetValue.valueString.getter(a1, a2 & 1);
  v8 = v7;
  v9 = 0;
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = [objc_opt_self() localizedShortPowerUnitString];
      if (v11)
      {
        v12 = v11;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v13;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
}

uint64_t specialized PowerTargetValue.valueString.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = WorkoutUIBundle.super.isa;
    v24._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4E5F43495254454DLL;
    v19._object = 0xEE0045554C41564FLL;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v24)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v23[0] = a1;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v7, v9);
    (*(v5 + 8))(v7, v4);
    v16 = *(v10 + 8);
    v16(v12, v9);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();
    v16(v15, v9);
    return v23[1];
  }
}

uint64_t getEnumTagSinglePayload for PaceTargetValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PaceTargetValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PaceTargetValue.value.getter()
{
  v1 = *v0;
  if (specialized PaceTargetValue.speedUnavailable()(*v0, *(v0 + 16), *(v0 + 32) & 1))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = WorkoutUIBundle.super.isa;
    v11._object = 0xE000000000000000;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x800000020CB97E50;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v11);
    goto LABEL_7;
  }

  v6 = *(v0 + 8);
  v7 = [objc_opt_self() meterUnit];
  v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v1];

  v9 = FIUIDistanceTypeForActivityType();
  v10 = MEMORY[0x20F30D340](v9);
  v2 = [v6 localizedPaceStringWithDistance:v8 overDuration:v10 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

    return;
  }

  __break(1u);
}

void PaceTargetValue.body.getter(uint64_t a1@<X8>)
{
  PaceTargetValue.value.getter();
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  v8 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v8) == 4 && (v9 = [*(v1 + 8) localizedSpeedUnitStringForActivityType_]) != 0)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t specialized PaceTargetValue.speedUnavailable()(double a1, uint64_t a2, char a3)
{
  v5 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v5) == 4 && a1 >= 0.0 && (_sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for NSObject), _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType), v6 = static FIUIWorkoutActivityType.indoorCycle.getter(), v7 = static NSObject.== infix(_:_:)(), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = FIUIDistanceTypeForActivityType();
    v10 = MEMORY[0x20F30D340](v9);
    v8 = a3 | (a1 < 0.0);
    if (v10 != 4)
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t _sSo8NSObjectCMaTm_1(uint64_t a1, unint64_t *a2)
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

id HKWorkoutMetricType.accessibilityLocalizedName(for:)(void *a1)
{
  [a1 effectiveTypeIdentifier];
  result = HKWorkoutMetricTypeAccessibilityLocalizedName();
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double IntervalsActiveTargetZoneView.rawValue.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7DE48])
  {
    MetricsPublisher.rollingPace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE40])
  {
    MetricsPublisher.averagePace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE60])
  {
    MetricsPublisher.currentPace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE70])
  {
    *&v6 = COERCE_DOUBLE(MetricsPublisher.currentCadence.getter());
LABEL_11:
    result = 0.0;
    v8 = *&v6;
    v9 = (v7 & 1) == 0;
    goto LABEL_12;
  }

  if (v4 == *MEMORY[0x277D7DE58])
  {
    *&v6 = COERCE_DOUBLE(MetricsPublisher.averageCadence.getter());
    goto LABEL_11;
  }

  if (v4 == *MEMORY[0x277D7DE68])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v10 = PowerMetricsPublisher.currentPower.getter();
LABEL_20:
    v12 = *&v10;
    v13 = v11;

    result = 0.0;
    v8 = v12;
    v9 = (v13 & 1) == 0;
LABEL_12:
    if (v9)
    {
      return v8;
    }

    return result;
  }

  if (v4 == *MEMORY[0x277D7DE50])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v10 = PowerMetricsPublisher.averagePower.getter();
    goto LABEL_20;
  }

  result = 0.0;
  if (v4 != *MEMORY[0x277D7DE78])
  {
    (*(v1 + 8))(v3, v0, 0.0);
    return 0.0;
  }

  return result;
}

BOOL IntervalsActiveTargetZoneView.withinRange.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of TargetZone.isSingleThreshold.getter();
  v5 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.min.getter();
  if (v4)
  {
    v7 = vabdd_f64(v5, v6);
    TargetZone.type.getter();
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 == *MEMORY[0x277D7DE48] || v8 == *MEMORY[0x277D7DE40] || v8 == *MEMORY[0x277D7DE60])
    {
      v9.n128_u64[0] = 0x3FCC9C4DA9003EEALL;
    }

    else
    {
      v9.n128_u64[0] = 5.0;
      if (v8 != *MEMORY[0x277D7DE70] && v8 != *MEMORY[0x277D7DE58] && v8 != *MEMORY[0x277D7DE68] && v8 != *MEMORY[0x277D7DE50])
      {
        (*(v1 + 8))(v3, v0, v9);
        v9.n128_u64[0] = 0;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      return 0;
    }

    v7 = IntervalsActiveTargetZoneView.rawValue.getter();
    dispatch thunk of TargetZone.max.getter();
  }

  return v7 <= v9.n128_f64[0];
}

uint64_t IntervalsActiveTargetZoneView.targetState.getter()
{
  v0 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.max.getter();
  if (v1 < v0)
  {
    return 1;
  }

  v3 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.min.getter();
  if (v3 >= v4)
  {
    if (IntervalsActiveTargetZoneView.withinRange.getter())
    {
      v5 = IntervalsActiveTargetZoneView.rawValue.getter();
      dispatch thunk of TargetZone.min.getter();
      v7 = v5 - v6;
      dispatch thunk of TargetZone.max.getter();
      v9 = v8;
      dispatch thunk of TargetZone.min.getter();
      *&result = v7 / (v9 - v10);
    }

    else
    {
      *&result = 0.0;
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsActiveTargetZoneView.withinRange.getter();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA0F0VyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGARGtGGAA08_PaddingG0VGA20_GARGAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAN0M11RangeSliderVSgtGGMd);
  closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAN20IntervalsTargetValueVAA07_OffsetK0VG_ACyACyACyAWyAYyACyACyAA5ImageVAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGAA017_AlignmentWritingH0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA3_GtGGAA08_PaddingP0VGA31_GA3_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAN0U11RangeSliderVSgtGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v61);
  v10 = &v59 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  MEMORY[0x28223BE20](v60);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAPGtGGMd);
  closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(a1, &v8[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGMd) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GMd) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  *&v8[*(v6 + 36)] = xmmword_20CB71760;
  IntervalsActiveTargetZoneView.withinRange.getter();
  v39 = *MEMORY[0x277CE0EE0];
  v40 = *(v3 + 104);
  v40(v5, v39, v64);
  v41 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v8, v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMd);
  *&v10[*(v61 + 36)] = v41;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v10, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMd);
  *&v14[*(v60 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v61 = static IntervalsTargetView.horizontalSpacingToSlider;
  if (dispatch thunk of TargetZone.isSingleThreshold.getter())
  {
    v64 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  else
  {
    active = IntervalsActiveTargetZoneView.targetState.getter();
    v49 = v48;
    IntervalsActiveTargetZoneView.withinRange.getter();
    v40(v5, v39, v64);
    v50 = Color.init(_:red:green:blue:opacity:)();
    specialized IntervalsRangeSlider.init(state:color:)(active, v49 & 1, v50, &v65);
    v64 = v65;
    v42 = v66;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
  }

  v51 = v17;
  v52 = v17;
  v53 = v62;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v52, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  v54 = v63;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v53, v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAH0I11RangeSliderVSgtMd);
  v56 = v54 + *(v55 + 48);
  *v56 = v61;
  *(v56 + 8) = 0;
  v57 = (v54 + *(v55 + 64));
  *v57 = v64;
  v57[1] = v42;
  v57[2] = v43;
  v57[3] = v44;
  v57[4] = v45;
  v57[5] = v46;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v51, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd);
}

void closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v43 = *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(&v43, v42, &_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMd);
  type metadata accessor for MetricsPublisher();
  lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher();
  v40 = v13;

  v15 = v12;
  v16 = v36;
  v38 = v15;
  v17 = v14;
  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  v21 = *(a1 + 5);
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(&v7[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v7, v16, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  v24 = v16 + *(v37 + 44);
  *v24 = 0;
  *(v24 + 8) = KeyPath;
  *(v24 + 16) = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v25 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v25 = v25 + 1.0;
  }

  v26 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v16, v11, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd) + 36)];
  *v27 = 0;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;
  v27[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd);
  v28 = *(a1 + 6);
  v29 = &v11[*(v39 + 36)];
  *v29 = 0;
  *(v29 + 1) = v28;
  v30 = v41;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v11, v41, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd);
  *a2 = v18;
  a2[1] = v20;
  v31 = v38;
  a2[2] = v40;
  a2[3] = v31;
  a2[4] = v17;
  a2[5] = 0;
  a2[6] = v21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA010_AlignmentqR0VG_AA4TextVtGGAD25MetricDescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAHGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v30, a2 + *(v32 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd);
  v33 = v20;

  v34 = v31;
  v35 = v17;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v30, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v28 - v7);
  v9 = Image.init(_internalSystemName:)();
  v10 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v12 = *MEMORY[0x277CE1050];
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = static VerticalAlignment.firstTextBaseline.getter();
  v15 = (v8 + *(v3 + 44));
  *v15 = v14;
  v15[1] = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter;
  v15[2] = 0;
  v28[2] = TargetZone.displayString(formattingManager:activityType:)();
  v28[3] = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.localizedUppercase.getter();
  v19 = v18;

  v28[0] = v17;
  v28[1] = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v9) = v23;
  v25 = v24;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v8, v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v5, a1, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd) + 48);
  *v26 = v20;
  *(v26 + 8) = v22;
  *(v26 + 16) = v9 & 1;
  *(v26 + 24) = v25;
  outlined copy of Text.Storage(v20, v22, v9 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
  outlined consume of Text.Storage(v20, v22, v9 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v5, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd);
}

double default argument 4 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = -6.0;
  }

  else
  {
    v7 = -2.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = -6.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    return v7 * (v19 / v22 * 0.95);
  }

  return v7;
}

void default argument 5 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)()
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

  if (v5 != v8)
  {
    v9 = [v2 mainScreen];
    [v9 scale];

    v10 = [v2 mainScreen];
    [v10 nativeScale];
  }
}

uint64_t protocol witness for View.body.getter in conformance IntervalsActiveTargetZoneView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = *(v1 + 32);
  v8 = *(v1 + 48);
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyAV20IntervalsTargetValueVAA07_OffsetQ0VG_AKyAKyAKyA3_yAIyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGAA017_AlignmentWritingN0VG_AA4TextVtGGAV25MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA9_GtGGAA08_PaddingG0VGA37_GA9_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAV0X11RangeSliderVSgtGGtGGMd);
  closure #1 in IntervalsActiveTargetZoneView.body.getter(v7, (a1 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for IntervalsActiveTargetZoneView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsActiveTargetZoneView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher()
{
  result = lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher;
  if (!lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher)
  {
    type metadata accessor for MetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyAR20IntervalsTargetValueVAA07_OffsetN0VG_AGyAGyAGyA_yAEyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t WorkoutVoiceOutroState.hash(into:)()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x20F30CD90](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x20F30CD90](v2);
  }

  MEMORY[0x20F30CD90](2);

  return String.hash(into:)();
}

Swift::Int WorkoutVoiceOutroState.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceOutroState()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceOutroState()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x20F30CD90](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x20F30CD90](v2);
  }

  MEMORY[0x20F30CD90](2);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceOutroState()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t specialized static WorkoutVoiceOutroState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    outlined consume of WorkoutVoiceOutroState(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    outlined consume of WorkoutVoiceOutroState(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of WorkoutVoiceOutroState(v4, v5);
      outlined copy of WorkoutVoiceOutroState(v2, v3);
      outlined consume of WorkoutVoiceOutroState(v2, v3);
      outlined consume of WorkoutVoiceOutroState(v4, v5);
      return v11 & 1;
    }

    outlined copy of WorkoutVoiceOutroState(v9, v3);
    outlined copy of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    outlined copy of WorkoutVoiceOutroState(*a2, *(a2 + 8));
    outlined copy of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v4, v5);
    return 0;
  }

  v6 = 1;
  outlined consume of WorkoutVoiceOutroState(*a1, 1uLL);
  outlined consume of WorkoutVoiceOutroState(v4, 1uLL);
  return v6;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceOutroState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceOutroState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkoutVoiceOutroState(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalsTargetView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for IntervalsTargetView(uint64_t result, int a2, int a3)
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

void one-time initialization function for heightOfView()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB8D818[v2];
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

  static IntervalsTargetView.heightOfView = *&v3;
}

void one-time initialization function for bottomOffset()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 10.0;
  }

  else
  {
    v7 = 14.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = 10.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v7 = v7 * (v19 / v22 * 0.95);
  }

  static IntervalsTargetView.bottomOffset = *&v7;
}

void one-time initialization function for heightOfAlertBackground()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 72.0;
  }

  else
  {
    v7 = 76.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 <= 4u)
  {
    if (v10 < 3u)
    {
      goto LABEL_11;
    }

    *&v11 = 75.0;
  }

  else if (v10 > 8u)
  {
    *&v11 = 84.0;
  }

  else
  {
    *&v11 = 80.0;
  }

  v7 = *&v11;
LABEL_11:

  v12 = [v0 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = [v0 mainScreen];
  [v15 nativeScale];
  v17 = v16;

  if (v14 != v17)
  {
    v18 = [v0 mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [v0 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    v7 = v7 * (v20 / v23 * 0.95);
  }

  static IntervalsTargetView.heightOfAlertBackground = *&v7;
}

void one-time initialization function for horizontalSpacingToSlider()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 2.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = 5.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v7 = v7 * (v19 / v22 * 0.95);
  }

  static IntervalsTargetView.horizontalSpacingToSlider = *&v7;
}

uint64_t IntervalsTargetView.body.getter@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v189 = a3;
  v197 = a4;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v171);
  v172 = &v147 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v169);
  v170 = &v147 - v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v166);
  v168 = &v147 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd);
  MEMORY[0x28223BE20](v162);
  v164 = &v147 - v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd);
  MEMORY[0x28223BE20](v154);
  v157 = &v147 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd);
  MEMORY[0x28223BE20](v149);
  v150 = &v147 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  MEMORY[0x28223BE20](v153);
  v152 = &v147 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  MEMORY[0x28223BE20](v156);
  v155 = &v147 - v13;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  MEMORY[0x28223BE20](v159);
  v158 = &v147 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v161);
  v160 = &v147 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v165);
  v163 = &v147 - v16;
  v148 = type metadata accessor for HeartRateMetricView();
  MEMORY[0x28223BE20](v148);
  v151 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v178);
  v167 = &v147 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0025IntervalsActiveTargetZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameT0VG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA1_GACyAN09HeartRateyF0VAN0z13RateAggregateyF0VGGACyACyA6_AN0ryF0VGACyAN06TimeInryF0VA10_GGGACyACyACyA13_AN04PaceyF0VGACyA18_A18_GGACyA20_ACyAN08DistanceyF0VAN04LapsyF0VGGGGACyACyACyACyACyACyAN07CadenceyF0VAA05EmptyF0VGA31_GA31_GACyAN015ElevationChangeyF0VAN016CurrentElevationyF0VGGACyACyAN05PoweryF0VA44_GACyA44_AN014FlightsClimbedyF0VGGGACyACyACyAN015SegmentDurationyF0VAN014DistanceDetailyF0VGACyA18_A1_GGACyACyA1_A44_GACyA44_AMyAMyAN0n4TimeF0VAN0Y6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA54_A18_GACyAN012StrideLengthyF0VA77_GGACyACyAN019VerticalOscillationyF0VA81_GACyAN017GroundContactTimeyF0VA84_GGGACyACyA38_AN016DownhillRunCountyF0VGACyA33_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN0Y9ValueFontVG_AMyAMyA96_AN0Y19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_GMd);
  MEMORY[0x28223BE20](v175);
  v176 = &v147 - v19;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
  MEMORY[0x28223BE20](v196);
  v179 = &v147 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0025IntervalsActiveTargetZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_Md);
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v147 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0018IntervalsPowerZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_Md);
  v181 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v180 = &v147 - v22;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo_GACyAgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o12ActiveTargetwF0VARGARGAVGAYG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA16_GACyAN015HeartRateMetricF0VAN024HeartRateAggregateMetricF0VGGACyACyA21_AN0w6MetricF0VGACyAN06TimeInw6MetricF0VA25_GGGACyACyACyA28_AN010PaceMetricF0VGACyA33_A33_GGACyA35_ACyAN014DistanceMetricF0VAN010LapsMetricF0VGGGGACyACyACyACyACyACyAN013CadenceMetricF0VAA05EmptyF0VGA46_GA46_GACyAN021ElevationChangeMetricF0VAN022CurrentElevationMetricF0VGGACyACyAN0v6MetricF0VA59_GACyA59_AN020FlightsClimbedMetricF0VGGGACyACyACyAN021SegmentDurationMetricF0VAN020DistanceDetailMetricF0VGACyA33_A16_GGACyACyA16_A59_GACyA59_AMyAMyAN0n4TimeF0VAN12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA69_A33_GACyAN018StrideLengthMetricF0VA92_GGACyACyAN025VerticalOscillationMetricF0VA96_GACyAN023GroundContactTimeMetricF0VA99_GGGACyACyA53_AN022DownhillRunCountMetricF0VGACyA48_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN15MetricValueFontVG_AMyAMyA111_AN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGG_GMd);
  MEMORY[0x28223BE20](v193);
  v195 = &v147 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo__GMd);
  MEMORY[0x28223BE20](v184);
  v186 = &v147 - v24;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
  MEMORY[0x28223BE20](v194);
  v187 = &v147 - v25;
  v26 = type metadata accessor for AccessibilityChildBehavior();
  v191 = *(v26 - 8);
  v192 = v26;
  MEMORY[0x28223BE20](v26);
  v190 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0015IntervalsHRZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameP0VG_Qo_Md);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v182 = &v147 - v28;
  v29 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = type metadata accessor for StepType();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  MetricsPublisher.intervalsMetricsPublisher.getter();
  v35 = IntervalsMetricsPublisher.intervalThisStep.getter();

  if (v35)
  {
    v36 = a2;
  }

  else
  {
    (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
    type metadata accessor for NLSessionActivityGoal();
    static NLSessionActivityGoal.makeOpenGoal()();
    v36 = a2;
    v37 = a2;
    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  }

  v38 = WorkoutStep.activeHeartRateTargetZone.getter();

  if (v38)
  {
    MetricsPublisher.heartRateMetricsPublisher.getter();
    type metadata accessor for HeartRateMetricsPublisher();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateMetricsPublisher and conformance HeartRateMetricsPublisher, MEMORY[0x277D7E500]);
    v39 = v38;
    v40 = v189;
    v41 = v36;
    v42 = ObservedObject.init(wrappedValue:)();
    v44 = v43;
    v45 = static Edge.Set.leading.getter();
    if (one-time initialization token for contentLeadingTrailingPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v198) = 0;
    v54 = static Edge.Set.trailing.getter();
    LOBYTE(v210) = 1;
    if (one-time initialization token for bottomOffset != -1)
    {
      swift_once();
    }

    v55 = static IntervalsTargetView.bottomOffset;
    if (one-time initialization token for heightOfView != -1)
    {
      swift_once();
    }

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v198 = v42;
    *(&v198 + 1) = v44;
    *&v199 = v39;
    *(&v199 + 1) = v40;
    *&v200 = v41;
    *(&v200 + 1) = 0x4014000000000000;
    LOBYTE(v201) = v45;
    *(&v201 + 1) = v47;
    *&v202 = v49;
    *(&v202 + 1) = v51;
    *&v203 = v53;
    BYTE8(v203) = 0;
    LOBYTE(v204[0]) = v54;
    *(v204 + 8) = 0u;
    *(&v204[1] + 8) = 0u;
    BYTE8(v204[2]) = 1;
    *&v205 = 0;
    *(&v205 + 1) = v55;
    v56 = v190;
    static AccessibilityChildBehavior.combine.getter();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd);
    v58 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v59 = v182;
    View.accessibilityElement(children:)();
    (*(v191 + 8))(v56, v192);
    v220 = v206;
    v221 = v207;
    v222 = v208;
    v216 = v204[0];
    v217 = v204[1];
    v218 = v204[2];
    v219 = v205;
    v212 = v200;
    v213 = v201;
    v214 = v202;
    v215 = v203;
    v210 = v198;
    v211 = v199;
    outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd);
    v60 = v39;
    v61 = v183;
    v62 = v185;
    (*(v183 + 16))(v186, v59, v185);
    swift_storeEnumTagMultiPayload();
    *&v198 = v57;
    *(&v198 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd);
    v64 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    *&v198 = v63;
    *(&v198 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v187;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v65, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v65, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
    return (*(v61 + 8))(v59, v62);
  }

  else
  {
    MetricsPublisher.intervalsMetricsPublisher.getter();
    v67 = IntervalsMetricsPublisher.intervalThisStep.getter();

    if (!v67)
    {
      (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
      type metadata accessor for NLSessionActivityGoal();
      static NLSessionActivityGoal.makeOpenGoal()();
      v68 = v36;
      UUID.init()();
      type metadata accessor for WorkoutStep();
      swift_allocObject();
      WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    }

    v69 = WorkoutStep.activePowerZonesAlertTargetZone.getter();

    if (v69)
    {
      MetricsPublisher.powerMetricsPublisher.getter();
      type metadata accessor for PowerMetricsPublisher();
      _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type PowerMetricsPublisher and conformance PowerMetricsPublisher, MEMORY[0x277D7E3B0]);
      v70 = v69;
      v71 = v189;
      v72 = v36;
      v73 = ObservedObject.init(wrappedValue:)();
      v75 = v74;
      v76 = static Edge.Set.leading.getter();
      if (one-time initialization token for contentLeadingTrailingPadding != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;
      LOBYTE(v198) = 0;
      v85 = static Edge.Set.trailing.getter();
      LOBYTE(v210) = 1;
      if (one-time initialization token for bottomOffset != -1)
      {
        swift_once();
      }

      v86 = static IntervalsTargetView.bottomOffset;
      if (one-time initialization token for heightOfView != -1)
      {
        swift_once();
      }

      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v198 = v73;
      *(&v198 + 1) = v75;
      *&v199 = v70;
      *(&v199 + 1) = v71;
      *&v200 = v72;
      *(&v200 + 1) = 0x4014000000000000;
      LOBYTE(v201) = v76;
      *(&v201 + 1) = v78;
      *&v202 = v80;
      *(&v202 + 1) = v82;
      *&v203 = v84;
      BYTE8(v203) = 0;
      LOBYTE(v204[0]) = v85;
      *(v204 + 8) = 0u;
      *(&v204[1] + 8) = 0u;
      BYTE8(v204[2]) = 1;
      *&v205 = 0;
      *(&v205 + 1) = v86;
      v87 = v190;
      static AccessibilityChildBehavior.combine.getter();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd);
      v89 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      v189 = v70;
      v90 = v180;
      View.accessibilityElement(children:)();
      (*(v191 + 8))(v87, v192);
      v220 = v206;
      v221 = v207;
      v222 = v208;
      v216 = v204[0];
      v217 = v204[1];
      v218 = v204[2];
      v219 = v205;
      v212 = v200;
      v213 = v201;
      v214 = v202;
      v215 = v203;
      v210 = v198;
      v211 = v199;
      outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd);
      v91 = v181;
      v92 = v188;
      (*(v181 + 16))(v186, v90, v188);
      swift_storeEnumTagMultiPayload();
      v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd);
      v94 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      *&v198 = v93;
      *(&v198 + 1) = v94;
      swift_getOpaqueTypeConformance2();
      *&v198 = v88;
      *(&v198 + 1) = v89;
      swift_getOpaqueTypeConformance2();
      v95 = v187;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v95, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
      _ConditionalContent<>.init(storage:)();

      outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v95, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
      return (*(v91 + 8))(v90, v92);
    }

    else
    {
      MetricsPublisher.intervalsMetricsPublisher.getter();
      v96 = IntervalsMetricsPublisher.intervalThisStep.getter();

      if (!v96)
      {
        (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
        type metadata accessor for NLSessionActivityGoal();
        static NLSessionActivityGoal.makeOpenGoal()();
        v97 = v36;
        UUID.init()();
        type metadata accessor for WorkoutStep();
        swift_allocObject();
        WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
      }

      v98 = WorkoutStep.activeTargetZone.getter();

      if (v98)
      {
        v99 = v34;

        v100 = v189;
        v101 = v36;
        v102 = default argument 4 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)();
        default argument 5 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)();
        v104 = v103;
        type metadata accessor for MetricsPublisher();
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
        v105 = ObservedObject.init(wrappedValue:)();
        v107 = v106;
        v108 = static Edge.Set.leading.getter();
        if (one-time initialization token for contentLeadingTrailingPadding != -1)
        {
          swift_once();
        }

        EdgeInsets.init(_all:)();
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        LOBYTE(v198) = 0;
        v117 = static Edge.Set.trailing.getter();
        LOBYTE(v210) = 1;
        if (one-time initialization token for bottomOffset != -1)
        {
          swift_once();
        }

        v118 = static IntervalsTargetView.bottomOffset;
        if (one-time initialization token for heightOfView != -1)
        {
          swift_once();
        }

        static Alignment.leading.getter();
        _FrameLayout.init(width:height:alignment:)();
        *&v198 = v105;
        *(&v198 + 1) = v107;
        *&v199 = v98;
        *(&v199 + 1) = v100;
        *&v200 = v101;
        *(&v200 + 1) = v102;
        *&v201 = v104;
        BYTE8(v201) = v108;
        *&v202 = v110;
        *(&v202 + 1) = v112;
        *&v203 = v114;
        *(&v203 + 1) = v116;
        LOBYTE(v204[0]) = 0;
        BYTE8(v204[0]) = v117;
        memset(&v204[1], 0, 32);
        LOBYTE(v205) = 1;
        *(&v205 + 1) = 0;
        *&v206 = v118;
        v119 = v190;
        static AccessibilityChildBehavior.combine.getter();
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd);
        active = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        v122 = v173;
        View.accessibilityElement(children:)();
        (*(v191 + 8))(v119, v192);
        v220 = v206;
        v221 = v207;
        v222 = v208;
        v223 = v209;
        v216 = v204[0];
        v217 = v204[1];
        v218 = v204[2];
        v219 = v205;
        v212 = v200;
        v213 = v201;
        v214 = v202;
        v215 = v203;
        v210 = v198;
        v211 = v199;
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd);
        v123 = v174;
        v124 = v177;
        (*(v174 + 16))(v176, v122, v177);
        swift_storeEnumTagMultiPayload();
        *&v198 = v120;
        *(&v198 + 1) = active;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
        v125 = v179;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v125, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
        _ConditionalContent<>.init(storage:)();

        outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v125, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
        return (*(v123 + 8))(v122, v124);
      }

      else
      {
        MetricsPublisher.heartRateMetricsPublisher.getter();
        v126 = HeartRateMetricsPublisher.currentHeartRate.getter();
        v128 = v127;

        MetricsPublisher.heartRateMetricsPublisher.getter();
        v129 = v148;
        v130 = v151;
        HeartRateMetricsPublisher.currentHeartRateValueType.getter();

        MetricsPublisher.heartRateMetricsPublisher.getter();
        v131 = HeartRateMetricsPublisher.isStaleHeartRate.getter();

        MetricsPublisher.workoutStatePublisher.getter();
        v132 = WorkoutStatePublisher.workoutPaused.getter();

        MetricsPublisher.workoutStatePublisher.getter();
        v133 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

        v134 = v130 + v129[9];
        *v134 = swift_getKeyPath();
        *(v134 + 8) = 0;
        v135 = v130 + v129[10];
        *v135 = swift_getKeyPath();
        *(v135 + 8) = 0;
        v136 = v130 + v129[11];
        *v136 = swift_getKeyPath();
        *(v136 + 8) = 0;
        *(v130 + v129[12]) = 0x3FD6666666666666;
        v137 = (v130 + v129[13]);
        *v137 = 0;
        v137[1] = 0;
        *v130 = v126;
        *(v130 + 8) = v128 & 1;
        *(v130 + v129[6]) = v131 & 1;
        *(v130 + v129[7]) = v132 & 1;
        *(v130 + v129[8]) = v133 & 1;
        outlined init with copy of HeartRateMetricView(v130, v150);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for HeartRateAggregateMetricView();
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
        v138 = v152;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v138, v157, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
        _s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
        lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
        v139 = v155;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v138, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v139, v164, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
        v140 = v158;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v139, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v140, v168, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
        v141 = v160;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v140, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v141, v170, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
        v142 = v163;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v141, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v142, v172, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
        v143 = v167;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v142, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
        outlined destroy of HeartRateMetricView(v130);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v143, v176, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd);
        v145 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        *&v210 = v144;
        *(&v210 + 1) = v145;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
        v146 = v179;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v146, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v146, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
        return outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v143, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
      }
    }
  }
}

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type IntervalsHRZoneView and conformance IntervalsHRZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsHRZoneView and conformance IntervalsHRZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalCo()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GACyAeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n12ActiveTargetvE0VAPGAPGATGAWG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA14_GACyAL09HeartRatezE0VAL018HeartRateAggregatezE0VGGACyACyA19_AL0vzE0VGACyAL06TimeInvzE0VA23_GGGACyACyACyA26_AL04PacezE0VGACyA31_A31_GGACyA33_ACyAL08DistancezE0VAL04LapszE0VGGGGACyACyACyACyACyACyAL07CadencezE0VAA05EmptyE0VGA44_GA44_GACyAL015ElevationChangezE0VAL016CurrentElevationzE0VGGACyACyAL0uzE0VA57_GACyA57_AL014FlightsClimbedzE0VGGGACyACyACyAL015SegmentDurationzE0VAL014DistanceDetailzE0VGACyA31_A14_GGACyACyA14_A57_GACyA57_AKyAKyAL0m4TimeE0VAL0Z6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA67_A31_GACyAL012StrideLengthzE0VA90_GGACyACyAL019VerticalOscillationzE0VA94_GACyAL017GroundContactTimezE0VA97_GGGACyACyA51_AL016DownhillRunCountzE0VGACyA46_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0Z9ValueFontVG_AKyAKyA109_AL0Z19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi);
  }

  return result;
}

void IntervalsRangeSlider.body.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = *(v1 + 32);
  v22 = v3;
  swift_retain_n();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5EA80;
  v7 = static Edge.Set.trailing.getter();
  *(inited + 32) = v7;
  v8 = static Edge.Set.top.getter();
  *(inited + 33) = v8;
  v9 = static Edge.Set.bottom.getter();
  *(inited + 34) = v9;
  v10 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v7)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  v11 = objc_opt_self();
  v12 = [v11 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = [v11 mainScreen];
  [v15 nativeScale];
  v17 = v16;

  v18 = 0uLL;
  v19 = 0uLL;
  if (v14 != v17)
  {
    EdgeInsets.init(_all:)();
    *(&v18 + 1) = v20;
    *(&v19 + 1) = v21;
  }

  *a1 = partial apply for closure #1 in IntervalsRangeSlider.body.getter;
  *(a1 + 8) = v4;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v28;
  *(a1 + 72) = v10;
  *(a1 + 80) = v18;
  *(a1 + 96) = v19;
  *(a1 + 112) = v14 == v17;
}

uint64_t closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd);
  MEMORY[0x28223BE20](v31);
  v28 = (&v28 - v6);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGGGA4_yAIyAU_A9_AStGG_GMd);
  MEMORY[0x28223BE20](v30);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGG_GMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd);
  MEMORY[0x28223BE20](v15);
  v17 = (&v28 - v16);
  v18 = *a2;
  if (*(a2 + 8))
  {
    v29 = v12;
    v19 = static HorizontalAlignment.center.getter();
    if (v18 == 0.0)
    {
      v25 = v28;
      *v28 = v19;
      *(v25 + 8) = 0;
      *(v25 + 16) = 1;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAA6SpacerVAA06_FrameG0VGAA6CircleVtGGMd);
      closure #2 in closure #1 in IntervalsRangeSlider.body.getter(a2, v25 + *(v26 + 44));
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v25, v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd);
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, v8, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
      _ConditionalContent<>.init(storage:)();
      outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
      v21 = v25;
      v22 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd;
    }

    else
    {
      *v5 = v19;
      *(v5 + 1) = 0;
      v5[16] = 1;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA06_FrameG0VGAMyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
      closure #3 in closure #1 in IntervalsRangeSlider.body.getter(a2, &v5[*(v20 + 44)]);
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v5, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
      _ConditionalContent<>.init(storage:)();
      v21 = v5;
      v22 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd;
    }
  }

  else
  {
    *v17 = static Alignment.center.getter();
    v17[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA09_PositionG0VGAA010_AnimationO0VySdGGtGGMd);
    closure #1 in closure #1 in IntervalsRangeSlider.body.getter(a2, v17 + *(v24 + 44), v18);
    outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v17, v11, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd);
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, v8, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
    v21 = v17;
    v22 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd;
  }

  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v21, v22);
}

uint64_t closure #1 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(a1 + 40);
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  *v12 = v13;
  *(v12 + 1) = v13;
  *&v12[*(v7 + 44)] = static Color.black.getter();
  v17 = *(a1 + 24) * 0.5;
  GeometryProxy.size.getter();
  v19 = (1.0 - a3) * v18;
  v20 = static Animation.default.getter();
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v12, v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, a2, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationI0VySdGGtMd) + 48);
  *v21 = v17;
  *(v21 + 8) = v19;
  *(v21 + 16) = v20;
  *(v21 + 24) = a3;

  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v12, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);

  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

uint64_t closure #2 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  *v9 = v10;
  *(v9 + 1) = v10;
  *&v9[*(v4 + 44)] = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v26;
  v22 = v24;
  v14 = v28;
  v15 = v29;
  v32 = 1;
  v31 = v25;
  v30 = v27;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, v6, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  LOBYTE(v4) = v32;
  v16 = v31;
  LOBYTE(a1) = v30;
  v17 = v23;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v6, v23, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtMd) + 48);
  *v18 = 0;
  *(v18 + 8) = v4;
  v19 = v21;
  *(v18 + 16) = v22;
  *(v18 + 24) = v16;
  *(v18 + 32) = v19;
  *(v18 + 40) = a1;
  *(v18 + 48) = v14;
  *(v18 + 56) = v15;
  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v6, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

uint64_t closure #3 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v23;
  v12 = v25;
  v21 = v28;
  v22 = v27;
  v31 = 1;
  v30 = v24;
  v29 = v26;
  v13 = *(a1 + 40);
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v10[v14], v15, v16);
  *v10 = v13;
  *(v10 + 1) = v13;
  *&v10[*(v5 + 44)] = static Color.black.getter();
  LOBYTE(v5) = v31;
  LOBYTE(v15) = v30;
  LOBYTE(v14) = v29;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  v17 = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAEyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtMd);
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v7, a2 + *(v18 + 64), &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v10, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v7, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

void specialized IntervalsRangeSlider.init(state:color:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  specialized UIDevice.screenType.getter();

  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 == v16)
  {
    v17 = 55.0;
  }

  else
  {
    v18 = [v10 mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [v10 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    v17 = v20 / v23 * 0.95 * 55.0;
  }

  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0x4018000000000000;
  *(a4 + 32) = v17;
  *(a4 + 40) = 0x4014000000000000;
}

uint64_t getEnumTagSinglePayload for IntervalsRangeSlider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsRangeSlider(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntervalsRangeSlider.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsRangeSlider.State(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for IntervalsRangeSlider.State(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for IntervalsRangeSlider.State(uint64_t result, int a2)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GAA08_PaddingS0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GMd);
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA19_ConditionalContentVyAEyAA6ZStackVyAA9TupleViewVyAA08ModifiedF0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAIyAU_A9_AStGGGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

void AddWorkoutRowView.init(title:uiImage:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  FIUISizeForIconSize();
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  v8 = type metadata accessor for AddWorkoutRowView();
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v9 = [objc_opt_self() keyColors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 nonGradientTextColor];

  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = *(v8 + 36);
  *(a3 + v12) = Color.init(uiColor:)();
  v13 = *(v8 + 40);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  v14 = swift_storeEnumTagMultiPayload();
  *a3 = a1(v14);
  *(a3 + 8) = v15;
  *(a3 + 16) = v17 & 1;
  if (a2)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  *(a3 + 24) = v16;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = v18;
}

void AddWorkoutRowView.init(title:symbolName:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  FIUISizeForIconSize();
  *(a4 + 72) = v8;
  *(a4 + 80) = v9;
  v10 = type metadata accessor for AddWorkoutRowView();
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v11 = [objc_opt_self() keyColors];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 nonGradientTextColor];

    if (v13)
    {
      v14 = *(v10 + 36);
      *(a4 + v14) = Color.init(uiColor:)();
      v15 = *(v10 + 40);
      *(a4 + v15) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
      v16 = swift_storeEnumTagMultiPayload();
      *a4 = a1(v16);
      *(a4 + 8) = v17;
      *(a4 + 16) = v18 & 1;
      *(a4 + 24) = v19;
      *(a4 + 32) = a2;
      *(a4 + 40) = a3;
      *(a4 + 48) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AddWorkoutRowView.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for AddWorkoutRowView()
{
  result = type metadata singleton initialization cache for AddWorkoutRowView;
  if (!type metadata singleton initialization cache for AddWorkoutRowView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AddWorkoutRowView.body.getter()
{
  v1 = type metadata accessor for AddWorkoutRowView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for AdaptiveStackType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = AddWorkoutRowView.useAccessibilityLayout.getter();
  v9 = MEMORY[0x277D0A6F0];
  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277D0A6E8];
  }

  (*(v5 + 104))(v7, *v9, v4);
  static HorizontalAlignment.leading.getter();
  AddWorkoutRowView.useAccessibilityLayout.getter();
  outlined init with copy of AddWorkoutRowView(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  outlined init with take of AddWorkoutRowView(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  static VerticalAlignment.center.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMd);
  return AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
}

uint64_t AddWorkoutRowView.useAccessibilityLayout.getter()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AddWorkoutRowView();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(v0 + *(v11 + 40), v6, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t closure #1 in AddWorkoutRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  if (v9 == 255)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi0_(&v91);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v46 = *(a1 + 48);
    v44 = v11;
    if (v9)
    {
      v12 = v6;
      outlined copy of AddWorkoutRowView.WorkoutIconType(v10, v11, 1);
      v13 = [v10 imageWithRenderingMode_];
      Image.init(uiImage:)();
      (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v12);
      v14 = Image.resizable(capInsets:resizingMode:)();

      (*(v5 + 8))(v8, v12);
      *&v79 = v14;
      BYTE8(v79) = 1;
      v43 = v14;
    }

    else
    {
      outlined copy of AddWorkoutRowView.WorkoutIconType?(v10, v11, v9);
      outlined copy of AddWorkoutRowView.WorkoutIconType(v10, v11, 0);
      *&v79 = Image.init(_internalSystemName:)();
      BYTE8(v79) = 0;
      v43 = v79;
    }

    _ConditionalContent<>.init(storage:)();
    v42 = v91;
    v15 = BYTE8(v91);
    if (AddWorkoutRowView.isEnabled.getter())
    {
      v16 = static Color.accentColor.getter();
    }

    else
    {
      type metadata accessor for AddWorkoutRowView();
      v16 = Color.opacity(_:)();
    }

    *(&v40 + 1) = v16;
    v45 = v10;
    *&v40 = swift_getKeyPath();
    v17 = AddWorkoutRowView.useAccessibilityLayout.getter();
    v41 = v15;
    if (v17)
    {
      type metadata accessor for AddWorkoutRowView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
      ScaledMetric.wrappedValue.getter();
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v18 = v41;
    LOBYTE(v55) = v41;
    AddWorkoutRowView.useAccessibilityLayout.getter();
    AddWorkoutRowView.useAccessibilityLayout.getter();
    v19 = v45;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    outlined consume of AddWorkoutRowView.WorkoutIconType?(v19, v44, v46);
    *&v79 = v42;
    BYTE8(v79) = v18;
    BYTE9(v79) = 1;
    v80 = v40;
    v85 = v51;
    v86 = v52;
    v81 = v47;
    v82 = v48;
    v83 = v49;
    v84 = v50;
    v87 = v53;
    v88 = v67;
    v89 = v68;
    v90 = v69;
    _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi_(&v79);
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v94 = v82;
  }

  if (AddWorkoutRowView.isEnabled.getter())
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v100;
  v64 = v100;
  v65 = v101;
  v28 = v101;
  v66 = v102;
  v29 = v95;
  v30 = v96;
  v60 = v96;
  v61 = v97;
  v31 = v97;
  v32 = v98;
  v62 = v98;
  v63 = v99;
  v55 = v91;
  v33 = v91;
  v34 = v92;
  v35 = v94;
  v56 = v92;
  v57 = v93;
  v36 = v93;
  v58 = v94;
  v59 = v95;
  v75 = v99;
  v76 = v100;
  v77 = v101;
  v78 = v102;
  v71 = v95;
  v72 = v96;
  v73 = v97;
  v74 = v98;
  v67 = v91;
  v68 = v92;
  v69 = v93;
  v70 = v94;
  *(a2 + 128) = v99;
  *(a2 + 144) = v27;
  v37 = v102;
  *(a2 + 160) = v28;
  *(a2 + 176) = v37;
  *(a2 + 64) = v29;
  *(a2 + 80) = v30;
  *(a2 + 96) = v31;
  *(a2 + 112) = v32;
  *a2 = v33;
  *(a2 + 16) = v34;
  v24 &= 1u;
  v54 = v24;
  *(a2 + 32) = v36;
  *(a2 + 48) = v35;
  *(a2 + 192) = v20;
  *(a2 + 200) = v22;
  *(a2 + 208) = v24;
  *(a2 + 216) = v26;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(&v67, &v79, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMd);
  outlined copy of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v20, v22, v24);

  v87 = v63;
  v88 = v64;
  v89 = v65;
  v90 = v66;
  v83 = v59;
  v84 = v60;
  v85 = v61;
  v86 = v62;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  v82 = v58;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(&v79);
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t outlined init with copy of AddWorkoutRowView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of AddWorkoutRowView.WorkoutIconType(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of AddWorkoutRowView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AddWorkoutRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddWorkoutRowView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in AddWorkoutRowView.body.getter(v4, a1);
}

void AddWorkoutRowView.init(activityType:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddWorkoutRowView();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 localizedName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v46 = v9;
  v47 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v45 = v17;
  v18 = [a1 symbolName];
  if (v18)
  {
    v19 = v18;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    static Platform.current.getter();
    v22 = Platform.rawValue.getter();
    if (v22 != Platform.rawValue.getter())
    {
      *(a2 + 56) = swift_getKeyPath();
      *(a2 + 64) = 0;
      FIUISizeForIconSize();
      *(a2 + 72) = v34;
      *(a2 + 80) = v35;
      FIUISizeForIconSize();
      v46 = v36;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      ScaledMetric.init(wrappedValue:)();
      v37 = [objc_opt_self() keyColors];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 nonGradientTextColor];

        if (v39)
        {
          v40 = *(v4 + 36);
          v41 = Color.init(uiColor:)();

          *(a2 + v40) = v41;
          v42 = *(v4 + 40);
          *(a2 + v42) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
          swift_storeEnumTagMultiPayload();
          *a2 = v12;
          *(a2 + 8) = v14;
          *(a2 + 16) = v16 & 1;
          v43 = v44;
          *(a2 + 24) = v45;
          *(a2 + 32) = v43;
          *(a2 + 40) = v21;
          *(a2 + 48) = 0;
          return;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v23 = FIUIStaticScalableWorkoutIconImage();
  *(v7 + 7) = swift_getKeyPath();
  v7[64] = 0;
  FIUISizeForIconSize();
  *(v7 + 9) = v24;
  *(v7 + 10) = v25;
  FIUISizeForIconSize();
  v46 = v26;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v27 = [objc_opt_self() keyColors];
  if (!v27)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 nonGradientTextColor];

  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v4 + 36);
  v31 = Color.init(uiColor:)();

  *&v7[v30] = v31;
  v32 = *(v4 + 40);
  *&v7[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  *v7 = v12;
  *(v7 + 1) = v14;
  v7[16] = v16 & 1;
  if (v23)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  *(v7 + 3) = v45;
  *(v7 + 4) = v23;
  *(v7 + 5) = 0;
  v7[48] = v33;
  outlined init with take of AddWorkoutRowView(v7, a2);
}

void type metadata completion function for AddWorkoutRowView()
{
  type metadata accessor for AddWorkoutRowView.WorkoutIconType?(319, &lazy cache variable for type metadata for AddWorkoutRowView.WorkoutIconType?, &type metadata for AddWorkoutRowView.WorkoutIconType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AddWorkoutRowView.WorkoutIconType?(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ScaledMetric<CGFloat>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<DynamicTypeSize>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for AddWorkoutRowView.WorkoutIconType?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Environment<DynamicTypeSize>()
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for AddWorkoutRowView.WorkoutIconType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AddWorkoutRowView.WorkoutIconType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id outlined copy of AddWorkoutRowView.WorkoutIconType(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of AddWorkoutRowView.WorkoutIconType?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of AddWorkoutRowView.WorkoutIconType(a1, a2, a3 & 1);
  }
}

id outlined copy of AddWorkoutRowView.WorkoutIconType?(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AddWorkoutRowView.WorkoutIconType(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t AddWorkoutList.init(goalStore:dependenciesWrapper:addingWorkoutDisabled:popularSectionDisabled:onSelectionComplete:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for AddWorkoutList();
  v14 = (a7 + v13[5]);
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = v13[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd);
  State.init(wrappedValue:)();
  *(a7 + v16) = v24;
  *(a7 + v13[15]) = 0x4024000000000000;
  *(a7 + v13[9]) = a1;
  v17 = objc_allocWithZone(type metadata accessor for GuidedWorkoutLocalizationProvider());
  swift_unknownObjectRetain();
  *(a7 + v13[10]) = [v17 init];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWheelchairUseProviding_pMd);
  Dependencies.resolve<A>(failureHandler:)();

  *(a7 + v13[11]) = v24;
  type metadata accessor for AddWorkoutDataSource();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v18 = AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)();
  v19 = (a7 + v13[6]);
  *v19 = v18;
  v19[1] = 0;
  type metadata accessor for SeymourDataSource();

  Dependencies.resolve<A>(failureHandler:)();

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v21 = a7 + v13[8];
  *v21 = _s9WorkoutUI03AddA4ListV9goalStore19dependenciesWrapper06addingA8Disabled014popularSectionJ019onSelectionCompleteACSo32WOCompoundActivityTypesProviding_p_AA012DependenciesH0CS2byycSgtcfcAA17SeymourDataSourceCycfu_TA_0;
  *(v21 + 1) = v24;
  v21[16] = 0;
  v22 = (a7 + v13[12]);
  *v22 = a5;
  v22[1] = a6;
  *(a7 + v13[13]) = a3;
  *(a7 + v13[14]) = a4;
  return result;
}

uint64_t AddWorkoutList.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

uint64_t AddWorkoutList.disclaimerTitle.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v14._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA4730;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA70;
  type metadata accessor for AddWorkoutList();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd);
  State.wrappedValue.getter();
  v5 = v13;
  if (v13)
  {
    v6 = [v13 localizedName];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  v11 = String.init(format:_:)();

  return v11;
}