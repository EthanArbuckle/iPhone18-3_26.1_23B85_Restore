uint64_t specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  outlined init with copy of AlertConfigurationView(a2, v22);
  outlined init with copy of AlertConfigurationView(a2, v22);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v21[0] = (v4 + 32);
  v21[1] = v5;
  outlined init with copy of AlertConfigurationView(a2, v22);
  outlined init with copy of AlertConfigurationView(a2, v22);
  outlined init with copy of AlertConfigurationView(a2, v22);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v4 + 32;
      do
      {
        v13 = v4[v11 + 32];
        v14 = qword_20CB85820[v13];
        v15 = v10;
        v16 = v12;
        do
        {
          v17 = *v16;
          if (v14 >= qword_20CB85820[v17])
          {
            break;
          }

          v16[1] = v17;
          *v16-- = v13;
        }

        while (!__CFADD__(v15++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = v6;
    v8 = (v5 >> 1);
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v20[0] = (v9 + 32);
    v20[1] = v8;
    outlined init with copy of AlertConfigurationView(a2, v22);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v22, v21, v7, a2);
    outlined destroy of AlertConfigurationView(a2);
    *(v9 + 16) = 0;
  }

  outlined destroy of AlertConfigurationView(a2);
  outlined destroy of AlertConfigurationView(a2);
  outlined destroy of AlertConfigurationView(a2);
  *a1 = v4;
  outlined destroy of AlertConfigurationView(a2);
  return outlined destroy of AlertConfigurationView(a2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AlertSingleConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlertSingleConfigurationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA4TextV_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GSgMd);
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleD0VyAA4TextV_AMyAA6SpacerV_AA5ImageVtGSgtGG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0>? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_76()
{
  v1 = (type metadata accessor for AlertSingleConfigurationView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  v6 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AlertSingleConfigurationView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AJ024AlertSingleConfigurationC0V9Selection33_CF792592F1ED44BAC6A31CC0F22AEAA2LLOQo_SgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AlertSingleConfigurationView.Selection and conformance AlertSingleConfigurationView.Selection();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.tag<A>(_:includeOptional:)>>.0)? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()()
{
  v1 = *(type metadata accessor for AlertSingleConfigurationView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = *(v2 + *(v1 + 64));

  return closure #1 in closure #4 in AlertSingleConfigurationView.platformTargetTypePicker()(v2, v3);
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AlertSingleConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AlertSingleConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:)partial apply(unsigned __int8 *a1)
{
  return _s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_0(a1);
}

{
  return _s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_0(a1);
}

{
  return _s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_0(a1);
}

{
  return _s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_0(a1);
}

uint64_t CadenceMetricView.init(activityType:cadence:metricType:formattingManager:visualAlertDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = swift_getKeyPath();
  *(a8 + 48) = a7;
  *(a8 + 56) = result;
  *(a8 + 64) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  return result;
}

uint64_t CadenceMetricView.pedometerMetricDescription.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  switch(v6)
  {
    case 15:
      v15 = *(v0 + 56);
      if (*(v0 + 64) != 1)
      {
        v16 = v3;

        static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v15, 0);
        (*(v2 + 8))(v5, v16);
        LOBYTE(v15) = v25;
      }

      if (v15 <= 9u && ((1 << v15) & 0x301) != 0)
      {
        return String.workoutLocalized()()._countAndFlagsBits;
      }

      v7 = "CURRENT_CADENCE_DESCRIPTION_ONE_LINE_PEDOMETER";
      goto LABEL_8;
    case 50:
      v7 = "INTERVAL_AVERAGE_CADENCE_DESCRIPTION_PEDOMETER";
LABEL_8:
      v8 = v7 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = WorkoutUIBundle.super.isa;
      v28._object = 0xE000000000000000;
      v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v10.value._object = 0xEB00000000656C62;
      v11._countAndFlagsBits = 0xD00000000000002ELL;
      v11._object = (v8 | 0x8000000000000000);
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v28._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v28)._countAndFlagsBits;

      return countAndFlagsBits;
    case 16:

      return String.workoutLocalized()()._countAndFlagsBits;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  v18 = v6;
  _StringGuts.grow(_:)(52);
  MEMORY[0x20F30BC00](0xD000000000000013, 0x800000020CBA1B80);
  v19 = MEMORY[0x20F30D420](v18);
  if (!v19)
  {
    __break(1u);
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  MEMORY[0x20F30BC00](v21, v23);

  MEMORY[0x20F30BC00](0xD00000000000001FLL, 0x800000020CBA1CB0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CadenceMetricView.cyclingMetricDescription.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  switch(v6)
  {
    case 15:
      v15 = *(v0 + 56);
      if (*(v0 + 64) != 1)
      {
        v16 = v3;

        static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v15, 0);
        (*(v2 + 8))(v5, v16);
        LOBYTE(v15) = v25;
      }

      if (v15 <= 9u && ((1 << v15) & 0x301) != 0)
      {
        return String.workoutLocalized()()._countAndFlagsBits;
      }

      v7 = "CURRENT_CADENCE_DESCRIPTION_ONE_LINE_CYCLING";
      goto LABEL_8;
    case 50:
      v7 = "INTERVAL_AVERAGE_CADENCE_DESCRIPTION_CYCLING";
LABEL_8:
      v8 = v7 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = WorkoutUIBundle.super.isa;
      v28._object = 0xE000000000000000;
      v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v10.value._object = 0xEB00000000656C62;
      v11._countAndFlagsBits = 0xD00000000000002CLL;
      v11._object = (v8 | 0x8000000000000000);
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v28._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v28)._countAndFlagsBits;

      return countAndFlagsBits;
    case 16:

      return String.workoutLocalized()()._countAndFlagsBits;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  v18 = v6;
  _StringGuts.grow(_:)(42);

  v25 = 0xD000000000000013;
  v26 = 0x800000020CBA1B80;
  v19 = MEMORY[0x20F30D420](v18);
  if (!v19)
  {
    __break(1u);
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  MEMORY[0x20F30BC00](v21, v23);

  MEMORY[0x20F30BC00](0xD000000000000015, 0x800000020CBA1BD0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CadenceMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 24);
  v23 = *(v0 + 8);
  v24 = v6;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  if ((v10 & 1) == 0)
  {
    outlined copy of Environment<WorkoutViewStyle>.Content(*(v0 + 56), 0);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v9, 0);
    (*(v2 + 8))(v4, v1);
    if (v22 != 9)
    {
      goto LABEL_3;
    }

LABEL_6:

    return v7;
  }

  v22 = *(v0 + 56);
  if (v9 == 9)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([v5 effectiveTypeIdentifier] == 13)
  {
    v15 = v5;
    v16 = v23;
    v17 = v24;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    return CadenceMetricView.cyclingMetricDescription.getter();
  }

  else
  {
    v15 = v5;
    v16 = v23;
    v17 = v24;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    return CadenceMetricView.pedometerMetricDescription.getter();
  }
}

uint64_t CadenceMetricView.valueString.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  if (*(v0 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4E5F43495254454DLL;
    v19._object = 0xEE0045554C41564FLL;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v32)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v30 = *(v0 + 8);
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    (*(v4 + 104))(v6, *MEMORY[0x277D84688], v3);
    MEMORY[0x20F3024B0](v6, 0, 1, v8);
    (*(v4 + 8))(v6, v3);
    v24 = *(v9 + 8);
    v24(v11, v8);
    v25 = v27;
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v25, v8);
    (*(v28 + 8))(v25, v29);
    v24(v14, v8);
    _sSaySSGSayxGSKsWlTm_4(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v24(v17, v8);
    return v31;
  }
}

uint64_t CadenceMetricView.accessibilityLabel.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if ((v2 & 1) == 0)
  {
    v9 = v0;
    v10 = *(v0 + 8);
    v11 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
    if (v11)
    {
      v12 = v11;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v35 = 0;
      v14 = 0;
    }

    v44 = v1;
    v45 = v10;
    v46 = v2;
    v47 = *(v9 + 17);
    v48 = *(v9 + 33);
    v49 = *(v9 + 49);
    v19 = CadenceMetricView.description.getter();
    if (v18)
    {
      v36 = v18;
      lazy protocol witness table accessor for type String and conformance String();
      v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v44 = v1;
    v45 = v10;
    v46 = v2;
    v47 = *(v9 + 17);
    v48 = *(v9 + 33);
    v49 = *(v9 + 49);
    v3 = &v44;
    v22 = 0;
    v38 = CadenceMetricView.valueString.getter();
    v39 = v23;
    v40 = v35;
    v41 = v14;
    v42 = v19;
    v43 = v21;
    v24 = MEMORY[0x277D84F90];
LABEL_16:
    if (v22 <= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 + 1;
    v27 = 16 * v22 + 40;
    while (1)
    {
      if (v22 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        swift_arrayDestroy();
        v44 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        _sSaySSGSayxGSKsWlTm_4(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

        return countAndFlagsBits;
      }

      if (v26 == ++v22)
      {
        break;
      }

      v28 = v27 + 16;
      v3 = *&v37[v27];
      v27 += 16;
      if (v3)
      {
        v29 = *&v37[v28 - 24];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v31 = *(v24 + 2);
        v30 = *(v24 + 3);
        if (v31 >= v30 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v24);
        }

        *(v24 + 2) = v31 + 1;
        v32 = &v24[16 * v31];
        *(v32 + 4) = v29;
        *(v32 + 5) = v3;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  if ([*v0 effectiveTypeIdentifier] != 13)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = WorkoutUIBundle.super.isa;
    v34 = 0xE000000000000000;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v8 = 0xD00000000000001CLL;
    v7 = 0x800000020CBA1B40;
    goto LABEL_10;
  }

  v3 = "AX_NO_CADENCE_DATA_PEDOMETER";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    goto LABEL_31;
  }

LABEL_4:
  swift_beginAccess();
  v4 = WorkoutUIBundle.super.isa;
  v34 = 0xE000000000000000;
  v5 = 0x617A696C61636F4CLL;
  v6 = 0xEB00000000656C62;
  v7 = v3 | 0x8000000000000000;
  v8 = 0xD00000000000001ALL;
LABEL_10:
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, *&v5, v4, v15, *(&v34 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t CadenceMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = CadenceMetricView.valueString.getter();
  v6 = v5;
  v7 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = CadenceMetricView.description.getter();
  v14 = v13;
  result = CadenceMetricView.accessibilityLabel.getter();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = result;
  *(a1 + 64) = v16;
  return result;
}

uint64_t getEnumTagSinglePayload for CadenceMetricView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for CadenceMetricView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _sSaySSGSayxGSKsWlTm_4(unint64_t *a1, uint64_t *a2)
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

uint64_t QuickStartWorkoutViewConfiguration.init(workoutConfiguration:autoPlayMediaEnabled:workoutBuddyEnabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t static QuickStartWorkoutViewConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

void QuickStartWorkoutViewConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int QuickStartWorkoutViewConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuickStartWorkoutViewConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance QuickStartWorkoutViewConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuickStartWorkoutViewConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type QuickStartWorkoutViewConfiguration and conformance QuickStartWorkoutViewConfiguration()
{
  result = lazy protocol witness table cache variable for type QuickStartWorkoutViewConfiguration and conformance QuickStartWorkoutViewConfiguration;
  if (!lazy protocol witness table cache variable for type QuickStartWorkoutViewConfiguration and conformance QuickStartWorkoutViewConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickStartWorkoutViewConfiguration and conformance QuickStartWorkoutViewConfiguration);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance QuickStartWorkoutViewConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutViewConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutViewConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _HKWorkoutGoalType.accessibilityLabel.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v1 = WorkoutUIBundle.super.isa;
      v12 = 0xE000000000000000;
      v2 = 0x617A696C61636F4CLL;
      v3 = 0xEB00000000656C62;
      v4 = 0xD000000000000018;
      v5 = 0x800000020CBA1DD0;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v6 = "AX_WORKOUT_GOAL_TIME";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
LABEL_11:
    v6 = "AX_WORKOUT_GOAL_OPEN";
LABEL_13:
    v7 = v6 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v12 = 0xE000000000000000;
    v2 = 0x617A696C61636F4CLL;
    v3 = 0xEB00000000656C62;
    v5 = v7 | 0x8000000000000000;
    v4 = 0xD000000000000014;
    goto LABEL_16;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = WorkoutUIBundle.super.isa;
  v12 = 0xE000000000000000;
  v2 = 0x617A696C61636F4CLL;
  v3 = 0xEB00000000656C62;
  v4 = 0xD000000000000016;
  v5 = 0x800000020CBA1DF0;
LABEL_16:
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v2, v1, v8, *(&v12 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t NLSessionActivityGoal.accessibilityIdentifierString.getter()
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    return 0xD000000000000011;
  }

  [v0 goalTypeIdentifier];
  return _HKWorkoutGoalType.description.getter();
}

void NLSessionActivityGoal.intervalDisplayNameShort(formattingManager:)(void *a1)
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v11 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD000000000000032;
      v7 = 0x800000020CBA1E40;
LABEL_10:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v10 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v3, v9, *(&v11 - 1));

      return;
    }

    v8 = [v1 goalTypeIdentifier];
  }

  else
  {
    v8 = [v1 goalTypeIdentifier];
    if (!v8)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v11 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v7 = 0x800000020CBA1E10;
      v6 = 0xD00000000000002ELL;
      goto LABEL_10;
    }
  }

  _HKWorkoutGoalType.displayNameShort(formattingManager:)(a1, v8);
}

uint64_t NLSessionActivityGoal.accessibilityLabelString.getter()
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9._object = 0xE000000000000000;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x800000020CB973C0;
    v3._countAndFlagsBits = 0xD000000000000021;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v9)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v7 = [v0 goalTypeIdentifier];

    return _HKWorkoutGoalType.accessibilityLabel.getter(v7);
  }
}

void _HKWorkoutGoalType.displayNameShort(formattingManager:)(void *a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = "ATION_SHORT_GOAL_TIME";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v3 = WorkoutUIBundle.super.isa;
        v21 = 0xE000000000000000;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0xD000000000000029;
LABEL_16:
        v16 = v2 | 0x8000000000000000;
LABEL_22:
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        v20 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v3, v19, *(&v21 - 1));
LABEL_23:

        return;
      }

LABEL_13:
      v2 = "_DISTANCE_AND_TIME";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v21 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD000000000000028;
      goto LABEL_16;
    }

    v17 = "WORKOUT_CONFIGURATION_SHORT_GOAL_OPEN";
LABEL_19:
    v18 = v17 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v21 = 0xE000000000000000;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v16 = v18 | 0x8000000000000000;
    v6 = 0xD000000000000025;
    goto LABEL_22;
  }

  if (a2 == 2)
  {
    v17 = "WORKOUT_CONFIGURATION_SHORT_GOAL_TIME";
    goto LABEL_19;
  }

  if (a2 != 3)
  {
    goto LABEL_13;
  }

  v8 = MEMORY[0x20F30BAD0](0xD000000000000027, 0x800000020CBA1F10);
  v9 = [a1 localizationKeyForEnergyBaseKey_];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v22._object = 0xE000000000000000;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v3, v15, v22);

    goto LABEL_23;
  }

  __break(1u);
}

void _HKWorkoutGoalType.goalTypeDisplayName(formattingManager:)(void *a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = "ATION_SHORT_GOAL_ENERGY";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v19 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD000000000000025;
      goto LABEL_19;
    }

    if (a2 == 1)
    {
      v2 = "WORKOUT_CONFIGURATION_GOAL_TIME";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = WorkoutUIBundle.super.isa;
      v19 = 0xE000000000000000;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD000000000000023;
LABEL_19:
      v16 = v2 | 0x8000000000000000;
LABEL_23:
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v18 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v3, v17, *(&v19 - 1));
LABEL_24:

      return;
    }

LABEL_13:
    v2 = "ATION_SHORT_GOAL_OPEN";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v19 = 0xE000000000000000;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0xD000000000000022;
    goto LABEL_19;
  }

  if (a2 == 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v19 = 0xE000000000000000;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v16 = 0x800000020CBA1FA0;
    v6 = 0xD00000000000001FLL;
    goto LABEL_23;
  }

  if (a2 != 3)
  {
    goto LABEL_13;
  }

  v8 = MEMORY[0x20F30BAD0](0xD000000000000021, 0x800000020CBA1FF0);
  v9 = [a1 localizationKeyForEnergyBaseKey_];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v20._object = 0xE000000000000000;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v3, v15, v20);

    goto LABEL_24;
  }

  __break(1u);
}

void _HKWorkoutGoalType.intervalDisplayNameShort(formattingManager:)(void *a1, uint64_t a2)
{
  if (a2)
  {

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(a1, a2);
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v7._object = 0xE000000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._object = 0x800000020CBA1E10;
    v5._countAndFlagsBits = 0xD00000000000002ELL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v7);
  }
}

void NLSessionActivityGoal.displayNameShort(formattingManager:)(void *a1)
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v9._object = 0xE000000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._object = 0x800000020CBA1E40;
    v5._countAndFlagsBits = 0xD000000000000032;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v9);
  }

  else
  {
    v7 = [v1 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(a1, v7);
  }
}

unint64_t AssetBundleReasonBridge.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetBundleReasonBridge and conformance AssetBundleReasonBridge()
{
  result = lazy protocol witness table cache variable for type AssetBundleReasonBridge and conformance AssetBundleReasonBridge;
  if (!lazy protocol witness table cache variable for type AssetBundleReasonBridge and conformance AssetBundleReasonBridge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetBundleReasonBridge and conformance AssetBundleReasonBridge);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AssetBundleReasonBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AssetBundleReasonBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance AssetBundleReasonBridge@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

UIFont __swiftcall UIFont.centeredColonsVersion()()
{
  v1 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v3 = *MEMORY[0x277D76908];
  *(inited + 32) = *MEMORY[0x277D76908];
  v4 = *MEMORY[0x277D76900];
  *(inited + 40) = 35;
  *(inited + 48) = v4;
  *(inited + 56) = 6;
  v5 = v3;
  v6 = v4;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_SitMd);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_20CB5DA70;
  v9 = *MEMORY[0x277D74338];
  *(v8 + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CB5DA70;
  *(v10 + 32) = v7;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  *(v8 + 40) = v10;
  v11 = v9;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v8);
  swift_setDeallocating();
  outlined destroy of (UIFontDescriptorAttributeName, Any)(v8 + 32);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v1 fontDescriptorByAddingAttributes_];

  v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  return v14;
}

uint64_t outlined destroy of (UIFontDescriptorAttributeName, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrainingLoadTodayViewBand.foregroundStyle(isDisabled:widgetRenderingMode:)(char a1, uint64_t a2, int a3)
{
  v45 = a3;
  Band = type metadata accessor for TrainingLoadBand();
  v46 = *(Band - 8);
  v47 = Band;
  MEMORY[0x28223BE20](Band);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Color.RGBColorSpace();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for WidgetRenderingMode();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  if (a1)
  {
    static Color.white.getter();
    v21 = Color.opacity(_:)();

    v48 = v21;
  }

  else
  {
    outlined init with copy of WidgetRenderingMode?(a2, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      outlined destroy of WidgetRenderingMode?(v13);
      v22 = 0.4;
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      static WidgetRenderingMode.fullColor.getter();
      lazy protocol witness table accessor for type WidgetRenderingMode and conformance WidgetRenderingMode();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v15 + 8);
      v24(v17, v14);
      v24(v20, v14);
      if (v23)
      {
        v22 = 0.4;
      }

      else
      {
        v22 = 0.25;
      }
    }

    if (v45 <= 2u)
    {
      if (v45 < 2u)
      {
        (*(v44 + 104))(v10, *MEMORY[0x277CE0EE0], v8);
        v33 = Color.init(_:red:green:blue:opacity:)();
        v35 = v46;
        v34 = v47;
        (*(v46 + 104))(v7, *MEMORY[0x277D0FE90], v47);
        v36 = TrainingLoadBand.background.getter();
        (*(v35 + 8))(v7, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_20CB5DA80;
        *(v37 + 32) = v33;
        *(v37 + 40) = v36;

        static UnitPoint.top.getter();
        static UnitPoint.bottom.getter();
        MEMORY[0x20F30B340](v37);
        LinearGradient.init(gradient:startPoint:endPoint:)();
        v38 = v22;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        v51 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_OpacityShapeStyleVyAA14LinearGradientVGMd);
        lazy protocol witness table accessor for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>();
        v39 = AnyShapeStyle.init<A>(_:)();

        return v39;
      }

      v40 = MEMORY[0x277D0FE80];
    }

    else
    {
      if (v45 - 5 < 2)
      {
        v26 = v46;
        v25 = v47;
        (*(v46 + 104))(v7, *MEMORY[0x277D0FE98], v47);
        v27 = TrainingLoadBand.background.getter();
        (*(v26 + 8))(v7, v25);
        (*(v44 + 104))(v10, *MEMORY[0x277CE0EE0], v8);
        v28 = Color.init(_:red:green:blue:opacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_20CB5DA80;
        *(v29 + 32) = v27;
        *(v29 + 40) = v28;

        static UnitPoint.top.getter();
        static UnitPoint.bottom.getter();
        MEMORY[0x20F30B340](v29);
        LinearGradient.init(gradient:startPoint:endPoint:)();
        v30 = v22;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        v51 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_OpacityShapeStyleVyAA14LinearGradientVGMd);
        lazy protocol witness table accessor for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>();
        v31 = AnyShapeStyle.init<A>(_:)();

        return v31;
      }

      if (v45 == 3)
      {
        v40 = MEMORY[0x277D0FE78];
      }

      else
      {
        v40 = MEMORY[0x277D0FE88];
      }
    }

    v42 = v46;
    v41 = v47;
    (*(v46 + 104))(v7, *v40, v47);
    TrainingLoadBand.background.getter();
    (*(v42 + 8))(v7, v41);
    v43 = Color.opacity(_:)();

    v48 = v43;
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t outlined init with copy of WidgetRenderingMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetRenderingMode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_OpacityShapeStyleVyAA14LinearGradientVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<LinearGradient> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetRenderingMode and conformance WidgetRenderingMode()
{
  result = lazy protocol witness table cache variable for type WidgetRenderingMode and conformance WidgetRenderingMode;
  if (!lazy protocol witness table cache variable for type WidgetRenderingMode and conformance WidgetRenderingMode)
  {
    type metadata accessor for WidgetRenderingMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetRenderingMode and conformance WidgetRenderingMode);
  }

  return result;
}

uint64_t ConfigurationNavigationModel.isPresentingCreateWorkoutConfiguration.setter()
{
  return ConfigurationNavigationModel.isPresentingCreateWorkoutConfiguration.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.startWorkout(workoutConfiguration:startSource:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

  if (v7)
  {
    a2 = 8;
  }

  v8 = *(v3 + 16);
  dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

  v9 = *(v3 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

  v9(a1, a2);
}

uint64_t static ConfigurationNavigationModel.canonical()()
{
  v0 = objc_allocWithZone(type metadata accessor for QuickWorkoutSwitchProvider());
  v1 = QuickWorkoutSwitchProvider.init(quickWorkoutSwitch:)();
  v2 = [objc_allocWithZone(type metadata accessor for PerformanceTestModel()) init];
  swift_allocObject();
  v3 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(closure #1 in static ConfigurationNavigationModel.canonical(), 0, closure #2 in static ConfigurationNavigationModel.canonical(), 0, v1, v2);

  return v3;
}

BOOL ConfigurationNavigationModel.inIntervalWorkoutSetupFlow.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1 != 2;
}

uint64_t ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  if (a2)
  {

    v5 = WorkoutBlock.steps.modify();
    v7 = v6;

    MEMORY[0x20F30BCF0](v8);
    if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5(v20, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = 0;

    static Published.subscript.setter();
LABEL_12:

    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = 2;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = 2;

    return static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20[0] != 2)
  {
    v9 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
    swift_beginAccess();
    v10 = *(v2 + v9);
    if (v10)
    {
      v11 = v10;
      UUID.init()();
      type metadata accessor for WorkoutBlock();
      swift_allocObject();
      WorkoutBlock.init(_:)();
      WorkoutBlock.repetitions.setter();
      v12 = WorkoutBlock.steps.modify();
      v14 = v13;

      MEMORY[0x20F30BCF0](v15);
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12(v20, 0);

      v16 = IntervalWorkout.stepBlocks.modify();
      v18 = v17;
      MEMORY[0x20F30BCF0](v16);
      if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16(v20, 0);

      goto LABEL_12;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ConfigurationNavigationModel.didChooseStepsForRepeatForIntervalWorkout(_:repeatCount:)(Swift::OpaquePointer _, Swift::Int repeatCount)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7)
  {
    v8 = v7;
    IntervalWorkout.repeatSteps(_:repeatCount:)(_, repeatCount);
    v9 = *(v3 + v6);
    *(v3 + v6) = 0;

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t ConfigurationNavigationModel.blockPresentation.getter()
{
  return ConfigurationNavigationModel.blockPresentation.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t ConfigurationNavigationModel.tabViewSelectionItem.getter()
{
  return ConfigurationNavigationModel.tabViewSelectionItem.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t ConfigurationNavigationModel.browsingNavigationPath.setter(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.browsingNavigationPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.browsingNavigationPath.modify;
}

Swift::Void __swiftcall ConfigurationNavigationModel.dismissBlockPresentation()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration.getter()
{
  return ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel()
{
  return key path setter for ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.scrollPhase.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int ConfigurationNavigationModel.NewBlockType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConfigurationNavigationModel.NewBlockType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConfigurationNavigationModel.NewBlockType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

id ConfigurationNavigationModel.quickWorkoutSwitchProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void ConfigurationNavigationModel.quickWorkoutSwitchProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*ConfigurationNavigationModel.isPresentingCreateWorkoutConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.isPresentingCreateWorkoutConfiguration.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingCreateWorkoutConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.modify;
}

uint64_t key path getter for ConfigurationNavigationModel.blockPresentation : ConfigurationNavigationModel@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for ConfigurationNavigationModel.blockPresentation : ConfigurationNavigationModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ConfigurationNavigationModel.blockPresentation : ConfigurationNavigationModel()
{
  return key path setter for ConfigurationNavigationModel.blockPresentation : ConfigurationNavigationModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.blockPresentation.setter()
{
  return ConfigurationNavigationModel.blockPresentation.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ConfigurationNavigationModel.blockPresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.blockPresentation.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$blockPresentation : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$blockPresentation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$blockPresentation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__blockPresentation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$blockPresentation.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$browsingNavigationPath : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI14NavigationPathV_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$browsingNavigationPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI14NavigationPathV_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$browsingNavigationPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI14NavigationPathV_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__browsingNavigationPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$browsingNavigationPath.modify;
}

uint64_t (*ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$isPresentingEditPacerWorkoutConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$isPresentingEditPacerWorkoutConfiguration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingEditPacerWorkoutConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$isPresentingEditPacerWorkoutConfiguration.modify;
}

void *ConfigurationNavigationModel.intervalWorkout.getter()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConfigurationNavigationModel.intervalWorkout.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*ConfigurationNavigationModel.newBlockType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.newBlockType.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$newBlockType : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$newBlockType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$newBlockType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__newBlockType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$newBlockType.modify;
}

uint64_t (*ConfigurationNavigationModel.warmupConfigurationIsActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.warmupConfigurationIsActive.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$warmupConfigurationIsActive : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$warmupConfigurationIsActive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$warmupConfigurationIsActive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__warmupConfigurationIsActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$warmupConfigurationIsActive.modify;
}

uint64_t (*ConfigurationNavigationModel.cooldownConfigurationIsActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.cooldownConfigurationIsActive.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$cooldownConfigurationIsActive : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$cooldownConfigurationIsActive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$cooldownConfigurationIsActive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__cooldownConfigurationIsActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$cooldownConfigurationIsActive.modify;
}

uint64_t key path getter for ConfigurationNavigationModel.tabViewSelectionItem : ConfigurationNavigationModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for ConfigurationNavigationModel.tabViewSelectionItem : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  outlined init with copy of AnyActivityPickerItem?(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of AnyActivityPickerItem?(v7, v4);

  static Published.subscript.setter();
  return outlined destroy of AnyActivityPickerItem?(v7);
}

uint64_t ConfigurationNavigationModel.tabViewSelectionItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of AnyActivityPickerItem?(a1, v4);

  static Published.subscript.setter();
  return outlined destroy of AnyActivityPickerItem?(a1);
}

uint64_t (*ConfigurationNavigationModel.tabViewSelectionItem.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.tabViewSelectionItem.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$tabViewSelectionItem : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore21AnyActivityPickerItemVSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$tabViewSelectionItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore21AnyActivityPickerItemVSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$tabViewSelectionItem.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore21AnyActivityPickerItemVSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__tabViewSelectionItem;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$tabViewSelectionItem.modify;
}

uint64_t key path getter for ConfigurationNavigationModel.scrollPhase : ConfigurationNavigationModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ConfigurationNavigationModel.scrollPhase : ConfigurationNavigationModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.scrollPhase.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ConfigurationNavigationModel.scrollPhase.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.scrollPhase.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$scrollPhase : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI11ScrollPhaseO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$scrollPhase.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI11ScrollPhaseO_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$scrollPhase.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy7SwiftUI11ScrollPhaseO_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__scrollPhase;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$scrollPhase.modify;
}

uint64_t (*ConfigurationNavigationModel.showToolbarItems.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.showToolbarItems.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$showToolbarItems : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$showToolbarItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$showToolbarItems.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__showToolbarItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$showToolbarItems.modify;
}

uint64_t (*ConfigurationNavigationModel.firstAppLaunch.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.firstAppLaunch.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$firstAppLaunch : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$firstAppLaunch.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$firstAppLaunch.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__firstAppLaunch;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$firstAppLaunch.modify;
}

uint64_t (*ConfigurationNavigationModel.hasScrolled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConfigurationNavigationModel.hasScrolled.modify;
}

void ConfigurationNavigationModel.browsingNavigationPath.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration : ConfigurationNavigationModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ConfigurationNavigationModel.$hasScrolled : ConfigurationNavigationModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ConfigurationNavigationModel.$hasScrolled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$hasScrolled.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__hasScrolled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$hasScrolled.modify;
}

void ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t key path getter for ConfigurationNavigationModel.startGuidedWorkout : ConfigurationNavigationModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double) -> ();
  a2[1] = v6;
}

uint64_t key path setter for ConfigurationNavigationModel.startGuidedWorkout : ConfigurationNavigationModel(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed Double) -> (@out ());
  v6[1] = v5;
}

uint64_t ConfigurationNavigationModel.startGuidedWorkout.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ConfigurationNavigationModel.startGuidedWorkout.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id ConfigurationNavigationModel.performanceTestModel.getter()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_performanceTestModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ConfigurationNavigationModel.performanceTestModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_performanceTestModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConfigurationNavigationModel.__allocating_init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  swift_allocObject();
  v12 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t ConfigurationNavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingCreateWorkoutConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__blockPresentation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__browsingNavigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMd);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingEditPacerWorkoutConfiguration, v2);

  v8 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__newBlockType;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__warmupConfigurationIsActive, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__cooldownConfigurationIsActive, v2);
  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__tabViewSelectionItem;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__scrollPhase;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__showToolbarItems, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__firstAppLaunch, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__hasScrolled, v2);

  return v0;
}

uint64_t ConfigurationNavigationModel.__deallocating_deinit()
{
  ConfigurationNavigationModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ConfigurationNavigationModel@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall ConfigurationNavigationModel.resetNavigationPath()()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = v0;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v1;
    v13 = v12;
    v26[0] = v12;
    *v11 = 136315138;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v26);
    v23 = v4;
    v17 = v16;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_20C66F000, v8, v9, "[%s]: popping to root browsing navigation path", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v18 = v13;
    v1 = v24;
    MEMORY[0x20F30E080](v18, -1, -1);
    v19 = v11;
    v0 = v25;
    MEMORY[0x20F30E080](v19, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = NavigationPath.count.getter();
  (*(v1 + 8))(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = static Published.subscript.modify();
  NavigationPath.removeLast(_:)(v20);
  v21(v26, 0);
}

uint64_t closure #1 in static ConfigurationNavigationModel.canonical()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20CB5DA70;
  _StringGuts.grow(_:)(48);

  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x20F30BC00](v4, v6);

  MEMORY[0x20F30BC00](0x537472617473202CLL, 0xEE003D656372756FLL);
  v7 = NLWorkoutStartSourceDescription();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v9 = Optional.description.getter();
  v11 = v10;

  MEMORY[0x20F30BC00](v9, v11);

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0xD00000000000001ELL;
  *(v2 + 40) = 0x800000020CBA22C0;
  print(_:separator:terminator:)();
}

uint64_t closure #2 in static ConfigurationNavigationModel.canonical()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB5DA70;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x800000020CBA2280;
  print(_:separator:terminator:)();
}

void protocol witness for static Canonical.canonical() in conformance ConfigurationNavigationModel(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for QuickWorkoutSwitchProvider());
  v3 = QuickWorkoutSwitchProvider.init(quickWorkoutSwitch:)();
  v4 = [objc_allocWithZone(type metadata accessor for PerformanceTestModel()) init];
  swift_allocObject();
  v5 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(closure #1 in static ConfigurationNavigationModel.canonical(), 0, closure #2 in static ConfigurationNavigationModel.canonical(), 0, v3, v4);

  *a1 = v5;
}

uint64_t outlined init with copy of AnyActivityPickerItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyActivityPickerItem?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType()
{
  result = lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType;
  if (!lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType);
  }

  return result;
}

void _s7Combine9PublishedVySbGMaTm_1(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ConfigurationNavigationModel.NewBlockType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationNavigationModel.NewBlockType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed Double) -> (@out ())(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

id TargetZone.ZoneType.lowRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v11 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v11 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.aboveZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v11 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v11 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.highRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v11 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v11 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.belowZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v11 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v11 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.withinZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v11 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v11 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void QuickStartButton.init(workoutConfiguration:startSource:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  State.init(wrappedValue:)();
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v10 = 19;
  *a3 = v6;
  *(a3 + 8) = v8;
  if ((v9 & 1) == 0)
  {
    v10 = a2;
  }

  *(a3 + 16) = a1;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
}

uint64_t QuickStartButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-v3];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMd);
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32[-v6];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd);
  MEMORY[0x28223BE20](v34);
  v9 = &v32[-v8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v36);
  v11 = &v32[-v10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd);
  MEMORY[0x28223BE20](v37);
  v13 = &v32[-v12];
  v14 = v1[1];
  v41 = *v1;
  v42 = v14;
  v43 = v1[2];
  v15 = swift_allocObject();
  v16 = v1[1];
  v15[1] = *v1;
  v15[2] = v16;
  v15[3] = v1[2];
  outlined init with copy of QuickStartButton(&v41, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v17 = static Color.black.getter();
  v18 = v42;
  if (v42)
  {
    v19 = v42;
    WorkoutConfiguration.displayColor.getter();
    v20 = Color.init(uiColor:)();
  }

  else
  {
    v20 = static Color.secondary.getter();
  }

  v33 = v18 == 0;
  (*(v5 + 32))(v9, v7, v35);
  v21 = &v9[*(v34 + 36)];
  *v21 = v17;
  v21[1] = v20;
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_11(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v9, v11, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd);
  v25 = &v11[*(v36 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v33;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v11, v13, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd);
  v28 = &v13[*(v37 + 36)];
  *v28 = v26;
  v28[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_18;
  v28[2] = v27;
  v39 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v29 = swift_allocObject();
  v30 = v42;
  v29[1] = v41;
  v29[2] = v30;
  v29[3] = v43;
  outlined init with copy of QuickStartButton(&v41, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22LocationDisambiguationVSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return _s7SwiftUI4FontV6DesignOSgWOhTm_11(v13, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd);
}

void closure #1 in QuickStartButton.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = a1[2];
  if (v5)
  {
    v6 = v5;
    if (WorkoutConfiguration.requiresDisambiguation.getter())
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        v31 = *(a1 + 2);
        v29 = *(a1 + 2);
        v32 = *(&v31 + 1);
        outlined init with copy of WorkoutConfiguration?(&v32, &v28, &_s7SwiftUI11AnyLocationCySbGSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
        State.wrappedValue.getter();
        v28 = v31;
        v27[15] = (v30 & 1) == 0;
        State.wrappedValue.setter();
        _s7SwiftUI4FontV6DesignOSgWOhTm_11(&v31, &_s7SwiftUI5StateVySbGMd);
        goto LABEL_18;
      }

      *&v31 = v6;
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = v6;
      dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
      _s7SwiftUI4FontV6DesignOSgWOhTm_11(v4, &_s10Foundation4UUIDVSgMd);
      v9 = v29;
      if (!v29)
      {

        goto LABEL_18;
      }

      v10 = *a1;
      if (*a1)
      {
        v11 = a1[3];
        swift_beginAccess();
        v12 = *(v10 + 16);

        v13 = v9;
        v14 = v12;
        LOBYTE(v12) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

        if (v12)
        {
          v15 = 8;
        }

        else
        {
          v15 = v11;
        }

        v16 = *(v10 + 16);
        dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

        v17 = *(v10 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

        v17(v13, v15);

LABEL_15:

LABEL_18:
        v26 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
        [v26 impactOccurred];

        return;
      }
    }

    else
    {
      v18 = *a1;
      if (*a1)
      {
        v19 = a1[3];
        swift_beginAccess();
        v20 = *(v18 + 16);

        v21 = v20;
        v22 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

        if (v22)
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

        v25(v6, v23);

        goto LABEL_15;
      }
    }

    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in QuickStartButton.body.getter()
{
  Image.init(systemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x58415F5452415453;
  v1._object = 0xEE00454C5449545FLL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA5ImageVGMd);
  lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
}

uint64_t closure #3 in QuickStartButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationDisambiguation();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22LocationDisambiguationVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10 - 8];
  v12 = *(a1 + 16);
  v20 = v12;
  if (v12)
  {
    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    *(v13 + 1) = *a1;
    *(v13 + 2) = v14;
    *(v13 + 3) = *(a1 + 32);
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    v15 = v4[6];
    *(v7 + v15) = 0;
    v16 = (v7 + v4[7]);
    *(v7 + v4[5]) = v12;
    *(v7 + v15) = 0;
    *v16 = partial apply for closure #1 in closure #3 in QuickStartButton.body.getter;
    v16[1] = v13;
    outlined init with take of LocationDisambiguation(v7, v11);
    (*(v5 + 56))(v11, 0, 1, v4);
    outlined init with copy of QuickStartButton(a1, v19);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4, v9);
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v11, a2, &_s9WorkoutUI22LocationDisambiguationVSgMd);
  return outlined init with copy of WorkoutConfiguration?(&v20, v19, &_s11WorkoutCore0A13ConfigurationCSgMd);
}

uint64_t closure #1 in closure #3 in QuickStartButton.body.getter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[3];
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
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA5ImageVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI22LocationDisambiguationVSgMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?);
  }

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for QuickStartButton(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuickStartButton(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_77()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of WorkoutConfiguration?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_11(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PerformanceTestModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PerformanceTestModel.startWorkoutActivity.getter()
{
  return PerformanceTestModel.startWorkoutActivity.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PerformanceTestModel.startWorkoutActivity.setter()
{
  return PerformanceTestModel.startWorkoutActivity.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path getter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel@<X0>(void *a1@<X8>)
{
  return key path getter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(void **a1, void **a2)
{
  return key path setter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t (*PerformanceTestModel.startWorkoutActivity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PerformanceTestModel.startWorkoutActivity.modify;
}

uint64_t key path setter for PerformanceTestModel.$startWorkoutActivity : PerformanceTestModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PerformanceTestModel.$startWorkoutActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PerformanceTestModel.$startWorkoutActivity.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startWorkoutActivity.modify;
}

uint64_t (*PerformanceTestModel.startWorkoutAtRow.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PerformanceTestModel.startWorkoutAtRow.modify;
}

uint64_t key path setter for PerformanceTestModel.$startLastWorkout : PerformanceTestModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t PerformanceTestModel.$startLastWorkout.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

{
  return PerformanceTestModel.$startLastWorkout.setter(a1);
}

uint64_t (*PerformanceTestModel.$startWorkoutAtRow.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutAtRow;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startWorkoutAtRow.modify;
}

id @objc PerformanceTestModel.startWorkoutActivity.getter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t @objc PerformanceTestModel.startWorkoutActivity.setter(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t (*PerformanceTestModel.startLastWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PerformanceTestModel.startLastWorkout.modify;
}

void PerformanceTestModel.startWorkoutActivity.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for PerformanceTestModel.$startWorkoutActivity : PerformanceTestModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PerformanceTestModel.$startWorkoutActivity.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t (*PerformanceTestModel.$startLastWorkout.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___WOPerformanceTestModel__startLastWorkout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startLastWorkout.modify;
}

void PerformanceTestModel.$startWorkoutActivity.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id PerformanceTestModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceTestModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PerformanceTestModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PerformanceTestModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *MetricNavigationTracker.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized MetricNavigationTracker.init(eventHub:)(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

char *MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized MetricNavigationTracker.init(eventHub:)(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t closure #1 in MetricNavigationTracker.init(eventHub:)()
{
  v0 = type metadata accessor for MetricPage();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MetricPageChangeOccurred.page.getter();
    MetricNavigationTracker.handleMetricPageChangeOccurred(_:)(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t closure #2 in MetricNavigationTracker.init(eventHub:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) = 1;
  }

  return result;
}

uint64_t MetricNavigationTracker.handleMetricPageChangeOccurred(_:)(uint64_t a1)
{
  v76 = a1;
  v2 = type metadata accessor for MetricClickStreamOccurred();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v54 - v14;
  v61 = type metadata accessor for MetricClickStreamType();
  v15 = *(v61 - 1);
  MEMORY[0x28223BE20](v61);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MetricClickStream();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v62 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v26 = type metadata accessor for MetricNavigationDirection();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed;
  swift_beginAccess();
  v67 = v30;
  outlined init with copy of MetricPage?(v30, v25);
  v31 = type metadata accessor for MetricPage();
  v32 = *(v31 - 8);
  v33 = v31;
  v34 = (*(v32 + 48))(v25, 1);
  outlined destroy of MetricPage?(v25);
  if (v34 == 1)
  {
    v35 = MEMORY[0x277D52E00];
  }

  else if (*(v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) = 0;
    v35 = MEMORY[0x277D52E10];
  }

  else
  {
    v35 = MEMORY[0x277D52E08];
  }

  v36 = *v35;
  v60 = v27;
  v37 = *(v27 + 104);
  v58 = v29;
  v59 = v26;
  v37(v29, v36, v26);
  (*(v27 + 16))(v17, v29, v26);
  (*(v15 + 104))(v17, *MEMORY[0x277D52118], v61);
  v38 = *(v32 + 16);
  v57 = v32 + 16;
  v61 = v38;
  v39 = v62;
  v55 = v33;
  v38(v62, v76, v33);
  v56 = *(v32 + 56);
  v56(v39, 0, 1, v33);
  v40 = type metadata accessor for MetricBadgingCounts();
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  v41 = type metadata accessor for MetricGroupActivity();
  (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
  v42 = v69;
  static MetricEnvironment.current()();
  v43 = type metadata accessor for MetricEnvironment();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd);
  (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
  v45 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v45 - 8) + 56))(v72, 1, 1, v45);
  v46 = v64;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v47 = v68;
  v48 = v70;
  (*(v68 + 16))(v65, v46, v70);
  v49 = v73;
  MetricClickStreamOccurred.init(_:)();
  swift_getObjectType();
  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0]);
  v50 = v74;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v75 + 8))(v49, v50);
  (*(v47 + 8))(v46, v48);
  (*(v60 + 8))(v58, v59);
  v51 = v55;
  v61(v39, v76, v55);
  v56(v39, 0, 1, v51);
  v52 = v67;
  swift_beginAccess();
  outlined assign with take of MetricPage?(v39, v52);
  return swift_endAccess();
}

uint64_t MetricNavigationTracker.deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of MetricPage?(v0 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed);
  return v0;
}

uint64_t MetricNavigationTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of MetricPage?(v0 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed);

  return swift_deallocClassInstance();
}

char *specialized MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed;
  v7 = type metadata accessor for MetricPage();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v3 + 4) = SubscriptionToken.init(eventHub:)();
  v3[OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation] = 0;
  swift_getObjectType();
  type metadata accessor for MetricPageChangeOccurred();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricPageChangeOccurred and conformance MetricPageChangeOccurred, MEMORY[0x277D54270]);

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v9);
  type metadata accessor for MetricBackNavigationOccurred();
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricBackNavigationOccurred and conformance MetricBackNavigationOccurred, MEMORY[0x277D54388]);
  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v3;
}

uint64_t outlined destroy of MetricPage?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MetricNavigationTracker()
{
  result = type metadata singleton initialization cache for MetricNavigationTracker;
  if (!type metadata singleton initialization cache for MetricNavigationTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MetricNavigationTracker()
{
  type metadata accessor for MetricPage?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined init with copy of MetricPage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MetricPage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PreviewStepMetricView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewStepMetricView(uint64_t result, int a2, int a3)
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

uint64_t PreviewStepMetricView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  closure #1 in PreviewStepMetricView.body.getter(a1);
  v7 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMd) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v9 = *MEMORY[0x277CE1058];
  v10 = type metadata accessor for Image.Scale();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMd) + 36));
  *v12 = KeyPath;
  v12[1] = a2;
  v13 = one-time initialization token for previewWidth;

  if (v13 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for stepViewMaxHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMd) + 36));
  *v14 = v27;
  v14[1] = v28;
  v14[2] = v29;
  v15 = Color.opacity(_:)();
  v16 = static Edge.Set.all.getter();
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMd) + 36);
  *v17 = v15;
  *(v17 + 8) = v16;
  v18 = swift_getKeyPath();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMd) + 36));
  *v19 = v18;
  v19[1] = a3;
  v20 = one-time initialization token for cornerSize;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static IntervalPlatterConstants.cornerSize;
  v22 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
  v23 = *(type metadata accessor for RoundedRectangle() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = type metadata accessor for RoundedCornerStyle();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  v22[1] = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
  *(v22 + *(result + 36)) = 256;
  return result;
}

uint64_t closure #1 in PreviewStepMetricView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVG_GMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13];
  if (a1)
  {

    WorkoutStep.stepType.getter();
    (*(v3 + 16))(v5, v8, v2);
    v15 = (*(v3 + 88))(v5, v2);
    if (v15 == *MEMORY[0x277D7E710] || v15 == *MEMORY[0x277D7E708] || v15 == *MEMORY[0x277D7E718] || v15 == *MEMORY[0x277D7E720])
    {
      (*(v3 + 8))(v8, v2);
      v17 = Image.init(_internalSystemName:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CB5DA80;
      v19 = static Edge.Set.leading.getter();
      *(inited + 32) = v19;
      v20 = static Edge.Set.trailing.getter();
      *(inited + 33) = v20;
      v21 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v19)
      {
        v21 = Edge.Set.init(rawValue:)();
      }

      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v20)
      {
        v21 = Edge.Set.init(rawValue:)();
      }

      EdgeInsets.init(_all:)();
      *v11 = v17;
      v11[8] = v21;
      *(v11 + 2) = v22;
      *(v11 + 3) = v23;
      *(v11 + 4) = v24;
      *(v11 + 5) = v25;
      v11[48] = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v27 = Image.init(systemName:)();
    View.accessibilityHidden(_:)();

    outlined init with copy of ModifiedContent<Image, AccessibilityAttachmentModifier>(v14, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<Image, AccessibilityAttachmentModifier>(v14);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Image, AccessibilityAttachmentModifier>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAEyAgA31AccessibilityAttachmentModifierVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

id AssetBundleBridge.__allocating_init(assetBundle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMAssetBundle_assetBundle;
  v5 = type metadata accessor for AssetBundle();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

unint64_t static AssetBundleBridge.bundleReasonBridge(for:)(uint64_t a1, char a2)
{
  if (a2 == -1 || (a2 & 1) == 0)
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

id @objc AssetBundleBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

uint64_t AssetBundleBridge.loadStatus.getter()
{
  v0 = AssetBundle.loadStatus.getter();
  if (v1)
  {
    return qword_20CB86710[v0];
  }

  else
  {
    return 6;
  }
}

unint64_t AssetBundleBridge.reason.getter()
{
  AssetBundle.reason.getter();
  if ((v0 & 1) == 0)
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

id AssetBundleBridge.init(assetBundle:)(uint64_t a1)
{
  v3 = OBJC_IVAR___SMAssetBundle_assetBundle;
  v4 = type metadata accessor for AssetBundle();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AssetBundleBridge();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for AssetBundleBridge()
{
  result = type metadata singleton initialization cache for AssetBundleBridge;
  if (!type metadata singleton initialization cache for AssetBundleBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AssetBundleBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetBundleBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetBundleBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for AssetBundleBridge()
{
  result = type metadata accessor for AssetBundle();
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

char *GuidedWorkoutBackgroundView.init(cornerRadius:)(double a1)
{
  v3 = OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = &v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer] = 0;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView] = 0;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius] = a1;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for GuidedWorkoutBackgroundView();
  v5 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView;
  v7 = *&v5[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  v8 = v5;
  [v7 setContentMode_];
  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = *&v5[v6];
  v10 = v8;
  [v10 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CB61A30;
  v13 = [*&v5[v6] leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [*&v5[v6] trailingAnchor];
  v17 = [v10 trailingAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [*&v5[v6] topAnchor];
  v20 = [v10 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [*&v5[v6] bottomAnchor];
  v23 = [v10 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v12 + 56) = v24;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints_];

  return v10;
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.layoutSubviews()()
{
  [v0 bounds];
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 0.0;
  v29.size.height = 0.0;
  if (!CGRectEqualToRect(v27, v29))
  {
    v1 = &v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
    v2 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
    v3 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 8];
    v4 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 16];
    v5 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 24];
    [v0 bounds];
    v30.origin.x = v6;
    v30.origin.y = v7;
    v30.size.width = v8;
    v30.size.height = v9;
    v28.origin.x = v2;
    v28.origin.y = v3;
    v28.size.width = v4;
    v28.size.height = v5;
    if (!CGRectEqualToRect(v28, v30))
    {
      [v0 bounds];
      *v1 = v10;
      *(v1 + 1) = v11;
      *(v1 + 2) = v12;
      *(v1 + 3) = v13;
      v14 = objc_opt_self();
      [v14 begin];
      [v14 setDisableActions_];
      v15 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer];
      if (v15)
      {
        v16 = v15;
        [v0 bounds];
        [v16 setFrame_];
      }

      v17 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
      v18 = [v17 image];
      if (!v18 || (v19 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius], [v0 bounds], (v24 = UIImage.withRoundedCorners(_:in:)(v19, v20, v21, v22, v23)) == 0))
      {
        v25 = v18;
        v24 = v18;
      }

      [v17 setImage_];

      [v14 commit];
    }
  }
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.update(image:with:)(UIImage_optional image, NSNumber_optional with)
{
  v3 = v2;
  v4 = *&image.is_nil;
  isa = image.value.super.isa;
  v6 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  if (!image.value.super.isa || (v7 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius], [v3 bounds], (v12 = UIImage.withRoundedCorners(_:in:)(v7, v8, v9, v10, v11)) == 0))
  {
    v12 = isa;
  }

  v13 = v12;
  [v6 setImage_];

  if (!v4 || (v14 = specialized CatalogMediaTypeBridge.init(rawValue:)([v4 integerValue]), (v15 & 1) != 0))
  {
    if (isa)
    {
LABEL_7:

      GuidedWorkoutBackgroundView.applyDefaultStyle()();
      return;
    }

    goto LABEL_16;
  }

  if (!isa)
  {
LABEL_16:
    v16 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer];
    if (v16)
    {
      [v16 setHidden_];
    }

    v17 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView];
    if (v17)
    {

      [v17 setHidden_];
    }

    return;
  }

  if ((v14 - 3) < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    if (v14 != 1)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  GuidedWorkoutBackgroundView.applyVignettedStyle()();
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.update(with:)(UIUserInterfaceActiveAppearance with)
{
  v2 = *(v1 + OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView);
  if (v2)
  {
    v4 = v2;
    VignetteView.update(with:)(with);
  }
}

id GuidedWorkoutBackgroundView.applyDefaultStyle()(uint64_t *a1, uint64_t (*a2)(void), void *a3)
{
  v5 = *a1;
  v6 = *(v3 + *a1);
  if (v6)
  {
    v7 = *(v3 + *a1);
    v8 = v7;
  }

  else
  {
    v8 = a2();
    v7 = 0;
    v6 = *(v3 + v5);
  }

  *(v3 + v5) = v8;
  v9 = v8;
  v10 = v7;

  [v9 setHidden_];
  result = *(v3 + *a3);
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id GuidedWorkoutBackgroundView.makeGradientLayer()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = [v0 traitCollection];
  [v3 activeAppearance];

  v4 = specialized static UIColor.drewPlatterGradientColors(activeAppearance:)();
  specialized _arrayForceCast<A, B>(_:)(v4);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CB761F0;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSNumber);
  *(v6 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v6 + 40) = NSNumber.init(floatLiteral:)(0.45);
  *(v6 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations_];

  [v2 setStartPoint_];
  [v2 setEndPoint_];
  v8 = *MEMORY[0x277CDA5D8];
  v9 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v10 = v2;
  v11 = [v9 initWithType_];
  [v10 setCompositingFilter_];

  v12 = [v1 layer];
  [v12 addSublayer_];

  return v10;
}

id GuidedWorkoutBackgroundView.makeVignetteView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius];
  v3 = objc_allocWithZone(type metadata accessor for VignetteView());
  v4 = VignetteView.init(cornerRadius:)(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CB61A30;
  v7 = [v4 leadingAnchor];
  v8 = *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = [v4 topAnchor];
  v15 = [v8 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 48) = v16;
  v17 = [v4 bottomAnchor];

  v18 = [v8 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v6 + 56) = v19;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints_];

  return v4;
}

id GuidedWorkoutBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GuidedWorkoutBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NSLayoutConstraint(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for PacePickerViewPhone(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PacePickerViewPhone(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in PacePickerViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v99 = a5;
  v84 = type metadata accessor for WheelPickerStyle();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v77 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  MEMORY[0x28223BE20](v79);
  v78 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v98 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v77 - v15;
  v16 = type metadata accessor for BorderedButtonStyle();
  v17 = *(v16 - 8);
  v88 = v16;
  v89 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0G0VyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedgE0VQo_Md);
  v24 = *(v23 - 8);
  v90 = v23;
  v91 = v24;
  MEMORY[0x28223BE20](v23);
  v85 = &v77 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedlJ0VQo__Qo_Md);
  v27 = *(v26 - 8);
  v92 = v26;
  v93 = v27;
  MEMORY[0x28223BE20](v26);
  v87 = &v77 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo_Md);
  v96 = *(v29 - 8);
  v97 = v29;
  MEMORY[0x28223BE20](v29);
  v95 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v100 = &v77 - v32;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd) + 44)];
  v34 = a3;
  v86 = a3;
  closure #1 in closure #1 in PacePickerViewPhone.body.getter(a1, a2, a3, a4, v33);
  BorderedButtonStyle.init()();
  v35 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v36 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v37 = v20;
  v38 = v88;
  View.buttonStyle<A>(_:)();
  (*(v89 + 8))(v19, v38);
  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v22, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = a2;
  *(v39 + 32) = v34;
  *(v39 + 40) = a4;
  v40 = a4;

  v103 = v37;
  v104 = v38;
  v105 = v35;
  v106 = v36;
  v41 = a1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v87;
  v44 = v90;
  v45 = v85;
  View.onTapGesture(count:perform:)();

  v46 = v44;
  (*(v91 + 8))(v45, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v101 = v103;
  v47 = swift_allocObject();
  v91 = v41;
  *(v47 + 16) = v41;
  *(v47 + 24) = a2;
  LOBYTE(v44) = v86;
  *(v47 + 32) = v86;
  *(v47 + 40) = v40;
  v89 = a2;

  v103 = v46;
  v104 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v92;
  View.onChange<A>(of:initial:_:)();

  v49 = v94;
  (*(v93 + 8))(v43, v48);
  LOBYTE(v103) = v44;
  v104 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v50 = 1;
  if (v101 == 1)
  {
    v51 = type metadata accessor for PacePickerViewModel();
    v52 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel, type metadata accessor for PacePickerViewModel);
    v53 = v91;
    v54 = v89;
    MEMORY[0x20F308920](v91, v89, v51, v52);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    *&v56 = MEMORY[0x28223BE20](v55);
    *(&v77 - 4) = v53;
    *(&v77 - 3) = v54;
    v101 = v56;
    v102 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    v58 = lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v75 = MEMORY[0x277D83B98];
    v76 = v58;
    v59 = v77;
    Picker.init(selection:label:content:)();
    v60 = v82;
    WheelPickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    v61 = v78;
    v62 = v81;
    v63 = v84;
    View.pickerStyle<A>(_:)();
    (*(v83 + 8))(v60, v63);
    (*(v80 + 8))(v59, v62);
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>();
    View.listRowInsets(_:_:)();
    outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v61, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    v50 = 0;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_Md);
  (*(*(v64 - 8) + 56))(v49, v50, 1, v64);
  v66 = v95;
  v65 = v96;
  v67 = *(v96 + 16);
  v68 = v100;
  v69 = v97;
  v67(v95, v100, v97);
  v70 = v98;
  sub_20C6947BC(v49, v98);
  v71 = v99;
  v67(v99, v66, v69);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAcAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA6PickerVyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerM0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtMd);
  sub_20C6947BC(v70, &v71[*(v72 + 48)]);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v49, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  v73 = *(v65 + 8);
  v73(v68, v69);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v70, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd);
  return (v73)(v66, v69);
}

uint64_t closure #1 in closure #1 in PacePickerViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35[-v11];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v37);
  v38 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v35[-v18];
  v20 = *(a2 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle + 8);
  v48 = *(a2 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle);
  v49 = v20;
  lazy protocol witness table accessor for type String and conformance String();

  v39 = Text.init<A>(_:)();
  v40 = v21;
  v23 = v22;
  v36 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;

  Button.init(action:label:)();
  LOBYTE(v48) = a3;
  v49 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v26 = Color.init(uiColor:)();
  }

  else
  {
    v26 = static Color.white.getter();
  }

  v27 = v26;
  KeyPath = swift_getKeyPath();
  (*(v41 + 32))(v16, v12, v42);
  v29 = &v16[*(v37 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v16, v19);
  v30 = v38;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v19, v38);
  v32 = v39;
  v31 = v40;
  *a5 = v39;
  *(a5 + 8) = v23;
  LOBYTE(v27) = v36 & 1;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMd);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v30, a5 + *(v33 + 64));
  outlined copy of Text.Storage(v32, v23, v27);

  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v19, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v30, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v32, v23, v27);
}

uint64_t closure #2 in closure #1 in closure #1 in PacePickerViewPhone.body.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PacePickerViewPhone.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewPhone.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t closure #4 in closure #1 in PacePickerViewPhone.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #4 in closure #1 in PacePickerViewPhone.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  PacePickerViewModel.paceDisplayString(pace:)(*a1);
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

uint64_t protocol witness for View.body.getter in conformance PacePickerViewPhone()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd);
  return Section<>.init(content:)();
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_78()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for EffortValueButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for EffortValueButton(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t one-time initialization function for levelSymbolFont()
{
  result = static Font.title2.getter();
  static EffortValueButton.Layout.levelSymbolFont = result;
  return result;
}

uint64_t one-time initialization function for explanationFont()
{
  result = static Font.title2.getter();
  static EffortValueButton.Layout.explanationFont = result;
  return result;
}

uint64_t EffortValueButton.symbolImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = (v17 - v2);
  if (*(v0 + 24))
  {
    v4 = Image.init(_internalSystemName:)();
    v5 = (v3 + *(v1 + 36));
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v7 = *MEMORY[0x277CE1058];
    v8 = type metadata accessor for Image.Scale();
    (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
    *v5 = swift_getKeyPath();
    *v3 = v4;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
  }

  else
  {
    v17[1] = *v0;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v9;
    MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
    v10 = Image.init(systemName:)();
    v11 = (v3 + *(v1 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v13 = *MEMORY[0x277CE1048];
    v14 = type metadata accessor for Image.Scale();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    *v3 = v10;
    v18 = Int.localizedString.getter();
    v19 = v15;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v3, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
}

uint64_t closure #2 in EffortValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IdentityTransition();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMd);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMd);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v26 - v17;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAA05TupleD0VyAA08ModifiedI0VyAMyAMyAMyAMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentP0VGATGAA17_FlipForRTLEffectVGAQyAA19SymbolRenderingModeVSgGGAQyAA4FontVSgGGAA08_PaddingG0VG_AMyAMyAMyAMyAA4TextVAQy12CoreGraphics7CGFloatVGGA12_GA12_GAQyAA0I10TransitionVGGAA6SpacerVAMyAMyAMyAOA9_GAA016_ForegroundStyleP0VyAA22HierarchicalShapeStyleVGGA12_GSgtGAKyAMyAMyAMyAUA9_GAA14_OpacityEffectVGAA010_FlexFrameG0VG_AMyAMyAMyAMyAMyA15_A12_GA19_GAQySiSgGG07WorkoutB017HeaderHyphenationVGAQyAA13TextAlignmentOGGtGGGMd);
  closure #1 in closure #2 in EffortValueButton.body.getter(a1, &v14[*(v19 + 44)]);
  IdentityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type IdentityTransition and conformance IdentityTransition, MEMORY[0x277CE0100]);
  v20 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  *&v14[*(v12 + 44)] = v20;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v14, v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMd);
  v21 = &v18[*(v16 + 44)];
  v22 = v26[5];
  *(v21 + 4) = v26[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v26[6];
  v23 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v23;
  v24 = v26[3];
  *(v21 + 2) = v26[2];
  *(v21 + 3) = v24;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v18, a2, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMd);
  *(a2 + *(result + 36)) = 0x402C000000000000;
  return result;
}

uint64_t closure #1 in closure #2 in EffortValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd);
  MEMORY[0x28223BE20](v169);
  v4 = &v162 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v5);
  v7 = (&v162 - v6);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v162);
  v171 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v162 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v162 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVAIyAIyAIyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAGyAIyAIyAIyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_AIyAIyAIyAIyAIyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtG_GMd);
  MEMORY[0x28223BE20](v166);
  v168 = &v162 - v15;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd);
  MEMORY[0x28223BE20](v167);
  v165 = &v162 - v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd);
  MEMORY[0x28223BE20](v163);
  v164 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v162 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v25 = &v162 - v24;
  if (*a1 > 0 || (*(a1 + 24) & 1) != 0)
  {
    v162 = v23;
    EffortValueButton.symbolImage.getter();
    v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGMd) + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v28 = *MEMORY[0x277CE1048];
    v29 = type metadata accessor for Image.Scale();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    LOBYTE(v26) = *(a1 + 24);
    v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGMd) + 36)] = v26;
    v30 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGMd) + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v32 = type metadata accessor for SymbolRenderingMode();
    (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
    *v30 = swift_getKeyPath();
    v33 = v25;
    if (one-time initialization token for levelSymbolFont != -1)
    {
      swift_once();
    }

    v34 = static EffortValueButton.Layout.levelSymbolFont;
    KeyPath = swift_getKeyPath();
    v36 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd) + 36)];
    *v36 = KeyPath;
    v36[1] = v34;

    LOBYTE(v34) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v37 = &v25[*(v21 + 36)];
    *v37 = v34;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v42 = *(a1 + 8);
    v43 = *(a1 + 16);
    v194._countAndFlagsBits = v42;
    v194._object = v43;
    lazy protocol witness table accessor for type String and conformance String();

    v44 = Text.init<A>(_:)();
    v46 = v45;
    v48 = v47;
    v171 = v33;
    if (one-time initialization token for explanationFont != -1)
    {
      swift_once();
    }

    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    outlined consume of Text.Storage(v44, v46, v48 & 1);

    v56 = swift_getKeyPath();
    v57 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v53 & 1;
    LOBYTE(v189._countAndFlagsBits) = v53 & 1;
    LOBYTE(v181._countAndFlagsBits) = 0;
    v67 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    LOBYTE(v194._countAndFlagsBits) = 0;
    v76 = &v20[*(v163 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    static ContentTransition.identity.getter();
    *v76 = swift_getKeyPath();
    *v20 = v49;
    *(v20 + 1) = v51;
    v20[16] = v66;
    *(v20 + 3) = v55;
    *(v20 + 4) = v56;
    *(v20 + 5) = 0x3FE0000000000000;
    v20[48] = v57;
    *(v20 + 7) = v59;
    *(v20 + 8) = v61;
    *(v20 + 9) = v63;
    *(v20 + 10) = v65;
    v20[88] = 0;
    v20[96] = v67;
    *(v20 + 13) = v69;
    *(v20 + 14) = v71;
    *(v20 + 15) = v73;
    *(v20 + 16) = v75;
    v20[136] = 0;
    v77 = Image.init(systemName:)();
    static Font.body.getter();
    static Font.Weight.medium.getter();
    v78 = Font.weight(_:)();

    v79 = swift_getKeyPath();
    LODWORD(v55) = static HierarchicalShapeStyle.secondary.getter();
    LOBYTE(v56) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v194._countAndFlagsBits) = 0;
    v181._countAndFlagsBits = v77;
    v181._object = v79;
    v182._countAndFlagsBits = v78;
    LODWORD(v182._object) = v55;
    LOBYTE(v183._countAndFlagsBits) = v56;
    v183._object = v80;
    *&v184[0] = v81;
    *(&v184[0] + 1) = v82;
    *&v184[1] = v83;
    BYTE8(v184[1]) = 0;
    v175 = v183;
    v176[0] = v184[0];
    *(v176 + 9) = *(v184 + 9);
    v173 = v181;
    v174 = v182;
    v84 = v162;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v171, v162, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    v85 = v164;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v20, v164, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd);
    v86 = v165;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v84, v165, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAGy12CoreGraphics7CGFloatVGGA2_GA2_GAGyAA0D10TransitionVGGAA6SpacerVACyACyACyAEA_GAA016_ForegroundStyleI0VyAA22HierarchicalShapeStyleVGGA2_GSgtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v85, v86 + v87[12], &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd);
    v88 = v86 + v87[16];
    *v88 = 0;
    *(v88 + 8) = 1;
    v89 = (v86 + v87[20]);
    *(v192 + 9) = *(v176 + 9);
    v90 = *(v176 + 9);
    v91 = v176[0];
    v92 = v175;
    v93 = v176[0];
    v191 = v175;
    v192[0] = v176[0];
    v89[2] = v175;
    v89[3] = v91;
    *(&v89[3]._object + 1) = v90;
    v94 = v174;
    v95 = v173;
    v96 = v174;
    v189 = v173;
    v190 = v174;
    *v89 = v173;
    v89[1] = v94;
    *(v197 + 9) = *(v176 + 9);
    v196 = v92;
    v197[0] = v93;
    v194 = v95;
    v195 = v96;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v181, v172, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v189, v172, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v194, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v85, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v84, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v86, v168, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd);
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v181, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v86, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v20, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd);
    v97 = v171;
    v98 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd;
  }

  else
  {
    v164 = v4;
    v165 = v14;
    v100 = Image.init(systemName:)();
    v101 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v103 = *MEMORY[0x277CE1048];
    v104 = type metadata accessor for Image.Scale();
    (*(*(v104 - 8) + 104))(v101 + v102, v103, v104);
    *v101 = swift_getKeyPath();
    *v7 = v100;
    if (one-time initialization token for levelSymbolFont != -1)
    {
      swift_once();
    }

    v105 = static EffortValueButton.Layout.levelSymbolFont;
    v106 = swift_getKeyPath();
    v107 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMd) + 36));
    *v107 = v106;
    v107[1] = v105;
    *(v7 + *(v5 + 36)) = 0;

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v7, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMd);
    v108 = &v11[*(v162 + 36)];
    v109 = v208;
    *(v108 + 4) = v207;
    *(v108 + 5) = v109;
    *(v108 + 6) = v209;
    v110 = v204;
    *v108 = v203;
    *(v108 + 1) = v110;
    v111 = v206;
    *(v108 + 2) = v205;
    *(v108 + 3) = v111;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v11, v165, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v112 = WorkoutUIBundle.super.isa;
    v210._object = 0xE000000000000000;
    v113.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v114._object = 0x800000020CB9E200;
    v114._countAndFlagsBits = 0xD000000000000010;
    v113.value._object = 0xEB00000000656C62;
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    v210._countAndFlagsBits = 0;
    v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, v113, v112, v115, v210);

    v194 = v116;
    lazy protocol witness table accessor for type String and conformance String();
    v117 = Text.init<A>(_:)();
    v119 = v118;
    v121 = v120;
    if (one-time initialization token for explanationFont != -1)
    {
      swift_once();
    }

    v122 = Text.font(_:)();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    outlined consume of Text.Storage(v117, v119, v121 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_20CB5DA80;
    v130 = static Edge.Set.leading.getter();
    *(v129 + 32) = v130;
    v131 = static Edge.Set.trailing.getter();
    *(v129 + 33) = v131;
    v132 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v130)
    {
      v132 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v131)
    {
      v132 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v141 = v126 & 1;
    v200 = v126 & 1;
    v199 = 0;
    v142 = swift_getKeyPath();
    v143 = swift_getKeyPath();
    v201 = 0;
    v144 = swift_getKeyPath();
    v181._countAndFlagsBits = v122;
    v181._object = v124;
    LOBYTE(v182._countAndFlagsBits) = v141;
    v182._object = v128;
    LOBYTE(v183._countAndFlagsBits) = v132;
    v183._object = v134;
    *&v184[0] = v136;
    *(&v184[0] + 1) = v138;
    *&v184[1] = v140;
    BYTE8(v184[1]) = 0;
    *&v185 = v142;
    *(&v185 + 1) = 0x3FE3333333333333;
    *&v186 = v143;
    *(&v186 + 1) = 2;
    LOBYTE(v187) = 0;
    *(&v187 + 1) = *v202;
    DWORD1(v187) = *&v202[3];
    *(&v187 + 1) = v144;
    v188 = 1;
    v145 = v171;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v165, v171, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
    v178 = v186;
    v179 = v187;
    v180 = v188;
    v175 = v183;
    v176[0] = v184[0];
    v176[1] = v184[1];
    v177 = v185;
    v173 = v181;
    v174 = v182;
    v146 = v164;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v145, v164, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
    v147 = v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyAA4TextVAA08_PaddingP0VGAGy12CoreGraphics7CGFloatVGGAGySiSgGG07WorkoutB017HeaderHyphenationVGAGyAA0Q9AlignmentOGGtMd) + 48);
    v192[3] = v178;
    v192[4] = v179;
    v192[1] = v176[1];
    v192[2] = v177;
    v148 = v175;
    v191 = v175;
    v192[0] = v176[0];
    v149 = v173;
    v189 = v173;
    v190 = v174;
    v151 = v178;
    v150 = v179;
    v152 = v179;
    *(v147 + 96) = v178;
    *(v147 + 112) = v150;
    v153 = v176[0];
    v154 = v176[1];
    v155 = v176[0];
    v156 = v176[1];
    *(v147 + 32) = v148;
    *(v147 + 48) = v153;
    v157 = v177;
    v158 = v177;
    *(v147 + 64) = v154;
    *(v147 + 80) = v157;
    v159 = v174;
    v160 = v175;
    v161 = v174;
    *v147 = v173;
    *(v147 + 16) = v159;
    v197[3] = v151;
    v197[4] = v152;
    v196 = v160;
    v197[0] = v155;
    v197[1] = v156;
    v197[2] = v158;
    v193 = v180;
    *(v147 + 128) = v180;
    v198 = v180;
    v194 = v149;
    v195 = v161;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v181, v172, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v189, v172, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v194, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v145, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v146, v168, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd);
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v181, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v146, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd);
    v97 = v165;
    v98 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v97, v98);
}

__n128 protocol witness for View.body.getter in conformance EffortValueButton@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-v9];
  v11 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v11;
  v27[2] = *(v1 + 32);
  v28 = *(v1 + 48);
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  v25 = v27;
  outlined init with copy of EffortValueButton(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKe();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd) + 36));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
  static ContentShapeKinds.accessibility.getter();
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(v14 + v16, v17, v18);
  __asm { FMOV            V0.2D, #14.0 }

  *v14 = result;
  v14->n128_u8[*(v15 + 36)] = 0;
  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path setter for EnvironmentValues.contentTransition : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ContentTransition();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.contentTransition.setter();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void AnimatedWorkoutGlyph.init(activityType:iconSize:animated:)(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for AnimatedWorkoutGlyph(0);
  *(a3 + v9[8]) = 0x3FA1111111111111;
  v10 = a3 + v9[14];
  *v10 = implicit closure #2 in implicit closure #1 in variable initialization expression of AnimatedWorkoutGlyph._model;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  Date.init()();
  *a3 = a1;
  *(a3 + 8) = a2;
  v11 = a1;
  FIUIIconSize();
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  v14 = FIUISpriteSheetWorkoutIconImage();
  if (v14)
  {
    v15 = v14;

    v38 = 0;
    v16 = FIUISpriteSheetNumberOfFrames();

    *(a3 + v9[10]) = v16;
    v17 = v38;
    *(a3 + v9[9]) = v38;
    v18 = v15;
    Image.init(uiImage:)();
    v19 = *MEMORY[0x277CE1020];
    v20 = type metadata accessor for Image.TemplateRenderingMode();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v8, v19, v20);
    (*(v21 + 56))(v8, 0, 1, v20);
    v22 = Image.renderingMode(_:)();

    outlined destroy of Image.TemplateRenderingMode?(v8, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
    *(a3 + v9[11]) = v22;
    [v18 size];
    v24 = v23 / v17;
    [v18 size];
    v26 = v25 / ceil(v16 / v17);
    v27 = (a3 + v9[12]);
    *v27 = v24;
    v27[1] = v26;
    [v18 size];
    v29 = v28 * 0.5 - v24 * 0.5;
    [v18 size];
    v31 = v30;

    v32 = (a3 + v9[13]);
    *v32 = v29;
    v32[1] = v31 * 0.5 - v26 * 0.5;
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v38 = 0xD000000000000028;
    v39 = 0x800000020CBA2770;
    v33 = [v11 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    MEMORY[0x20F30BC00](v34, v36);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t AnimatedWorkoutGlyph.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AnimatedWorkoutGlyph.Model@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of AnimatedWorkoutGlyph._model()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  v4 = swift_allocObject();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date, v3, v0);
  return v4;
}

unint64_t AnimatedWorkoutGlyph.frame(date:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnimatedWorkoutGlyph(0);
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model);
  v6 = StateObject.wrappedValue.getter();
  v7 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  swift_beginAccess();
  (*(v2 + 16))(v4, v6 + v7, v1);

  Date.timeIntervalSince(_:)();
  v9 = v8;
  result = (*(v2 + 8))(v4, v1);
  v11 = 0.0;
  if (v9 >= 0.0)
  {
    v11 = v9;
  }

  v12 = floor(v11 / *(v0 + *(v5 + 32)));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(v0 + *(v5 + 40));
  if (v13)
  {
    return v12 % v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void AnimatedWorkoutGlyph.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationG8ScheduleVAGyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipM0VyAA9RectangleVGGGAA017_AppearanceActionO0VGAGyAGyApUGA_G_GMd);
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = type metadata accessor for AnimatedWorkoutGlyph(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = type metadata accessor for AnimationTimelineSchedule();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd);
  MEMORY[0x28223BE20](v15);
  if (*(v2 + 8) == 1)
  {
    v39 = v16;
    v37 = v35 - v17;
    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of AnimatedWorkoutGlyph(v2, v36);
    v40 = v3;
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v38 = v18;
    v19 = swift_allocObject();
    outlined init with take of AnimatedWorkoutGlyph(v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = *(v9 + 16);
    v35[2] = v11;
    v21 = v11;
    v22 = v41;
    v20(v21, v14, v41);
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in AnimatedWorkoutGlyph.body.getter;
    *(v23 + 24) = v19;
    v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule, MEMORY[0x277CDE300]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    v24 = v37;
    TimelineView<>.init(_:content:)();
    (*(v9 + 8))(v14, v22);
    v25 = v36;
    outlined init with copy of AnimatedWorkoutGlyph(v2, v36);
    v26 = v38;
    v27 = swift_allocObject();
    outlined init with take of AnimatedWorkoutGlyph(v25, v27 + v26);
    v28 = (v24 + *(v39 + 36));
    *v28 = partial apply for closure #2 in AnimatedWorkoutGlyph.body.getter;
    v28[1] = v27;
    v28[2] = 0;
    v28[3] = 0;
    outlined init with copy of ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>(v24, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Image.TemplateRenderingMode?(v24, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd);
  }

  else if (*(v2 + v6[9]))
  {
    v29 = (v2 + v6[13]);
    v30 = (v2 + v6[12]);
    v31 = *v29 - *v30 * 0.0;
    v32 = *(v2 + v6[11]);
    v33 = v29[1] - v30[1] * 0.0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *v5 = v32;
    *(v5 + 1) = v31;
    *(v5 + 2) = v33;
    v34 = v44;
    *(v5 + 24) = v43;
    *(v5 + 40) = v34;
    *(v5 + 56) = v45;
    *(v5 + 36) = 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd);
    lazy protocol witness table accessor for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA09AnimationC8ScheduleVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA13_OffsetEffectVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in AnimatedWorkoutGlyph.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatedWorkoutGlyph(0);
  v9 = *(a1 + v8[11]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  v10 = AnimatedWorkoutGlyph.frame(date:)();
  result = (*(v5 + 8))(v7, v4);
  v12 = *(a1 + v8[9]);
  if (v12)
  {
    v13 = v8[12];
    v14 = (a1 + v8[13]);
    v15 = *v14 - *(a1 + v13) * (v10 % v12);
    v16 = v14[1] - *(a1 + v13 + 8) * (v10 / v12);
    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    *a2 = v9;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = closure #1 in closure #1 in AnimatedWorkoutGlyph.body.getter;
    *(a2 + 32) = 0;
    v17 = v18[1];
    *(a2 + 40) = v18[0];
    *(a2 + 56) = v17;
    *(a2 + 72) = v18[2];
    *(a2 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AnimatedWorkoutGlyph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedWorkoutGlyph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnimatedWorkoutGlyph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedWorkoutGlyph(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AnimatedWorkoutGlyph.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in AnimatedWorkoutGlyph.body.getter(v4, a1);
}

uint64_t closure #2 in AnimatedWorkoutGlyph.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AnimatedWorkoutGlyph(0);
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model);
  v3 = StateObject.wrappedValue.getter();
  v4 = *(v2 + 28);
  v5 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  swift_beginAccess();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(v3 + v5, a1 + v4, v6);
  swift_endAccess();
}

uint64_t objectdestroyTm_79()
{
  v1 = (type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  outlined consume of StateObject<AnimatedWorkoutGlyph.Model>.Storage();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in AnimatedWorkoutGlyph.body.getter()
{
  v1 = *(type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in AnimatedWorkoutGlyph.body.getter(v2);
}

uint64_t outlined init with copy of ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Image.TemplateRenderingMode?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for AnimatedWorkoutGlyph()
{
  type metadata accessor for FIUIWorkoutActivityType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for StateObject<AnimatedWorkoutGlyph.Model>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for StateObject<AnimatedWorkoutGlyph.Model>()
{
  if (!lazy cache variable for type metadata for StateObject<AnimatedWorkoutGlyph.Model>)
  {
    type metadata accessor for AnimatedWorkoutGlyph.Model(255);
    lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<AnimatedWorkoutGlyph.Model>);
    }
  }
}

uint64_t type metadata accessor for AnimatedWorkoutGlyph(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for AnimatedWorkoutGlyph.Model()
{
  result = type metadata accessor for Date();
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationF8ScheduleVAEyAEyAEyAEyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipL0VyAA9RectangleVGGGAA017_AppearanceActionN0VGAEyAEyAnSGAYGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t PickerTextPadding.body(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_L6LayoutVGAGyApOG_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v11 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd);
    (*(*(v20 - 8) + 16))(v10, a1, v20);
    v21 = &v10[*(v8 + 36)];
    *v21 = v11;
    *(v21 + 1) = v13;
    *(v21 + 2) = v15;
    *(v21 + 3) = v17;
    *(v21 + 4) = v19;
    v21[40] = 0;
    outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v22 = v10;
    v23 = &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd;
  }

  else
  {
    v24 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd);
    (*(*(v33 - 8) + 16))(v4, a1, v33);
    v34 = &v4[*(v8 + 36)];
    *v34 = v24;
    *(v34 + 1) = v26;
    *(v34 + 2) = v28;
    *(v34 + 3) = v30;
    *(v34 + 4) = v32;
    v34[40] = 0;
    v35 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v36 = &v4[*(v2 + 36)];
    *v36 = v35;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v4, v7, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v22 = v4;
    v23 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v22, v23);
}

unint64_t lazy protocol witness table accessor for type PickerTextPadding and conformance PickerTextPadding()
{
  result = lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding;
  if (!lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_K6LayoutVGAEyAnMGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t key path getter for MirrorViewMonitor.dismissClosure : MirrorViewMonitor@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C694B3C(v4);
}

uint64_t key path setter for MirrorViewMonitor.dismissClosure : MirrorViewMonitor(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_3;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_20C694B3C(v3);
  return sub_20C694AEC(v8);
}

uint64_t MirrorViewMonitor.dismissClosure.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_20C694B3C(v1);
  return v1;
}

uint64_t MirrorViewMonitor.dismissClosure.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_20C694AEC(v5);
}

uint64_t MirrorViewMonitor.__allocating_init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, a2, a3);
  sub_20C694AEC(a2);

  return v6;
}

uint64_t MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, a2, a3);
  sub_20C694AEC(a2);

  return v5;
}

uint64_t closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v50 - v2;
  v53 = type metadata accessor for Logger();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MirroredClientCommand();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v56 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for DataLinkMirroredClientExpected();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DataLinkMirroredClientExpectation();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x277D7E300];
  v22 = type metadata accessor for MirroredHostCommand();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  (*(v16 + 104))(v18, *MEMORY[0x277D7E638], v15);
  type metadata accessor for DataLinkConstants();
  static DataLinkConstants.defaultExpectationTimeout.getter();
  v62 = v20;
  DataLinkMirroredClientExpectation.init(expected:timeout:)();
  (*(v6 + 104))(v14, *MEMORY[0x277D7E378], v5);
  static WOLog.dataLink.getter();
  v63 = v6;
  v64 = v5;
  v23 = *(v6 + 16);
  v59 = v14;
  v23(v10, v14, v5);
  v24 = v4;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v50 = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v65 = v29;
    *v28 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388]);
    v30 = v64;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v63 + 8);
    v51 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v34;
    v34(v10, v30);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v65);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_20C66F000, v25, v26, "[mirrored] sendMirroredClientCommand is sending (%s)", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v29);
    MEMORY[0x20F30E080](v29, -1, -1);
    v36 = v28;
    v23 = v50;
    MEMORY[0x20F30E080](v36, -1, -1);
  }

  else
  {

    v37 = *(v63 + 8);
    v51 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v37;
    v37(v10, v64);
  }

  (*(v55 + 8))(v24, v53);
  static Double.machTimestamp.getter();
  v39 = v38;
  v40 = v61;
  v41 = v54;
  v42 = v57;
  (*(v54 + 16))(v61, v62, v57);
  (*(v41 + 56))(v40, 0, 1, v42);
  v44 = v58;
  v43 = v59;
  v45 = v64;
  v23(v58, v59, v64);
  v46 = v63;
  v47 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v39;
  (*(v46 + 32))(v48 + v47, v44, v45);

  DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)();

  outlined destroy of DataLinkMirroredClientExpectation?(v40, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
  v52(v43, v45);
  return (*(v41 + 8))(v62, v42);
}

uint64_t closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 72) & 1) != 0 || (v9 & 1) == 0)
    {
    }

    v11 = result;
    *(result + 72) = 1;
    static WOLog.dataLink.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = 1;
      _os_log_impl(&dword_20C66F000, v12, v13, "[mirrored] MirrorViewMonitor observed first workoutStarted: %{BOOL}d, remove all client expectations and switch to inSessionView", v14, 8u);
      MEMORY[0x20F30E080](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:), v17);

    v19 = *(v11 + 32);
    swift_beginAccess();
    if (*(v19 + 17) == 5)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v21[-2] = v19;
      LOBYTE(v21[-1]) = 5;
      v21[1] = v19;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:), v6, v5);
}

uint64_t closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)()
{

  dispatch thunk of DataLinkClient.removeAllClientExpectations()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MirrorViewMonitor.buildHostedView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMd);
  MEMORY[0x28223BE20](v109);
  v106 = v94 - v3;
  v4 = type metadata accessor for SessionControlsSheet();
  MEMORY[0x28223BE20](v4);
  v108 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v94 - v7;
  v116 = type metadata accessor for SessionView();
  MEMORY[0x28223BE20](v116);
  v110 = (v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB020MapHostingMirrorViewVAF07SessionJ0V_GMd);
  MEMORY[0x28223BE20](v111);
  v112 = v94 - v9;
  v10 = type metadata accessor for PresentationDetent();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v94 - v15;
  v115 = type metadata accessor for MapHostingMirrorView();
  MEMORY[0x28223BE20](v115);
  v18 = (v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MirrorViewMonitor.canHostMapView.getter();
  v20 = type metadata accessor for LowPowerModeMonitor();
  swift_allocObject();
  v21 = LowPowerModeMonitor.init(delegate:)();
  v22 = v1[2];
  v114 = v21;
  if (v19)
  {
    v109 = v20;
    v23 = v2[3];
    v24 = v2[4];
    v25 = swift_allocObject();
    swift_weakInit();
    v107 = *(v115 + 36);
    v26 = one-time initialization token for expanded;
    v108 = v22;
    v110 = v23;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, static PresentationDetent.expanded);
    v28 = *(v11 + 16);
    v28(v16, v27, v10);
    v28(v13, v16, v10);
    State.init(wrappedValue:)();
    (*(v11 + 8))(v16, v10);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, 255, MEMORY[0x277D7E2F8]);
    v29 = ObservedObject.init(wrappedValue:)();
    v31 = v30;

    *v18 = v29;
    v18[1] = v31;
    v32 = v110;
    v18[2] = v108;
    v18[3] = v32;
    v18[4] = v24;
    v18[5] = partial apply for closure #1 in MirrorViewMonitor.buildHostedView();
    v18[6] = v25;
    v33 = type metadata accessor for MapHostingMirrorView;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v18, v112, type metadata accessor for MapHostingMirrorView);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView);
    _ConditionalContent<>.init(storage:)();
    v34 = v18;
  }

  else
  {
    v35 = *&v22[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
    v36 = v2[4];
    v99 = v2[3];
    swift_getKeyPath();
    v125[0] = v36;
    v105 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
    v98 = v35;

    v37 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
    swift_beginAccess();
    v39 = *(v36 + v38);
    v40 = type metadata accessor for MirrorSessionControls();
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v39;
    v125[3] = v40;
    v125[4] = &protocol witness table for MirrorSessionControls;
    v125[0] = v41;
    v42 = swift_allocObject();
    swift_weakInit();
    v44 = v2[8];
    v103 = v2[7];
    v43 = v103;
    v102 = v44;
    v45 = v110;
    v97 = v110 + v116[9];
    v46 = v116;
    v47 = v110 + v116[11];
    LOBYTE(v120) = 0;
    v48 = v39;
    v100 = v42;

    sub_20C694B3C(v43);
    State.init(wrappedValue:)();
    v49 = v124;
    *v47 = v123[0];
    *(v47 + 1) = v49;
    v50 = v45 + v46[12];
    LOBYTE(v120) = 0;
    State.init(wrappedValue:)();
    v51 = v124;
    *v50 = v123[0];
    *(v50 + 1) = v51;
    v101 = (v45 + v46[13]);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, 255, MEMORY[0x277D7E2F8]);

    *v45 = ObservedObject.init(wrappedValue:)();
    v45[1] = v52;
    v53 = v98;
    v54 = v99;
    v45[2] = v98;
    v45[3] = v54;
    v55 = type metadata accessor for SessionViewModel();
    v96 = v53;
    v104 = v36;

    v99 = v55;
    Bindable<A>.init(wrappedValue:)();
    outlined init with copy of SessionControls(v125, v45 + v46[8]);
    v56 = v97;
    *v97 = partial apply for closure #2 in MirrorViewMonitor.buildHostedView();
    *(v56 + 1) = v42;
    v98 = type metadata accessor for SessionControlsState();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    ObservationRegistrar.init()();
    outlined init with copy of SessionControls(v125, v123);
    v118 = 0;
    static Binding.constant(_:)();
    v58 = v120;
    v59 = v121;
    LOBYTE(v53) = v122;
    v60 = v107;
    outlined init with copy of SessionControls(v123, v107 + v4[8]);
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = v53;
    v61 = v96;
    v96 = v61;

    v94[1] = v57;

    Bindable<A>.init(wrappedValue:)();
    v97 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, 255, type metadata accessor for SessionControlsState);
    Bindable<A>.init(wrappedValue:)();
    *(v60 + v4[7]) = v61;
    v62 = v60 + v4[9];
    v117 = 0;
    State.init(wrappedValue:)();
    v63 = v119;
    *v62 = v118;
    *(v62 + 8) = v63;
    v64 = v60 + v4[10];
    v117 = 0;
    State.init(wrappedValue:)();
    v65 = v119;
    *v64 = v118;
    *(v64 + 8) = v65;
    v66 = v60 + v4[11];
    v117 = 0;
    State.init(wrappedValue:)();
    v67 = v119;
    *v66 = v118;
    *(v66 + 8) = v67;
    v95 = objc_opt_self();
    v68 = [v95 mainScreen];
    [v68 bounds];

    v69 = v106;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v60, v106, type metadata accessor for SessionControlsSheet);
    *(v69 + *(v109 + 36)) = 256;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMd);
    v71 = objc_allocWithZone(v70);
    v72 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v74 = v73;

    v118 = 1;
    static Binding.constant(_:)();
    v75 = v120;
    v76 = v121;
    LOBYTE(v57) = v122;
    v77 = v108;
    outlined init with copy of SessionControls(v123, &v108[v4[8]]);
    *v77 = v75;
    *(v77 + 8) = v76;
    *(v77 + 16) = v57;

    Bindable<A>.init(wrappedValue:)();
    Bindable<A>.init(wrappedValue:)();
    *(v77 + v4[7]) = v96;
    v78 = v77 + v4[9];
    v117 = 0;
    State.init(wrappedValue:)();
    v79 = v119;
    *v78 = v118;
    *(v78 + 8) = v79;
    v80 = v77 + v4[10];
    v117 = 0;
    State.init(wrappedValue:)();
    v81 = v119;
    *v80 = v118;
    *(v80 + 8) = v81;
    v82 = v77 + v4[11];
    v117 = 0;
    State.init(wrappedValue:)();
    v83 = v119;
    *v82 = v118;
    *(v82 + 8) = v83;
    v84 = [v95 mainScreen];
    [v84 bounds];

    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v77, v69, type metadata accessor for SessionControlsSheet);
    *(v69 + *(v109 + 36)) = 256;
    v85 = objc_allocWithZone(v70);
    v86 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v88 = v87;

    _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v77, type metadata accessor for SessionControlsSheet);
    _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v60, type metadata accessor for SessionControlsSheet);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v123);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v125);

    v89 = v110;
    v90 = v110 + v116[10];
    *v90 = v74;
    *(v90 + 1) = v88;
    v91 = v101;
    v92 = v102;
    *v101 = v103;
    v91[1] = v92;
    v33 = type metadata accessor for SessionView;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v89, v112, type metadata accessor for SessionView);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView);
    _ConditionalContent<>.init(storage:)();
    v34 = v89;
  }

  return _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v34, v33);
}

uint64_t closure #1 in MirrorViewMonitor.buildHostedView()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 40);
    sub_20C694B3C(v2);

    if (v2)
    {
      v2(result);
      return sub_20C694AEC(v2);
    }
  }

  return result;
}

uint64_t MirrorViewMonitor.activityType.getter()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);
  MetricsPublisher.workoutStatePublisher.getter();

  v2 = WorkoutStatePublisher.activityType.getter();

  return v2;
}

uint64_t MirrorViewMonitor.canHostMapView.getter()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    LOBYTE(v1) = closure #1 in MirrorViewMonitor.canHostMapView.getter(v0);
    *(v0 + 88) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t closure #1 in MirrorViewMonitor.canHostMapView.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutFeatures();
  v8[3] = v2;
  v8[4] = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, 255, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DD90], v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_4(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);
  MetricsPublisher.workoutStatePublisher.getter();

  v5 = WorkoutStatePublisher.activityType.getter();

  if (!v5)
  {
    return 0;
  }

  [v5 effectiveTypeIdentifier];
  [v5 isIndoor];
  [v5 swimmingLocationType];
  IsRouteable = _HKWorkoutActivityTypeIsRouteable();

  return IsRouteable;
}

uint64_t MirrorViewMonitor.deinit()
{

  sub_20C694AEC(*(v0 + 40));
  sub_20C694AEC(*(v0 + 56));

  return v0;
}

uint64_t MirrorViewMonitor.__deallocating_deinit()
{

  sub_20C694AEC(*(v0 + 40));
  sub_20C694AEC(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t MirrorViewMonitor.receivedMirroredHostCommand(_:closure:)(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v74 = a3;
  v75 = a2;
  v66 = type metadata accessor for DataLinkMirroredClientExpected();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DataLinkMirroredClientExpectation();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MirroredHostCommand();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v72 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v73 = type metadata accessor for Logger();
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v71 = v12;
    static WOLog.dataLink.getter();
    v26 = *(v8 + 16);
    v26(v15, a1, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = v8;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v60 = a1;
      v69 = v8;
      v59 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v78[0] = v32;
      *v31 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand, 255, MEMORY[0x277D7E318]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v61 = *(v69 + 8);
      v61(v15, v7);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v78);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_20C66F000, v27, v28, "[mirrored] receivedMirroredHostCommand (%s)", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v32);
      MEMORY[0x20F30E080](v32, -1, -1);
      v37 = v31;
      v26 = v59;
      v29 = v69;
      a1 = v60;
      MEMORY[0x20F30E080](v37, -1, -1);
    }

    else
    {

      v61 = *(v8 + 8);
      v61(v15, v7);
    }

    v38 = *(v76 + 8);
    v39 = v73;
    v38(v19, v73);
    v40 = v71;
    v26(v71, a1, v7);
    v41 = (*(v29 + 88))(v40, v7);
    v42 = v72;
    if (v41 == *MEMORY[0x277D7E300])
    {
      started = type metadata accessor for MirroredHostStartConfiguration();
      v44 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration, 255, MEMORY[0x277D7E658]);
      v46 = v65;
      v45 = v66;
      *v65 = started;
      v46[1] = v44;
      (*(v63 + 104))(v46, *MEMORY[0x277D7E640], v45);
      type metadata accessor for DataLinkConstants();
      static DataLinkConstants.defaultExpectationTimeout.getter();
      v47 = v64;
      DataLinkMirroredClientExpectation.init(expected:timeout:)();

      dispatch thunk of DataLinkClient.addClientExpectation(_:)();

      (*(v67 + 8))(v47, v68);
    }

    else if (v41 == *MEMORY[0x277D7E308])
    {
      v48 = v70;
      v49 = *(v70 + 32);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v59 - 4) = v49;
      *(&v59 - 3) = partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCommand(_:closure:);
      *(&v59 - 2) = v48;
      v78[0] = v49;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_beginAccess();
      if (*(v49 + 17) != 1)
      {
        v51 = swift_getKeyPath();
        MEMORY[0x28223BE20](v51);
        *(&v59 - 2) = v49;
        *(&v59 - 8) = 1;
        v77 = v49;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else if (v41 != *MEMORY[0x277D7E310])
    {
      v69 = v29;
      static WOLog.dataLink.getter();
      v26(v42, a1, v7);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v42;
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        v56 = MirroredHostCommand.rawValue.getter();
        v57 = v54;
        v58 = v61;
        v61(v57, v7);
        *(v55 + 4) = v56;
        _os_log_impl(&dword_20C66F000, v52, v53, "[mirrored] receivedMirroredHostCommand unknown default: %ld", v55, 0xCu);
        MEMORY[0x20F30E080](v55, -1, -1);
      }

      else
      {
        v58 = v61;
        v61(v42, v7);
      }

      v38(v62, v39);
      v58(v40, v7);
    }

    return v75(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MirrorViewMonitor.receivedMirroredHostCommand(_:closure:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for Logger();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MirroredClientCommand();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  (*(v9 + 104))(&v41 - v16, *MEMORY[0x277D7E380], v8, v15);
  static WOLog.dataLink.getter();
  v18 = *(v9 + 16);
  v50 = v17;
  v44 = v18;
  v18(v13, v17, v8);
  v45 = v7;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v51 = v8;
    v22 = v21;
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v22 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v4;
    v24 = a1;
    v26 = v25;
    v49 = *(v9 + 8);
    v49(v13, v51);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v53);
    a1 = v24;
    v4 = v43;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_20C66F000, v19, v20, "[mirrored] sendMirroredClientCommand is sending (%s)", v22, 0xCu);
    v28 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm_4(v42);
    MEMORY[0x20F30E080](v28, -1, -1);
    v29 = v22;
    v8 = v51;
    MEMORY[0x20F30E080](v29, -1, -1);
  }

  else
  {

    v49 = *(v9 + 8);
    v49(v13, v8);
  }

  (*(v46 + 8))(v45, v47);
  v30 = v9;
  static Double.machTimestamp.getter();
  v32 = v31;
  v33 = type metadata accessor for DataLinkMirroredClientExpectation();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  v34 = v48;
  v35 = v50;
  v44(v48, v50, v8);
  v36 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  (*(v30 + 32))(v37 + v36, v34, v8);

  DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)();

  outlined destroy of DataLinkMirroredClientExpectation?(v4, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
  v38 = *(a1 + 32);
  swift_getKeyPath();
  v53[0] = v38;
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v38 + 18) != 1)
  {
    return (v49)(v35, v8);
  }

  swift_beginAccess();
  if (*(v38 + 17) == 5)
  {
    result = (v49)(v35, v8);
    *(v38 + 17) = 5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v41 - 2) = v38;
    *(&v41 - 8) = 5;
    v52 = v38;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v49)(v35, v8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(int a1, void *a2, uint64_t a3, double a4)
{
  v36 = a1;
  v7 = type metadata accessor for MirroredClientCommand();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Double.machTimestamp.getter();
  v16 = v15;
  static WOLog.dataLink.getter();
  (*(v8 + 16))(v10, a3, v7);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v34 = v12;
    v35 = v11;
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v20 = 136315906;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v37);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16 - a4;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v36 & 1;
    *(v20 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v29 = v35;
    *(v20 + 30) = v26;
    v30 = v32;
    *v32 = v27;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] sendMirroredClientCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error: %@)", v20, 0x26u);
    outlined destroy of DataLinkMirroredClientExpectation?(v30, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v30, -1, -1);
    v31 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm_4(v33);
    MEMORY[0x20F30E080](v31, -1, -1);
    MEMORY[0x20F30E080](v20, -1, -1);

    return (*(v34 + 8))(v14, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t MirrorViewMonitor.receivedMirroredHostStartConfiguration(_:closure:)(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  started = type metadata accessor for MirroredHostStartSource();
  v67 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v55 - v7;
  v8 = type metadata accessor for MirroredHostStartConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for Logger();
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v55 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v22 = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v55 = v5;
    static WOLog.dataLink.getter();
    v24 = *(v9 + 16);
    v63 = a1;
    v58 = v9 + 16;
    v57 = v24;
    v24(v13, a1, v8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v59 = v9;
    v60 = v8;
    v56 = v14;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74[0] = v29;
      *v28 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration, 255, MEMORY[0x277D7E658]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v9 + 8);
      v33(v13, v8);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v74);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_20C66F000, v25, v26, "[mirrored] receivedMirroredHostStartConfiguration (%s)", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v29);
      MEMORY[0x20F30E080](v29, -1, -1);
      MEMORY[0x20F30E080](v28, -1, -1);
    }

    else
    {

      v33 = *(v9 + 8);
      v33(v13, v8);
    }

    v35 = *(v68 + 8);
    v35(v71, v14);
    v36 = v63;
    v37 = *(v64 + 32);
    v38 = MirroredHostStartConfiguration.workoutConfiguration.getter();
    SessionViewModel.workoutConfiguration.setter(v38);
    v39 = MirroredHostStartConfiguration.usePrecisionStart.getter() & 1;
    swift_beginAccess();
    v40 = v67;
    if (v39 == v37[18])
    {
      v37[18] = v39;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v55 - 2) = v37;
      *(&v55 - 8) = v39;
      v73 = v37;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v42 = v69;
    MirroredHostStartConfiguration.startSource.getter();
    v43 = (*(v40 + 88))(v42, started);
    if (v43 == *MEMORY[0x277D7E410])
    {
      swift_beginAccess();
      if (v37[17] != 5)
      {
LABEL_10:
        v44 = swift_getKeyPath();
        MEMORY[0x28223BE20](v44);
        *(&v55 - 2) = v37;
        *(&v55 - 8) = 5;
        v72 = v37;
        _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
      if (v43 != *MEMORY[0x277D7E408])
      {
        v45 = v33;
        static WOLog.dataLink.getter();
        v46 = v61;
        v47 = v36;
        v48 = v60;
        v57(v61, v47, v60);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134217984;
          v52 = v55;
          MirroredHostStartConfiguration.startSource.getter();
          v53 = MirroredHostStartSource.rawValue.getter();
          (*(v40 + 8))(v52, started);
          v45(v46, v48);
          *(v51 + 4) = v53;
          _os_log_impl(&dword_20C66F000, v49, v50, "[mirrored] receivedMirroredHostStartSource unknown default: %ld", v51, 0xCu);
          MEMORY[0x20F30E080](v51, -1, -1);
        }

        else
        {
          v45(v46, v48);
        }

        v54 = v56;

        v35(v62, v54);
        (*(v40 + 8))(v69, started);
        return v66(1, 0);
      }

      if (MirroredHostStartConfiguration.usePrecisionStart.getter())
      {
        swift_beginAccess();
        if (v37[17] != 5)
        {
          goto LABEL_10;
        }
      }
    }

    return v66(1, 0);
  }

  __break(1u);
  return result;
}

uint64_t MirrorViewMonitor.receivedMirroredHostAlertStackRequest(_:closure:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v32 - v7;
  v8 = type metadata accessor for MirroredHostAlertStackRequest();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v34 = v3;
    static WOLog.dataLink.getter();
    v19 = *(v40 + 16);
    v35 = a1;
    v19(v10, a1, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v22 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest, 255, MEMORY[0x277D7E620]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = a2;
      v26 = v25;
      (*(v40 + 8))(v10, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v42);
      a2 = v24;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "[mirrored] receivedMirroredHostAlertStackRequest (%s)", v22, 0xCu);
      v28 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm_4(v33);
      MEMORY[0x20F30E080](v28, -1, -1);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v10, v8);
    }

    (*(v36 + 8))(v39, v37);
    v29 = *(v34 + 32);
    v30 = v38;
    v19(v38, v35, v8);
    (*(v40 + 56))(v30, 0, 1, v8);
    SessionViewModel.alertStackRequest.setter(v30);
    swift_beginAccess();
    if (*(v29 + 17) != 4)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v32 - 2) = v29;
      *(&v32 - 8) = 4;
      v41 = v29;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return a2(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v80 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v68 - v6;
  v74 = type metadata accessor for DataLinkMirroredClientExpected();
  v72 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v73 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DataLinkMirroredClientExpectation();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MirroredClientMachTimestampResponse();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v90 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MirroredHostMachTimestampRequest();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v68 - v15;
  v76 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  v20 = type metadata accessor for Logger();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x28223BE20](v20);
  v85 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v28 = static OS_dispatch_queue.main.getter();
  (*(v26 + 104))(v28, *MEMORY[0x277D85200], v25);
  v29 = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v28, v25);
  if (v29)
  {
    v71 = a3;
    static WOLog.dataLink.getter();
    v86 = *(v12 + 16);
    v87 = v12 + 16;
    v86(v19, a1, v11);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v70 = v12;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v68 = a1;
      v36 = v35;
      v91[0] = v35;
      *v34 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v69 = *(v12 + 8);
      v69(v19, v11);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v91);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_20C66F000, v31, v32, "[mirrored] receivedMirroredHostMachTimestampRequest (%s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v36);
      a1 = v68;
      MEMORY[0x20F30E080](v36, -1, -1);
      MEMORY[0x20F30E080](v34, -1, -1);
    }

    else
    {

      v69 = *(v12 + 8);
      v69(v19, v11);
    }

    v41 = *(v88 + 8);
    v41(v24, v89);
    MirroredHostMachTimestampRequest.hostMachTimestamp.getter();
    static Double.machTimestamp.getter();
    MirroredClientMachTimestampResponse.init(hostMachTimestamp:clientMachTimestamp:)();
    v42 = type metadata accessor for MirroredHostCountdownStart();
    v43 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart, 255, MEMORY[0x277D7E590]);
    v44 = v73;
    *v73 = v42;
    v44[1] = v43;
    (*(v72 + 104))(v44, *MEMORY[0x277D7E640], v74);
    type metadata accessor for DataLinkConstants();
    static DataLinkConstants.defaultExpectationTimeout.getter();
    v45 = v79;
    DataLinkMirroredClientExpectation.init(expected:timeout:)();
    v46 = v85;
    static WOLog.dataLink.getter();
    v47 = v75;
    v86(v75, a1, v11);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v74 = v41;
      v51 = v50;
      v52 = swift_slowAlloc();
      v91[0] = v52;
      *v51 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v47;
      v56 = v55;
      v57 = v70;
      v69(v54, v11);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v56, v91);

      *(v51 + 4) = v58;
      _os_log_impl(&dword_20C66F000, v48, v49, "[mirrored] sendMirroredClientMachTimestampResponse is sending (%s)", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v52);
      MEMORY[0x20F30E080](v52, -1, -1);
      MEMORY[0x20F30E080](v51, -1, -1);

      v74(v85, v89);
    }

    else
    {

      v57 = v70;
      v69(v47, v11);
      v41(v46, v89);
    }

    v59 = v84;
    static Double.machTimestamp.getter();
    v61 = v60;
    v63 = v82;
    v62 = v83;
    (*(v82 + 16))(v59, v45, v83);
    (*(v63 + 56))(v59, 0, 1, v62);
    v64 = v77;
    v86(v77, a1, v11);
    v65 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v61;
    (*(v57 + 32))(v66 + v65, v64, v11);

    v67 = v90;
    DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)();

    outlined destroy of DataLinkMirroredClientExpectation?(v59, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd);
    v80(1, 0);
    (*(v63 + 8))(v45, v62);
    return (*(v78 + 8))(v67, v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(int a1, void *a2, uint64_t a3, double a4)
{
  v36 = a1;
  v7 = type metadata accessor for MirroredHostMachTimestampRequest();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Double.machTimestamp.getter();
  v16 = v15;
  static WOLog.dataLink.getter();
  (*(v8 + 16))(v10, a3, v7);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v34 = v12;
    v35 = v11;
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v20 = 136315906;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v37);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16 - a4;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v36 & 1;
    *(v20 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v29 = v35;
    *(v20 + 30) = v26;
    v30 = v32;
    *v32 = v27;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] sendMirroredClientMachTimestampResponse completion (%s) with roundtripTime: %f (success: %{BOOL}d, error: %@)", v20, 0x26u);
    outlined destroy of DataLinkMirroredClientExpectation?(v30, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v30, -1, -1);
    v31 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm_4(v33);
    MEMORY[0x20F30E080](v31, -1, -1);
    MEMORY[0x20F30E080](v20, -1, -1);

    return (*(v34 + 8))(v14, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v107 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v115 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v124 = v7;
  v125 = v8;
  MEMORY[0x28223BE20](v7);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v100 - v11;
  MEMORY[0x28223BE20](v12);
  v116 = &v100 - v13;
  v105 = v14;
  MEMORY[0x28223BE20](v15);
  v123 = &v100 - v16;
  v110 = type metadata accessor for DispatchTime();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v121 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = &v100 - v19;
  v20 = type metadata accessor for MirroredHostCountdownStart();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Logger();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v100 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for OS_dispatch_queue();
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v31, *MEMORY[0x277D85200], v28);
  v32 = _dispatchPreconditionTest(_:)();
  result = (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  MirroredHostCountdownStart.hostMachDelay.getter();
  v34 = 0.0;
  v35 = 0.0;
  if (v36 >= 0.0)
  {
    MirroredHostCountdownStart.hostMachDelay.getter();
    v35 = v37;
  }

  v102 = v4;
  static Double.machTimestamp.getter();
  v39 = v38;
  MirroredHostCountdownStart.clientMachTimestamp.getter();
  if (v40 > 0.0)
  {
    MirroredHostCountdownStart.clientMachTimestamp.getter();
    v34 = v39 - v41;
  }

  if (v34 < 0.0)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v34;
  }

  v43 = (v35 - v42) * 0.5;
  static WOLog.dataLink.getter();
  (*(v21 + 16))(v23, a1, v20);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart, 255, MEMORY[0x277D7E590]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v21 + 8))(v23, v20);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_20C66F000, v44, v45, "[mirrored] receivedMirroredHostCountdownStart (%s)", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v47);
    MEMORY[0x20F30E080](v47, -1, -1);
    MEMORY[0x20F30E080](v46, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v23, v20);
  }

  v52 = *(v118 + 8);
  v52(v27, v119);
  v53 = v124;
  v54 = v116;
  static DispatchTime.now()();
  static Date.now.getter();
  + infix(_:_:)();
  v55 = DispatchTime.uptimeNanoseconds.getter();
  v56 = DispatchTime.uptimeNanoseconds.getter() >= v55;
  v57 = v120;
  v58 = v125;
  v59 = v117;
  if (v56)
  {
    goto LABEL_15;
  }

  v60 = v117;
  v61 = v53;
  v62 = v54;
  v63 = v120;
  v64 = DispatchTime.uptimeNanoseconds.getter();
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v64 < result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v57 = v63;
  v54 = v62;
  v53 = v61;
  v59 = v60;
  v58 = v125;
LABEL_15:
  v116 = v52;
  Date.addingTimeInterval(_:)();
  v65 = *(v57 + 32);
  swift_beginAccess();
  if (*(v65 + 17) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v100 - 2) = v65;
    *(&v100 - 8) = 2;
    aBlock[0] = v65;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  static WOLog.dataLink.getter();
  v67 = *(v58 + 16);
  v68 = v104;
  v67(v104, v54, v53);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v68;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136316418;
    v74 = Date.logString.getter();
    v76 = v75;
    v77 = *(v125 + 8);
    v101 = (v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104 = v77;
    (v77)(v71, v124);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, aBlock);
    v53 = v124;

    *(v72 + 4) = v78;
    *(v72 + 12) = 2048;
    *(v72 + 14) = v39;
    *(v72 + 22) = 2048;
    *(v72 + 24) = v34;
    *(v72 + 32) = 2048;
    *(v72 + 34) = v42;
    *(v72 + 42) = 2048;
    *(v72 + 44) = v43;
    *(v72 + 52) = 2048;
    *(v72 + 54) = v35;
    _os_log_impl(&dword_20C66F000, v69, v70, "[mirrored] created Countdown Deadline with fireDate: %s, client (now: %f, roundtrip: %f, delay: %f, secondsUntilStart: %f), host (delay: %f)", v72, 0x3Eu);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v73);
    v79 = v73;
    v58 = v125;
    MEMORY[0x20F30E080](v79, -1, -1);
    MEMORY[0x20F30E080](v72, -1, -1);

    v80 = v117;
  }

  else
  {

    v81 = *(v58 + 8);
    v101 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104 = v81;
    (v81)(v68, v53);
    v80 = v59;
  }

  (v116)(v80, v119);
  v82 = v108;
  v83 = v107;
  v124 = static OS_dispatch_queue.main.getter();
  v84 = swift_allocObject();
  swift_weakInit();
  v85 = v106;
  v67(v106, v54, v53);
  v86 = (*(v58 + 80) + 48) & ~*(v58 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v84;
  *(v87 + 24) = v83;
  *(v87 + 32) = v82;
  *(v87 + 40) = v43;
  (*(v58 + 32))(v87 + v86, v85, v53);
  aBlock[4] = partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:);
  aBlock[5] = v87;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v88 = _Block_copy(aBlock);

  v89 = v111;
  static DispatchQoS.unspecified.getter();
  v126 = MEMORY[0x277D84F90];
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  v90 = v54;
  v91 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v92 = v113;
  v93 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v94 = v121;
  v95 = v124;
  MEMORY[0x20F30C1A0](v121, v89, v92, v88);
  _Block_release(v88);

  (*(v115 + 8))(v92, v93);
  (*(v112 + 8))(v89, v114);
  v96 = v90;
  v97 = v104;
  (v104)(v96, v91);
  v98 = *(v109 + 8);
  v99 = v110;
  v98(v94, v110);
  v97(v123, v91);
  v98(v122, v99);
}

uint64_t closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(double a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v51 = a3;
    v23 = *(Strong + 32);
    swift_getKeyPath();
    v56[1] = v23;
    v50[1] = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v23 + 17) == 2)
    {
      static WOLog.dataLink.getter();
      (*(v9 + 16))(v11, a5, v8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        v55[0] = v50[0];
        *v26 = 134218242;
        *(v26 + 4) = a1;
        *(v26 + 12) = 2080;
        v27 = Date.logString.getter();
        v29 = v28;
        (*(v9 + 8))(v11, v8);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v55);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_20C66F000, v24, v25, "[mirrored] Countdown begin sequence after delay of %f seconds on client, fireDate: %s", v26, 0x16u);
        v31 = v50[0];
        __swift_destroy_boxed_opaque_existential_1Tm_4(v50[0]);
        MEMORY[0x20F30E080](v31, -1, -1);
        MEMORY[0x20F30E080](v26, -1, -1);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }

      (*(v52 + 8))(v17, v53);
      v47 = *(v22 + 32);
      swift_beginAccess();
      if (*(v47 + 16) == 1)
      {
        *(v47 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v50[-2] = v47;
        LOBYTE(v50[-1]) = 1;
        v56[0] = v47;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v51(1, 0);
    }

    static WOLog.dataLink.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v38, v39))
    {

      (*(v52 + 8))(v14, v53);
      v51(1, 0);
    }

    v40 = 0xEE0077656956676ELL;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v41 = 136315394;
    v43 = *(v22 + 32);
    swift_getKeyPath();
    v55[0] = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v44 = *(v43 + 17);
    if (v44 > 2)
    {
      if (v44 != 3)
      {
        if (v44 == 4)
        {
          v45 = 0x6174537472656C61;
        }

        else
        {
          v45 = 0x6F69737365536E69;
        }

        if (v44 == 4)
        {
          v40 = 0xEE00776569566B63;
        }

        else
        {
          v40 = 0xED0000776569566ELL;
        }

        v46 = v51;
        goto LABEL_35;
      }

      v40 = 0xEB00000000776569;
      v45 = 0x567972616D6D7573;
    }

    else
    {
      if (*(v43 + 17))
      {
        if (v44 == 1)
        {
          v45 = 0xD000000000000011;
        }

        else
        {
          v45 = 0x776F64746E756F63;
        }

        if (v44 == 1)
        {
          v40 = 0x800000020CB9A080;
        }

        else
        {
          v40 = 0xED0000776569566ELL;
        }

        v46 = v51;
        goto LABEL_35;
      }

      v45 = 0x697463656E6E6F63;
    }

    v46 = v51;
LABEL_35:
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v40, v56);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2080;
    *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x776F64746E756F63, 0xED0000776569566ELL, v56);
    _os_log_impl(&dword_20C66F000, v38, v39, "[mirrored] Countdown begin sequence skipped, current view (%s) is not (%s)", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v42, -1, -1);
    MEMORY[0x20F30E080](v41, -1, -1);

    (*(v52 + 8))(v14, v53);
    v46(1, 0);
  }

  static WOLog.dataLink.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = a3;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20C66F000, v32, v33, "[mirrored] Countdown begin sequence skipped, self is nil", v35, 2u);
    v36 = v35;
    a3 = v34;
    MEMORY[0x20F30E080](v36, -1, -1);
  }

  (*(v52 + 8))(v20, v53);
  return (a3)(1, 0);
}

uint64_t MirrorViewMonitor.receivedMirroredHostSummaryUpdate(_:closure:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v32 - v7;
  v8 = type metadata accessor for MirroredHostSummaryUpdate();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v34 = v3;
    static WOLog.dataLink.getter();
    v19 = *(v40 + 16);
    v35 = a1;
    v19(v10, a1, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v22 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate, 255, MEMORY[0x277D7E538]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = a2;
      v26 = v25;
      (*(v40 + 8))(v10, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v42);
      a2 = v24;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "[mirrored] receivedMirroredHostSummaryUpdate (%s)", v22, 0xCu);
      v28 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm_4(v33);
      MEMORY[0x20F30E080](v28, -1, -1);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v10, v8);
    }

    (*(v36 + 8))(v39, v37);
    v29 = *(v34 + 32);
    v30 = v38;
    v19(v38, v35, v8);
    (*(v40 + 56))(v30, 0, 1, v8);
    SessionViewModel.summaryUpdate.setter(v30);
    swift_beginAccess();
    if (*(v29 + 17) != 3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v32 - 2) = v29;
      *(&v32 - 8) = 3;
      v41 = v29;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return a2(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MirrorViewMonitor.failedClientExpectation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredClientExpectation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    static WOLog.dataLink.getter();
    (*(v5 + 16))(v7, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v2;
      v21 = v20;
      v29 = v20;
      *v19 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DataLinkMirroredClientExpectation and conformance DataLinkMirroredClientExpectation, 255, MEMORY[0x277D7E6D0]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v29);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_20C66F000, v17, v18, "[mirrored] failedClientExpectation (%s) end session", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v21);
      MEMORY[0x20F30E080](v21, -1, -1);
      MEMORY[0x20F30E080](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v27 + 8))(v10, v28);
    return dispatch thunk of DataLinkClient.endSession()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = v66 - v8;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v66 - v15;
  MEMORY[0x28223BE20](v17);
  v79 = v66 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v66 - v20;
  active = type metadata accessor for DataLinkActivePairedWatchCapability();
  v76 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = specialized SessionViewModel.__allocating_init()();
  v25 = MEMORY[0x277D84F90];
  *(v4 + 32) = v24;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  if (v25 >> 62 && __CocoaSet.count.getter())
  {
    v26 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *(v4 + 80) = v26;
  v80 = v4 + 80;
  *(v4 + 88) = 2;
  *(v4 + 16) = a1;
  type metadata accessor for WorkoutNotificationCenter();
  swift_allocObject();
  v75 = a1;
  *(v4 + 24) = WorkoutNotificationCenter.init()();
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirrorViewMonitor and conformance MirrorViewMonitor, v27, type metadata accessor for MirrorViewMonitor);

  dispatch thunk of DataLinkClient.mirroredClientDelegate.setter();

  v28 = *(v4 + 32);
  v29 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown;
  swift_beginAccess();
  v30 = *(v28 + v29);
  v67 = v16;
  if (v30)
  {
    KeyPath = swift_getKeyPath();
    v66[0] = v23;
    v66[1] = v66;
    MEMORY[0x28223BE20](KeyPath);
    v66[-2] = v28;
    LOBYTE(v66[-1]) = 0;
    aBlock[0] = v28;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v23 = v66[0];
  }

  else
  {
    *(v28 + v29) = 0;
  }

  v32 = *(v4 + 56);
  v33 = v78;
  *(v4 + 56) = v78;
  *(v4 + 64) = a3;
  sub_20C694B3C(v33);
  sub_20C694AEC(v32);
  MetricsPublisher.workoutStatePublisher.getter();
  v34 = WorkoutStatePublisher.workoutStarted.getter();

  *(v4 + 72) = v34 & 1;
  v35 = v76;
  v36 = active;
  (*(v76 + 104))(v23, *MEMORY[0x277D7E6E0], active);
  v37 = MEMORY[0x20F306B70](v23);
  (*(v35 + 8))(v23, v36);
  static WOLog.dataLink.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v21;
    v41 = swift_slowAlloc();
    *v41 = 67109376;
    *(v41 + 4) = *(v4 + 72);

    *(v41 + 8) = 1024;
    *(v41 + 10) = v37 & 1;
    _os_log_impl(&dword_20C66F000, v38, v39, "[mirrored] MirrorViewMonitor init (workoutStarted: %{BOOL}d, napiliAligned: %{BOOL}d)", v41, 0xEu);
    v42 = v41;
    v21 = v40;
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  else
  {
  }

  v43 = *(v12 + 8);
  v43(v21, v11);
  if (*(v4 + 72) == 1)
  {
    static WOLog.dataLink.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20C66F000, v44, v45, "[mirrored] MirrorViewMonitor observed workout already started, switch to inSessionView", v46, 2u);
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    v43(v79, v11);
    v47 = *(v4 + 32);
    swift_beginAccess();
    if (*(v47 + 17) != 5)
    {
LABEL_23:
      v62 = swift_getKeyPath();
      MEMORY[0x28223BE20](v62);
      v66[-2] = v47;
      LOBYTE(v66[-1]) = 5;
      aBlock[9] = v47;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v37)
  {
    v48 = *(v4 + 32);
    swift_beginAccess();
    if (*(v48 + 32) != 19)
    {
      v49 = swift_getKeyPath();
      v79 = v66;
      MEMORY[0x28223BE20](v49);
      v66[-2] = v48;
      v66[-1] = 19;
      aBlock[0] = v48;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel);
      v78 = 0;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v50 = v67;
    static WOLog.dataLink.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_20C66F000, v51, v52, "[mirrored] MirrorViewMonitor is initiating MirroredStart handshake", v53, 2u);
      MEMORY[0x20F30E080](v53, -1, -1);
    }

    v43(v50, v11);
    type metadata accessor for OS_dispatch_queue();
    v54 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:);
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_63;
    v55 = _Block_copy(aBlock);

    v56 = v68;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v57 = v70;
    v58 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v56, v57, v55);
    _Block_release(v55);

    (*(v72 + 8))(v57, v58);
    (*(v69 + 8))(v56, v71);
  }

  else
  {
    static WOLog.dataLink.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_20C66F000, v59, v60, "[mirrored] MirrorViewMonitor observed activePairedWatch is not MirroredStart capable, switch to inSessionView", v61, 2u);
      MEMORY[0x20F30E080](v61, -1, -1);
    }

    v43(v74, v11);
    v47 = *(v4 + 32);
    swift_beginAccess();
    if (*(v47 + 17) != 5)
    {
      goto LABEL_23;
    }
  }

  MetricsPublisher.workoutStatePublisher.getter();
  v63 = v81;
  WorkoutStatePublisher.$workoutStarted.getter();

  swift_allocObject();
  swift_weakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  v64 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v63, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}