unint64_t lazy protocol witness table accessor for type MetricTextWithAccessory<EmptyView> and conformance MetricTextWithAccessory<A>()
{
  result = lazy protocol witness table cache variable for type MetricTextWithAccessory<EmptyView> and conformance MetricTextWithAccessory<A>;
  if (!lazy protocol witness table cache variable for type MetricTextWithAccessory<EmptyView> and conformance MetricTextWithAccessory<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricTextWithAccessory<EmptyView> and conformance MetricTextWithAccessory<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA16_FlexFrameLayoutVGAA08_PaddingL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, MetricDetail> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAD12MetricDetailVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntervalDistanceBasedTimeMetricView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalDistanceBasedTimeMetricView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MetricTextWithAccessory<EmptyView>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MetricTextWithAccessory<EmptyView>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MetricTextWithAccessory<EmptyView>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB023MetricTextWithAccessoryVyAA9EmptyViewVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGAEyAEyAEyAF0f4TimeL0VAF0G6DetailVGAMGAPGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricTextWithAccessory<EmptyView>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MetricTextWithAccessory<EmptyView>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t PacerDistanceValuePicker.init(workoutConfiguration:formattingManager:intent:editMode:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for PacerDistanceValuePicker();
  v13 = (a6 + v12[5]);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  v15 = (a6 + v12[6]);
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v15 = EnvironmentObject.init()();
  v15[1] = v16;
  v17 = a6 + v12[10];
  *v17 = FocusState.init<>()() & 1;
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  v20 = (a6 + v12[7]);
  type metadata accessor for PacerWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  result = ObservedObject.init(wrappedValue:)();
  *v20 = result;
  v20[1] = v22;
  *(a6 + v12[8]) = a1;
  *(a6 + v12[9]) = v11;
  v23 = a6 + v12[11];
  *v23 = a3;
  *(v23 + 1) = a4;
  v23[16] = a5;
  return result;
}

unint64_t PacerDistanceValuePicker.minimumValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6HKUnitC_SdtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB6DA90;
  v1 = objc_opt_self();
  *(inited + 32) = [v1 yardUnit];
  *(inited + 40) = 0x409B800000000000;
  *(inited + 48) = [v1 mileUnit];
  *(inited + 56) = 0x3FF0000000000000;
  *(inited + 64) = [v1 meterUnit];
  *(inited + 72) = 0x408F400000000000;
  *(inited + 80) = [v1 meterUnitWithMetricPrefix_];
  *(inited + 88) = 0x3FF0000000000000;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo6HKUnitC_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6HKUnitC_SdtMd);
  swift_arrayDestroy();
  return v2;
}

uint64_t PacerDistanceValuePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DistancePicker();
  MEMORY[0x28223BE20](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_AGyAA14NavigationLinkVyAA4TextVAGyAGyAL018PacerDurationValueL0VAA30_EnvironmentKeyWritingModifierVy0J4Core0J23ConfigurationDataSourceCSgGGAVyAL0xM5ModelCSgGGGAL018PinnedBottomButtonV5PhoneVGtGGAL0liV0VGAN_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_ACyAA14NavigationLinkVyAA4TextVACyACyAH018PacerDurationValueJ0VAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGARyAH0vK5ModelCSgGGGAH018PinnedBottomButtonT5PhoneVGtGGAH0jgT0VGMd);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  if (static Platform.current.getter())
  {
    *v12 = static HorizontalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB014DistancePickerV_AA15ModifiedContentVyAA14NavigationLinkVyAA4TextVANyANyAJ018PacerDurationValueK0VAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGAVyAJ0yN5ModelCSgGGGAJ018PinnedBottomButtonW5PhoneVGtGGMd);
    closure #1 in PacerDistanceValuePicker.body.getter(&v12[*(v13 + 44)]);
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v18 = v17;
    type metadata accessor for PacerDistanceValuePicker();
    v19 = PacerWorkoutConfiguration.distanceGoal.getter();
    v29[2] = v2;
    v20 = [v19 goalTypeIdentifier];
    v29[1] = a1;
    v21 = v20;

    _HKWorkoutGoalType.colorForCurrentContrastMode.getter(v21);
    v22 = Color.init(uiColor:)();
    v23 = PacerWorkoutConfiguration.distanceGoal.getter();
    v24 = [v23 goalTypeIdentifier];

    _HKWorkoutGoalType.color.getter(v24);
    v25 = Color.init(uiColor:)();
    v26 = static Edge.Set.all.getter();
    v27 = &v12[*(v10 + 36)];
    *v27 = v16;
    *(v27 + 1) = v18;
    *(v27 + 2) = v22;
    *(v27 + 3) = v25;
    v27[32] = v26;
    outlined init with copy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v12, v7, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_ACyAA14NavigationLinkVyAA4TextVACyACyAH018PacerDurationValueJ0VAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGARyAH0vK5ModelCSgGGGAH018PinnedBottomButtonT5PhoneVGtGGAH0jgT0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v12, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_ACyAA14NavigationLinkVyAA4TextVACyACyAH018PacerDurationValueJ0VAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGARyAH0vK5ModelCSgGGGAH018PinnedBottomButtonT5PhoneVGtGGAH0jgT0VGMd);
  }

  else
  {
    PacerDistanceValuePicker.pickerView()(v4);
    outlined init with copy of DistancePicker(v4, v7);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of DistancePicker(v4);
  }
}

uint64_t closure #1 in PacerDistanceValuePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0O15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGALyAH0rE5ModelCSgGGGAH018PinnedBottomButtonP5PhoneVGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DistancePicker();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  PacerDistanceValuePicker.pickerView()(&v19 - v15);
  PacerDistanceValuePicker.durationPickerView()(v4);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  NavigationLink.init(destination:label:)();
  outlined init with copy of DistancePicker(v16, v13);
  outlined init with copy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGALyAH0rE5ModelCSgGGGAH018PinnedBottomButtonP5PhoneVGMd);
  outlined init with copy of DistancePicker(v13, a1);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14DistancePickerV_05SwiftB015ModifiedContentVyAD14NavigationLinkVyAD4TextVAFyAFyAA018PacerDurationValueD0VAD30_EnvironmentKeyWritingModifierVy0A4Core0A23ConfigurationDataSourceCSgGGANyAA0sH5ModelCSgGGGAA018PinnedBottomButtonQ5PhoneVGtMd);
  outlined init with copy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v7, a1 + *(v17 + 48), &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGALyAH0rE5ModelCSgGGGAH018PinnedBottomButtonP5PhoneVGMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v10, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGALyAH0rE5ModelCSgGGGAH018PinnedBottomButtonP5PhoneVGMd);
  outlined destroy of DistancePicker(v16);
  outlined destroy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(v7, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA4TextVACyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGALyAH0rE5ModelCSgGGGAH018PinnedBottomButtonP5PhoneVGMd);
  return outlined destroy of DistancePicker(v13);
}

uint64_t PacerDistanceValuePicker.pickerView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PacerDistanceValuePicker();
  v5 = (v1 + v4[7]);
  v6 = v5[1];
  v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v27 = *(v2 + v4[8]);
  v8 = *v5;
  v9 = type metadata accessor for PacerWorkoutConfiguration();
  v10 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  v11 = MEMORY[0x20F308920](v8, v6, v9, v10);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v26 = PacerDistanceValuePicker.minimumValues.getter();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v12 = Color.init(uiColor:)();
  v13 = v2 + v4[11];
  v28 = *v13;
  v29 = *(v13 + 8);
  LOBYTE(v30) = *(v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v12;
  *(a1 + 40) = 1;
  type metadata accessor for MainActor();

  v14 = v36;
  swift_retain_n();
  v25 = v7;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v34;
  v16[5] = v35;
  v16[6] = v14;

  v24 = v14;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = v34;
  v19[5] = v35;
  v19[6] = v24;
  _sSo21FIUIFormattingManagerCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  Binding.init(get:set:)();
  type metadata accessor for DistancePickerViewModel();
  swift_allocObject();

  v20 = v30;
  DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v28, v29, v20, v27, v26, 0);
  v21 = type metadata accessor for DistancePicker();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
  Bindable<A>.init(wrappedValue:)();

  v23 = a1 + *(v21 + 28);
  *v23 = v31;
  *(v23 + 8) = v32;
  *(v23 + 16) = v33;
  return result;
}

uint64_t PacerDistanceValuePicker.durationPickerView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for PacerDurationValuePicker();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  MEMORY[0x28223BE20](v36);
  v37 = &v29[-v7];
  v8 = type metadata accessor for PacerDistanceValuePicker();
  v9 = *(v2 + v8[7] + 8);
  v10 = *(v2 + v8[8]);
  v35 = *(v2 + v8[9]);
  v39 = 0;
  v33 = v9;
  v34 = v10;
  static Binding.constant(_:)();
  v31 = v41;
  v32 = v40;
  v30 = v42;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v11 = (v6 + v4[7]);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *v11 = EnvironmentObject.init()();
  v11[1] = v12;
  v13 = (v6 + v4[8]);
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  v15 = (v6 + v4[9]);
  type metadata accessor for PacerWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  *v15 = ObservedObject.init(wrappedValue:)();
  v15[1] = v16;
  *(v6 + v4[10]) = v34;
  *(v6 + v4[11]) = v35;
  v17 = v6 + v4[12];
  v18 = v31;
  *v17 = v32;
  *(v17 + 1) = v18;
  v17[16] = v30;
  v19 = *(v2 + v8[5]);
  if (v19)
  {
    v20 = v19;
    v21 = static ObservableObject.environmentStore.getter();
    v22 = v37;
    outlined init with take of PacerDurationValuePicker(v6, v37);
    v23 = &v22[*(v36 + 36)];
    *v23 = v21;
    v23[1] = v19;
    v24 = *(v2 + v8[6]);
    if (v24)
    {

      v25 = static ObservableObject.environmentStore.getter();
      v26 = v38;
      outlined init with take of ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>(v22, v38);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0O15NavigationModelCSgGGMd);
      v28 = (v26 + *(result + 36));
      *v28 = v25;
      v28[1] = v24;
      return result;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PacerDistanceValuePicker.body.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t type metadata accessor for PacerDistanceValuePicker()
{
  result = type metadata singleton initialization cache for PacerDistanceValuePicker;
  if (!type metadata singleton initialization cache for PacerDistanceValuePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_ACyAA14NavigationLinkVyAA4TextVACyACyAH018PacerDurationValueJ0VAA30_EnvironmentKeyWritingModifierVy0H4Core0H23ConfigurationDataSourceCSgGGARyAH0vK5ModelCSgGGGAH018PinnedBottomButtonT5PhoneVGtGGAH0jgT0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_AA15ModifiedContentVyAA14NavigationLinkVyAA4TextVAJyAJyAF018PacerDurationValueH0VAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGARyAF0vK5ModelCSgGGGAF018PinnedBottomButtonT5PhoneVGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for PacerDistanceValuePicker()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservedObject<PacerWorkoutConfiguration>();
        if (v3 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_3(319, &lazy cache variable for type metadata for FIUIFormattingManager);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FocusState<Bool>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<Bool>();
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

void type metadata accessor for FocusState<Bool>()
{
  if (!lazy cache variable for type metadata for FocusState<Bool>)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusState<Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>, DistancePicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>, DistancePicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>, DistancePicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVy07WorkoutB014DistancePickerV_AEyAA14NavigationLinkVyAA4TextVAEyAEyAJ018PacerDurationValueK0VAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGATyAJ0wL5ModelCSgGGGAJ018PinnedBottomButtonU5PhoneVGtGGAJ0khU0VGALGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>, DistancePicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0O15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type PacerDurationValuePicker and conformance PacerDurationValuePicker, type metadata accessor for PacerDurationValuePicker);
    lazy protocol witness table accessor for type VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(DistancePicker, ModifiedContent<NavigationLink<Text, ModifiedContent<ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<PacerDurationValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDurationValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_45()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_3(uint64_t a1, unint64_t *a2)
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

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutEffort.highestSubWorkoutEffort.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutEffort() + 28);

  return outlined init with copy of AppleExertionScale?(v3, a1);
}

uint64_t type metadata accessor for WorkoutEffort()
{
  result = type metadata singleton initialization cache for WorkoutEffort;
  if (!type metadata singleton initialization cache for WorkoutEffort)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *WorkoutEffort.init(efforts:isGroupWorkout:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v112 = type metadata accessor for ExertionValue();
  v94 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = &v94 - v8;
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v113 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v94 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v94 - v15;
  MEMORY[0x28223BE20](v16);
  v109 = &v94 - v17;
  MEMORY[0x28223BE20](v18);
  v96 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v114 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v95 = &v94 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](a1);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v98 = &v94 - v27;
  MEMORY[0x28223BE20](v28);
  v32 = &v94 - v31;
  *a3 = a1;
  v99 = a1;
  v100 = a3;
  *(a3 + 8) = a2;
  v33 = *(a1 + 16);
  v116 = v10;
  v97 = v33;
  if (v33)
  {
    v34 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v35 = *(v30 + 72);
    v36 = (v10 + 32);

    v117 = MEMORY[0x277D84F90];
    v107 = (v10 + 32);
    do
    {
      outlined init with copy of AppleExertionScale?(v34, v32);
      outlined init with take of AppleExertionScale?(v32, v25);
      if ((*(v10 + 48))(v25, 1, v9) == 1)
      {
        _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      }

      else
      {
        v37 = *v36;
        (*v36)(v114, v25, v9);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v117;
        }

        else
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v117 = v38;
        v42 = v38 + v41 + *(v116 + 72) * v40;
        v36 = v107;
        v37(v42, v114, v9);
      }

      v34 += v35;
      --v33;
    }

    while (v33);
  }

  else
  {

    v117 = MEMORY[0x277D84F90];
  }

  v43 = v100;
  v44 = v117;
  *(v100 + 16) = v117;
  v45 = v44[2];
  if (v45)
  {
    v46 = v116;
    v47 = *(v116 + 16);
    v48 = v95;
    v105 = v44 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v106 = v47;
    v107 = (v116 + 16);
    (v47)(v95);

    result = v117;
    v50 = v96;
    if (v45 != 1)
    {
      v102 = v46 + 8;
      v103 = (v94 + 8);
      v101 = (v46 + 32);
      v66 = 1;
      v104 = v45;
      v67 = v112;
      while (v66 < result[2])
      {
        v106(v50, &v105[*(v46 + 72) * v66], v9);
        v68 = v110;
        AppleExertionScale.exertionValue.getter();
        v114 = ExertionValue.level.getter();
        v69 = *v103;
        (*v103)(v68, v67);
        v70 = v111;
        AppleExertionScale.exertionValue.getter();
        v71 = ExertionValue.level.getter();
        v69(v70, v67);
        v72 = *(v46 + 8);
        if (v114 >= v71)
        {
          v72(v50, v9);
        }

        else
        {
          v72(v48, v9);
          (*v101)(v48, v50, v9);
        }

        ++v66;
        v46 = v116;
        result = v117;
        if (v104 == v66)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_48;
    }

LABEL_15:

    v51 = v98;
    (*(v46 + 32))(v98, v48, v9);
    v52 = 0;
    v43 = v100;
  }

  else
  {
    v52 = 1;
    v51 = v98;
    v46 = v116;
  }

  (*(v46 + 56))(v51, v52, 1, v9);
  v53 = type metadata accessor for WorkoutEffort();
  outlined init with take of AppleExertionScale?(v51, v43 + v53[7]);
  v107 = v53;
  if (v97)
  {
    v54 = v117;
    v55 = v117[2];
    v56 = *(v99 + 16);

    *(v43 + v53[9]) = v55 == v56;
    if (v55 == v56)
    {
      v57 = 0;
      v114 = v54[2];
      v106 = (v46 + 16);
      LODWORD(v105) = *MEMORY[0x277D7E298];
      v104 = v46 + 104;
      v102 = v46 + 8;
      v103 = (v94 + 8);
      v58 = v110;
      v59 = (v94 + 8);
      do
      {
        LODWORD(v116) = v114 == v57;
        if (v114 == v57)
        {
          break;
        }

        if (v57 >= v117[2])
        {
          goto LABEL_49;
        }

        (*(v46 + 16))();
        ++v57;
        v60 = v115;
        (*(v46 + 104))(v115, v105, v9);
        lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v61 = v111;
        dispatch thunk of RawRepresentable.rawValue.getter();
        lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue, MEMORY[0x277D7DFA8]);
        v62 = v112;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        v64 = *v59;
        (*v59)(v61, v62);
        v64(v58, v62);
        v65 = *(v46 + 8);
        v65(v60, v9);
        v53 = v107;
        result = (v65)(v109, v9);
      }

      while ((v63 & 1) != 0);
    }

    else
    {
      LODWORD(v116) = 0;
    }
  }

  else
  {

    LODWORD(v116) = 0;
    *(v43 + v53[9]) = 0;
  }

  v73 = v100;
  v74 = v116;
  *(v100 + v53[8]) = v116;
  v75 = v117;
  v76 = v117[2];
  v77 = v74 ^ 1;
  if (!v76)
  {
    v77 = 0;
  }

  *(v73 + v53[10]) = v77;
  v114 = v76;
  if (!v76)
  {
    v80 = MEMORY[0x277D84F90];
LABEL_46:
    v93 = *(v80 + 16);

    *(v100 + v107[11]) = v93;
    return result;
  }

  v78 = 0;
  v112 = v46 + 16;
  LODWORD(v111) = *MEMORY[0x277D7E298];
  v79 = v46 + 8;
  v109 = (v46 + 32);
  v110 = (v46 + 104);
  v80 = MEMORY[0x277D84F90];
  v81 = v108;
  while (v78 < *(v75 + 2))
  {
    v116 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v82 = *(v46 + 72);
    (*(v46 + 16))(v81, &v75[v116 + v82 * v78], v9);
    v83 = v9;
    v84 = v79;
    v85 = v115;
    (*(v46 + 104))(v115, v111, v83);
    lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
    v86 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *(v46 + 8);
    v88 = v85;
    v79 = v84;
    v87(v88, v83);
    if (v86)
    {
      result = (v87)(v81, v83);
      v9 = v83;
    }

    else
    {
      v89 = *v109;
      (*v109)(v113, v81, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1);
        v80 = v118;
      }

      v92 = *(v80 + 16);
      v91 = *(v80 + 24);
      if (v92 >= v91 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1);
        v80 = v118;
      }

      *(v80 + 16) = v92 + 1;
      result = v89(v80 + v116 + v92 * v82, v113, v83);
      v81 = v108;
      v79 = v84;
      v9 = v83;
    }

    ++v78;
    v75 = v117;
    if (v114 == v78)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t outlined init with take of AppleExertionScale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutEffort.effortDescription.getter()
{
  v1 = type metadata accessor for ExertionValue();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutEffort();
  if (*(v0 + v12[8]) == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v34 = 0xE000000000000000;
    v14 = 0x44455050494B53;
    v15 = 0x617A696C61636F4CLL;
    v16 = 0xEB00000000656C62;
    v17 = 0xE700000000000000;
LABEL_5:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *&v15, v13, v18, *(&v34 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (*(v0 + 8) != 1)
  {
    outlined init with copy of AppleExertionScale?(v0 + v12[7], v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      AppleExertionScale.exertionValue.getter();
      countAndFlagsBits = ExertionValue.shortDescription.getter();
      (*(v2 + 8))(v4, v1);
      (*(v9 + 8))(v11, v8);
      return countAndFlagsBits;
    }

    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v7, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v34 = 0xE000000000000000;
    v15 = 0x617A696C61636F4CLL;
    v16 = 0xEB00000000656C62;
    v17 = 0x800000020CB9A2B0;
    v14 = 0xD000000000000018;
    goto LABEL_5;
  }

  if (*(v0 + v12[9]) == 1)
  {
    v22 = v12;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = WorkoutUIBundle.super.isa;
    v36._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002ELL;
    v24._object = 0x800000020CB9A2D0;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20CB5DA70;
    v28 = *(v0 + v22[11]);
    v29 = MEMORY[0x277D83C10];
    *(v27 + 56) = MEMORY[0x277D83B88];
    *(v27 + 64) = v29;
    *(v27 + 32) = v28;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v30 = WorkoutUIBundle.super.isa;
    v37._object = 0xE000000000000000;
    v31._object = 0x800000020CB9A2B0;
    v31._countAndFlagsBits = 0xD000000000000018;
    v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v32.value._object = 0xEB00000000656C62;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v37)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t WorkoutEffort.addEffortDescriptionShortened.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB9A300;
  v2._countAndFlagsBits = 0xD000000000000022;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

id WorkoutEffort.effortTextColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AppleExertionScale();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutEffort();
  if (*(v0 + v11[8]) != 1 && *(v0 + v11[9]) == 1)
  {
    outlined init with copy of AppleExertionScale?(v0 + v11[7], v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      type metadata accessor for UIColor();
      (*(v8 + 16))(v3, v10, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      specialized static EffortColors.textColor(exertion:)(v3);
      _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v3, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      v14 = UIColor.init(_:)();
      (*(v8 + 8))(v10, v7);
      return v14;
    }

    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v6, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  }

  v12 = [objc_opt_self() systemGrayColor];

  return v12;
}

unint64_t WorkoutEffort.effortSymbolSystemName.getter()
{
  v1 = type metadata accessor for ExertionValue();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutEffort();
  if (*(v0 + v12[8]) == 1)
  {
    return 0xD00000000000002ALL;
  }

  if (*(v0 + 8) == 1)
  {
    if (*(v0 + v12[9]))
    {
      return 0;
    }

    else
    {
      return 0x7269632E73756C70;
    }
  }

  else
  {
    outlined init with copy of AppleExertionScale?(v0 + v12[7], v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v7, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      return 0x7269632E73756C70;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      AppleExertionScale.exertionValue.getter();
      v14 = ExertionValue.level.getter();
      (*(v2 + 8))(v4, v1);
      v17[1] = v14;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v15;
      MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
      v16 = v18;
      (*(v9 + 8))(v11, v8);
      return v16;
    }
  }
}

uint64_t WorkoutEffort.effortSymbolLabel.getter()
{
  v1 = type metadata accessor for ExertionValue();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutEffort();
  if ((*(v0 + *(v12 + 32)) & 1) == 0 && (*(v0 + 8) & 1) == 0)
  {
    outlined init with copy of AppleExertionScale?(v0 + *(v12 + 28), v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      AppleExertionScale.exertionValue.getter();
      v14 = ExertionValue.level.getter();
      (*(v2 + 8))(v4, v1);
      v16[1] = v14;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v9 + 8))(v11, v8);
      return v15;
    }

    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v7, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  }

  return 0;
}

uint64_t WorkoutEffort.effortSymbolRenderingMode.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for WorkoutEffort();
  if (*(v0 + *(v4 + 32)) == 1)
  {

    return static SymbolRenderingMode.monochrome.getter();
  }

  outlined init with copy of AppleExertionScale?(v0 + *(v4 + 28), v3);
  v5 = type metadata accessor for AppleExertionScale();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v3, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if (v6 == 1)
  {
    return static SymbolRenderingMode.monochrome.getter();
  }

  return static SymbolRenderingMode.hierarchical.getter();
}

uint64_t WorkoutEffort.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v22 - v4;
  v5 = type metadata accessor for AppleExertionScale();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  specialized Array<A>.hash(into:)(a1, *v1);
  Hasher._combine(_:)(*(v1 + 8));
  v24 = v1;
  v10 = *(v1 + 16);
  MEMORY[0x20F30CD90](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v25 + 16);
    v13 = v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v14 = *(v25 + 72);
    v15 = (v25 + 8);
    do
    {
      v12(v9, v13, v5);
      lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
      dispatch thunk of Hashable.hash(into:)();
      (*v15)(v9, v5);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v16 = type metadata accessor for WorkoutEffort();
  v17 = v23;
  v18 = v24;
  outlined init with copy of AppleExertionScale?(v24 + v16[7], v23);
  v19 = v25;
  if ((*(v25 + 48))(v17, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v22;
    (*(v19 + 32))(v22, v17, v5);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v20, v5);
  }

  Hasher._combine(_:)(*(v18 + v16[8]));
  Hasher._combine(_:)(*(v18 + v16[9]));
  Hasher._combine(_:)(*(v18 + v16[10]));
  return MEMORY[0x20F30CD90](*(v18 + v16[11]));
}

Swift::Int WorkoutEffort.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutEffort.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutEffort()
{
  Hasher.init(_seed:)();
  WorkoutEffort.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutEffort()
{
  Hasher.init(_seed:)();
  WorkoutEffort.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v19 - v11;
  v13 = *(a2 + 16);
  v19[1] = a1;
  MEMORY[0x20F30CD90](v13, v10);
  if (v13)
  {
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = (v5 + 48);
    v17 = (v5 + 32);
    v18 = (v5 + 8);
    do
    {
      outlined init with copy of AppleExertionScale?(v14, v12);
      if ((*v16)(v12, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*v17)(v7, v12, v4);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
        dispatch thunk of Hashable.hash(into:)();
        (*v18)(v7, v4);
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }
}

BOOL specialized static WorkoutEffort.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore18AppleExertionScaleOSg_Tt1g5(*a1, *a2);
  if ((v14 & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore18AppleExertionScaleO_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for WorkoutEffort();
  v15 = v22[7];
  v16 = *(v11 + 48);
  outlined init with copy of AppleExertionScale?(a1 + v15, v13);
  outlined init with copy of AppleExertionScale?(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    outlined init with copy of AppleExertionScale?(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v16], v4);
      lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v13, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v13, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
    return 0;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(v13, &_s11WorkoutCore18AppleExertionScaleOSgMd);
LABEL_11:
  if (*(a1 + v22[8]) == *(a2 + v22[8]) && *(a1 + v22[9]) == *(a2 + v22[9]) && *(a1 + v22[10]) == *(a2 + v22[10]))
  {
    return *(a1 + v22[11]) == *(a2 + v22[11]);
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for WorkoutEffort()
{
  type metadata accessor for [AppleExertionScale?]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AppleExertionScale](319, &lazy cache variable for type metadata for [AppleExertionScale], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AppleExertionScale](319, &lazy cache variable for type metadata for AppleExertionScale?, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [AppleExertionScale?]()
{
  if (!lazy cache variable for type metadata for [AppleExertionScale?])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AppleExertionScale?]);
    }
  }
}

void type metadata accessor for [AppleExertionScale](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AppleExertionScale();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id MediaMomentsScrollView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMomentsScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ZoneBarView()
{
  result = type metadata singleton initialization cache for ZoneBarView;
  if (!type metadata singleton initialization cache for ZoneBarView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ZoneBarView()
{
  type metadata accessor for LiveZonesProtocol();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ZoneViewType();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<LayoutDirection>();
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>, &type metadata for WorkoutViewStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _sSdSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 ZoneBarView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA6ZStackVyAEyAA15ModifiedContentVyAKyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAKyAKyAKyAKyAKyAA6HStackVyAEyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingQ0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_AKyAKyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA36_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowO0VGAA07_OffsetO0VGtGSgtGGtGGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = type metadata accessor for ZoneBarView();
  ZoneBarView.getZoneHeight(forZoneIndex:maxPossibleHeight:)(*(v1 + *(v6 + 24)));
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA6ZStackVyAIyAA15ModifiedContentVyAOyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA06_FrameG0VG_AIyAOyAOyAOyAOyAOyAA6HStackVyAIyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA4_5ScaleOGGAA08_PaddingG0VG_AA4TextVtGGA6_yAUSgGGA6_yAA4FontVSgGGA6_yA15_4CaseOSgGGA12_GA12_G_AOyAOyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressD5StyleRd__lFQOyAA08ProgressD0VyAA05EmptyD0VA40_G_07WorkoutB0015ChevronProgressD5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowR0VGAA07_OffsetR0VGtGSgtGGtGGMd);
  closure #1 in ZoneBarView.body.getter(v1, &v5[*(v7 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>(v5, a1, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA6ZStackVyAEyAA15ModifiedContentVyAKyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAKyAKyAKyAKyAKyAA6HStackVyAEyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingQ0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_AKyAKyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA36_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowO0VGAA07_OffsetO0VGtGSgtGGtGGMd);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA6ZStackVyAGyACyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AGyACyACyACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingQ0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressG5StyleRd__lFQOyAA08ProgressG0VyAA05EmptyG0VA36_G_07WorkoutB0015ChevronProgressG5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowO0VGAA07_OffsetO0VGtGSgtGGtGGAA05_FlexpQ0VGMd) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t ZoneBarView.getZoneHeight(forZoneIndex:maxPossibleHeight:)(unint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ZoneBarView();
  v8 = v1 + *(result + 60);
  v9 = *v8;
  if (v8[8] == 1)
  {
    v15 = *v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v9, 0);
    result = (*(v4 + 8))(v6, v3);
    LOBYTE(v9) = v15;
  }

  if ((v9 | 8) == 8)
  {
    if (one-time initialization token for initialZoneHeight != -1)
    {
      return swift_once();
    }

    return result;
  }

  if (one-time initialization token for initialZoneHeight != -1)
  {
    swift_once();
  }

  v11 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of LiveZonesProtocol.zones.getter();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16LiveZoneProtocol_pMd);
  v12 = _arrayForceCast<A, B>(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v12 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  outlined init with copy of LiveZoneProtocol(v12 + 40 * a1 + 32, v14);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  dispatch thunk of LiveZonesProtocol.longestZoneDuration.getter();
  if ((v13 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    dispatch thunk of LiveZoneProtocol.elapsedTimeInZone.getter();
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t closure #1 in ZoneBarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = a1 + *(type metadata accessor for ZoneBarView() + 60);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = v4;
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v18, 0);
    (*(v5 + 8))(v7, v25);
    LOBYTE(v18) = v26;
  }

  if (v18 <= 9u && ((1 << v18) & 0x301) != 0)
  {
    v20 = static Alignment.center.getter();
  }

  else
  {
    v20 = static Alignment.bottom.getter();
  }

  *v13 = v20;
  v13[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA06_FrameG0VG_AIyAKyAKyAKyAKyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingG0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_AKyAKyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressD5StyleRd__lFQOyAA08ProgressD0VyAA05EmptyD0VA36_G_07WorkoutB0015ChevronProgressD5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowP0VGAA07_OffsetP0VGtGSgtGGMd);
  closure #1 in closure #1 in ZoneBarView.body.getter(a1, v13 + *(v22 + 44));
  outlined init with take of VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>(v13, v16, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v16, v10, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
  *a2 = 0;
  *(a2 + 8) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA06_ShapeF0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AGyAIyAIyAIyAIyAIyAA6HStackVyAGyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZ5ScaleOGGAA08_PaddingP0VG_AA4TextVtGGA0_yAOSgGGA0_yAA4FontVSgGGA0_yA9_4CaseOSgGGA6_GA6_G_AIyAIyAA0F0PAAE08progressF5StyleyQrqd__AA08ProgressF5StyleRd__lFQOyAA08ProgressF0VyAA05EmptyF0VA34_G_07WorkoutB0015ChevronProgressF5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowN0VGAA07_OffsetN0VGtGSgtGGtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v10, a2 + *(v23 + 48), &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
  outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v16, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
  return outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v10, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAGyAGyAGyAGyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAA08_PaddingO0VG_AA4TextVtGGAZyAMSgGGAZyAA4FontVSgGGAZyA7_4CaseOSgGGA4_GA4_G_AGyAGyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowM0VGAA07_OffsetM0VGtGSgtGGMd);
}

uint64_t closure #1 in closure #1 in ZoneBarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGMd);
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v125 = &v110 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v110 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA07_OffsetU0VGMd);
  MEMORY[0x28223BE20](v122);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v110 - v8;
  v113 = type metadata accessor for EnvironmentValues();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v110 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGMd);
  MEMORY[0x28223BE20](v115);
  v126 = (&v110 - v12);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
  MEMORY[0x28223BE20](v117);
  v119 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v110 - v15;
  MEMORY[0x28223BE20](v16);
  v127 = &v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  MEMORY[0x28223BE20](v22);
  v24 = (&v110 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v25);
  v27 = &v110 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v28);
  v128 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v110 - v34;
  if (one-time initialization token for cornerRadius != -1)
  {
    swift_once();
  }

  v36 = static ZoneView.cornerRadius;
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v24 + v37, v38, v39);
  *v24 = v36;
  v24[1] = v36;
  v40 = type metadata accessor for ZoneBarView();
  *(v24 + *(v22 + 52)) = zoneColor(for:index:count:)();
  *(v24 + *(v22 + 56)) = 256;
  v41 = *(a1 + v40[7]);
  if (*(a1 + v40[7]))
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.37;
  }

  outlined init with take of _ShapeView<RoundedRectangle, Color>(v24, v27, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  *&v27[*(v25 + 36)] = v42;
  static Alignment.center.getter();
  v43 = 1;
  _FrameLayout.init(width:height:alignment:)();
  outlined init with take of _ShapeView<RoundedRectangle, Color>(v27, v32, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGMd);
  v44 = &v32[*(v28 + 36)];
  v45 = v138;
  *v44 = v137;
  *(v44 + 1) = v45;
  *(v44 + 2) = v139;
  outlined init with take of _ShapeView<RoundedRectangle, Color>(v32, v35, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
  v46 = v129;
  if (v41 == 1)
  {
    v110 = v35;
    v47 = static VerticalAlignment.center.getter();
    v48 = v126;
    *v126 = v47;
    v48[1] = 0x4010000000000000;
    *(v48 + 16) = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA08_PaddingG0VG_AA4TextVtGGMd);
    closure #1 in closure #1 in closure #1 in ZoneBarView.body.getter(a1, v48 + *(v49 + 44));
    v50 = static Color.black.getter();
    KeyPath = swift_getKeyPath();
    v52 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGMd) + 36));
    *v52 = KeyPath;
    v52[1] = v50;
    if (one-time initialization token for fontSize != -1)
    {
      swift_once();
    }

    static Font.Weight.bold.getter();
    v53 = *MEMORY[0x277CE09A0];
    v54 = type metadata accessor for Font.Design();
    v55 = *(v54 - 8);
    v56 = v114;
    (*(v55 + 104))(v114, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = static Font.system(size:weight:design:)();
    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v56, &_s7SwiftUI4FontV6DesignOSgMd);
    v58 = swift_getKeyPath();
    v59 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGMd) + 36));
    *v59 = v58;
    v59[1] = v57;
    v60 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGMd) + 36));
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
    v62 = *MEMORY[0x277CE0B48];
    v63 = type metadata accessor for Text.Case();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v60 + v61, v62, v63);
    (*(v64 + 56))(v60 + v61, 0, 1, v63);
    v65 = v126;
    *v60 = swift_getKeyPath();
    LOBYTE(v62) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v66 = v65 + *(v115 + 36);
    *v66 = v62;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    LOBYTE(v63) = static Edge.Set.bottom.getter();
    v71 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    v72 = Edge.Set.init(rawValue:)();
    v73 = v123;
    if (v72 != v63)
    {
      v71 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v116;
    outlined init with take of _ShapeView<RoundedRectangle, Color>(v65, v116, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGMd);
    v83 = v82 + *(v117 + 36);
    *v83 = v71;
    *(v83 + 8) = v75;
    *(v83 + 16) = v77;
    *(v83 + 24) = v79;
    *(v83 + 32) = v81;
    *(v83 + 40) = 0;
    outlined init with take of _ShapeView<RoundedRectangle, Color>(v82, v127, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
    v84 = a1 + v40[15];
    v85 = *v84;
    if (*(v84 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v86 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v87 = v111;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v85, 0);
      (*(v112 + 8))(v87, v113);
      LOBYTE(v85) = v135;
    }

    if (v85 <= 9u && ((1 << v85) & 0x301) != 0)
    {
      if (one-time initialization token for initialZoneHeight != -1)
      {
        swift_once();
      }

      v88 = *&static ZoneView.initialZoneHeight;
      if (one-time initialization token for arrowHeight != -1)
      {
        swift_once();
      }

      v89 = v88 - *&static ZoneView.arrowHeight + 2.5;
    }

    else
    {
      v90 = *(a1 + v40[9]);
      if (one-time initialization token for arrowHeight != -1)
      {
        swift_once();
      }

      v89 = v90 + *&static ZoneView.arrowHeight / -3.0;
    }

    v91 = a1 + v40[11];
    v92 = *v91;
    v136 = *(v91 + 8);
    v134 = 0x3FF0000000000000;
    v135 = v92;
    lazy protocol witness table accessor for type Double and conformance Double();
    v93 = v118;
    ProgressView.init<A>(value:total:)();
    lazy protocol witness table accessor for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    lazy protocol witness table accessor for type ChevronProgressViewStyle and conformance ChevronProgressViewStyle();
    v94 = v121;
    View.progressViewStyle<A>(_:)();
    (*(v120 + 8))(v93, v94);
    static Color.black.getter();
    v95 = Color.opacity(_:)();

    if (one-time initialization token for arrowShadowRadius != -1)
    {
      swift_once();
    }

    v96 = static ZoneView.arrowShadowRadius;
    v97 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGMd) + 36));
    *v97 = v95;
    v97[1] = v96;
    v97[2] = 0;
    v97[3] = 0;
    v98 = v73 + *(v122 + 36);
    *v98 = 0;
    *(v98 + 8) = v89;
    v99 = v127;
    v100 = v119;
    outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v127, v119, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
    v101 = v124;
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v73, v124, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA07_OffsetU0VGMd);
    v102 = v125;
    outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v100, v125, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgU0Rd__lFQOyAA0vG0VyAA05EmptyG0VA19_G_07WorkoutB007ChevronvgU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtMd);
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v101, v102 + *(v103 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA07_OffsetU0VGMd);
    outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v73, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA07_OffsetU0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v99, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
    outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v101, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_07WorkoutB007ChevronheG033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA07_OffsetU0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v100, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQGMd);
    outlined init with take of VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>(v102, v46, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGMd);
    v43 = 0;
    v35 = v110;
  }

  (*(v131 + 56))(v46, v43, 1, v132);
  v104 = v128;
  outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v35, v128, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
  v105 = v35;
  v106 = v130;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v46, v130, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGSgMd);
  v107 = v133;
  outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v104, v133, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AA05TupleF0VyACyACyACyACyACyAA6HStackVyARyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAA08_PaddingM0VG_AA4TextVtGGAXyAISgGGAXyAA4FontVSgGGAXyA5_4CaseOSgGGA2_GA2_G_ACyACyAA0F0PAAE08progressF5StyleyQrqd__AA08ProgressF5StyleRd__lFQOyAA08ProgressF0VyAA05EmptyF0VA30_G_07WorkoutB0015ChevronProgressF5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowK0VGAA07_OffsetK0VGtGSgtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v106, v107 + *(v108 + 48), &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGSgMd);
  outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v46, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v105, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
  outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(v106, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyACyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtGGAKyAA5ColorVSgGGAKyAA4FontVSgGGAKyAT4CaseOSgGGAQGAQG_AEyAEyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdU0Rd__lFQOyAA0vD0VyAA05EmptyD0VA19_G_07WorkoutB007ChevronvdU033_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA13_ShadowEffectVGAA13_OffsetEffectVGtGSgMd);
  return outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v104, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in ZoneBarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v62 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v13);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v68 = &v62 - v19;
  v20 = ZoneBarView.zoneImage()();
  v21 = (v12 + *(v10 + 44));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v23 = *MEMORY[0x277CE1050];
  v24 = type metadata accessor for Image.Scale();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v12 = v20;
  v25 = static Edge.Set.top.getter();
  v26 = type metadata accessor for ZoneBarView();
  v27 = *(v26 + 60);
  v67 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v29, 0);
    (*(v63 + 8))(v8, v64);
  }

  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  outlined init with take of _ShapeView<RoundedRectangle, Color>(v12, v17, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v39 = &v17[*(v13 + 36)];
  *v39 = v25;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v17;
  v41 = v68;
  outlined init with take of _ShapeView<RoundedRectangle, Color>(v40, v68, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
  v42 = *(v67 + *(v26 + 24));
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v43 = WorkoutUIBundle.super.isa;
  v71._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0x4D414E5F454E4F5ALL;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v44._object = 0xE900000000000045;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v71);

  static Locale.current.getter();
  v47 = type metadata accessor for Locale();
  (*(*(v47 - 8) + 56))(v5, 0, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (__OFADD__(v42, 1))
  {
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v49;
    *(result + 32) = v42 + 1;
    v50 = String.init(format:locale:_:)();
    v52 = v51;

    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v5, &_s10Foundation6LocaleVSgMd);
    v69 = v50;
    v70 = v52;
    lazy protocol witness table accessor for type String and conformance String();
    v53 = Text.init<A>(_:)();
    v55 = v54;
    LOBYTE(v52) = v56;
    v58 = v57;
    v59 = v65;
    outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v41, v65, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
    v60 = v66;
    outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v59, v66, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
    v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVG_AA4TextVtMd) + 48);
    *v61 = v53;
    *(v61 + 8) = v55;
    LOBYTE(v52) = v52 & 1;
    *(v61 + 16) = v52;
    *(v61 + 24) = v58;
    outlined copy of Text.Storage(v53, v55, v52);

    outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v41, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
    outlined consume of Text.Storage(v53, v55, v52);

    return outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(v59, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA14_PaddingLayoutVGMd);
  }

  return result;
}

uint64_t ZoneBarView.zoneImage()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ZoneViewType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ZoneBarView();
  (*(v6 + 16))(v8, v0 + *(v9 + 20), v5);
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == *MEMORY[0x277D7DFA0] || v10 == *MEMORY[0x277D7DF98])
  {
    return Image.init(systemName:)();
  }

  static WOLog.core.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20C66F000, v12, v13, "Asked to display a zone image for an unknown zone type. Returning heart.", v14, 2u);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v15 = Image.init(systemName:)();
  (*(v6 + 8))(v8, v5);
  return v15;
}

double one-time initialization function for size()
{
  if (one-time initialization token for arrowWidth != -1)
  {
    swift_once();
  }

  v0 = static ZoneView.arrowWidth;
  if (one-time initialization token for arrowHeight != -1)
  {
    swift_once();
  }

  result = *&static ZoneView.arrowHeight;
  static ChevronProgressViewStyle.size = v0;
  qword_27C7E7DA0 = static ZoneView.arrowHeight;
  return result;
}

double closure #1 in ChevronProgressViewStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = static Color.white.getter();
  if (one-time initialization token for size != -1)
  {
    swift_once();
  }

  v5 = *&static ChevronProgressViewStyle.size;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[6] = v9;
  *&v8[22] = v10;
  *&v8[38] = v11;
  GeometryProxy.size.getter();
  *a1 = v4;
  *(a1 + 8) = 256;
  result = v6 * a2 + v5 * -0.5;
  *(a1 + 10) = *v8;
  *(a1 + 26) = *&v8[16];
  *(a1 + 42) = *&v8[32];
  *(a1 + 56) = *(&v11 + 1);
  *(a1 + 64) = result;
  *(a1 + 72) = 0;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ChevronProgressViewStyle.Chevron@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  specialized ChevronProgressViewStyle.Chevron.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ChevronProgressViewStyle.Chevron(uint64_t *a1))(void *a1)
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
  return protocol witness for Animatable.animatableData.modify in conformance ChevronProgressViewStyle.Chevron;
}

void protocol witness for Animatable.animatableData.modify in conformance ChevronProgressViewStyle.Chevron(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ChevronProgressViewStyle.Chevron(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ChevronProgressViewStyle.Chevron(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ChevronProgressViewStyle.Chevron(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance ChevronProgressViewStyle@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v2 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v3)
  {
    v4 = 0;
    result = 0;
  }

  else
  {
    v6 = v2;
    result = swift_allocObject();
    *(result + 16) = v6;
    v4 = partial apply for closure #1 in ChevronProgressViewStyle.makeBody(configuration:);
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ChevronProgressViewStyle and conformance ChevronProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type ChevronProgressViewStyle and conformance ChevronProgressViewStyle;
  if (!lazy protocol witness table cache variable for type ChevronProgressViewStyle and conformance ChevronProgressViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChevronProgressViewStyle and conformance ChevronProgressViewStyle);
  }

  return result;
}

uint64_t outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of _ShapeView<RoundedRectangle, Color>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA6ZStackVyAGyACyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AGyACyACyACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingQ0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressG5StyleRd__lFQOyAA08ProgressG0VyAA05EmptyG0VA36_G_07WorkoutB0015ChevronProgressG5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowO0VGAA07_OffsetO0VGtGSgtGGtGGAA05_FlexpQ0VGMd);
    lazy protocol witness table accessor for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA6ZStackVyAEyAA15ModifiedContentVyAKyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA14_OpacityEffectVGAA12_FrameLayoutVG_AEyAKyAKyAKyAKyAKyAA6HStackVyAEyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGAA08_PaddingQ0VG_AA4TextVtGGA2_yAQSgGGA2_yAA4FontVSgGGA2_yA11_4CaseOSgGGA8_GA8_G_AKyAKyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgressE5StyleRd__lFQOyAA08ProgressE0VyAA05EmptyE0VA36_G_07WorkoutB0015ChevronProgressE5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLVQo_AA07_ShadowO0VGAA07_OffsetO0VGtGSgtGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OpacityEffect>, _FrameLayout>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _ShadowEffect>, _OffsetEffect>)>?)>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<ChevronProgressViewStyle.Chevron, Color>, _FrameLayout>, _OffsetEffect>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<ChevronProgressViewStyle.Chevron, Color>, _FrameLayout>, _OffsetEffect>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<ChevronProgressViewStyle.Chevron, Color>, _FrameLayout>, _OffsetEffect>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA10_ShapeViewVy07WorkoutB0015ChevronProgressH5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLV0J0VAA5ColorVGAA12_FrameLayoutVGAA13_OffsetEffectVGGSgMd);
    lazy protocol witness table accessor for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<ChevronProgressViewStyle.Chevron, Color>, _FrameLayout>, _OffsetEffect>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA10_ShapeViewVy07WorkoutB0015ChevronProgressH5Style33_ACC32EE4C9BE101B8672AD2A8B867594LLV0J0VAA5ColorVGAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<ChevronProgressViewStyle.Chevron, Color>, _FrameLayout>, _OffsetEffect>>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron()
{
  result = lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron;
  if (!lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron;
  if (!lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron;
  if (!lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChevronProgressViewStyle.Chevron and conformance ChevronProgressViewStyle.Chevron);
  }

  return result;
}

double specialized ChevronProgressViewStyle.Chevron.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Mutable = CGPathCreateMutable();
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  Height = CGRectGetHeight(v33);
  v12 = Height + Height;
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  Width = CGRectGetWidth(v34);
  v14 = atan(v12 / Width);
  v15 = __sincos_stret(v14 * 0.5);
  v16 = v15.__cosval * (0.75 / v15.__sinval);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v28 = CGRectGetMidX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  *&v24 = CGRectGetMaxX(v39) - v16;
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v23 = CGRectGetMaxY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MaxX = CGRectGetMaxX(v41);
  v19 = __sincos_stret(v14);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  *&to = CGRectGetMaxY(v42) - v19.__sinval * v16;
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  transform.a = 1.0;
  transform.b = 0.0;
  *&v21 = MinX + CGRectGetMaxX(v44) - (MaxX - v19.__cosval * v16);
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.move(to:transform:)(__PAIR128__(*&MaxY, *&MidX), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v23, v24), &transform);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  CGRectGetMaxX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  CGRectGetMaxY(v46);
  CGMutablePathRef.addArc(tangent1End:tangent2End:radius:transform:)();
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&MinY, *&v28), &transform);
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(to, v21), &transform);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  CGRectGetMinX(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  CGRectGetMaxY(v48);
  CGMutablePathRef.addArc(tangent1End:tangent2End:radius:transform:)();
  CGPathCloseSubpath(Mutable);
  Path.init(_:)();
  result = *&v29;
  *a1 = v29;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

uint64_t getEnumTagSinglePayload for SwimmingDistancePicker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for SwimmingDistancePicker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 SwimmingDistancePicker.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (static Platform.current.getter())
  {

    specialized SwimmingDistancePickerWatch.init(viewModel:)(v10, v15);
    v18 = 1;
    v17 = 1;
  }

  else
  {
    *&v19 = a2;
    *(&v19 + 1) = a3;
    LOBYTE(v20) = a4 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.projectedValue.getter();
    specialized SwimmingDistancePickerPhone.init(viewModel:editMode:)(a1, v15[0], v15[1], v16, v15);
    v18 = 0;
    v17 = 0;
  }

  lazy protocol witness table accessor for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone();
  lazy protocol witness table accessor for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch();
  _ConditionalContent<>.init(storage:)();
  result = v22;
  v12 = v24[0];
  *(a5 + 64) = v23;
  *(a5 + 80) = v12;
  *(a5 + 89) = *(v24 + 9);
  v13 = v20;
  v14 = v21;
  *a5 = v19;
  *(a5 + 16) = v13;
  *(a5 + 32) = v14;
  *(a5 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone()
{
  result = lazy protocol witness table cache variable for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone;
  if (!lazy protocol witness table cache variable for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch()
{
  result = lazy protocol witness table cache variable for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch;
  if (!lazy protocol witness table cache variable for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SwimmingDistancePickerPhone, SwimmingDistancePickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePickerPhone, SwimmingDistancePickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePickerPhone, SwimmingDistancePickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB027SwimmingDistancePickerPhoneVAD0fgH5WatchVGMd);
    lazy protocol witness table accessor for type SwimmingDistancePickerPhone and conformance SwimmingDistancePickerPhone();
    lazy protocol witness table accessor for type SwimmingDistancePickerWatch and conformance SwimmingDistancePickerWatch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SwimmingDistancePickerPhone, SwimmingDistancePickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t HeartRateMetricView.init(heartRate:heartRateValueType:isStale:workoutPaused:lowPowerModeAnimationSuspended:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for HeartRateMetricView();
  v15 = a7 + v14[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a7 + v14[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a7 + v14[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(a7 + v14[12]) = 0x3FD6666666666666;
  v18 = (a7 + v14[13]);
  *v18 = 0;
  v18[1] = 0;
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  v19 = v14[5];
  v20 = type metadata accessor for HeartRateCurrentValueType();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a3, v20);
  *(a7 + v14[6]) = a4;
  *(a7 + v14[7]) = a5;
  *(a7 + v14[8]) = a6;
  return result;
}

uint64_t type metadata accessor for HeartRateMetricView()
{
  result = type metadata singleton initialization cache for HeartRateMetricView;
  if (!type metadata singleton initialization cache for HeartRateMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.workoutAnimationStyle : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t HeartRateMetricView.animationsSuspended.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HeartRateMetricView();
  v6 = v0 + v5[9];
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_20C6875C0(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15])
    {
      return 1;
    }
  }

  if ((*(v0 + v5[7]) & 1) == 0)
  {
    v10 = v0 + v5[11];
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      if (v11)
      {
        return 1;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_20C6875C0(v11, 0);
      (*(v2 + 8))(v4, v1);
      if (v13[14])
      {
        return 1;
      }
    }

    return *(v0 + v5[8]);
  }

  return 1;
}

uint64_t HeartRateMetricView.value.getter()
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
  if (v0[1])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x800000020CB9A400;
    v20._countAndFlagsBits = 0xD000000000000011;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v32)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v30 = *v0;
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
    lazy protocol witness table accessor for type MetricTextWithAccessory<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v24(v17, v8);
    return v31;
  }
}

uint64_t HeartRateMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HeartRateCurrentValueType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeartRateMetricView();
  (*(v6 + 104))(v8, *MEMORY[0x277D7E4E0], v5);
  lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType(&lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType, MEMORY[0x277D7E4E8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v6 + 8))(v8, v5);
  if (v23[0] == v23[3])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v22 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v13 = 0xD000000000000026;
    v14 = 0x800000020CB9A3D0;
LABEL_12:
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, *&v11, v10, v19, *(&v22 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v15 = v0 + *(v9 + 40);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_20C6875C0(v16, 0);
    (*(v2 + 8))(v4, v1);
    if (LOBYTE(v23[0]) != 5)
    {
      return 0;
    }

LABEL_9:
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v22 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0x800000020CB9A3B0;
    v13 = 0xD000000000000011;
    goto LABEL_12;
  }

  if (*v15 == 5)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t HeartRateMetricView.accessibilityLabel.getter()
{
  if ((*(v0 + 8) & 1) == 0)
  {
    v6 = HeartRateMetricView.description.getter();
    v8 = v6;
    if (v7)
    {
      v33 = v6;
      v34 = v7;
      v25 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v27 = HeartRateMetricView.value.getter();
    v28 = v11;
    v12 = (v0 + *(type metadata accessor for HeartRateMetricView() + 52));
    v13 = *(v12 + 1);
    v29 = *v12;
    v30 = v13;
    v31 = v8;
    v32 = v10;

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
LABEL_8:
    if (v14 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16 + 1;
    v18 = 16 * v14 + 40;
    while (1)
    {
      if (v14 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        swift_arrayDestroy();
        v33 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type MetricTextWithAccessory<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

        return countAndFlagsBits;
      }

      if (v17 == ++v14)
      {
        break;
      }

      v19 = v18 + 16;
      v0 = *&v26[v18];
      v18 += 16;
      if (v0)
      {
        v20 = *&v26[v19 - 24];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        v23 = &v15[16 * v22];
        *(v23 + 4) = v20;
        *(v23 + 5) = v0;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v0 = "MediaMomentsScrollView";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_23:
    swift_once();
  }

  swift_beginAccess();
  v1 = WorkoutUIBundle.super.isa;
  v35._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._object = (v0 | 0x8000000000000000);
  v3._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v35)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t HeartRateMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = HeartRateMetricView.value.getter();
  v20 = v4;
  v21 = v3;
  v5 = type metadata accessor for HeartRateMetricView();
  v6 = (v1 + *(v5 + 52));
  v7 = v6[1];
  v19 = *v6;

  v8 = HeartRateMetricView.description.getter();
  v10 = v9;
  if (*(v1 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v1 + *(v5 + 24));
  }

  v12 = HeartRateMetricView.accessibilityLabel.getter();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB019_ConditionalContentVyAD08ModifiedI0VyAHyAHyAHyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD4FontVSgGGALy12CoreGraphics7CGFloatVGGAD016_ForegroundStyleO0VyAD5ColorVGGAD023AccessibilityAttachmentO0VGAHyAHyAA19HeartRateStatusViewVAD16_FixedSizeLayoutVGA2_GGSgGMd);
  v16 = v15[11];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v17 = a1 + v15[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(a1 + v15[13]) = 0x3FD6666666666666;
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 49) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return closure #1 in HeartRateMetricView.body.getter(v1, a1 + v15[10]);
}

uint64_t closure #1 in HeartRateMetricView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v62);
  v53 = &v52 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleK0VyAA5ColorVGGAA023AccessibilityAttachmentK0VGAGyAGy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGA1_G_GMd);
  MEMORY[0x28223BE20](v59);
  v61 = &v52 - v4;
  v56 = type metadata accessor for Font.PrivateDesign();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v60);
  v57 = &v52 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGAEyAEy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGA_GGMd);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v52 - v12;
  v13 = type metadata accessor for HeartRateCurrentValueType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeartRateMetricView();
  (*(v14 + 104))(v16, *MEMORY[0x277D7E4D8], v13);
  lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType(&lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType, MEMORY[0x277D7E4E8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (v66 == v73)
  {
    v18 = a1 + v17[10];
    v19 = *v18;
    if (*(v18 + 8) == 1)
    {
      v20 = *v18;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_20C6875C0(v19, 0);
      (*(v54 + 8))(v10, v8);
      v20 = v66;
    }

    if (v20 != 10)
    {
      v24 = *v18;
      if (*(v18 + 8) == 1)
      {
        if (*v18 != 11)
        {
LABEL_9:
          if (*(a1 + v17[6]) == 1)
          {
            v25 = v58;
            if (*(a1 + v17[7]))
            {
              v26 = 6;
            }

            else if (*(a1 + 8))
            {
              v26 = 1;
            }

            else
            {
              v26 = 4;
            }
          }

          else
          {
            if (*(a1 + v17[7]))
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v25 = v58;
          }

          if (*(a1 + 8))
          {
            v42 = 0.0;
          }

          else
          {
            v42 = *a1;
          }

          v43 = HeartRateMetricView.animationsSuspended.getter();
          KeyPath = swift_getKeyPath();
          v66 = v26;
          v67 = v42;
          LOBYTE(v68) = v43 & 1;
          v69 = KeyPath;
          LOBYTE(v70) = 0;
          *(&v70 + 1) = 257;
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v45 = WorkoutUIBundle.super.isa;
          v75._object = 0xE000000000000000;
          v46._object = 0x800000020CB94620;
          v46._countAndFlagsBits = 0xD00000000000001CLL;
          v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v47.value._object = 0xEB00000000656C62;
          v48._countAndFlagsBits = 0;
          v48._object = 0xE000000000000000;
          v75._countAndFlagsBits = 0;
          v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v75);

          v72 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGMd);
          lazy protocol witness table accessor for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type String and conformance String();
          v50 = v53;
          View.accessibilityLabel<A>(_:)();

          sub_20C6875C0(v69, v70);
          v40 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd;
          outlined init with copy of ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>(v50, v61, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();
          v41 = v50;
LABEL_31:
          outlined destroy of ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>(v41, v40);
          v22 = v65;
          outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>(v25, v65);
          v21 = 0;
          return (*(v63 + 56))(v22, v21, 1, v64);
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v27 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_20C6875C0(v24, 0);
        (*(v54 + 8))(v10, v8);
        if (v66 != 11)
        {
          goto LABEL_9;
        }
      }
    }

    v28 = Image.init(systemName:)();
    specialized static LayoutUtilities.layoutMetric(regular42:)(16.0);
    static Font.Weight.semibold.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v29 = static Font.system(size:weight:design:)();
    (*(v55 + 8))(v6, v56);
    v30 = swift_getKeyPath();
    if (one-time initialization token for scaleFactorForEnclosedText != -1)
    {
      swift_once();
    }

    v31 = static MetricUnitFont.scaleFactorForEnclosedText;
    v32 = swift_getKeyPath();
    v33 = static Color.red.getter();
    v66 = v28;
    v67 = *&v30;
    v68 = v29;
    v69 = v32;
    v70 = v31;
    v71 = v33;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v34 = WorkoutUIBundle.super.isa;
    v74._object = 0xE000000000000000;
    v35._object = 0x800000020CB94620;
    v35._countAndFlagsBits = 0xD00000000000001CLL;
    v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v36.value._object = 0xEB00000000656C62;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0;
    v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v74);

    v72 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    v39 = v57;
    View.accessibilityLabel<A>(_:)();

    v40 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>(v39, v61, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
    v25 = v58;
    _ConditionalContent<>.init(storage:)();
    v41 = v39;
    goto LABEL_31;
  }

  v21 = 1;
  v22 = v65;
  return (*(v63 + 56))(v22, v21, 1, v64);
}

void type metadata completion function for HeartRateMetricView()
{
  _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HeartRateCurrentValueType();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>, &type metadata for WorkoutViewStyle, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Environment<WorkoutAnimationStyle>, &type metadata for WorkoutAnimationStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_1(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void _sSdSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type HeartRateStatusView and conformance HeartRateStatusView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HeartRateStatusView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricTextWithAccessory<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricTextWithAccessory<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>?> and conformance MetricTextWithAccessory<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGAEyAEy07WorkoutB019HeartRateStatusViewVAA16_FixedSizeLayoutVGA_GGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MetricTextWithAccessory<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<HeartRateStatusView, _FixedSizeLayout>, AccessibilityAttachmentModifier>>?> and conformance MetricTextWithAccessory<A>(unint64_t *a1, uint64_t *a2)
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

UIImage __swiftcall UIImage.tintWith(color:)(UIColor color)
{
  v3 = [v1 imageWithRenderingMode_];
  [v1 size];
  v5 = v4;
  v7 = v6;
  [v3 scale];
  v9 = v8;
  v16.width = v5;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v9);
  [(objc_class *)color.super.isa set];
  [v1 size];
  v11 = v10;
  [v3 size];
  v13 = v12;

  [v1 drawInRect_];
  v14 = UIGraphicsGetImageFromCurrentImageContext();

  if (!v14)
  {
    v14 = v1;
  }

  UIGraphicsEndImageContext();
  return v14;
}

Class @objc UIImage.tintWith(color:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6.super.isa = UIImage.tintWith(color:)(v4).super.isa;

  return v6.super.isa;
}

__n128 QuickStartWorkoutStackedView.init(configuration:viewStyle:controlType:width:height:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, __n128 *a8@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *a2;
  a8->n128_u64[0] = *a1;
  a8->n128_u8[8] = v8;
  a8->n128_u8[9] = v9;
  a8->n128_u8[10] = v10;
  result = *a3;
  a8[1] = *a3;
  a8[2].n128_u64[0] = a4;
  a8[2].n128_u8[8] = a5 & 1;
  a8[3].n128_u64[0] = a6;
  a8[3].n128_u8[8] = a7 & 1;
  a8[4].n128_u64[0] = 0;
  a8[4].n128_u8[8] = 1;
  return result;
}

id QuickStartWorkoutStackedView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return v2;
}

uint64_t QuickStartWorkoutStackedView.controlType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of QuickStartWorkoutControlType(v2);
}

__n128 QuickStartWorkoutStackedView.init(configuration:viewStyle:controlType:width:height:cornerRadius:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, char a10)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *a2;
  a9->n128_u64[0] = *a1;
  a9->n128_u8[8] = v10;
  a9->n128_u8[9] = v11;
  a9->n128_u8[10] = v12;
  result = *a3;
  a9[1] = *a3;
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u8[8] = a5 & 1;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = a7 & 1;
  a9[4].n128_u64[0] = a8;
  a9[4].n128_u8[8] = a10 & 1;
  return result;
}

uint64_t QuickStartWorkoutStackedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5GroupVyACyAA4LinkVyAGyAA6VStackVyAA9TupleViewVyAA6HStackVyAOy07WorkoutB0010QuickStartm5ImageK0V_AA6SpacerVAR0nom7OptionsK0VtGG_AvR0noM5LabelVtGGAA14_PaddingLayoutVGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyA5_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainyW0VQo_GGAA06_FrameU0VGAA19_BackgroundModifierVyACyA8_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_zK0VyAA16RoundedRectangleVAA5ColorVG_Qo_A8_A30_EA31_yQrSbFQOyA33_yAA017ContainerRelativeZ0VA37_G_Qo_GGGAA05EmptyK0V_GMd);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGAA011_BackgroundZ0VyAGyA6_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_yJ0VyAA16RoundedRectangleVAA5ColorVG_Qo_A6_A28_EA29_yQrSbFQOyA31_yAA017ContainerRelativeY0VA35_G_Qo_GGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[1];
  v31 = *v1;
  v32 = v16;
  v17 = v1[3];
  v33 = v1[2];
  v34[0] = v17;
  *(v34 + 9) = *(v1 + 57);
  WorkoutConfiguration.launchURL()();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    _s10Foundation3URLVSgWOhTm_0(v11, &_s10Foundation3URLVSgMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    closure #1 in QuickStartWorkoutStackedView.body.getter(&v31, v15, v8);
    v26[0] = v3;
    v26[1] = a1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGMd) + 36)];
    v20 = v30[3];
    *v19 = v30[2];
    *(v19 + 1) = v20;
    *(v19 + 2) = v30[4];
    v29 = v33;
    v30[0] = v34[0];
    *(v30 + 9) = *(v34 + 9);
    v28 = v32;
    v27 = v31;
    v21 = &v8[*(v6 + 36)];
    QuickStartWorkoutStackedView.backgroundView()(v21);
    v22 = static Alignment.center.getter();
    v24 = v23;
    v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVG_Qo_AgHEAIyQrSbFQOyAKyAA017ContainerRelativeL0VAOG_Qo_GGMd) + 36));
    *v25 = v22;
    v25[1] = v24;
    sub_20C6875DC(v8, v5);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    sub_20C68764C(v8);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGAA011_BackgroundZ0VyAGyA6_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_yJ0VyAA16RoundedRectangleVAA5ColorVG_Qo_A6_A28_EA29_yQrSbFQOyA31_yAA017ContainerRelativeY0VA35_G_Qo_GGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVG_Qo_AgHEAIyQrSbFQOyAKyAA017ContainerRelativeL0VAOG_Qo_GGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4LinkVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAIyA3_AA01_E13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4LinkVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAA6HStackVyAKy07WorkoutB0010QuickStartk5ImageI0V_AA6SpacerVAN0lmk7OptionsI0VtGG_ArN0lmK5LabelVtGGAA14_PaddingLayoutVGGAA0I0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAGyA1_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainwU0VQo_GMd);
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>, &_s7SwiftUI4LinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in QuickStartWorkoutStackedView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v46 = a3;
  v45 = type metadata accessor for PlainButtonStyle();
  v38 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v35 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA6VStackVyAA05TupleC0VyAA6HStackVyAMy07WorkoutB0010QuickStartm5ImageC0V_AA6SpacerVAP0nom7OptionsC0VtGG_AtP0noM5LabelVtGGAA14_PaddingLayoutVGAA01_I13ShapeModifierVyAA9RectangleVGGG_AA05PlaingE0VQo_Md);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v35 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4LinkVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAIyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo__GMd);
  MEMORY[0x28223BE20](v41);
  v10 = &v35 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4LinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGGMd);
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = &v35 - v16;
  v51[0] = a1[1];
  v18 = *&v51[0];
  if (*&v51[0])
  {
    v19 = *(&v51[0] + 1);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = a1[3];
    *(v20 + 64) = a1[2];
    *(v20 + 80) = v21;
    *(v20 + 89) = *(a1 + 57);
    v22 = a1[1];
    *(v20 + 32) = *a1;
    *(v20 + 48) = v22;
    MEMORY[0x28223BE20](v20);
    *(&v35 - 2) = a1;
    outlined init with copy of QuickStartWorkoutControlType(v51, &v47);
    outlined init with copy of QuickStartWorkoutControlType(v51, &v47);
    outlined init with copy of QuickStartWorkoutStackedView(a1, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy07WorkoutB0010QuickStarti5ImageG0V_AA6SpacerVAJ0jki7OptionsG0VtGG_AnJ0jkI5LabelVtGGAA14_PaddingLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    PlainButtonStyle.init()();
    started = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    v24 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    v25 = v39;
    v26 = v43;
    v27 = v45;
    View.buttonStyle<A>(_:)();
    (*(v38 + 8))(v5, v27);
    (*(v37 + 8))(v7, v26);
    v28 = v40;
    v29 = v44;
    (*(v40 + 16))(v10, v25, v44);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>, &_s7SwiftUI4LinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGGMd);
    v47 = v26;
    v48 = v27;
    v49 = started;
    v50 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of QuickStartWorkoutControlType(v51);
    return (*(v28 + 8))(v25, v29);
  }

  else
  {
    v31 = (*(v12 + 16))(v14, v36, v11);
    MEMORY[0x28223BE20](v31);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy07WorkoutB0010QuickStarti5ImageG0V_AA6SpacerVAJ0jki7OptionsG0VtGG_AnJ0jkI5LabelVtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    Link.init(destination:label:)();
    v32 = v42;
    (*(v15 + 16))(v10, v17, v42);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>, &_s7SwiftUI4LinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGGMd);
    v33 = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAIy07WorkoutB0010QuickStartj5ImageH0V_AA6SpacerVAL0klj7OptionsH0VtGG_ApL0klJ5LabelVtGGAA14_PaddingLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    v34 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    v47 = v43;
    v48 = v45;
    v49 = v33;
    v50 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v17, v32);
  }
}

uint64_t closure #1 in closure #1 in QuickStartWorkoutStackedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v22 = 1;
  closure #1 in QuickStartWorkoutStackedView.controlLabel()(a1, &v15);
  v27 = v19;
  v28[0] = *v20;
  *(v28 + 15) = *&v20[15];
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30[0] = *v20;
  *(v30 + 15) = *&v20[15];
  outlined init with copy of TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>(&v23, &v14, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB0010QuickStartf5ImageD0V_AA6SpacerVAF0ghf7OptionsD0VtGG_AjF0ghF5LabelVtGMd);
  _s10Foundation3URLVSgWOhTm_0(v29, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB0010QuickStartf5ImageD0V_AA6SpacerVAF0ghf7OptionsD0VtGG_AjF0ghF5LabelVtGMd);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28[0];
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[102] = *(v28 + 15);
  *&v21[39] = v25;
  v5 = v22;
  LOBYTE(a1) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  v7 = *&v21[32];
  *(a2 + 65) = *&v21[48];
  v8 = *&v21[80];
  *(a2 + 81) = *&v21[64];
  *(a2 + 97) = v8;
  *(a2 + 107) = *&v21[90];
  v9 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v9;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 49) = v7;
  *(a2 + 128) = a1;
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
  *(a2 + 152) = v12;
  *(a2 + 160) = v13;
  *(a2 + 168) = 0;
  return result;
}

void closure #2 in closure #1 in QuickStartWorkoutStackedView.body.getter(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v7, &v4);
  a1(&v5);
}

uint64_t closure #3 in closure #1 in QuickStartWorkoutStackedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v22 = 1;
  closure #1 in QuickStartWorkoutStackedView.controlLabel()(a1, &v15);
  v27 = v19;
  v28[0] = *v20;
  *(v28 + 15) = *&v20[15];
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30[0] = *v20;
  *(v30 + 15) = *&v20[15];
  outlined init with copy of TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>(&v23, &v14, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB0010QuickStartf5ImageD0V_AA6SpacerVAF0ghf7OptionsD0VtGG_AjF0ghF5LabelVtGMd);
  _s10Foundation3URLVSgWOhTm_0(v29, &_s7SwiftUI9TupleViewVyAA6HStackVyACy07WorkoutB0010QuickStartf5ImageD0V_AA6SpacerVAF0ghf7OptionsD0VtGG_AjF0ghF5LabelVtGMd);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28[0];
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[102] = *(v28 + 15);
  *&v21[39] = v25;
  v5 = v22;
  LOBYTE(a1) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  v7 = *&v21[32];
  *(a2 + 65) = *&v21[48];
  v8 = *&v21[80];
  *(a2 + 81) = *&v21[64];
  *(a2 + 97) = v8;
  *(a2 + 107) = *&v21[90];
  v9 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v9;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 49) = v7;
  *(a2 + 128) = a1;
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
  *(a2 + 152) = v12;
  *(a2 + 160) = v13;
  *(a2 + 168) = 0;
  return result;
}

uint64_t QuickStartWorkoutStackedView.backgroundView()@<X0>(uint64_t a1@<X8>)
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
  if (*(v1 + 72))
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v30 = Color.init(uiColor:)();
    LOWORD(v31) = 256;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    started = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _ShapeView<ContainerRelativeShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    View.widgetAccentable(_:)();

    v15 = v29;
    (*(v2 + 16))(v6, v4, v29);
    swift_storeEnumTagMultiPayload();
    v16 = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
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
    v18 = *(v1 + 64);
    v19 = *(type metadata accessor for RoundedRectangle() + 20);
    v20 = *MEMORY[0x277CE0118];
    v21 = type metadata accessor for RoundedCornerStyle();
    (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
    *v9 = v18;
    *(v9 + 1) = v18;
    WorkoutConfiguration.displayPlatterColor.getter();
    *&v9[*(v7 + 52)] = Color.init(uiColor:)();
    *&v9[*(v7 + 56)] = 256;
    v22 = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    View.widgetAccentable(_:)();
    _s10Foundation3URLVSgWOhTm_0(v9, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    v23 = v27;
    (*(v10 + 16))(v6, v12, v27);
    swift_storeEnumTagMultiPayload();
    v30 = v7;
    v31 = v22;
    swift_getOpaqueTypeConformance2();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    v25 = lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _ShapeView<ContainerRelativeShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA017ContainerRelativeC0VAA5ColorVGMd);
    v30 = v24;
    v31 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v23);
  }
}

uint64_t closure #1 in QuickStartWorkoutStackedView.controlLabel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.top.getter();
  LOBYTE(v21[0]) = 1;
  closure #1 in closure #1 in QuickStartWorkoutStackedView.controlLabel()(a1, &v23);
  v17 = v23;
  v18[0] = *v24;
  *(v18 + 11) = *&v24[11];
  v19 = v23;
  v20[0] = *v24;
  *(v20 + 11) = *&v24[11];
  outlined init with copy of TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>(&v17, v26, &_s7SwiftUI9TupleViewVy07WorkoutB0010QuickStarte5ImageD0V_AA6SpacerVAD0fge7OptionsD0VtGMd);
  _s10Foundation3URLVSgWOhTm_0(&v19, &_s7SwiftUI9TupleViewVy07WorkoutB0010QuickStarte5ImageD0V_AA6SpacerVAD0fge7OptionsD0VtGMd);
  *&v14[7] = v17;
  *&v14[23] = v18[0];
  *&v14[34] = *(v18 + 11);
  v5 = v21[0];
  v16 = *(a1 + 8);
  v15 = *a1;
  v6 = v15;
  v7 = *(a1 + 10);
  v8 = v16 & 1;
  v9 = HIBYTE(v16) & 1;
  v21[0] = v4;
  v21[1] = 0;
  v22[0] = v5;
  *&v22[49] = *(&v18[1] + 9);
  *&v22[33] = *&v14[32];
  *&v22[17] = *&v14[16];
  *&v22[1] = *v14;
  *&v25[15] = *&v22[47];
  *&v24[16] = *&v22[16];
  *v25 = *&v22[32];
  v23 = v4;
  *v24 = *v22;
  v10 = *v22;
  v11 = *&v22[32];
  v12 = *&v25[16];
  *(a2 + 32) = *&v22[16];
  *(a2 + 48) = v11;
  *a2 = v4;
  *(a2 + 16) = v10;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v6;
  *(a2 + 96) = v8;
  *(a2 + 97) = v9;
  *(a2 + 98) = v7;
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v15, v26);
  outlined init with copy of TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>(v21, v26, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB0010QuickStartf5ImageE0V_AA6SpacerVAF0ghf7OptionsE0VtGGMd);
  v26[0] = v4;
  v26[1] = 0;
  v27 = v5;
  v28 = *v14;
  v29 = *&v14[16];
  v30 = *&v14[32];
  v31 = *&v14[48];
  return _s10Foundation3URLVSgWOhTm_0(v26, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB0010QuickStartf5ImageE0V_AA6SpacerVAF0ghf7OptionsE0VtGGMd);
}

uint64_t closure #1 in closure #1 in QuickStartWorkoutStackedView.controlLabel()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(a1 + 4);
  v8 = *a1;
  v2 = v8;
  v3 = *(a1 + 10);
  v4 = v9 & 1;
  v5 = HIBYTE(v9) & 1;
  v7[16] = 1;
  *a2 = v8;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = v2;
  *(a2 + 40) = v4;
  *(a2 + 41) = v5;
  *(a2 + 42) = v3;
  outlined init with copy of QuickStartWorkoutViewConfiguration(&v8, v7);
  return outlined init with copy of QuickStartWorkoutViewConfiguration(&v8, v7);
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutStackedView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutStackedView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5GroupVyACyAA4LinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGAA011_BackgroundZ0VyACyA6_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_yJ0VyAA16RoundedRectangleVAA5ColorVG_Qo_A6_A28_EA29_yQrSbFQOyA31_yAA017ContainerRelativeY0VA35_G_Qo_GGGAA05EmptyJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>, _FrameLayout>, _BackgroundModifier<_ConditionalContent<<<opaque return type of View.widgetAccentable(_:)>>.0, <<opaque return type of View.widgetAccentable(_:)>>.0>>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy07WorkoutB0010QuickStarti5ImageG0V_AA6SpacerVAJ0jki7OptionsG0VtGG_AnJ0jkI5LabelVtGGAA14_PaddingLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy07WorkoutB0010QuickStarti5ImageG0V_AA6SpacerVAJ0jki7OptionsG0VtGG_AnJ0jkI5LabelVtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy07WorkoutB0010QuickStartg5ImageE0V_AA6SpacerVAH0hig7OptionsE0VtGG_AlH0hiG5LabelVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Link<ModifiedContent<VStack<TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>>, _PaddingLayout>> and conformance Link<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of TupleView<(HStack<TupleView<(QuickStartWorkoutImageView, Spacer, QuickStartWorkoutOptionsView)>>, Spacer, QuickStartWorkoutLabel)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Dependencies.workout(wheelchairStatusProvider:queue:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized static Dependencies.workout(wheelchairStatusProvider:queue:)(a1, a2);
}

uint64_t closure #1 in static Dependencies.workout(wheelchairStatusProvider:queue:)()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  type metadata accessor for ACAccountStore(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t closure #2 in static Dependencies.workout(wheelchairStatusProvider:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17)
{
  v58 = type metadata accessor for AccountProvider();
  v59 = MEMORY[0x277D4FAB0];
  v57[0] = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A14ClientServices16AccountProviding_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<AccountProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A14ClientServices16AccountProviding_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SeymourClientServices16AccountProviding_pMd);
  Dependency.init(_:)();
  v50 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v57[0] = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media22ArchivedSessionServiceCGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<ArchivedSessionService> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media22ArchivedSessionServiceCGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  type metadata accessor for ArchivedSessionService();

  Dependency.init(_:)();
  v49 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  outlined init with copy of AssetClientProtocol(a3, v57);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media19ArtworkImageLoading_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<ArtworkImageLoading> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media19ArtworkImageLoading_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SeymourMedia19ArtworkImageLoading_pMd);
  Dependency.init(_:)();
  v48 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for MediaTagStringBuilder();
  v59 = MEMORY[0x277D54018];
  v57[0] = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media0D17TagStringBuilding_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<MediaTagStringBuilding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media0D17TagStringBuilding_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SeymourMedia0B17TagStringBuilding_pMd);
  Dependency.init(_:)();
  v47 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v57[0] = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVySo24WOWheelchairUseProviding_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<WOWheelchairUseProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVySo24WOWheelchairUseProviding_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWheelchairUseProviding_pMd);
  Dependency.init(_:)();
  v46 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v57[0] = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media12MetricRouterCGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<MetricRouter> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media12MetricRouterCGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  type metadata accessor for MetricRouter();

  Dependency.init(_:)();
  v45 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for MetricNavigationTracker();
  v59 = &protocol witness table for MetricNavigationTracker;
  v57[0] = a7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI24MetricNavigationTracking_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<MetricNavigationTracking> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI24MetricNavigationTracking_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24MetricNavigationTracking_pMd);
  Dependency.init(_:)();
  v44 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for MetricApplicationLifecycleTracker();
  v59 = &protocol witness table for MetricApplicationLifecycleTracker;
  v57[0] = a8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI34MetricApplicationLifecycleTracking_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<MetricApplicationLifecycleTracking> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI34MetricApplicationLifecycleTracking_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34MetricApplicationLifecycleTracking_pMd);
  Dependency.init(_:)();
  v43 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for NetworkEvaluator();
  v59 = MEMORY[0x277D4E2B0];
  v57[0] = a9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A6Client17NetworkEvaluating_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<NetworkEvaluating> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A6Client17NetworkEvaluating_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient17NetworkEvaluating_pMd);
  Dependency.init(_:)();
  v42 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for ScreenCaptureMonitor();
  v59 = MEMORY[0x277D54178];
  v57[0] = a10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media23ScreenCaptureMonitoring_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<ScreenCaptureMonitoring> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media23ScreenCaptureMonitoring_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SeymourMedia23ScreenCaptureMonitoring_pMd);
  Dependency.init(_:)();
  v25 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v58 = type metadata accessor for StorefrontLocalizer();
  v59 = MEMORY[0x277D54168];
  v57[0] = a11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A5Media20StorefrontLocalizing_pGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<StorefrontLocalizing> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A5Media20StorefrontLocalizing_pGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SeymourMedia20StorefrontLocalizing_pMd);
  Dependency.init(_:)();
  v26 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v27 = type metadata accessor for HealthStore();
  v52 = v27;
  v53 = MEMORY[0x277D4DFA8];
  v54 = MEMORY[0x277D4DF90];
  v55 = MEMORY[0x277D4DF98];
  v56 = MEMORY[0x277D4DFA0];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1Tm, a12, v27);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy0A6Client21ActivityRingsQuerying_AD29HealthCharacteristicsProtocolAD0H13StoreUpdatingAD15WorkoutBuildingpGMd);
  v59 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<ActivityRingsQuerying & HealthCharacteristicsProtocol & HealthStoreUpdating & WorkoutBuilding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy0A6Client21ActivityRingsQuerying_AD29HealthCharacteristicsProtocolAD0H13StoreUpdatingAD15WorkoutBuildingpGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient21ActivityRingsQuerying_AA29HealthCharacteristicsProtocolAA0F13StoreUpdatingAA15WorkoutBuildingpMd);
  Dependency.init(_:)();
  v29 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v57);
  v57[0] = a13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI0A22SubscriptionObservable_AD0aF9ProvidingpGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<SeymourSubscriptionObservable & SeymourSubscriptionProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI0A22SubscriptionObservable_AD0aF9ProvidingpGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  v30 = a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI29SeymourSubscriptionObservable_AA0cD9ProvidingpMd);
  Dependency.init(_:)();
  v31 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v32 = type metadata accessor for SeymourSampleContentProvider();
  v53 = &protocol witness table for SeymourSampleContentProvider;
  v54 = &protocol witness table for SeymourSampleContentProvider;
  v52 = v32;
  v51[0] = a14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI0A23SampleContentObservable_AD0afG9ProvidingpGMd);
  v59 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<SeymourSampleContentObservable & SeymourSampleContentProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI0A23SampleContentObservable_AD0afG9ProvidingpGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v57);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI30SeymourSampleContentObservable_AA0cdE9ProvidingpMd);
  Dependency.init(_:)();
  v33 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v57);
  v57[0] = a15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI0A22AvailabilityObservable_AD0aF9ProvidingpGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<SeymourAvailabilityObservable & SeymourAvailabilityProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI0A22AvailabilityObservable_AD0aF9ProvidingpGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  v34 = a15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI29SeymourAvailabilityObservable_AA0cD9ProvidingpMd);
  Dependency.init(_:)();
  v35 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v57[0] = a16;
  v57[1] = &protocol witness table for ExternalSeymourSessionStatusProvider;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI08ExternalA23SessionStatusObservable_AD0fagH9ProvidingpGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<ExternalSeymourSessionStatusObservable & ExternalSeymourSessionStatusProviding> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI08ExternalA23SessionStatusObservable_AD0fagH9ProvidingpGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  v36 = a16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI38ExternalSeymourSessionStatusObservable_AA0cdeF9ProvidingpMd);
  Dependency.init(_:)();
  v37 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  v57[0] = a17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10DependencyVy9WorkoutUI0A10DataSourceCGMd);
  v53 = lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(&lazy protocol witness table cache variable for type Dependency<SeymourDataSource> and conformance Dependency<A>, &_s11SeymourCore10DependencyVy9WorkoutUI0A10DataSourceCGMd);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  type metadata accessor for SeymourDataSource();

  Dependency.init(_:)();
  v38 = static DependencyResultBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SeymourCore20DependencyDescriptor_pGGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20CB74FC0;
  *(v39 + 32) = v50;
  *(v39 + 40) = v49;
  *(v39 + 48) = v48;
  *(v39 + 56) = v47;
  *(v39 + 64) = v46;
  *(v39 + 72) = v45;
  *(v39 + 80) = v44;
  *(v39 + 88) = v43;
  *(v39 + 96) = v42;
  *(v39 + 104) = v25;
  *(v39 + 112) = v26;
  *(v39 + 120) = v29;
  *(v39 + 128) = v31;
  *(v39 + 136) = v33;
  *(v39 + 144) = v35;
  *(v39 + 152) = v37;
  *(v39 + 160) = v38;
  static DependencyResultBuilder.buildBlock(_:)();

  v40 = static DependencyResultBuilder.buildFinalResult(_:)();

  return v40;
}

uint64_t specialized static Dependencies.workout(wheelchairStatusProvider:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthStore();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v92 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v88 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v8 = v73 - v7;
  v9 = MEMORY[0x20F302E60](a2, v6);
  v82 = objc_opt_self();
  v10 = [v82 mainBundle];
  v11 = type metadata accessor for StorefrontCache();
  swift_allocObject();
  v12 = StorefrontCache.init()();
  v107 = v11;
  v108 = MEMORY[0x277D4E258];
  v106[0] = v12;
  v13 = type metadata accessor for StorefrontLocalizer();
  swift_allocObject();
  v14 = StorefrontLocalizer.init(bundle:storefrontCache:)();
  dispatch thunk of StorefrontLocalizer.activate()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient16EventHubProtocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  v15 = v106[0];
  v16 = v106[1];
  v17 = type metadata accessor for WheelchairStatusBridge();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v107 = v13;
  v108 = MEMORY[0x277D54168];
  v106[0] = v14;
  v104 = v17;
  v105 = lazy protocol witness table accessor for type WheelchairStatusBridge and conformance WheelchairStatusBridge();
  v103[0] = v18;
  v85 = a1;
  swift_unknownObjectRetain();
  v91 = v14;

  v83 = v18;

  Dependencies.resolve<A>(failureHandler:)();
  type metadata accessor for MediaTagStringBuilder();
  swift_allocObject();
  v81 = MediaTagStringBuilder.init(storefrontLocalizer:table:wheelchairStatus:platform:)();
  type metadata accessor for AccountProvider();
  v19 = objc_opt_self();
  swift_unknownObjectRetain();
  v20 = [v19 ams_sharedAccountStore];
  v107 = type metadata accessor for ACAccountStore(0, &lazy cache variable for type metadata for ACAccountStore);
  v108 = MEMORY[0x277D4FB68];
  v106[0] = v20;
  v80 = AccountProvider.__allocating_init(eventHub:accountStore:)();
  dispatch thunk of AccountProvider.activate()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient05AssetB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  v21 = type metadata accessor for ArtworkImageCache();
  swift_allocObject();
  v22 = ArtworkImageCache.init()();
  v104 = v21;
  v105 = MEMORY[0x277D540E8];
  v103[0] = v22;
  outlined init with copy of AssetClientProtocol(v106, v102);
  v23 = type metadata accessor for ArtworkImageLoader();
  swift_allocObject();
  v24 = ArtworkImageLoader.init(artworkImageCache:assetClient:)();
  v104 = v23;
  v105 = MEMORY[0x277D540F8];
  v103[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient06MetricB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  type metadata accessor for MetricRouter();
  outlined init with copy of AssetClientProtocol(v102, v101);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient011UpNextQueueB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  v79 = MetricRouter.__allocating_init(metricClient:eventHub:upNextQueueClient:)();
  type metadata accessor for MetricNavigationTracker();
  swift_allocObject();
  v25 = swift_unknownObjectRetain();
  v78 = specialized MetricNavigationTracker.init(eventHub:)(v25, v16);
  swift_unknownObjectRelease();
  outlined init with copy of AssetClientProtocol(v102, v101);
  type metadata accessor for MetricApplicationLifecycleTracker();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 144) = 0u;
  *(v26 + 160) = 0u;
  *(v26 + 176) = 0;
  v27 = OBJC_IVAR____TtC9WorkoutUI33MetricApplicationLifecycleTracker_currentPage;
  v28 = type metadata accessor for MetricPage();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + 24) = v15;
  *(v26 + 32) = v16;
  v90 = v26;
  outlined init with take of MetricClientProtocol(v101, v26 + 40);
  type metadata accessor for NetworkEvaluator();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v89 = NetworkEvaluator.init(eventHub:)();
  NetworkEvaluator.activate()();
  v29 = v84;
  v30 = Promise.operation.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(_s11SeymourCore7PromiseV7resolveyyys6ResultOyxs5Error_pGYbcSgFyAHYbcfU_yt_TG5TA_3, v31);

  (*(v88 + 8))(v8, v29);
  v32 = type metadata accessor for StandaloneWorkoutTimeProvider();
  swift_allocObject();
  swift_unknownObjectRetain();
  v33 = StandaloneWorkoutTimeProvider.init(eventHub:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient011WorkoutPlanB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient015ArchivedSessionB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient07CatalogB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  outlined init with copy of AssetClientProtocol(v99, v98);
  outlined init with copy of AssetClientProtocol(v101, v97);
  v34 = type metadata accessor for WorkoutPlanArchiver();
  swift_allocObject();
  v35 = WorkoutPlanArchiver.init(catalogClient:workoutPlanClient:)();
  outlined init with copy of AssetClientProtocol(v100, v98);
  v97[3] = v32;
  v97[4] = MEMORY[0x277D543F0];
  v97[0] = v33;
  v95 = v34;
  v96 = MEMORY[0x277D54170];
  v94 = v35;
  type metadata accessor for ArchivedSessionService();
  swift_allocObject();
  swift_unknownObjectRetain();
  v77 = v33;

  v76 = v35;

  v84 = v15;
  v75 = ArchivedSessionService.init(archivedSessionClient:standaloneWorkoutTimeProvider:workoutPlanArchiver:eventHub:)();
  type metadata accessor for ScreenCaptureMonitor();
  swift_allocObject();

  v88 = ScreenCaptureMonitor.init(dependencies:scenesProvider:)();
  type metadata accessor for WorkoutCoreInjector();
  v36 = static WorkoutCoreInjector.shared.getter();
  dispatch thunk of WorkoutCoreInjector.inject()();

  HealthStore.init(healthStore:)();
  v37 = type metadata accessor for DependenciesWrapper();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR___SMDependencies_dependencies] = v9;
  v93.receiver = v38;
  v93.super_class = v37;
  v39 = v9;

  v40 = objc_msgSendSuper2(&v93, sel_init);
  v41 = type metadata accessor for SeymourSubscriptionProvider();
  v42 = objc_allocWithZone(v41);
  v43 = objc_allocWithZone(v41);

  v44 = SeymourSubscriptionProvider.init(dependencies:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  type metadata accessor for SeymourSampleContentProvider();
  v45 = swift_allocObject();
  v46 = [objc_opt_self() standardUserDefaults];
  v47 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
  LOBYTE(v34) = [v46 BOOLForKey_];

  *(v45 + 16) = v34;
  *(v45 + 24) = [objc_opt_self() weakObjectsHashTable];
  v48 = type metadata accessor for SeymourAvailabilityProvider();
  v49 = objc_allocWithZone(v48);
  v74 = v40;
  v50 = objc_allocWithZone(v48);

  v51 = SeymourAvailabilityProvider.init(dependencies:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v52 = [v82 mainBundle];
  v53 = [v52 bundleIdentifier];

  if (v53)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xE000000000000000;
  }

  v57 = objc_allocWithZone(type metadata accessor for ExternalSeymourSessionStatusProvider());
  v73[2] = v39;

  v59 = ExternalSeymourSessionStatusProvider.init(dependencies:appBundleIdentifier:)(v58, v54, v56);
  type metadata accessor for SeymourDataSource();
  v60 = swift_allocObject();

  v61 = v44;
  v62 = v51;
  v82 = specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v45, v61, v62, v59, v60);
  v73[0] = v73;
  MEMORY[0x28223BE20](v82);
  v63 = v81;
  v64 = v75;
  v73[-18] = v80;
  v73[-17] = v64;
  v73[-16] = v103;
  v73[-15] = v63;
  v65 = v45;
  v73[1] = v45;
  v67 = v78;
  v66 = v79;
  v73[-14] = v85;
  v73[-13] = v66;
  v68 = v89;
  v69 = v90;
  v73[-12] = v67;
  v73[-11] = v69;
  v73[-10] = v68;
  v70 = v91;
  v73[-9] = v88;
  v73[-8] = v70;
  v73[-7] = v92;
  v73[-6] = v61;
  v73[-5] = v65;
  v73[-4] = v62;
  v73[-3] = v59;
  v73[-2] = v71;
  v85 = Dependencies.replacing(_:)();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_3(v99);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v100);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v101);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v102);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v106);
  (*(v86 + 8))(v92, v87);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v103);
  return v85;
}

unint64_t lazy protocol witness table accessor for type WheelchairStatusBridge and conformance WheelchairStatusBridge()
{
  result = lazy protocol witness table cache variable for type WheelchairStatusBridge and conformance WheelchairStatusBridge;
  if (!lazy protocol witness table cache variable for type WheelchairStatusBridge and conformance WheelchairStatusBridge)
  {
    type metadata accessor for WheelchairStatusBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WheelchairStatusBridge and conformance WheelchairStatusBridge);
  }

  return result;
}

uint64_t specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v16[4] = &protocol witness table for SeymourSampleContentProvider;
  v16[5] = &protocol witness table for SeymourSampleContentProvider;
  v16[3] = type metadata accessor for SeymourSampleContentProvider();
  v16[0] = a1;
  outlined init with copy of SeymourSampleContentObservable & SeymourSampleContentProviding(v16, a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSubscriptionProvider) = a2;
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourAvailabilityProvider) = a3;
  v10 = (a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_externalSeymourSessionStatusProvider);
  *v10 = a4;
  v10[1] = &protocol witness table for ExternalSeymourSessionStatusProvider;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  [v12 availability];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  [v11 subscriptionStatus];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  [v13 externalSessionActive];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  [*(a1 + 24) addObject_];

  [v11 addObserver_];

  [v12 addObserver_];

  v14 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  [*&v13[v14] addObject_];
  __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
  return a5;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Dependency<AccountProviding> and conformance Dependency<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of SeymourSampleContentObservable & SeymourSampleContentProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(uint64_t a1)
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

uint64_t type metadata accessor for ACAccountStore(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for ACAccountStore(255, &lazy cache variable for type metadata for UIScene);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t DemoSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAIyAA7DividerV_AA4TextVAMtGSg_AOtGGMd);
  return closure #1 in DemoSettingsView.body.getter(a1 + *(v2 + 44));
}

uint64_t closure #1 in DemoSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGMd);
  v106 = *(v1 - 8);
  v107 = v1;
  MEMORY[0x28223BE20](v1);
  v103 = &v86 - v2;
  v98 = type metadata accessor for Divider();
  v105 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v108 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v86 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = &v86 - v21;
  MEMORY[0x28223BE20](v22);
  v99 = &v86 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v95 = type metadata accessor for NLWorkoutDemoUtilities();
  static NLWorkoutDemoUtilities.workoutDemoSessionURL()();
  v94 = *(v13 + 48);
  v27 = v94(v11, 1, v12);
  v104 = v13;
  v93 = v6;
  if (v27 == 1)
  {
    _s10Foundation3URLVSgWOhTm_1(v11, &_s10Foundation3URLVSgMd);
    v28 = *(v106 + 56);
    v28(v26, 1, 1, v107);
    v29 = v6;
  }

  else
  {
    v30 = *(v13 + 32);
    v88 = v17;
    v30(v17, v11, v12);
    Divider.init()();
    v110 = static HierarchicalShapeStyle.secondary.getter();
    v89 = v26;
    v91 = Text.foregroundStyle<A>(_:)();
    v90 = v31;
    v33 = v32;
    v92 = v34;
    URL.lastPathComponent.getter();
    v35 = v98;
    v110 = static HierarchicalShapeStyle.primary.getter();
    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v87 = v41;

    v42 = *(v105 + 16);
    v42(v108, v6, v35);
    LOBYTE(v110) = v33 & 1;
    v43 = v103;
    v109 = v40 & 1;
    v42(v103, v108, v35);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA4TextVAEtMd);
    v45 = v43 + *(v44 + 48);
    v46 = v110;
    v47 = v91;
    v48 = v90;
    *v45 = v91;
    *(v45 + 8) = v48;
    *(v45 + 16) = v46;
    *(v45 + 24) = v92;
    v49 = v43 + *(v44 + 64);
    v50 = v109;
    *v49 = v36;
    *(v49 + 8) = v38;
    *(v49 + 16) = v50;
    *(v49 + 24) = v87;
    outlined copy of Text.Storage(v47, v48, v46);

    outlined copy of Text.Storage(v36, v38, v50);
    v51 = *(v105 + 8);

    v52 = v93;
    v51(v93, v35);
    (*(v104 + 8))(v88, v12);
    v53 = v38;
    v26 = v89;
    outlined consume of Text.Storage(v36, v53, v109);

    outlined consume of Text.Storage(v91, v90, v110);

    v51(v108, v35);
    outlined init with take of TupleView<(Divider, Text, Text)>(v43, v26);
    v28 = *(v106 + 56);
    v28(v26, 0, 1, v107);
    v29 = v52;
  }

  v54 = v96;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfigURL()();
  if (v94(v54, 1, v12) == 1)
  {
    _s10Foundation3URLVSgWOhTm_1(v54, &_s10Foundation3URLVSgMd);
    v55 = v99;
    v28(v99, 1, 1, v107);
  }

  else
  {
    (*(v104 + 32))();
    Divider.init()();
    v110 = static HierarchicalShapeStyle.secondary.getter();
    v94 = Text.foregroundStyle<A>(_:)();
    v92 = v56;
    LODWORD(v91) = v57;
    v95 = v58;
    v96 = v12;
    URL.lastPathComponent.getter();
    v59 = v108;
    v110 = static HierarchicalShapeStyle.primary.getter();
    v60 = Text.foregroundStyle<A>(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v67 = v105;
    v68 = v26;
    v69 = *(v105 + 16);
    v70 = v29;
    v71 = v98;
    v69(v59, v70, v98);
    LOBYTE(v110) = v91 & 1;
    v109 = v64 & 1;
    v72 = v103;
    v69(v103, v59, v71);
    v26 = v68;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA4TextVAEtMd);
    v74 = v72 + *(v73 + 48);
    v75 = v110;
    v77 = v94;
    v76 = v95;
    v78 = v92;
    *v74 = v94;
    *(v74 + 8) = v78;
    *(v74 + 16) = v75;
    *(v74 + 24) = v76;
    v79 = v72 + *(v73 + 64);
    LOBYTE(v72) = v109;
    *v79 = v60;
    *(v79 + 8) = v62;
    *(v79 + 16) = v72;
    *(v79 + 24) = v66;
    outlined copy of Text.Storage(v77, v78, v75);

    outlined copy of Text.Storage(v60, v62, v72);
    v80 = *(v67 + 8);

    v80(v93, v71);
    (*(v104 + 8))(v97, v96);
    outlined consume of Text.Storage(v60, v62, v109);

    outlined consume of Text.Storage(v77, v78, v110);

    v80(v108, v71);
    v55 = v99;
    outlined init with take of TupleView<(Divider, Text, Text)>(v103, v99);
    (*(v106 + 56))(v55, 0, 1, v107);
  }

  v81 = v100;
  outlined init with copy of TupleView<(Divider, Text, Text)>?(v26, v100);
  v82 = v101;
  outlined init with copy of TupleView<(Divider, Text, Text)>?(v55, v101);
  v83 = v102;
  outlined init with copy of TupleView<(Divider, Text, Text)>?(v81, v102);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSg_AItMd);
  outlined init with copy of TupleView<(Divider, Text, Text)>?(v82, v83 + *(v84 + 48));
  _s10Foundation3URLVSgWOhTm_1(v55, &_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
  _s10Foundation3URLVSgWOhTm_1(v26, &_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
  _s10Foundation3URLVSgWOhTm_1(v82, &_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
  return _s10Foundation3URLVSgWOhTm_1(v81, &_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
}

uint64_t protocol witness for View.body.getter in conformance DemoSettingsView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAIyAA7DividerV_AA4TextVAMtGSg_AOtGGMd);
  return closure #1 in DemoSettingsView.body.getter(a1 + *(v2 + 44));
}

uint64_t getEnumTagSinglePayload for DemoSettingsView(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DemoSettingsView(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(TupleView<(Divider, Text, Text)>?, TupleView<(Divider, Text, Text)>?)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(TupleView<(Divider, Text, Text)>?, TupleView<(Divider, Text, Text)>?)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(TupleView<(Divider, Text, Text)>?, TupleView<(Divider, Text, Text)>?)>> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAEyAA7DividerV_AA4TextVAItGSg_AKtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(TupleView<(Divider, Text, Text)>?, TupleView<(Divider, Text, Text)>?)>> and conformance VStack<A>);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(Divider, Text, Text)>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TupleView<(Divider, Text, Text)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA4TextVAGtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void one-time initialization function for heroHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB752C0[v2];
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

  static MirrorHeroGraphicsMetricsViewLayout.heroHeight = *&v3;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance MirrorHeroGraphicsMetricsViewLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorHeroGraphicsMetricsViewLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorHeroGraphicsMetricsViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorHeroGraphicsMetricsViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance MirrorHeroGraphicsMetricsViewLayout(uint64_t *a1))(void *a1)
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
  return protocol witness for Animatable.animatableData.modify in conformance MirrorHeroGraphicsMetricsViewLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance MirrorHeroGraphicsMetricsViewLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t getEnumTagSinglePayload for MirrorHeroGraphicsMetricsViewLayout(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MirrorHeroGraphicsMetricsViewLayout(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type MirrorHeroGraphicsMetricsViewLayout and conformance MirrorHeroGraphicsMetricsViewLayout()
{
  result = lazy protocol witness table cache variable for type MirrorHeroGraphicsMetricsViewLayout and conformance MirrorHeroGraphicsMetricsViewLayout;
  if (!lazy protocol witness table cache variable for type MirrorHeroGraphicsMetricsViewLayout and conformance MirrorHeroGraphicsMetricsViewLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorHeroGraphicsMetricsViewLayout and conformance MirrorHeroGraphicsMetricsViewLayout);
  }

  return result;
}

uint64_t specialized MirrorHeroGraphicsMetricsViewLayout.placeSubviews(in:proposal:subviews:cache:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, int a7)
{
  v67 = a7;
  v10 = type metadata accessor for LayoutSubview();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v60 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = v59 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v59 - v16;
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() != 5)
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() != 4)
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      result = dispatch thunk of Collection.distance(from:to:)();
      if (result != 3)
      {
        goto LABEL_24;
      }
    }
  }

  v63 = a4;
  v64 = v17;
  v68 = a3;
  v62 = a1;
  v65 = v11;
  v66 = v10;
  v19 = objc_opt_self();

  v20 = objc_opt_self();
  v21 = [v20 mainScreen];
  [v21 scale];

  v22 = [v20 mainScreen];
  [v22 nativeScale];

  v23 = [v20 mainScreen];
  [v23 scale];
  v59[3] = v24;

  v25 = [v20 mainScreen];
  [v25 nativeScale];
  v59[2] = v26;

  v27 = [v20 mainScreen];
  [v27 scale];

  v28 = [v20 mainScreen];
  [v28 nativeScale];

  v29 = [v20 mainScreen];
  [v29 scale];
  v59[1] = v30;

  v31 = [v20 mainScreen];
  [v31 nativeScale];
  v59[0] = v32;

  v33 = [v20 mainScreen];
  [v33 scale];

  v34 = [v20 mainScreen];
  [v34 nativeScale];

  v35 = [v20 mainScreen];
  [v35 scale];

  v36 = [v20 mainScreen];
  [v36 nativeScale];

  v37 = [v20 mainScreen];
  [v37 scale];

  v38 = [v20 mainScreen];
  [v38 nativeScale];

  v39 = [v19 currentDevice];
  v40 = specialized UIDevice.screenType.getter();

  if (v40 <= 4u)
  {
    v41 = &unk_277DA8000;
  }

  else if (v40 > 7u)
  {
    v41 = &unk_277DA8000;
  }

  else
  {
    v41 = &unk_277DA8000;
  }

  v42 = [v20 mainScreen];
  [v42 v41[406]];
  v44 = v43;

  v45 = [v20 mainScreen];
  [v45 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
  v47 = v46;

  if (v44 != v47)
  {
    v48 = [v20 mainScreen];
    [v48 v41[406]];

    v49 = [v20 mainScreen];
    [v49 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
  }

  v51 = v65;
  v50 = v66;
  MetricPlatterConstants.init()(v69);
  v52 = v68;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  v53 = v64;
  LayoutSubviews.subscript.getter();
  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static UnitPoint.topLeading.getter();
  v69[0] = 0;
  v70 = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  v54 = *(*&v51 + 8);
  v54(v53, v50);
  MetricPlatterConstants.init()(v69);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 2)
  {
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v55 = v53;
    return (v54)(v55, v50);
  }

  v66 = *&v52;
  v56 = (v68 + -7.0) * 0.5;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v57 = dispatch thunk of Collection.distance(from:to:)();
  v65 = v56;
  if (v57 == 5)
  {
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v54(v53, v50);
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
LABEL_19:
    v54(v53, v50);
    goto LABEL_20;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 4)
  {
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    goto LABEL_19;
  }

LABEL_20:
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (!__OFSUB__(result, 2))
  {
    v55 = v61;
    LayoutSubviews.subscript.getter();
    v58 = v60;
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    static UnitPoint.topLeading.getter();
    v69[0] = 0;
    v70 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v54(v58, v50);
    return (v54)(v55, v50);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

uint64_t type metadata accessor for MirrorGraphicsMetricsView()
{
  result = type metadata singleton initialization cache for MirrorGraphicsMetricsView;
  if (!type metadata singleton initialization cache for MirrorGraphicsMetricsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorGraphicsMetricsView()
{
  type metadata accessor for ObservedObject<MetricsPublisher>();
  if (v0 <= 0x3F)
  {
    _sSo21FIUIFormattingManagerCMaTm_4(319, &lazy cache variable for type metadata for FIUIFormattingManager);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricPlatterType();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [HKWorkoutMetricType]();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WorkoutChartProperties();
          if (v4 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_4(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
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

void type metadata accessor for [HKWorkoutMetricType]()
{
  if (!lazy cache variable for type metadata for [HKWorkoutMetricType])
  {
    type metadata accessor for HKWorkoutMetricType(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [HKWorkoutMetricType]);
    }
  }
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_4(uint64_t a1, unint64_t *a2)
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

int *closure #1 in MirrorGraphicsMetricsView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v175 = a2;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MEMORY[0x28223BE20](v189);
  v173 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v188 = &v171 - v5;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGG_Qo_Md);
  v174 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v217 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v216 = &v171 - v8;
  MEMORY[0x28223BE20](v9);
  v227 = &v171 - v10;
  MEMORY[0x28223BE20](v11);
  v218 = &v171 - v12;
  v209 = type metadata accessor for SessionChartState(0);
  MEMORY[0x28223BE20](v209);
  v208 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Font._StylisticAlternative();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v15 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v196 = &v171 - v17;
  v225 = type metadata accessor for WorkoutChartProperties();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v223 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for MetricPlatterType();
  v19 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v195 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for SessionChart(0);
  MEMORY[0x28223BE20](v207);
  v206 = (&v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v22 - 8);
  v204 = &v171 - v23;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v201);
  v203 = &v171 - v24;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGMd);
  MEMORY[0x28223BE20](v200);
  v205 = &v171 - v25;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
  MEMORY[0x28223BE20](v202);
  v215 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v199 = &v171 - v28;
  MEMORY[0x28223BE20](v29);
  v229 = &v171 - v30;
  v31 = type metadata accessor for AccessibilityChildBehavior();
  v32 = *(v31 - 8);
  v232 = v31;
  v233 = v32;
  MEMORY[0x28223BE20](v31);
  v231 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v171 - v35;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v230);
  v187 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v193 = &v171 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v171 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v43 - 8);
  v172 = &v171 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v186 = &v171 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v171 - v48;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGMd);
  MEMORY[0x28223BE20](v194);
  v51 = &v171 - v50;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGA96_yAF0fI5StyleOGGMd);
  MEMORY[0x28223BE20](v210);
  v53 = &v171 - v52;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA52_SgGGA102_yAL0mC5StyleOGG_Qo_Md);
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v212 = &v171 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v228 = &v171 - v56;
  result = type metadata accessor for MirrorGraphicsMetricsView();
  v58 = *(a1 + result[7]);
  if (!v58[2])
  {
    __break(1u);
    goto LABEL_17;
  }

  v59 = result;
  v192 = v15;
  v60 = v58[4];
  v191 = v19;
  v61 = *(v19 + 56);
  v222 = v19 + 56;
  v221 = v61;
  v61(v36, 1, 1, v234);
  v62 = *(a1 + v59[10]);
  v63 = *(a1 + 8);
  v64 = a1;
  v219 = *(a1 + 16);
  v220 = v62;
  v226 = v63;
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(v60, v36, v219, v62, v63, v42);
  v190 = v36;
  result = _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v36, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
  if (!v58[2])
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v185 = v58;
  result = MEMORY[0x20F30D420](v58[4]);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v65 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v211 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
  View.accessibilityIdentifier(_:)();

  _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v42, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v66 = a1 + v59[9];
  v67 = *(v66 + 8);
  v68 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v49, v51, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  v70 = &v51[*(v194 + 36)];
  *v70 = KeyPath;
  v70[1] = v68;
  v71 = swift_getKeyPath();
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v51, v53, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGMd);
  v72 = &v53[*(v210 + 36)];
  *v72 = v71;
  v72[8] = 3;
  v73 = v231;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>();
  View.accessibilityElement(children:)();
  v74 = *(v233 + 8);
  v233 += 8;
  v210 = v74;
  v74(v73, v232);
  _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v53, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGA96_yAF0fI5StyleOGGMd);
  v75 = v191;
  v76 = v195;
  v77 = v234;
  (*(v191 + 16))(v195, v64 + v59[6], v234);
  v78 = (*(v75 + 88))(v76, v77);
  if (v78 == *MEMORY[0x277D7E1C0])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v191 = PowerMetricsPublisher.powerChartData.getter();
  }

  else if (v78 == *MEMORY[0x277D7E1F0])
  {
    v191 = MetricsPublisher.elevationChartData.getter();
  }

  else
  {
    (*(v75 + 8))(v76, v77);
    v191 = MEMORY[0x277D84F90];
  }

  v79 = v59[8];
  v80 = *(v224 + 16);
  v81 = v223;
  v80(v223, v64 + v79, v225);
  v82 = *(v66 + 8);
  v180 = *v66;
  v179 = v82;
  v83 = *(v66 + 24);
  v181 = *(v66 + 16);
  v182 = v83;
  v84 = *(v66 + 40);
  v183 = *(v66 + 32);
  v184 = v84;
  v178 = *(v66 + 48);
  v85 = v207;
  v86 = v206;
  v195 = v206 + *(v207 + 36);
  v235 = 0;
  v236 = 0;
  v237 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySdGSgMd);
  State.init(wrappedValue:)();
  v194 = v238;
  v177 = v85[11];
  FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static Font.Weight.medium.getter();
  v87 = type metadata accessor for Font.Design();
  v88 = v196;
  (*(*(v87 - 8) + 56))(v196, 1, 1, v87);
  static Font.system(size:weight:design:)();
  _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v88, &_s7SwiftUI4FontV6DesignOSgMd);
  v89 = v197;
  v90 = v192;
  v91 = v198;
  (*(v197 + 104))(v192, *MEMORY[0x277CE0940], v198);
  v92 = Font._stylisticAlternative(_:)();

  (*(v89 + 8))(v90, v91);
  *(v86 + v177) = v92;
  v93 = v208;
  v94 = v191;
  stateFor(data:chartProperties:)(v191, v81, v208);
  *v86 = v94;
  v95 = v225;
  v80(v86 + v85[5], v81, v225);
  v96 = (v86 + v85[6]);
  v97 = v180;
  v98 = v179;
  *v96 = v180;
  v96[1] = v98;
  v99 = v181;
  v100 = v182;
  v96[2] = v181;
  v96[3] = v100;
  v101 = v183;
  v102 = v184;
  v96[4] = v183;
  v96[5] = v102;
  v103 = v178;
  v96[6] = v178;
  v104 = v103;
  v105 = v98;
  v106 = v97;
  v107 = v105;
  v108 = v99;
  v109 = v100;
  v110 = v101;
  v111 = v102;
  v112 = Color.init(uiColor:)();
  (*(v224 + 8))(v223, v95);
  *(v86 + v85[7]) = v112;
  v113 = v86 + v85[8];
  outlined init with copy of ClosedRange<Date>(v93, v113, &_sSNy10Foundation4DateVGMd);
  *(v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd) + 28)) = 0;
  v114 = &v93[*(v209 + 20)];
  v115 = *v114;
  v116 = *(v114 + 1);
  LOBYTE(v102) = v114[16];
  outlined destroy of SessionChartState(v93, type metadata accessor for SessionChartState);

  v117 = v195;
  *v195 = v115;
  *(v117 + 1) = v116;
  v117[16] = v102;
  *(v117 + 3) = 0;
  *(v86 + v85[10]) = 0;
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionChart and conformance SessionChart, type metadata accessor for SessionChart);
  v118 = v204;
  View.accessibilityIdentifier(_:)();
  outlined destroy of SessionChartState(v86, type metadata accessor for SessionChart);
  LOBYTE(v115) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v203;
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v118, v203, &_s7SwiftUI15ModifiedContentVy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGMd);
  v128 = v127 + *(v201 + 36);
  *v128 = v115;
  *(v128 + 8) = v120;
  *(v128 + 16) = v122;
  *(v128 + 24) = v124;
  *(v128 + 32) = v126;
  *(v128 + 40) = 0;
  LOBYTE(v115) = static Edge.Set.bottom.getter();
  v129 = v127;
  v130 = v205;
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v129, v205, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGMd);
  v131 = v130 + *(v200 + 36);
  *v131 = v115;
  *(v131 + 8) = 0u;
  *(v131 + 24) = 0u;
  *(v131 + 40) = 1;
  v132 = swift_getKeyPath();
  v133 = v130;
  v134 = v199;
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v133, v199, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGMd);
  v135 = v134 + *(v202 + 36);
  *v135 = v132;
  *(v135 + 8) = 2;
  result = _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v134, v229, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
  v136 = v185;
  if (v185[2] < 2uLL)
  {
    goto LABEL_18;
  }

  v137 = v185[5];
  v138 = v190;
  v139 = v234;
  v221(v190, 1, 1, v234);
  v140 = v193;
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(v137, v138, v219, v220, v226, v193);
  result = _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v138, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
  if (v136[2] < 2uLL)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = MEMORY[0x20F30D420](v136[5]);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v141 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v142 = v186;
  View.accessibilityIdentifier(_:)();

  _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v140, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v143 = swift_getKeyPath();
  v144 = v188;
  _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v142, v188, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  v145 = v189;
  v146 = v144 + *(v189 + 36);
  *v146 = v143;
  *(v146 + 8) = 5;
  v147 = v231;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC();
  v148 = v218;
  View.accessibilityElement(children:)();
  (v210)(v147, v232);
  result = _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v144, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  v149 = v187;
  if (v136[2] < 3uLL)
  {
    goto LABEL_20;
  }

  v150 = v136[6];
  v221(v138, 1, 1, v139);
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(v150, v138, v219, v220, v226, v149);
  result = _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v138, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
  if (v136[2] < 3uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = MEMORY[0x20F30D420](v136[6]);
  if (result)
  {
    v151 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v152 = v172;
    View.accessibilityIdentifier(_:)();

    _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v149, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
    v153 = swift_getKeyPath();
    v154 = v173;
    _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(v152, v173, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    v155 = v154 + *(v145 + 36);
    *v155 = v153;
    *(v155 + 8) = 5;
    v156 = v231;
    static AccessibilityChildBehavior.combine.getter();
    View.accessibilityElement(children:)();
    (v210)(v156, v232);
    _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v154, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
    v157 = *(v213 + 16);
    v158 = v212;
    v159 = v214;
    v157(v212, v228, v214);
    v160 = v215;
    outlined init with copy of ClosedRange<Date>(v229, v215, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
    v161 = v174;
    v162 = *(v174 + 16);
    v163 = v176;
    v162(v216, v148, v176);
    v162(v217, v227, v163);
    v164 = v175;
    v157(v175, v158, v159);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA52_SgGGA102_yAL0mC5StyleOGG_Qo__AIyAIyAIyAIyAL12SessionChartVA99_GAA14_PaddingLayoutVGA115_GA108_GAcAEAdEQrAG_tFQOyAIyA100_A108_G_Qo_A120_tMd);
    outlined init with copy of ClosedRange<Date>(v160, &v164[v165[12]], &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
    v166 = v216;
    v162(&v164[v165[16]], v216, v163);
    v167 = v217;
    v162(&v164[v165[20]], v217, v163);
    v168 = *(v161 + 8);
    v168(v227, v163);
    v168(v218, v163);
    _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v229, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
    v169 = *(v213 + 8);
    v170 = v214;
    v169(v228, v214);
    v168(v167, v163);
    v168(v166, v163);
    _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(v215, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB012SessionChartVAA31AccessibilityAttachmentModifierVGAA14_PaddingLayoutVGAKGAA022_EnvironmentKeyWritingJ0VyAD0E9ViewStyleOGGMd);
    return (v169)(v212, v170);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance MirrorGraphicsMetricsView@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(*(v2 + *(a1 + 28)) + 16) >= 3uLL)
  {
    closure #1 in MirrorGraphicsMetricsView.body.getter(v2, a2);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0021MirrorGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAUyAA012_ConditionalT0VyAWyAWyAWyAWyAWyAH012EnergyMetricD0VAYGAWyAH09HeartRatewD0VAH0xy9AggregatewD0VGGAWyAWyA2_AH04ZonewD0VGAWyAH010TimeInZonewD0VA6_GGGAWyAWyAWyA9_AH04PacewD0VGAWyA14_A14_GGAWyA16_AWyAH08DistancewD0VAH04LapswD0VGGGGAWyAWyAWyAWyAWyAWyAH07CadencewD0VAA05EmptyD0VGA27_GA27_GAWyAH015ElevationChangewD0VAH016CurrentElevationwD0VGGAWyAWyAH05PowerwD0VA40_GAWyA40_AH014FlightsClimbedwD0VGGGAWyAWyAWyAH015SegmentDurationwD0VAH014DistanceDetailwD0VGAWyA14_AYGGAWyAWyAYA40_GAWyA40_AUyAUyAH0h4TimeD0VAH0W6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAWyAWyAWyAWyA50_A14_GAWyAH012StrideLengthwD0VA73_GGAWyAWyAH019VerticalOscillationwD0VA77_GAWyAH017GroundContactTimewD0VA80_GGGAWyAWyA34_AH016DownhillRunCountwD0VGAWyA29_AA6HStackVyAMyAUyAA4TextVAH0W9ValueFontVG_AUyAUyA90_AH0W19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0P18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA63_SgGGA111_yAH0hD5StyleOGG_Qo__AUyAUyAUyAUyAH12SessionChartVA108_GAA08_PaddingF0VGA124_GA117_GAoAEApQQrAS_tFQOyAUyA109_A117_G_Qo_A129_tGGMd);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance MirrorGraphicsMetricsViewLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorGraphicsMetricsViewLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorGraphicsMetricsViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorGraphicsMetricsViewLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance MirrorGraphicsMetricsViewLayout(uint64_t *a1))(void *a1)
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
  return protocol witness for Animatable.animatableData.modify in conformance MirrorGraphicsMetricsViewLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance MirrorGraphicsMetricsViewLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t outlined destroy of SessionChartState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore17MetricPlatterTypeOSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0021MirrorGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAUyAA012_ConditionalT0VyAWyAWyAWyAWyAWyAH012EnergyMetricD0VAYGAWyAH09HeartRatewD0VAH0xy9AggregatewD0VGGAWyAWyA2_AH04ZonewD0VGAWyAH010TimeInZonewD0VA6_GGGAWyAWyAWyA9_AH04PacewD0VGAWyA14_A14_GGAWyA16_AWyAH08DistancewD0VAH04LapswD0VGGGGAWyAWyAWyAWyAWyAWyAH07CadencewD0VAA05EmptyD0VGA27_GA27_GAWyAH015ElevationChangewD0VAH016CurrentElevationwD0VGGAWyAWyAH05PowerwD0VA40_GAWyA40_AH014FlightsClimbedwD0VGGGAWyAWyAWyAH015SegmentDurationwD0VAH014DistanceDetailwD0VGAWyA14_AYGGAWyAWyAYA40_GAWyA40_AUyAUyAH0h4TimeD0VAH0W6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAWyAWyAWyAWyA50_A14_GAWyAH012StrideLengthwD0VA73_GGAWyAWyAH019VerticalOscillationwD0VA77_GAWyAH017GroundContactTimewD0VA80_GGGAWyAWyA34_AH016DownhillRunCountwD0VGAWyA29_AA6HStackVyAMyAUyAA4TextVAH0W9ValueFontVG_AUyAUyA90_AH0W19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0P18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA63_SgGGA111_yAH0hD5StyleOGG_Qo__AUyAUyAUyAUyAH12SessionChartVA108_GAA08_PaddingF0VGA124_GA117_GAoAEApQQrAS_tFQOyAUyA109_A117_G_Qo_A129_tGGSgMd);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0021MirrorGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAUyAA012_ConditionalT0VyAWyAWyAWyAWyAWyAH012EnergyMetricD0VAYGAWyAH09HeartRatewD0VAH0xy9AggregatewD0VGGAWyAWyA2_AH04ZonewD0VGAWyAH010TimeInZonewD0VA6_GGGAWyAWyAWyA9_AH04PacewD0VGAWyA14_A14_GGAWyA16_AWyAH08DistancewD0VAH04LapswD0VGGGGAWyAWyAWyAWyAWyAWyAH07CadencewD0VAA05EmptyD0VGA27_GA27_GAWyAH015ElevationChangewD0VAH016CurrentElevationwD0VGGAWyAWyAH05PowerwD0VA40_GAWyA40_AH014FlightsClimbedwD0VGGGAWyAWyAWyAH015SegmentDurationwD0VAH014DistanceDetailwD0VGAWyA14_AYGGAWyAWyAYA40_GAWyA40_AUyAUyAH0h4TimeD0VAH0W6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAWyAWyAWyAWyA50_A14_GAWyAH012StrideLengthwD0VA73_GGAWyAWyAH019VerticalOscillationwD0VA77_GAWyAH017GroundContactTimewD0VA80_GGGAWyAWyA34_AH016DownhillRunCountwD0VGAWyA29_AA6HStackVyAMyAUyAA4TextVAH0W9ValueFontVG_AUyAUyA90_AH0W19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0P18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA63_SgGGA111_yAH0hD5StyleOGG_Qo__AUyAUyAUyAUyAH12SessionChartVA108_GAA08_PaddingF0VGA124_GA117_GAoAEApQQrAS_tFQOyAUyA109_A117_G_Qo_A129_tGGMd);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type _LayoutRoot<MirrorGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy07WorkoutB0025MirrorGraphicsMetricsViewC0VGMd);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA012_ConditionalL0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricD0VAPGAMyAN09HeartRatepD0VAN0qr9AggregatepD0VGGAMyAMyAuN04ZonepD0VGAMyAN06TimeIntpD0VAYGGGAMyAMyAMyA0_AN04PacepD0VGAMyA5_A5_GGAMyA7_AMyAN08DistancepD0VAN04LapspD0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencepD0VAA05EmptyD0VGA18_GA18_GAMyAN015ElevationChangepD0VAN016CurrentElevationpD0VGGAMyAMyAN05PowerpD0VA31_GAMyA31_AN014FlightsClimbedpD0VGGGAMyAMyAMyAN015SegmentDurationpD0VAN0x6DetailpD0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AKyAKyAN0nuD0VAN0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthpD0VA64_GGAMyAMyAN019VerticalOscillationpD0VA68_GAMyAN013GroundContactupD0VA71_GGGAMyAMyA25_AN016DownhillRunCountpD0VGAMyA20_AA6HStackVyACyAKyAA4TextVAN0P9ValueFontVG_AKyAKyA81_AN0P19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0H18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA54_SgGGA102_yAN0nD5StyleOGG_Qo__AKyAKyAKyAKyAN12SessionChartVA99_GAA14_PaddingLayoutVGA115_GA108_GAeAEAfGQrAI_tFQOyAKyA100_A108_G_Qo_A120_tGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SessionChart, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type MirrorGraphicsMetricsViewLayout and conformance MirrorGraphicsMetricsViewLayout()
{
  result = lazy protocol witness table cache variable for type MirrorGraphicsMetricsViewLayout and conformance MirrorGraphicsMetricsViewLayout;
  if (!lazy protocol witness table cache variable for type MirrorGraphicsMetricsViewLayout and conformance MirrorGraphicsMetricsViewLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorGraphicsMetricsViewLayout and conformance MirrorGraphicsMetricsViewLayout);
  }

  return result;
}

uint64_t specialized MirrorGraphicsMetricsViewLayout.placeSubviews(in:proposal:subviews:cache:)(double a1, double a2, double a3, double a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LayoutSubview();
  v86 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() >= 2)
  {
    v79 = v13;
    v81 = a4;
    v83 = a1;
    v84 = a3;
    v85 = v11;
    MetricPlatterConstants.init()(v87);
    v82 = v87[0];
    v80 = v87[6];
    v18 = objc_opt_self();

    v19 = objc_opt_self();
    v20 = [v19 mainScreen];
    [v20 scale];
    v22 = v21;

    v23 = [v19 mainScreen];
    [v23 nativeScale];
    v25 = v24;

    v26 = 61.0;
    if (v22 == v25)
    {
      v26 = 60.0;
    }

    v76 = v26;

    v27 = [v19 mainScreen];
    [v27 scale];
    v78 = v28;

    v29 = [v19 mainScreen];
    [v29 nativeScale];
    v77 = v30;

    v31 = [v19 mainScreen];
    [v31 scale];
    v33 = v32;

    v34 = [v19 mainScreen];
    [v34 nativeScale];
    v36 = v35;

    v37 = 84.0;
    if (v33 == v36)
    {
      v37 = 65.0;
    }

    *&v75[1] = v37;

    v38 = [v19 mainScreen];
    [v38 scale];
    v40 = v39;

    v41 = [v19 mainScreen];
    [v41 nativeScale];
    v43 = v42;

    v44 = [v19 mainScreen];
    [v44 scale];

    v45 = [v19 mainScreen];
    [v45 nativeScale];

    v46 = [v19 mainScreen];
    [v46 scale];
    v48 = v47;

    v49 = [v19 mainScreen];
    [v49 nativeScale];
    v51 = v50;

    v52 = [v19 mainScreen];
    [v52 scale];
    v54 = v53;

    v55 = [v19 mainScreen];
    [v55 nativeScale];
    v57 = v56;

    v58 = [v18 currentDevice];
    v59 = specialized UIDevice.screenType.getter();

    if (v59 <= 4u)
    {
      v60 = v76;
    }

    else
    {
      v60 = 78.0;
      if (v40 == v43)
      {
        v60 = 73.0;
      }

      v61 = 84.0;
      if (v48 == v51)
      {
        v61 = 74.0;
      }

      v62 = 84.0;
      if (v54 == v57)
      {
        v62 = 74.0;
      }

      if (v59 != 9)
      {
        v61 = v62;
      }

      if (v59 != 8)
      {
        v60 = v61;
      }
    }

    v63 = [v19 mainScreen];
    [v63 scale];
    v65 = v64;

    v66 = [v19 mainScreen];
    [v66 nativeScale];
    v68 = v67;

    v69 = v84;
    v70 = v79;
    if (v65 != v68)
    {
      v71 = [v19 mainScreen];
      [v71 scale];

      v72 = [v19 mainScreen];
      [v72 nativeScale];
    }

    v81 = (v69 + -7.0) * 0.5;
    MetricPlatterConstants.init()(v87);
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    LOBYTE(v87[0]) = 0;
    v88 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v73 = v85;
    v74 = *(v86 + 8);
    v74(v70, v85);
    LayoutSubviews.subscript.getter();
    static UnitPoint.topLeading.getter();
    LOBYTE(v87[0]) = 0;
    v88 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v74(v70, v73);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() >= 3)
    {
      LayoutSubviews.subscript.getter();
      static UnitPoint.topLeading.getter();
      LOBYTE(v87[0]) = 0;
      v88 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      v74(v70, v73);
    }

    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of Collection.distance(from:to:)();
    if (result > 3)
    {
      LayoutSubviews.subscript.getter();
      static UnitPoint.topLeading.getter();
      LOBYTE(v87[0]) = 0;
      v88 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      return (v74)(v70, v73);
    }
  }

  else
  {
    static WOLog.dataLink.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20C66F000, v14, v15, "Received less than 2 subviews in the Graphics Metrics View Layout", v16, 2u);
      MEMORY[0x20F30E080](v16, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void MirroredStartView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00m10DisclaimerI0VyAA5LabelVyAA4TextVAA5ImageVGAuA6ButtonVyAUGSgG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAZyAA07DefaultrO0VGGQo_Qo_GA13_GA13__GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB034MirroredStartWatchAppUltraModeViewVAF0ghijM0VGACyACyAA15NavigationStackVyAA0N4PathVAA0M0PAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAF0f10DisclaimerM0VyAA5LabelVyAA4TextVAA5ImageVGAzA6ButtonVyAZGSgG_AA0sD7BuilderV10buildBlockyQrxAaTRzlFZQOy_AA0S4ItemVyytA3_yAA07DefaultxU0VGGQo_Qo_GA18_GA18_G_GMd);
  MEMORY[0x28223BE20](v27);
  v14 = &v24 - v13;
  swift_getKeyPath();
  v32 = a1;
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel(&lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel, type metadata accessor for MirroredStartViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a1 + 24);
  if (v15)
  {
    if (v15 == 1)
    {

      v30 = *(a1 + 16);
      v19 = v30;
      v31 = 1;
      lazy protocol witness table accessor for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView();
      lazy protocol witness table accessor for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView();
      v20 = v19;
      _ConditionalContent<>.init(storage:)();
      v21 = v33;
      *v14 = v32;
      v14[8] = v21;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else if (v15 == 2)
    {

      v16 = v24;
      MirroredStartView.mirroredStartTimeoutErrorView()();
      v18 = v25;
      v17 = v26;
      (*(v25 + 16))(v7, v16, v26);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v9, v14, &_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v9, &_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
      (*(v18 + 8))(v16, v17);
    }

    else
    {
      v23 = v15;

      MirroredStartView.mirroredStartErrorView(error:)(a1, v12);
      outlined init with copy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v12, v7, &_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v9, v14, &_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of MirroredStartCurrentView(v15);
      outlined destroy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v9, &_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
      outlined destroy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(v12, &_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GMd);
    }
  }

  else
  {
    v30 = a1;
    v31 = 0;
    lazy protocol witness table accessor for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView();
    lazy protocol witness table accessor for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView();

    _ConditionalContent<>.init(storage:)();
    v22 = v33;
    *v14 = v32;
    v14[8] = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t MirroredStartView.mirroredStartErrorView(error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00m10DisclaimerI0VyAA5LabelVyAA4TextVAA5ImageVGAuA6ButtonVyAUGSgG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAZyAA07DefaultrO0VGGQo_Qo_GA13__GMd);
  MEMORY[0x28223BE20](v56);
  v58 = v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v7 = type metadata accessor for AppError();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CE4138], v7, v9);
  v12 = _convertErrorToNSError(_:)();
  v13 = AppError.isEqual(to:)(v12);

  (*(v8 + 8))(v11, v7);
  v55 = v6;
  if (v13)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v67._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0xD000000000000034;
    v15._object = 0x800000020CB9A4C0;
    v16.value._object = 0x800000020CB936F0;
    v16.value._countAndFlagsBits = 0xD000000000000012;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v64);

    v19 = WorkoutUIBundle.super.isa;
    v67._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0xD00000000000003ALL;
    v20._object = 0x800000020CB9A500;
    v21.value._object = 0x800000020CB936F0;
    v21.value._countAndFlagsBits = 0xD000000000000012;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v65);

    v54 = v52;
    MEMORY[0x28223BE20](v24);
    *&v52[-6] = v18;
    *&v52[-4] = v23;
    LOBYTE(v67._object) = 0;
    v51 = a1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVAA5ImageVGAmA6ButtonVyAMGSgG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytARyAA07DefaultmJ0VGGQo_Qo_Md);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
    v27 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v29 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v60 = v28;
    v61 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v25;
    v61 = v26;
    v62 = v27;
    v63 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v31 = v55;
    NavigationStack.init<>(root:)();
  }

  else
  {
    v53 = v4;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v67._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD000000000000022;
    v33._object = 0x800000020CB9A460;
    v34.value._object = 0x800000020CB936F0;
    v34.value._countAndFlagsBits = 0xD000000000000012;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v66);

    v37 = WorkoutUIBundle.super.isa;
    v67._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0xD000000000000028;
    v38._object = 0x800000020CB9A490;
    v39.value._object = 0x800000020CB936F0;
    v39.value._countAndFlagsBits = 0xD000000000000012;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v67);

    v54 = v52;
    MEMORY[0x28223BE20](v42);
    *&v52[-6] = v36;
    *&v52[-4] = v41;
    LOBYTE(v67._object) = 1;
    v51 = a1;
    v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVAA5ImageVGAmA6ButtonVyAMGSgG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytARyAA07DefaultmJ0VGGQo_Qo_Md);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
    v45 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v47 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v60 = v46;
    v61 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v60 = v43;
    v61 = v44;
    v62 = v45;
    v63 = v48;
    swift_getOpaqueTypeConformance2();
    v31 = v55;
    NavigationStack.init<>(root:)();
    v4 = v53;
  }

  v49 = v57;
  (*(v57 + 16))(v58, v31, v4);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
  _ConditionalContent<>.init(storage:)();
  return (*(v49 + 8))(v31, v4);
}

uint64_t MirroredStartView.mirroredStartTimeoutErrorView()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x800000020CB9A460;
  v2.value._object = 0x800000020CB936F0;
  v2.value._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v10);

  v4 = WorkoutUIBundle.super.isa;
  v11._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x800000020CB9A490;
  v6.value._object = 0x800000020CB936F0;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v11);

  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVAA5ImageVGAmA6ButtonVyAMGSgG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytARyAA07DefaultmJ0VGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
}

uint64_t closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v24 = a1;
  v25 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  Label<>.init<A>(_:systemImage:)();
  v16 = &v15[*(v13 + 68)];
  v24 = a3;
  v25 = a4;

  *v16 = Text.init<A>(_:)();
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  *(v16 + 3) = v19;
  closure #3 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)(a5, a6, &v15[*(v13 + 72)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v21 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v24 = v20;
  v25 = v21;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?>(v15);
}

void closure #3 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51[1] = a2;
  v53 = a1;
  v54 = a3;
  v73 = type metadata accessor for WorkoutDeviceType();
  v3 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v52 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v51 - v6;
  MEMORY[0x28223BE20](v8);
  v67 = v51 - v9;
  v71 = type metadata accessor for WorkoutDevice();
  v10 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = v51 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v51 - v15;
  type metadata accessor for WorkoutDevicesProvider();
  v17 = static WorkoutDevicesProvider.shared.getter();
  v18 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

  v65 = *(v18 + 16);
  v69 = v3;
  if (v65)
  {
    v19 = 0;
    v62 = v10 + 16;
    v61 = *MEMORY[0x277D7D9D8];
    v59 = v3 + 8;
    v60 = (v3 + 104);
    v58 = (v10 + 32);
    v55 = (v10 + 8);
    v70 = MEMORY[0x277D84F90];
    v20 = v71;
    v56 = v16;
    v57 = v7;
    v63 = v18;
    v64 = v10;
    v21 = (v3 + 8);
    while (v19 < *(v18 + 16))
    {
      v72 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = *(v10 + 72);
      (*(v10 + 16))(v16, v18 + v72 + v22 * v19, v20);
      v23 = v67;
      v24 = v20;
      WorkoutDevice.type.getter();
      v25 = v73;
      (*v60)(v7, v61, v73);
      lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel(&lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType, MEMORY[0x277D7D9E0]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *v21;
      (*v21)(v7, v25);
      v27(v23, v25);
      if (v26)
      {
        (*v55)(v16, v24);
        v20 = v24;
        v18 = v63;
      }

      else
      {
        v28 = *v58;
        (*v58)(v66, v16, v24);
        v29 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v29;
        rawValue = v29;
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v24;
        }

        else
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1);
          v20 = v71;
          v31 = rawValue;
        }

        v18 = v63;
        v32 = v72;
        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
          v20 = v71;
          v31 = rawValue;
        }

        v31[2] = v34 + 1;
        v70 = v31;
        v28(v31 + v32 + v34 * v22, v66, v20);
        v16 = v56;
        v7 = v57;
      }

      ++v19;
      v10 = v64;
      if (v65 == v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
LABEL_14:

    v35 = v70[2];
    if (v35)
    {
      rawValue = MEMORY[0x277D84F90];
      v36 = v70;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v37 = v71;
      v38._rawValue = rawValue;
      v41 = *(v10 + 16);
      v40 = v10 + 16;
      v39 = v41;
      v42 = v36 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
      v72 = *(v40 + 56);
      v67 = (v69 + 32);
      v43 = v52;
      do
      {
        v44 = v68;
        v39(v68, v42, v37);
        WorkoutDevice.type.getter();
        v37 = v71;
        (*(v40 - 8))(v44, v71);
        rawValue = v38._rawValue;
        v46 = *(v38._rawValue + 2);
        v45 = *(v38._rawValue + 3);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
          v37 = v71;
          v38._rawValue = rawValue;
        }

        *(v38._rawValue + 2) = v46 + 1;
        (*(v69 + 32))(v38._rawValue + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v46, v43, v73);
        v42 += v72;
        --v35;
      }

      while (v35);
    }

    else
    {

      v38._rawValue = MEMORY[0x277D84F90];
    }

    if (v53)
    {
      v47 = 1;
      v48 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v38, 1);

      v49 = v54;
      if (v48)
      {

        Button.init(action:label:)();
        v47 = 0;
      }
    }

    else
    {

      v47 = 1;
      v49 = v54;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    (*(*(v50 - 8) + 56))(v49, v47, 1, v50);
  }
}

uint64_t closure #3 in closure #3 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)(uint64_t a1)
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
  aBlock[4] = partial apply for closure #1 in closure #3 in closure #3 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_19;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = v13;
  MEMORY[0x20F30C1F0](0, v7, v4, v8);
  _Block_release(v8);

  (*(v15 + 8))(v4, v2);
  v10 = (*(v5 + 8))(v7, v14);
  return (*(a1 + 80))(v10);
}

uint64_t closure #4 in closure #3 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x800000020CB9A560;
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

uint64_t closure #4 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  static ToolbarItemPlacement.cancellationAction.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v5 = lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in closure #4 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:)(uint64_t a1)
{
  v2 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.close.getter();

  return MEMORY[0x20F30AF90](v4, partial apply for closure #1 in closure #1 in closure #4 in closure #1 in MirroredStartView.errorView(title:description:allowContinueButton:), a1);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GMd);
    lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGMd);
    lazy protocol witness table accessor for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView();
    lazy protocol witness table accessor for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView()
{
  result = lazy protocol witness table cache variable for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView;
  if (!lazy protocol witness table cache variable for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartWatchAppUltraModeView and conformance MirroredStartWatchAppUltraModeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView()
{
  result = lazy protocol witness table cache variable for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView;
  if (!lazy protocol witness table cache variable for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartWatchAppView and conformance MirroredStartWatchAppView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOy07WorkoutB00l10DisclaimerH0VyAA5LabelVyAA4TextVAA5ImageVGAsA6ButtonVyASGSgG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytAXyAA07DefaultqN0VGGQo_Qo_GA11_GA11_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVAA5ImageVGAqA6ButtonVyAQGSgG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytAVyAA07DefaultpM0VGGQo_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of MirroredStartCurrentView(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of WorkoutDisclaimerView<Label<Text, Image>, Text, Button<Text>?>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVAD5ImageVGAhD6ButtonVyAHGSgGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView>, _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView>, _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView>, _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB034MirroredStartWatchAppUltraModeViewVAD0fghiL0VGACyACyAA15NavigationStackVyAA0M4PathVAA0L0PAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAD0e10DisclaimerL0VyAA5LabelVyAA4TextVAA5ImageVGAxA6ButtonVyAXGSgG_AA0rD7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0R4ItemVyytA1_yAA07DefaultwT0VGGQo_Qo_GA16_GA16_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MirroredStartWatchAppUltraModeView, MirroredStartWatchAppView>, _ConditionalContent<_ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>, NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t PaceMetricView.init(formattingManager:metricType:activityType:pace:gpsUnavailable:visualAlertDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  result = swift_getKeyPath();
  *(a7 + 32) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = result;
  *(a7 + 40) = a8;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

void PaceMetricView.value.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (PaceMetricView.speedUnavailable()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v11._object = 0xE000000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._object = 0x800000020CB97E50;
    v5._countAndFlagsBits = 0xD00000000000001ALL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v11);
    goto LABEL_7;
  }

  v7 = [objc_opt_self() meterUnit];
  v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v2];

  v9 = FIUIDistanceTypeForActivityType();
  v10 = MEMORY[0x20F30D340](v9);
  v3 = [v1 localizedPaceStringWithDistance:v8 overDuration:v10 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

    return;
  }

  __break(1u);
}

uint64_t PaceMetricView.speedUnavailable()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v4) == 4 && v2 >= 0.0 && [v1 effectiveTypeIdentifier] == 13 && (objc_msgSend(v1, sel_isIndoor) & 1) != 0)
  {
    return 0;
  }

  v5 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v5) != 4)
  {
    return 0;
  }

  if (v2 < 0.0)
  {
    return 1;
  }

  return v3;
}

id PaceMetricView.metricDescription.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v26 = *(v0 + 24);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v7, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v26;
  }

  if (v7 <= 8u)
  {
    if (((1 << v7) & 0x181) != 0)
    {
      v9 = FIUIDistanceTypeForActivityType();
      if (MEMORY[0x20F30D340](v9) == 4 && v5 == 4)
      {
        return 0;
      }

      v17 = FIUIDistanceTypeForActivityType();
      result = [v6 unitManager];
      if (result)
      {
        v18 = result;
        v19 = [result paceDistanceUnitForDistanceType_];

        v20 = FIUIDistanceTypeForActivityType();
        result = [v6 localizedDistinguishingPaceUnitStringWithMetricType:v5 distanceType:v17 distanceUnit:v19 paceFormat:MEMORY[0x20F30D340](v20) abbreviated:0 multiline:1];
        if (!result)
        {
          return result;
        }

LABEL_12:
        v15 = result;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v16;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (((1 << v7) & 0x60) != 0)
    {
      v11 = FIUIDistanceTypeForActivityType();
      result = [v6 unitManager];
      if (result)
      {
        v12 = result;
        v13 = [result paceDistanceUnitForDistanceType_];

        v14 = FIUIDistanceTypeForActivityType();
        result = [v6 localizedDistinguishingPaceUnitStringWithMetricType:v5 distanceType:v11 distanceUnit:v13 paceFormat:MEMORY[0x20F30D340](v14) abbreviated:v5 == 48 multiline:0];
        if (!result)
        {
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v21 = FIUIDistanceTypeForActivityType();
  result = [v6 unitManager];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = [result paceDistanceUnitForDistanceType_];

  v24 = FIUIDistanceTypeForActivityType();
  result = [v6 localizedDistinguishingPaceUnitStringWithMetricType:v5 distanceType:v21 distanceUnit:v23 paceFormat:MEMORY[0x20F30D340](v24) abbreviated:0 multiline:1];
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

id PaceMetricView.unit.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v9 = *(v0 + 24);
    v18 = v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v8, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v18;
  }

  v11 = FIUIDistanceTypeForActivityType();
  v12 = MEMORY[0x20F30D340](v11);
  v13 = v12;
  if (!v9)
  {
    result = 0;
    if (v13 != 4)
    {
      return result;
    }

    if (v6 != 4)
    {
      return result;
    }

    result = [v5 localizedSpeedUnitStringForActivityType_];
    if (!result)
    {
      return result;
    }

LABEL_11:
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v16;
  }

  if (v12 != 4)
  {
    return 0;
  }

  result = [v5 localizedSpeedUnitStringForActivityType_];
  if (result)
  {
    goto LABEL_11;
  }

  return result;
}

id PaceMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v38[0] = *(v0 + 33);
  v11 = *(v0 + 56);
  *(v38 + 15) = *(v0 + 48);
  v12 = *(v0 + 64);
  if (v10)
  {
    v37 = v9;
    v13 = v9;
  }

  else
  {
    v27 = v3;
    outlined copy of Environment<WorkoutViewStyle>.Content(v9, 0);
    static os_log_type_t.fault.getter();
    v28 = v10;
    v14 = static Log.runtimeIssuesLog.getter();
    LOBYTE(v10) = v28;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v9, 0);
    (*(v2 + 8))(v5, v27);
    v13 = v37;
  }

  if (v13 <= 8u)
  {
    if (v13 - 7 < 2 || !v13)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v13 == 9)
  {

    return v11;
  }

  if (v13 != 10)
  {
LABEL_14:
    v23 = FIUIDistanceTypeForActivityType();
    if (MEMORY[0x20F30D340](v23) != 4 || v7 != 4)
    {
LABEL_7:
      v29 = v6;
      v30 = v7;
      v31 = v8;
      v32 = v9;
      v33 = v10;
      *v34 = v38[0];
      *&v34[15] = *(v38 + 15);
      v35 = v11;
      v36 = v12;
      return PaceMetricView.metricDescription.getter();
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v39._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x5F544E4552525543;
    v24._object = 0xED00004445455053;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v21, v26, v39)._countAndFlagsBits;
LABEL_19:
    v11 = countAndFlagsBits;

    return v11;
  }

  v15 = FIUIDistanceTypeForActivityType();
  result = [v6 unitManager];
  if (result)
  {
    v17 = result;
    v18 = [result paceDistanceUnitForDistanceType_];

    v19 = FIUIDistanceTypeForActivityType();
    v20 = [v6 localizedDistinguishingPaceUnitStringWithMetricType:v7 distanceType:v15 distanceUnit:v18 paceFormat:MEMORY[0x20F30D340](v19) abbreviated:1 multiline:0];
    if (!v20)
    {
      return 0;
    }

    v21 = v20;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t PaceMetricView.accessibilityLabel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v47 - v2;
  v4 = v0[1];
  v5 = v0[3];
  v55 = v0[2];
  v56 = v5;
  v6 = v0[1];
  v53 = *v0;
  v54 = v6;
  v7 = v0[3];
  v50 = v55;
  v51 = v7;
  v57 = *(v0 + 8);
  v52 = *(v0 + 8);
  v48 = v53;
  v49 = v4;
  if ((PaceMetricView.speedUnavailable()() & 1) == 0)
  {
    PaceMetricView.value.getter();
    v9 = v8;
    v11 = v10;
    v12 = type metadata accessor for FitnessUILocalizationFeature();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = String.fitnessUILocalizedString(feature:)();
    v15 = v14;
    outlined destroy of FitnessUILocalizationFeature?(v3);
    if (v9 == v13 && v11 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v18 = PaceMetricView.description.getter();
        v20 = v18;
        if (v19)
        {
          *&v48 = v18;
          *(&v48 + 1) = v19;
          v47[2] = 10;
          v47[3] = 0xE100000000000000;
          v47[0] = 32;
          v47[1] = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        PaceMetricView.value.getter();
        v47[8] = v29;
        v47[9] = v30;
        v31 = 0;
        v47[10] = PaceMetricView.unit.getter();
        v47[11] = v32;
        v47[12] = v20;
        v47[13] = v22;
        v33 = MEMORY[0x277D84F90];
LABEL_15:
        if (v31 <= 3)
        {
          v34 = 3;
        }

        else
        {
          v34 = v31;
        }

        v35 = v34 + 1;
        v36 = 16 * v31 + 40;
        while (1)
        {
          if (v31 == 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
            swift_arrayDestroy();
            *&v48 = v33;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

            return countAndFlagsBits;
          }

          if (v35 == ++v31)
          {
            break;
          }

          v37 = v36 + 16;
          v38 = *(&v47[4] + v36);
          v36 += 16;
          if (v38)
          {
            v39 = *(&v47[1] + v37);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
            }

            v40 = *(v33 + 2);
            v41 = *(v33 + 3);
            v42 = v40 + 1;
            if (v40 >= v41 >> 1)
            {
              v44 = v33;
              v45 = *(v33 + 2);
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v40 + 1, 1, v44);
              v40 = v45;
              v33 = v46;
            }

            *(v33 + 2) = v42;
            v43 = &v33[16 * v40];
            *(v43 + 4) = v39;
            *(v43 + 5) = v38;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_29:
    swift_once();
  }

  swift_beginAccess();
  v23 = WorkoutUIBundle.super.isa;
  v58._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0x41505F4F4E5F5841;
  v24._object = 0xEF415441445F4543;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v58)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t PaceMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  PaceMetricView.value.getter();
  v3 = v2;
  v5 = v4;
  v6 = PaceMetricView.unit.getter();
  v8 = v7;
  v9 = PaceMetricView.description.getter();
  v11 = v10;
  result = PaceMetricView.accessibilityLabel.getter();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = result;
  *(a1 + 64) = v13;
  return result;
}

uint64_t getEnumTagSinglePayload for PaceMetricView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for PaceMetricView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t outlined destroy of FitnessUILocalizationFeature?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RaceRemainingDistanceMetricView.init(remainingDistance:formattingManager:distanceType:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

__n128 RaceRemainingDistanceMetricView.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 8))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v26._object = 0xE000000000000000;
    v4._object = 0x800000020CB97E50;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v26);

    v7 = WorkoutUIBundle.super.isa;
    v27._object = 0xE000000000000000;
    v8._object = 0x800000020CB9A590;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v27);

    v11 = WorkoutUIBundle.super.isa;
    v12._countAndFlagsBits = 0xD000000000000013;
    v28._object = 0xE000000000000000;
    v12._object = 0x800000020CB9A5B0;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v28);
  }

  else
  {
    v15 = *(v1 + 16);
    v16 = one-time initialization token for WorkoutUIBundle;
    v15;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v29._object = 0xE000000000000000;
    v18._object = 0x800000020CB9A590;
    v18._countAndFlagsBits = 0xD00000000000001ELL;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v29);
  }

  lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText();
  lazy protocol witness table accessor for type MetricText and conformance MetricText();
  _ConditionalContent<>.init(storage:)();
  a1[2] = v24;
  a1[3] = *v25;
  *(a1 + 57) = *&v25[9];
  result = v23;
  *a1 = v22;
  a1[1] = v23;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceRemainingDistanceMetricView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceRemainingDistanceMetricView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NaturalDistanceMetricText, MetricText> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NaturalDistanceMetricText, MetricText> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NaturalDistanceMetricText, MetricText> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025NaturalDistanceMetricTextVAD0hI0VGMd);
    lazy protocol witness table accessor for type NaturalDistanceMetricText and conformance NaturalDistanceMetricText();
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NaturalDistanceMetricText, MetricText> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized View.metricDescriptionFont(multiline:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = a4 & 1;
  outlined copy of Text.Storage(a2, a3, v13);
  v14 = one-time initialization token for multilineMaximumLineHeight;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = a1 & 1;
  v16 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v16 = v16 + 1.0;
  }

  v17 = swift_getKeyPath();
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = v13;
  *(a6 + 24) = a5;
  *(a6 + 32) = v15;
  *(a6 + 40) = KeyPath;
  *(a6 + 48) = 0;
  *(a6 + 56) = v15;
  *(a6 + 64) = v16;
  *(a6 + 72) = v17;
  *(a6 + 80) = 0;
  outlined copy of Text.Storage(a2, a3, v13);

  outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
  outlined consume of Text.Storage(a2, a3, v13);

  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
}

uint64_t specialized View.metricDescriptionFont(multiline:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  memcpy(__dst, v3, 0x141uLL);
  v17 = 0;
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(v3, v14, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGACyAEyAN_AGtGGtGGMd);
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v7 = a1 & 1;
  v8 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v8 = v8 + 1.0;
  }

  memcpy(__src, __dst, 0x148uLL);
  LOBYTE(__src[41]) = a1 & 1;
  __src[42] = KeyPath;
  v9 = v17;
  LOBYTE(__src[43]) = v17;
  v10 = swift_getKeyPath();
  memcpy(a2, __src, 0x159uLL);
  *(a2 + 352) = v7;
  *(a2 + 360) = v8;
  *(a2 + 368) = v10;
  *(a2 + 376) = 0;
  memcpy(v14, __dst, 0x148uLL);
  v14[328] = v7;
  v15 = KeyPath;
  v16 = v9;
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(__src, &v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
  return _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v14, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGMd);
}

uint64_t View.metricDetail(_:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = 0x4008000000000000;
  return MEMORY[0x20F30ABE0](v6, a4, &type metadata for MetricDetail, a5);
}

uint64_t getEnumTagSinglePayload for MetricDetail(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricDetail(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in MetricDetail.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v43 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA023AccessibilityAttachmentY0VGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGGMd);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB012MetricDetailVGMd);
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  *&v17[*(v13 + 44)] = 0x3FF0000000000000;
  *&v56[0] = a2;
  *(&v56[0] + 1) = a3;
  lazy protocol witness table accessor for type String and conformance String();

  *&v48 = StringProtocol.localizedUppercase.getter();
  *(&v48 + 1) = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  specialized View.metricDescriptionFont(multiline:)(1, v20, v21, v23 & 1, v25, v54);
  outlined consume of Text.Storage(v20, v22, v24 & 1);

  v50 = v54[2];
  v51 = v54[3];
  v52 = v54[4];
  LOBYTE(v53) = v55;
  v48 = v54[0];
  v49 = v54[1];
  *(&v53 + 1) = v39;
  *&v56[0] = a2;
  *(&v56[0] + 1) = a3;
  v46 = 10;
  v47 = 0xE100000000000000;
  v44 = 32;
  v45 = 0xE100000000000000;

  v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v28 = v27;

  v46 = v26;
  v47 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v29 = v40;
  View.accessibilityLabel<A>(_:)();

  v56[2] = v50;
  v56[3] = v51;
  v56[4] = v52;
  v56[5] = v53;
  v56[0] = v48;
  v56[1] = v49;
  _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v56, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v30 = v41;
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(v17, v41, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGGMd);
  v31 = v29;
  v32 = v42;
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(v29, v42, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA023AccessibilityAttachmentY0VGMd);
  v33 = v30;
  v34 = v30;
  v35 = v43;
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(v33, v43, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGGMd);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGG_ACyACyACyACyAA4TextVAF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA016_ForegroundStyleF0VyAA5ColorVGGAA023AccessibilityAttachmentF0VGtMd);
  outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(v32, v35 + *(v36 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA023AccessibilityAttachmentY0VGMd);
  _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v31, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA023AccessibilityAttachmentY0VGMd);
  _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v17, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGGMd);
  _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v32, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA023AccessibilityAttachmentY0VGMd);
  return _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(v34, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingF0VyAA014LayoutPriorityJ3KeyVGGMd);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance MetricDetail@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA01_d9Modifier_J0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingK0VyAA0g8PriorityO3KeyVGG_AKyAKyAKyAKyAA4TextVAN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA016_ForegroundStyleK0VyAA5ColorVGGAA023AccessibilityAttachmentK0VGtGGMd);
  closure #1 in MetricDetail.body(content:)(a1, v5, v6, v7, a2 + *(v9 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA01_g9Modifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingH0VyAA014LayoutPriorityL3KeyVGG_ACyACyACyACyAA4TextVAJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA016_ForegroundStyleH0VyAA5ColorVGGAA023AccessibilityAttachmentH0VGtGGAJ0J3RowVGMd);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA01_g9Modifier_D0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingH0VyAA014LayoutPriorityL3KeyVGG_ACyACyACyACyAA4TextVAJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA016_ForegroundStyleH0VyAA5ColorVGGAA023AccessibilityAttachmentH0VGtGGAJ0J3RowVGMd);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_4(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA01_e9Modifier_G0Vy07WorkoutB012MetricDetailVGAA013_TraitWritingH0VyAA014LayoutPriorityL3KeyVGG_AGyAGyAGyAGyAA4TextVAJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA016_ForegroundStyleH0VyAA5ColorVGGAA023AccessibilityAttachmentH0VGtGGMd);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_4(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<MetricDetail>, _TraitWritingModifier<LayoutPriorityTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PowerStatusView(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PowerStatusView(uint64_t result, unsigned int a2, unsigned int a3)
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

id PowerStatusView.makeUIView(context:)()
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
  return specialized static SharedPowerViewFunctionality.makeHRView(animationsSuspended:state:workoutViewStyle:power:)(v7, v5, &v12, v6);
}

id protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance PowerStatusView(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  [a1 setAnimationsSuspended_];
  [a1 setState_];

  return [a1 setBeatsPerMinute_];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PowerStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PowerStatusView and conformance PowerStatusView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PowerStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PowerStatusView and conformance PowerStatusView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PowerStatusView()
{
  lazy protocol witness table accessor for type PowerStatusView and conformance PowerStatusView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PowerStatusView and conformance PowerStatusView()
{
  result = lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView;
  if (!lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView;
  if (!lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerStatusView and conformance PowerStatusView);
  }

  return result;
}

id specialized static SharedPowerViewFunctionality.makeHRView(animationsSuspended:state:workoutViewStyle:power:)(char a1, uint64_t a2, unsigned __int8 *a3, double a4)
{
  v7 = 0xD000000000000013;
  v8 = *a3;
  if ((v8 - 2) >= 3)
  {
    if ((v8 - 5) >= 2)
    {
      v29 = 0xD000000000000012;
      v7 = 0xD000000000000010;
      v15 = "BoltAnimating_Watch";
      v12 = "566612BundleLookup";
      v30 = "BoltFilled_Watch";
      v31 = 0xD000000000000013;
      goto LABEL_21;
    }

    v21 = objc_opt_self();
    v22 = [v21 currentDevice];
    v23 = specialized UIDevice.screenType.getter();

    if (v23 >= 9u)
    {
      v12 = "BoltAnimating_Phone_60";
    }

    else
    {
      v12 = "BoltLowPower_Watch";
    }

    v24 = [v21 currentDevice];
    v25 = specialized UIDevice.screenType.getter();

    if (v25 >= 9u)
    {
      v15 = "BoltFilled_Phone_60";
    }

    else
    {
      v15 = "BoltAnimating_Phone_63";
    }

    v26 = [v21 currentDevice];
    v27 = specialized UIDevice.screenType.getter();

    v18 = "BoltFilled_Phone_63";
    v19 = v27;
    v20 = "BoltLowPower_Phone_63";
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 currentDevice];
    v11 = specialized UIDevice.screenType.getter();

    if (v11 >= 9u)
    {
      v12 = "BoltAnimating_Phone_75";
    }

    else
    {
      v12 = "BoltLowPower_Phone_63";
    }

    v13 = [v9 currentDevice];
    v14 = specialized UIDevice.screenType.getter();

    if (v14 >= 9u)
    {
      v15 = "BoltFilled_Phone_75";
    }

    else
    {
      v15 = "BoltAnimating_Phone_81";
    }

    v16 = [v9 currentDevice];
    v17 = specialized UIDevice.screenType.getter();

    v18 = "BoltFilled_Phone_81";
    v19 = v17;
    v20 = "BoltLowPower_Phone_81";
  }

  v28 = v20 - 32;
  v29 = 0xD000000000000015;
  if (v19 >= 9)
  {
    v30 = v28;
  }

  else
  {
    v30 = v18;
  }

  v31 = 0xD000000000000016;
LABEL_21:
  type metadata accessor for SharedPowerViewFunctionality.BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  v34 = objc_allocWithZone(MEMORY[0x277D0A7F0]);
  v35 = MEMORY[0x20F30BAD0](v7, v15 | 0x8000000000000000);

  v36 = MEMORY[0x20F30BAD0](v31, v12 | 0x8000000000000000);

  v37 = MEMORY[0x20F30BAD0](v29, v30 | 0x8000000000000000);

  v38 = [v34 initWithFrame:v35 heartFilledImageName:v36 heartSpriteImageName:v37 heartSuspendedSpriteImageName:60 spriteFrameCount:10 spriteColumnCount:v33 resourceBundle:{0.0, 0.0, 0.0, 0.0}];

  [v38 setAnimationsSuspended_];
  [v38 setState_];
  [v38 setBeatsPerMinute_];
  return v38;
}

id WorkoutConfiguration.displayColor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v7 = v0;
      v8 = GoalWorkoutConfiguration.goal.getter();
      v9 = [v8 goalTypeIdentifier];

      v10 = _HKWorkoutGoalType.color.getter(v9);
      return v10;
    }

    while (1)
    {
LABEL_16:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_17:
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v1 = [v1 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      MEMORY[0x20F30BC00](v14, v16);
    }
  }

  if (v6 == *MEMORY[0x277D7E110])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  }

  if (v6 == *MEMORY[0x277D7E100])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  }

  if (v6 == *MEMORY[0x277D7E108])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  }

  if (v6 != *MEMORY[0x277D7E0F0])
  {
    goto LABEL_17;
  }

  v12 = [objc_opt_self() keyColors];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v1 = v12;
  v13 = [v12 nonGradientTextColor];

  result = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t RaceWorkoutConfiguration.configurationViewTitle(_:)()
{
  v0 = type metadata accessor for RaceFilter();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = RaceWorkoutConfiguration.routeTitle.getter();
  v6 = v5;
  (*(v1 + 104))(v3, *MEMORY[0x277D7DE20], v0);
  v7 = RaceWorkoutConfiguration.displayDistanceFor(_:formatter:)();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (!v4 && v6 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (!v7 ? (v10 = v9 == 0xE000000000000000) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 0xE000000000000000;
    }

    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0;
    }
  }

  else
  {
    v13[0] = v7;
    v13[1] = v9;
    MEMORY[0x20F30BC00](32, 0xE100000000000000);
    MEMORY[0x20F30BC00](v4, v6);

    return v13[0];
  }

  return v7;
}

uint64_t RaceWorkoutConfiguration.routeDisplayImage.getter()
{
  v0 = RaceWorkoutConfiguration.routeSnapshotData.getter();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithData_];

  outlined consume of Data._Representation(v0, v2);
  if (v5)
  {

    return Image.init(uiImage:)();
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();

    return Image.init(_internalSystemName:)();
  }
}

id static RaceWorkoutConfiguration.behindColors.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  v5 = [v3 colorWithAlphaComponent_];
  result = [v2 colorWithAlphaComponent_];
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

id static RaceWorkoutConfiguration.expiredColors.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.133333333 green:0.133333333 blue:0.133333333 alpha:1.0];
  v4 = v2;
  v5 = [v3 colorWithAlphaComponent_];
  result = [v4 colorWithAlphaComponent_];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

id static RaceWorkoutConfiguration.aheadColors.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v5 = [v3 colorWithAlphaComponent_];
  result = [v2 colorWithAlphaComponent_];
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

id static PacerWorkoutConfiguration.colors.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.105882353 green:0.654901961 blue:0.607843137 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v5 = [v3 colorWithAlphaComponent_];
  result = [v2 colorWithAlphaComponent_];
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

id static RaceWorkoutConfiguration.routeBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.0196078431 green:0.619607843 blue:0.560784314 alpha:1.0];
}

id static RaceWorkoutConfiguration.displayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
}

id static PacerWorkoutConfiguration.aheadColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.0 green:1.0 blue:0.658823529 alpha:1.0];
}

id static PacerWorkoutConfiguration.behindColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:1.0 green:0.37254902 blue:0.274509804 alpha:1.0];
}

id WorkoutConfiguration.displayPlatterColor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D7E0F8])
  {
    if (v6 == *MEMORY[0x277D7E110])
    {
      v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
      v10 = [v1 colorWithAlphaComponent_];
    }

    else if (v6 == *MEMORY[0x277D7E100])
    {
      v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
      v10 = [v1 colorWithAlphaComponent_];
    }

    else
    {
      if (v6 != *MEMORY[0x277D7E108])
      {
        if (v6 != *MEMORY[0x277D7E0F0])
        {
          goto LABEL_19;
        }

        v11 = [objc_opt_self() keyColors];
        if (v11)
        {
          v12 = v11;
          v1 = [v11 nonGradientTextColor];

          if (v1)
          {
            v10 = [v1 colorWithAlphaComponent_];
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        while (1)
        {
LABEL_18:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_19:
          v18[0] = 0;
          v18[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(48);

          v1 = [v1 description];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          MEMORY[0x20F30BC00](v15, v17);
        }
      }

      v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
      v10 = [v1 colorWithAlphaComponent_];
    }

LABEL_14:
    v9 = v10;
    goto LABEL_15;
  }

  type metadata accessor for GoalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_18;
  }

  v1 = v0;
  v7 = GoalWorkoutConfiguration.goal.getter();
  v8 = [v7 goalTypeIdentifier];

  v9 = _HKWorkoutGoalType.platterColor.getter(v8);
LABEL_15:
  v13 = v9;

  return v13;
}

uint64_t WorkoutConfiguration.canBeShared.getter()
{
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    return 0;
  }

  return 1;
}

uint64_t WorkoutConfiguration.canBeDeleted.getter()
{
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v0 = 0;
  }

  else
  {
    v0 = WorkoutConfiguration.isOpenGoal.getter() ^ 1;
  }

  return v0 & 1;
}

id static PacerWorkoutConfiguration.displayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
}

void WorkoutConfiguration.colors.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConfigurationType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v9 = GoalWorkoutConfiguration.goal.getter();
      v10 = [v9 goalTypeIdentifier];

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = WorkoutConfiguration.displayColor.getter();
          v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:1.0 green:0.917647059 blue:0.0 alpha:1.0];
          v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:1.0 green:0.764705882 blue:0.0 alpha:1.0];
          v14 = _HKWorkoutGoalType.gradientStartingColor.getter(2);
          v15 = 2;
          goto LABEL_19;
        }

        if (v10 == 3)
        {
          v11 = WorkoutConfiguration.displayColor.getter();
          v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:1.0 green:0.196078431 blue:0.529411765 alpha:1.0];
          v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.882352941 green:0.0 blue:0.0784313725 alpha:1.0];
          v14 = _HKWorkoutGoalType.gradientStartingColor.getter(3);
          v15 = 3;
          goto LABEL_19;
        }
      }

      else
      {
        if (!v10)
        {
          v11 = WorkoutConfiguration.displayColor.getter();
          v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.705882353 green:1.0 blue:0.0 alpha:1.0];
          v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.243137255 green:0.862745098 blue:0.0 alpha:1.0];
          v14 = _HKWorkoutGoalType.gradientStartingColor.getter(0);
          v15 = 0;
LABEL_19:
          v22 = _HKWorkoutGoalType.gradientEndingColor.getter(v15);

          *a1 = v11;
          a1[1] = v12;
          a1[2] = v13;
          a1[3] = v14;
          a1[4] = v22;
          return;
        }

        if (v10 == 1)
        {
          v11 = WorkoutConfiguration.displayColor.getter();
          v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.815686275 blue:1.0 alpha:1.0];
          v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.666666667 blue:1.0 alpha:1.0];
          v14 = _HKWorkoutGoalType.gradientStartingColor.getter(1);
          v15 = 1;
          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_23:
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x20F30BC00](0xD000000000000035, 0x800000020CB9A920);
      v23 = [v2 description];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      MEMORY[0x20F30BC00](v2, v25);
    }
  }

  if (v8 == *MEMORY[0x277D7E110])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.415686275 green:0.160784314 blue:0.952941176 alpha:1.0];
    v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
    v19 = [v17 colorWithAlphaComponent_];
    v20 = [v16 colorWithAlphaComponent_];
LABEL_14:
    v21 = v20;
    *a1 = v18;
    a1[1] = v16;
    a1[2] = v17;
    a1[3] = v19;
    a1[4] = v21;
    return;
  }

  if (v8 == *MEMORY[0x277D7E100])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
    v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v19 = [v17 colorWithAlphaComponent_];
    v20 = [v16 colorWithAlphaComponent_];
    goto LABEL_14;
  }

  if (v8 == *MEMORY[0x277D7E108])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.105882353 green:0.654901961 blue:0.607843137 alpha:1.0];
    v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v19 = [v17 colorWithAlphaComponent_];
    v20 = [v16 colorWithAlphaComponent_];
    goto LABEL_14;
  }

  if (v8 != *MEMORY[0x277D7E0F0])
  {
    goto LABEL_23;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  static MultiSportWorkoutConfiguration.colors.getter(a1);
}

BOOL WorkoutConfiguration.canBeAdded.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    return 0;
  }

  else
  {
    dispatch thunk of WorkoutConfiguration.route.getter();
    v4 = type metadata accessor for WorkoutPlan.Route();
    v3 = (*(*(v4 - 8) + 48))(v2, 1, v4) == 1;
    outlined destroy of WorkoutPlan.Route?(v2, &_s10WorkoutKit0A4PlanV5RouteVSgMd);
  }

  return v3;
}

id static IntervalWorkoutConfiguration.displayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
}

uint64_t RaceWorkoutConfiguration.displayDurationFor(_:formatter:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RaceFilter();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D7DE18])
  {
    RaceWorkoutConfiguration.bestWorkoutDuration.getter();
  }

  else if (v14 == *MEMORY[0x277D7DE20])
  {
    RaceWorkoutConfiguration.lastWorkoutDuration.getter();
  }

  else
  {
    v27[1] = v2;
    static WOLog.core.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = v19;
      a2 = v18;
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    RaceWorkoutConfiguration.lastWorkoutDuration.getter();
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v15 = v22;
  }

  v23 = [a2 stringWithDuration:2 durationFormat:v15];
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v25;
}

uint64_t RaceWorkoutConfiguration.displayPaceValueFor(_:formatter:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RaceFilter();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D7DE18])
  {
    RaceWorkoutConfiguration.bestWorkoutDistance.getter();
    v15 = v14;
    RaceWorkoutConfiguration.bestWorkoutDuration.getter();
    v17 = v16;
  }

  else if (v13 == *MEMORY[0x277D7DE20])
  {
    RaceWorkoutConfiguration.lastWorkoutDistance.getter();
    v15 = v18;
    RaceWorkoutConfiguration.lastWorkoutDuration.getter();
    v17 = v19;
  }

  else
  {
    static WOLog.core.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = a2;
      v23 = v22;
      *v22 = 0;
      v24 = v23;
      a2 = v38;
      MEMORY[0x20F30E080](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    RaceWorkoutConfiguration.lastWorkoutDistance.getter();
    v15 = v25;
    RaceWorkoutConfiguration.lastWorkoutDuration.getter();
    v17 = v26;
    (*(v9 + 8))(v12, v8);
  }

  v27 = [objc_opt_self() meterUnit];
  v28 = [objc_opt_self() quantityWithUnit:v27 doubleValue:v15];

  v29 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v30 = FIUIPaceFormatForWorkoutActivityType();

  v31 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v32 = FIUIDistanceTypeForActivityType();

  v33 = [a2 localizedPaceStringWithDistance:v28 overDuration:v30 paceFormat:v32 distanceType:v17];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v35;
}

id RaceWorkoutConfiguration.displayPaceUnitWith(_:)(void *a1)
{
  v2 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v3 = FIUIPaceFormatForWorkoutActivityType();

  v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v5 = FIUIDistanceTypeForActivityType();

  result = [a1 unitManager];
  if (result)
  {
    v7 = result;
    v8 = [result userDistanceUnitForDistanceType_];

    if (v3 == 4)
    {
      v9 = [a1 localizedSpeedUnitStringForDistanceUnit:v8 unitStyle:1];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v13 = 0xE000000000000000;
      v22._object = 0xE000000000000000;
      v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v14.value._object = 0xEB00000000656C62;
      v15._object = 0x800000020CB9A9C0;
      v15._countAndFlagsBits = 0xD000000000000023;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v12, v16, v22);

      v17 = [a1 localizedShortUnitStringForDistanceUnit_];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v20;
      }

      else
      {
        v19 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_20CB5DA70;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v19;
      *(v21 + 40) = v13;
      v11 = String.init(format:_:)();
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RaceWorkoutConfiguration.displayDateFor(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = v61 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v68 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Calendar();
  v10 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RaceFilter();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v72 = *(v20 - 8);
  v73 = v20;
  MEMORY[0x28223BE20](v20);
  v67 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v61 - v24;
  (*(v17 + 16))(v19, a1, v16, v23);
  v26 = (*(v17 + 88))(v19, v16);
  if (v26 == *MEMORY[0x277D7DE18])
  {
    RaceWorkoutConfiguration.bestWorkoutDate.getter();
  }

  else if (v26 == *MEMORY[0x277D7DE20])
  {
    RaceWorkoutConfiguration.lastWorkoutDate.getter();
  }

  else
  {
    v61[1] = v2;
    static WOLog.core.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61[0] = v25;
      v30 = v29;
      *v29 = 0;
      v31 = v30;
      v25 = v61[0];
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    (*(v66 + 8))(v15, v13);
    RaceWorkoutConfiguration.lastWorkoutDate.getter();
    (*(v17 + 8))(v19, v16);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Calendar.current.getter();
  v33 = Calendar.isDateInToday(_:)();
  v34 = *(v10 + 8);
  v35 = v71;
  v34(v12, v71);
  v36 = v72;
  v37 = v73;
  if (v33 & 1) != 0 || (static Calendar.current.getter(), v38 = Calendar.isDateInYesterday(_:)(), v34(v12, v35), (v38))
  {
    [v32 setDateStyle_];
    [v32 setTimeStyle_];
    [v32 setDoesRelativeDateFormatting_];
LABEL_33:
    isa = Date._bridgeToObjectiveC()().super.isa;
    v58 = [v32 stringFromDate_];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v36 + 8))(v25, v37);
    return v59;
  }

  static Calendar.current.getter();
  v39 = v67;
  static Date.now.getter();
  v40 = v68;
  v41 = v69;
  v42 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277CC9940], v70);
  v43 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v41 + 8))(v40, v42);
  v36 = v72;
  v37 = v73;
  (*(v72 + 8))(v39, v73);
  v34(v12, v71);
  if (v43)
  {
    v44 = MEMORY[0x20F30BAD0](1162167621, 0xE400000000000000);
    [v32 setDateFormat_];
LABEL_32:

    goto LABEL_33;
  }

  v45 = v25;
  result = [v32 locale];
  if (result)
  {
    v47 = result;
    v48 = v62;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v65;
    Locale.region.getter();
    (*(v63 + 8))(v48, v64);
    v50 = type metadata accessor for Locale.Region();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      outlined destroy of WorkoutPlan.Route?(v49, &_s10Foundation6LocaleV6RegionVSgMd);
      v25 = v45;
LABEL_16:
      v52 = 0x64642D4D4D2D7979;
      v53 = 0xE800000000000000;
LABEL_31:
      v44 = MEMORY[0x20F30BAD0](v52, v53);
      [v32 setLocalizedDateFormatFromTemplate_];
      goto LABEL_32;
    }

    v54 = MEMORY[0x20F3028D0]();
    v56 = v55;
    (*(v51 + 8))(v49, v50);
    if (v54 == 20035 && v56 == 0xE200000000000000)
    {

      v25 = v45;
    }

    else
    {
      v25 = v45;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v54 == 22356 && v56 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v54 == 19272 && v56 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v54 == 20054 && v56 == 0xE200000000000000)
      {
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    v52 = 0x2D4D4D2D79797979;
    v53 = 0xEA00000000006464;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id static IntervalWorkoutConfiguration.highContrastDisplayColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithDisplayP3Red:0.721568627 green:0.588235294 blue:0.980392157 alpha:1.0];
}

uint64_t WorkoutConfiguration.accessibilityIdentifierString.getter()
{
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v1 = v0;
    v2 = GoalWorkoutConfiguration.goal.getter();
    [v2 goalTypeIdentifier];

    v3 = _HKWorkoutGoalType.description.getter();
    return v3;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v4 = static IntervalWorkoutConfiguration.accessibilityIdentifier;
LABEL_11:
    swift_beginAccess();
    v3 = *v4;

    return v3;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v4 = static RaceWorkoutConfiguration.accessibilityIdentifier;
    goto LABEL_11;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v4 = static PacerWorkoutConfiguration.accessibilityIdentifier;
    goto LABEL_11;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v4 = static MultiSportWorkoutConfiguration.accessibilityIdentifier;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(59);
  MEMORY[0x20F30BC00](0xD000000000000039, 0x800000020CB9A9F0);
  v6 = [v0 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x20F30BC00](v7, v9);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void WorkoutConfiguration.displayImage.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v0 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v1 = FIUIStaticScalableWorkoutIconImageWithPadding();

    if (v1)
    {
      v2 = [v1 imageWithRenderingMode_];

      Image.init(uiImage:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();

    Image.init(_internalSystemName:)();
  }
}

id WorkoutConfiguration.displayColorForCurrentContrastMode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D7E0F8])
  {
    if (v6 == *MEMORY[0x277D7E110])
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.721568627 green:0.588235294 blue:0.980392157 alpha:1.0];
      v1 = FIUIColorForCurrentContrastMode();

      if (v1)
      {
        return v1;
      }

      __break(1u);
    }

    if (v6 == *MEMORY[0x277D7E100])
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
      v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.521568627 green:1.0 blue:0.835294118 alpha:1.0];
      v1 = FIUIColorForCurrentContrastMode();

      if (v1)
      {
        return v1;
      }

      __break(1u);
    }

    if (v6 == *MEMORY[0x277D7E108])
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
      v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.623529412 green:1.0 blue:0.992156863 alpha:1.0];
      v1 = FIUIColorForCurrentContrastMode();

      if (v1)
      {
        return v1;
      }

      __break(1u);
    }

    if (v6 != *MEMORY[0x277D7E0F0])
    {
      goto LABEL_26;
    }

    v1 = objc_opt_self();
    v16 = [v1 keyColors];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 nonGradientTextColor];

      if (v18)
      {
        v19 = [v1 keyColors];
        if (v19)
        {
          v1 = v19;
          v20 = [v19 nonGradientTextColor];

          if (v20)
          {
            v1 = FIUIColorForCurrentContrastMode();

            if (v1)
            {
              return v1;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          while (1)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_26:
            v25[0] = 0;
            v25[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v1 = [v1 description];
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            MEMORY[0x20F30BC00](v22, v24);
          }
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for GoalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  v7 = v0;
  v8 = GoalWorkoutConfiguration.goal.getter();
  v9 = [v8 goalTypeIdentifier];

  v1 = _HKWorkoutGoalType.colorForCurrentContrastMode.getter(v9);
  return v1;
}

id PacerWorkoutConfiguration.pickerPaceDescriptionString(formatter:showDescription:)(void *a1, char a2)
{
  v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v5 = FIUIPaceFormatForWorkoutActivityType();

  if (v5 == 4)
  {
    if (a2)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v6 = WorkoutUIBundle.super.isa;
      v38._object = 0xE000000000000000;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._countAndFlagsBits = 0xD000000000000017;
      v8._object = 0x800000020CB9AA70;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v38._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v38);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_20CB5DA70;
      v11 = PacerWorkoutConfiguration.localizedPaceString(formatter:)(a1);
      v13 = v12;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      String.init(format:_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.localizedUppercase.getter();
    }

    else
    {
      PacerWorkoutConfiguration.localizedPaceString(formatter:)(a1);
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.localizedUppercase.getter();
    }

    return v14;
  }

  result = [a1 unitManager];
  if (result)
  {
    v16 = result;
    v17 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v18 = [v16 userDistanceHKUnitForActivityType_];

    v19 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v20 = FIUIDistanceTypeForActivityType();

    result = [a1 localizedPaceUnitStringWithDistanceType:v20 distanceUnit:MEMORY[0x20F30D2C0](v18)];
    if (result)
    {
      v21 = result;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = PacerWorkoutConfiguration.localizedPaceString(formatter:)(a1);
      v27 = v26;
      if (a2)
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v28 = WorkoutUIBundle.super.isa;
        v37 = 0xE000000000000000;
        v29 = 0xD000000000000016;
        v30 = 0x800000020CB9AA50;
      }

      else
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v28 = WorkoutUIBundle.super.isa;
        v37 = 0xE000000000000000;
        v30 = 0x800000020CB9AA30;
        v29 = 0xD000000000000011;
      }

      v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v31.value._object = 0xEB00000000656C62;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v33 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v29, v31, v28, v32, *(&v37 - 1));

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_20CB5DA80;
      v35 = MEMORY[0x277D837D0];
      *(v34 + 56) = MEMORY[0x277D837D0];
      v36 = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v25;
      *(v34 + 40) = v27;
      *(v34 + 96) = v35;
      *(v34 + 104) = v36;
      *(v34 + 64) = v36;
      *(v34 + 72) = v22;
      *(v34 + 80) = v24;
      String.init(format:_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.localizedUppercase.getter();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}