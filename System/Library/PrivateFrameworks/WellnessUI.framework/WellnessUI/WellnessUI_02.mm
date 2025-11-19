uint64_t closure #1 in TemperatureQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = AnyView.init<A>(_:)();
  outlined init with copy of TemperatureQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  outlined init with copy of TemperatureQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = v15;
  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in TemperatureQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for TemperatureQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t outlined init with copy of View(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of View(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in TemperatureQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in TemperatureQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of TemperatureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in TemperatureQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for TemperatureQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in TemperatureQuerySnippet.body.getter(v0 + v2);
}

uint64_t _s10WellnessUI21TemperatureQueryModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for TemperatureQuerySnippet()
{
  type metadata accessor for TemperatureQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swiftcall HKActivityRingUIViewRepresentable.init(model:)(WellnessUI::HKActivityRingUIViewRepresentable *__return_ptr retstr, WellnessUI::PhoneRingsModel *model)
{
  v2 = *&model[1].exerciseGoalValue.value;
  *&retstr->model.standUnitLabel.value._object = *&model->standUnitLabel.value._object;
  *&retstr[1].model.exerciseGoalValue.value = v2;
  *(&retstr[1].model.exerciseTotalValue.value + 7) = *(&model[1].exerciseTotalValue.value + 7);
  BYTE5(retstr[1].model.moveTotalValue.value) = BYTE5(model[1].moveTotalValue.value);
  v3 = *&model->moveUnitLabel.value._object;
  *&retstr->model.moveValueLabel.value._object = *&model->moveValueLabel.value._object;
  *&retstr->model.moveUnitLabel.value._object = v3;
  v4 = *&model->standValueLabel.value._object;
  *&retstr->model.standLabel.value._object = *&model->standLabel.value._object;
  *&retstr->model.standValueLabel.value._object = v4;
  v5 = *&model->exerciseValueLabel.value._object;
  *&retstr->model.exerciseLabel.value._object = *&model->exerciseLabel.value._object;
  *&retstr->model.exerciseValueLabel.value._object = v5;
  v6 = *&model->moveLabel.value._object;
  *&retstr->model.exerciseUnitLabel.value._object = *&model->exerciseUnitLabel.value._object;
  *&retstr->model.moveLabel.value._object = v6;
  v7 = *(&model->exerciseTotalValue.value + 7);
  *&retstr->model.exerciseGoalValue.value = *&model->exerciseGoalValue.value;
  *(&retstr->model.exerciseTotalValue.value + 7) = v7;
  v8 = *(&model->standTotalValue.value + 3);
  *(&retstr->model.moveTotalValue.value + 5) = *(&model->moveTotalValue.value + 5);
  *(&retstr->model.standTotalValue.value + 3) = v8;
}

uint64_t HKActivityRingUIViewRepresentable.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 240);
  *(a1 + 240) = *(v1 + 240);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return outlined init with copy of PhoneRingsModel(v24, v23);
}

id HKActivityRingUIViewRepresentable.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  v33 = *(v0 + 88);
  v34 = *(v0 + 72);
  v11 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v12 = objc_opt_self();
  v13 = [v12 largeCalorieUnit];
  if (v8)
  {
    v7 = 0.0;
  }

  v14 = objc_opt_self();
  v15 = [v14 quantityWithUnit:v13 doubleValue:v7];

  [v11 setActiveEnergyBurned_];
  v16 = [v12 largeCalorieUnit];
  v17 = 500.0;
  if (!v6)
  {
    v17 = v5;
  }

  v18 = [v14 quantityWithUnit:v16 doubleValue:v17];

  [v11 setActiveEnergyBurnedGoal_];
  v19 = [v12 hourUnit];
  if (v4)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v3;
  }

  v21 = [v14 quantityWithUnit:v19 doubleValue:v20];

  [v11 setAppleExerciseTime_];
  v22 = [v12 hourUnit];
  v23 = 30.0;
  if (!v2)
  {
    v23 = v1;
  }

  v24 = [v14 quantityWithUnit:v22 doubleValue:v23];

  [v11 setAppleExerciseTimeGoal_];
  v25 = [v12 countUnit];
  if (v33)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v10;
  }

  v27 = [v14 quantityWithUnit:v25 doubleValue:v26];

  [v11 setAppleStandHours_];
  v28 = [v12 countUnit];
  v29 = 12.0;
  if (!v34)
  {
    v29 = v9;
  }

  v30 = [v14 quantityWithUnit:v28 doubleValue:v29];

  [v11 setAppleStandHoursGoal_];
  v31 = [objc_allocWithZone(MEMORY[0x277CCE5E0]) init];
  [v31 setActivitySummary:v11 animated:1];

  return v31;
}

unint64_t lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable()
{
  result = lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable;
  if (!lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable;
  if (!lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance HKActivityRingUIViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HKActivityRingUIViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance HKActivityRingUIViewRepresentable()
{
  lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HKActivityRingUIViewRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 241))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t storeEnumTagSinglePayload for HKActivityRingUIViewRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t SingleDataPointView.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SingleDataPointView.unit.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SingleDataPointView.dateLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SingleDataPointView.appPunchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleDataPointView() + 32);

  return outlined init with copy of AppPunchout?(v3, a1);
}

uint64_t type metadata accessor for SingleDataPointView()
{
  result = type metadata singleton initialization cache for SingleDataPointView;
  if (!type metadata singleton initialization cache for SingleDataPointView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleDataPointView.init(data:unit:dateLabel:appPunchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a8 = EnvironmentObject.init()();
  a8[1] = v16;
  a8[2] = a1;
  a8[3] = a2;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  v17 = a8 + *(type metadata accessor for SingleDataPointView() + 32);

  return outlined init with take of AppPunchout?(a7, v17);
}

uint64_t outlined init with take of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SingleDataPointView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v132 = a1;
  v2 = type metadata accessor for FactItemHeroNumberView();
  v127 = *(v2 - 8);
  v128 = v2;
  v3 = *(v127 + 64);
  MEMORY[0x28223BE20](v2);
  v125 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v130 = *(v5 - 8);
  v6 = *(v130 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v126 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v131 = &v106 - v12;
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for Font.TextStyle();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v106 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v106 - v25;
  if (v1[3])
  {
    v27 = v1[5];
    if (v27)
    {
      v28 = v1[7];
      if (v28)
      {
        v123 = v1[3];
        v121._object = v28;
        v29 = v1[2];
        v119 = v1[4];
        v120 = v29;
        v121._countAndFlagsBits = v1[6];
        v30 = type metadata accessor for SingleDataPointView();
        outlined init with copy of AppPunchout?(v1 + *(v30 + 32), v26);
        v31 = type metadata accessor for AppPunchout();
        if ((*(*(v31 - 8) + 48))(v26, 1, v31) != 1)
        {

          outlined destroy of AppPunchout?(v26, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
          v33 = *MEMORY[0x277CE0A78];
          v124 = v16;
          v34 = *(v16 + 104);
          v122 = v22;
          v34(v22, v33, v15);
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
          v36._countAndFlagsBits = v119;
          v36._object = v27;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v36);

          v37._countAndFlagsBits = 0;
          v37._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
          LocalizedStringKey.init(stringInterpolation:)();
          v38 = Text.init(_:tableName:bundle:comment:)();
          v118 = v39;
          v119 = v38;
          v114 = v5;
          v41 = v40;
          v42 = *MEMORY[0x277CE0A60];
          v115 = v15;
          v34(v20, v42, v15);
          v111 = *MEMORY[0x277CE0998];
          v43 = v111;
          v44 = type metadata accessor for Font.Design();
          v107 = v44;
          v45 = *(v44 - 8);
          v46 = *(v45 + 104);
          v110 = v45 + 104;
          v112 = v46;
          v47 = v131;
          v46(v131, v43, v44);
          v48 = *(v45 + 56);
          v108 = v45 + 56;
          v109 = v48;
          v48(v47, 0, 1, v44);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v47, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          v49 = *(v124 + 8);
          v124 += 8;
          v116 = v49;
          v49(v20, v15);
          v51 = v118;
          v50 = v119;
          v117 = Text.font(_:)();
          v53 = v52;
          LOBYTE(v47) = v54;

          outlined consume of Text.Storage(v50, v51, v41 & 1);

          LODWORD(v148) = static HierarchicalShapeStyle.secondary.getter();
          v55 = v117;
          v56 = Text.foregroundStyle<A>(_:)();
          v58 = v57;
          LOBYTE(v44) = v59;
          outlined consume of Text.Storage(v55, v53, v47 & 1);

          static Font.Weight.semibold.getter();
          v60 = Text.fontWeight(_:)();
          v117 = v61;
          v118 = v60;
          v113 = v62;
          v119 = v63;
          outlined consume of Text.Storage(v56, v58, v44 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
          v65._countAndFlagsBits = v120;
          v65._object = v123;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v65);

          v66._countAndFlagsBits = 0;
          v66._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v66);
          LocalizedStringKey.init(stringInterpolation:)();
          v67 = Text.init(_:tableName:bundle:comment:)();
          v69 = v68;
          LOBYTE(v56) = v70;
          v123 = v71;
          v72 = v131;
          v73 = v107;
          v112(v131, v111, v107);
          v109(v72, 0, 1, v73);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v72, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          v74 = Text.font(_:)();
          v76 = v75;
          LOBYTE(v72) = v77;

          outlined consume of Text.Storage(v67, v69, v56 & 1);

          v78 = Text.bold()();
          v80 = v79;
          LODWORD(v123) = v81;
          v131 = v82;
          outlined consume of Text.Storage(v74, v76, v72 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v83._countAndFlagsBits = 0;
          v83._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v83);
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v121);
          v84._countAndFlagsBits = 0;
          v84._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v84);
          LocalizedStringKey.init(stringInterpolation:)();
          v85 = Text.init(_:tableName:bundle:comment:)();
          v110 = v85;
          v121._countAndFlagsBits = v86;
          v111 = v87;
          v89 = v88;
          v150 = MEMORY[0x277CE0BD0];
          v151 = MEMORY[0x277D638F0];
          v90 = MEMORY[0x277CE0BD0];
          v91 = MEMORY[0x277D638F0];
          v92 = swift_allocObject();
          v147 = v91;
          v148 = v92;
          v120 = v78;
          *(v92 + 16) = v78;
          *(v92 + 24) = v80;
          v112 = v80;
          LODWORD(v123) = v123 & 1;
          *(v92 + 32) = v123;
          *(v92 + 40) = v131;
          v146 = v90;
          v93 = swift_allocObject();
          v144 = 0;
          v145 = v93;
          v95 = v117;
          v94 = v118;
          *(v93 + 16) = v118;
          *(v93 + 24) = v95;
          LODWORD(v121._object) = v113 & 1;
          *(v93 + 32) = v113 & 1;
          *(v93 + 40) = v119;
          v142 = 0u;
          v143 = 0u;
          v140 = MEMORY[0x277CE0BD0];
          v141 = MEMORY[0x277D638F0];
          v96 = swift_allocObject();
          v138 = 0;
          v139 = v96;
          countAndFlagsBits = v121._countAndFlagsBits;
          *(v96 + 16) = v85;
          *(v96 + 24) = countAndFlagsBits;
          LOBYTE(v85) = v111 & 1;
          *(v96 + 32) = v111 & 1;
          *(v96 + 40) = v89;
          v136 = 0u;
          v137 = 0u;
          v135 = 0;
          v133 = 0u;
          v134 = 0u;
          outlined copy of Text.Storage(v78, v80, v123);

          outlined copy of Text.Storage(v94, v95, v121._object);

          v98 = v110;
          outlined copy of Text.Storage(v110, countAndFlagsBits, v85);

          v99 = v125;
          FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
          v100 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
          v101 = v128;
          v102 = v129;
          View.componentSpacing(top:bottom:)();
          (*(v127 + 8))(v99, v101);
          v103 = v130;
          v104 = v114;
          (*(v130 + 16))(v126, v102, v114);
          v148 = v101;
          v149 = v100;
          swift_getOpaqueTypeConformance2();
          v105 = AnyView.init<A>(_:)();
          outlined consume of Text.Storage(v98, v121._countAndFlagsBits, v85);

          outlined consume of Text.Storage(v118, v117, v121._object);

          outlined consume of Text.Storage(v120, v112, v123);

          (*(v103 + 8))(v102, v104);
          v116(v122, v115);
          result = v105;
          goto LABEL_7;
        }

        outlined destroy of AppPunchout?(v26, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
      }
    }
  }

  result = AnyView.init<A>(_:)();
LABEL_7:
  *v132 = result;
  return result;
}

void type metadata completion function for SingleDataPointView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppPunchout?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AppPunchout?()
{
  if (!lazy cache variable for type metadata for AppPunchout?)
  {
    type metadata accessor for AppPunchout();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppPunchout?);
    }
  }
}

uint64_t HealthDataLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HealthDataLogSnippet();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t HealthDataLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  HealthDataLogSnippet.colorScheme.getter(&v11 - v6);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF3D8], v0);
  v8 = static ColorScheme.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t HealthDataLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HealthDataLogSnippet();
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = *(v4 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of HealthDataLogModel(a1, a2, type metadata accessor for HealthDataLogModel);
}

uint64_t type metadata accessor for HealthDataLogSnippet()
{
  result = type metadata singleton initialization cache for HealthDataLogSnippet;
  if (!type metadata singleton initialization cache for HealthDataLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthDataLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v255 = a1;
  v2 = type metadata accessor for HealthDataLogSnippet();
  v230 = *(v2 - 8);
  v3 = *(v230 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v231 = v4;
  v232 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v235 = *(v5 - 8);
  v236 = v5;
  v6 = *(v235 + 64);
  MEMORY[0x28223BE20](v5);
  v233 = &v185 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v238 = *(v8 - 8);
  v239 = v8;
  v9 = *(v238 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v234 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v237 = &v185 - v12;
  v13 = type metadata accessor for SeparatorStyle();
  v228 = *(v13 - 1);
  v229 = v13;
  v14 = *(v228 + 64);
  MEMORY[0x28223BE20](v13);
  v224 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for FactItemHeroNumberView();
  v222 = *(v225 - 8);
  v16 = *(v222 + 64);
  MEMORY[0x28223BE20](v225);
  v220 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v223 = *(v226 - 8);
  v18 = *(v223 + 64);
  MEMORY[0x28223BE20](v226);
  v221 = &v185 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v245 = *(v20 - 8);
  v246 = v20;
  v21 = *(v245 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v241 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v23;
  MEMORY[0x28223BE20](v22);
  v244 = &v185 - v24;
  v25 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v211 = *(v25 - 8);
  v212 = v25;
  v26 = *(v211 + 64);
  MEMORY[0x28223BE20](v25);
  v210 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StatusIndicatorView();
  v242 = *(v28 - 8);
  v243 = v28;
  v29 = *(v242 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v218 = v31;
  v219 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v251 = &v185 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v240 = &v185 - v35;
  v36 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v247 = &v185 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for SnippetHeaderView();
  v213 = *(v208 - 8);
  v39 = *(v213 + 64);
  v40 = MEMORY[0x28223BE20](v208);
  v214 = v41;
  v215 = &v185 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v250 = &v185 - v42;
  v249 = type metadata accessor for Font.TextStyle();
  v252 = *(v249 - 8);
  v43 = v252[8];
  v44 = MEMORY[0x28223BE20](v249);
  v209 = &v185 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v248 = &v185 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v185 - v49;
  v254 = type metadata accessor for AppPunchout();
  v51 = *(v254 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v254);
  v216 = v54;
  v217 = &v185 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v253 = &v185 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = &v185 - v58;
  v60 = type metadata accessor for SnippetHeaderModel();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  v64 = &v185 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(v1, v59, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    outlined destroy of AppPunchout?(v59, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
LABEL_14:
    result = AnyView.init<A>(_:)();
    goto LABEL_15;
  }

  outlined init with take of HealthDataLogModel(v59, v64, type metadata accessor for SnippetHeaderModel);
  v65 = type metadata accessor for HealthDataLogModel();
  v66 = (v1 + *(v65 + 32));
  v67 = v66[1];
  if (!v67)
  {
LABEL_13:
    outlined destroy of SnippetHeaderModel(v64, type metadata accessor for SnippetHeaderModel);
    goto LABEL_14;
  }

  v68 = v65;
  v207 = *v66;
  outlined init with copy of AppPunchout?(v1 + *(v65 + 40), v50, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v69 = v254;
  if ((*(v51 + 48))(v50, 1, v254) == 1)
  {
    outlined destroy of SnippetHeaderModel(v64, type metadata accessor for SnippetHeaderModel);
    outlined destroy of AppPunchout?(v50, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    goto LABEL_14;
  }

  v204 = v67;
  v70 = v253;
  v205 = *(v51 + 32);
  v206 = v51 + 32;
  v205(v253, v50, v69);
  v71 = (v1 + v68[9]);
  v72 = v71[1];
  if (!v72)
  {
    (*(v51 + 8))(v70, v69);
    goto LABEL_13;
  }

  v73 = (v1 + v68[6]);
  v74 = v73[1];
  if (!v74 || (v75 = (v1 + v68[7]), (v76 = v75[1]) == 0) || (v77 = (v1 + v68[11]), (v78 = v77[1]) == 0))
  {
    (*(v51 + 8))(v253, v69);
    goto LABEL_13;
  }

  v194 = *v71;
  v201 = *v73;
  v202._countAndFlagsBits = *v75;
  v197 = *v77;
  v202._object = v76;
  v195 = v74;
  v196 = v78;
  v193 = v72;
  v79 = *MEMORY[0x277CE0A78];
  v199 = v1;
  v200 = v64;
  v198 = v252[13];
  v198(v248, v79, v249);
  v80 = v250;
  outlined init with copy of HealthDataLogModel(v64, v250, type metadata accessor for SnippetHeaderModel);
  (*(v61 + 56))(v80, 0, 1, v60);
  v81 = v208;
  v82 = *(v208 + 20);
  *(v80 + v82) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v203 = v51;
  v83 = *(v81 + 24);
  *(v80 + v83) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v84 = v204;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v85);
  v86._countAndFlagsBits = v207;
  v86._object = v84;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v86);

  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
  LocalizedStringKey.init(stringInterpolation:)();
  v88 = Text.init(_:tableName:bundle:comment:)();
  v207 = v89;
  v208 = v88;
  v91 = v90;
  v92 = v209;
  v93 = v249;
  v198(v209, *MEMORY[0x277CE0A60], v249);
  v190 = *MEMORY[0x277CE0998];
  v94 = v190;
  v95 = type metadata accessor for Font.Design();
  v186 = v95;
  v96 = *(v95 - 8);
  v189 = *(v96 + 104);
  v191 = v96 + 104;
  v97 = v240;
  v189(v240, v94, v95);
  v98 = *(v96 + 56);
  v187 = v96 + 56;
  v188 = v98;
  v98(v97, 0, 1, v95);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v97, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v99 = v252[1];
  ++v252;
  v198 = v99;
  (v99)(v92, v93);
  v101 = v207;
  v100 = v208;
  v102 = Text.font(_:)();
  v104 = v103;
  LOBYTE(v93) = v105;

  outlined consume of Text.Storage(v100, v101, v91 & 1);

  LODWORD(v271) = static HierarchicalShapeStyle.secondary.getter();
  v106 = Text.foregroundStyle<A>(_:)();
  v108 = v107;
  LOBYTE(v81) = v109;
  outlined consume of Text.Storage(v102, v104, v93 & 1);

  static Font.Weight.semibold.getter();
  v207 = Text.fontWeight(_:)();
  v208 = v110;
  v204 = v111;
  v192 = v112;
  outlined consume of Text.Storage(v106, v108, v81 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
  v114._countAndFlagsBits = v194;
  v114._object = v193;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v114);

  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v115);
  LocalizedStringKey.init(stringInterpolation:)();
  v116 = Text.init(_:tableName:bundle:comment:)();
  v118 = v117;
  LOBYTE(v106) = v119;
  v120 = v240;
  v121 = v186;
  v189(v240, v190, v186);
  v188(v120, 0, 1, v121);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v120, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v122 = Text.font(_:)();
  v124 = v123;
  LOBYTE(v120) = v125;

  outlined consume of Text.Storage(v116, v118, v106 & 1);

  v126 = Text.bold()();
  v128 = v127;
  LOBYTE(v118) = v129;
  v209 = v130;
  outlined consume of Text.Storage(v122, v124, v120 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v131._countAndFlagsBits = 0;
  v131._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v131);
  v132._countAndFlagsBits = v201;
  v132._object = v195;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v132);

  v133._countAndFlagsBits = 8236;
  v133._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v133);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v202);

  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v134);
  LocalizedStringKey.init(stringInterpolation:)();
  v135 = Text.init(_:tableName:bundle:comment:)();
  v201 = v136;
  v202._countAndFlagsBits = v135;
  LODWORD(v195) = v137;
  v202._object = v138;
  v273 = MEMORY[0x277D837D0];
  v274 = MEMORY[0x277D63F88];
  v271 = v197;
  v272 = v196;
  (*(v211 + 104))(v210, *MEMORY[0x277D63D58], v212);
  StatusIndicatorView.init(message:type:showIndicator:)();
  v139 = MEMORY[0x277CE0BD0];
  v140 = MEMORY[0x277D638F0];
  v273 = MEMORY[0x277CE0BD0];
  v274 = MEMORY[0x277D638F0];
  v141 = swift_allocObject();
  v270 = v140;
  v271 = v141;
  v142 = v126;
  v193 = v128;
  v194 = v126;
  *(v141 + 16) = v126;
  *(v141 + 24) = v128;
  v143 = v128;
  LODWORD(v247) = v118 & 1;
  *(v141 + 32) = v118 & 1;
  *(v141 + 40) = v209;
  v269 = v139;
  v144 = swift_allocObject();
  v267 = 0;
  v268 = v144;
  v146 = v207;
  v145 = v208;
  v147 = v204;
  *(v144 + 16) = v207;
  *(v144 + 24) = v147;
  LODWORD(v240) = v192 & 1;
  *(v144 + 32) = v192 & 1;
  *(v144 + 40) = v145;
  v265 = 0u;
  v266 = 0u;
  v263 = v139;
  v264 = v140;
  v148 = swift_allocObject();
  v262 = v148;
  v150 = v201;
  countAndFlagsBits = v202._countAndFlagsBits;
  *(v148 + 16) = v202._countAndFlagsBits;
  *(v148 + 24) = v150;
  LODWORD(v212) = v195 & 1;
  *(v148 + 32) = v195 & 1;
  *(v148 + 40) = v202._object;
  v261 = 0;
  v259 = 0u;
  v260 = 0u;
  v258 = 0;
  v256 = 0u;
  v257 = 0u;
  outlined copy of Text.Storage(v142, v143, v247);

  outlined copy of Text.Storage(v146, v147, v240);

  outlined copy of Text.Storage(countAndFlagsBits, v150, v212);

  v151 = v220;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v153 = v228;
  v152 = v229;
  v154 = v224;
  (*(v228 + 104))(v224, *MEMORY[0x277D62F40], v229);
  v155 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v156 = v221;
  v157 = v225;
  View.separators(_:isOverride:)();
  (*(v153 + 8))(v154, v152);
  (*(v222 + 8))(v151, v157);
  v271 = v157;
  v272 = v155;
  swift_getOpaqueTypeConformance2();
  v158 = v244;
  v159 = v226;
  View.componentSpacing(top:bottom:)();
  (*(v223 + 8))(v156, v159);
  v229 = type metadata accessor for SnippetHeaderView;
  v160 = v215;
  outlined init with copy of HealthDataLogModel(v250, v215, type metadata accessor for SnippetHeaderView);
  v161 = v245;
  v162 = v246;
  (*(v245 + 16))(v241, v158, v246);
  v163 = v242;
  v164 = v219;
  (*(v242 + 16))(v219, v251, v243);
  v165 = (*(v213 + 80) + 16) & ~*(v213 + 80);
  v166 = (v214 + *(v161 + 80) + v165) & ~*(v161 + 80);
  v167 = (v227 + *(v163 + 80) + v166) & ~*(v163 + 80);
  v168 = swift_allocObject();
  outlined init with take of HealthDataLogModel(v160, v168 + v165, v229);
  (*(v161 + 32))(v168 + v166, v241, v162);
  v169 = v243;
  (*(v163 + 32))(v168 + v167, v164, v243);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  v170 = v233;
  ComponentStack.init(content:)();
  v171 = v232;
  outlined init with copy of HealthDataLogModel(v199, v232, type metadata accessor for HealthDataLogSnippet);
  v172 = v203;
  v173 = v217;
  v174 = v254;
  (*(v203 + 16))(v217, v253, v254);
  v175 = (*(v230 + 80) + 16) & ~*(v230 + 80);
  v176 = (v231 + *(v172 + 80) + v175) & ~*(v172 + 80);
  v177 = swift_allocObject();
  outlined init with take of HealthDataLogModel(v171, v177 + v175, type metadata accessor for HealthDataLogSnippet);
  v205((v177 + v176), v173, v174);
  v178 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v180 = v236;
  v179 = v237;
  View.componentTapped(isNavigation:perform:)();

  (*(v235 + 8))(v170, v180);
  v182 = v238;
  v181 = v239;
  (*(v238 + 16))(v234, v179, v239);
  v271 = v180;
  v272 = v178;
  swift_getOpaqueTypeConformance2();
  v183 = AnyView.init<A>(_:)();
  outlined consume of Text.Storage(v202._countAndFlagsBits, v201, v212);

  outlined consume of Text.Storage(v207, v204, v240);

  outlined consume of Text.Storage(v194, v193, v247);

  (*(v182 + 8))(v179, v181);
  (*(v245 + 8))(v244, v246);
  (*(v242 + 8))(v251, v169);
  outlined destroy of SnippetHeaderModel(v250, type metadata accessor for SnippetHeaderView);
  (v198)(v248, v249);
  (*(v203 + 8))(v253, v174);
  outlined destroy of SnippetHeaderModel(v200, type metadata accessor for SnippetHeaderModel);
  result = v183;
LABEL_15:
  *v255 = result;
  return result;
}

uint64_t closure #1 in HealthDataLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v27 = v5;
  v29 = *(v5 - 8);
  v6 = v29;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v28 = v10;
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for SnippetHeaderView();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthDataLogModel(a1, v18, type metadata accessor for SnippetHeaderView);
  v19 = *(v11 + 16);
  v19(v14, v31, v10);
  v20 = *(v6 + 16);
  v20(v9, v32, v5);
  v21 = v33;
  outlined init with copy of HealthDataLogModel(v18, v33, type metadata accessor for SnippetHeaderView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v23 = v28;
  v19((v21 + *(v22 + 48)), v14, v28);
  v24 = v27;
  v20((v21 + *(v22 + 64)), v9, v27);
  (*(v29 + 8))(v9, v24);
  (*(v30 + 8))(v14, v23);
  return outlined destroy of SnippetHeaderModel(v18, type metadata accessor for SnippetHeaderView);
}

void closure #2 in HealthDataLogSnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HealthDataLogSnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in HealthDataLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in HealthDataLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of HealthDataLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of HealthDataLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in HealthDataLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for HealthDataLogSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in HealthDataLogSnippet.body.getter(v0 + v2);
}

void type metadata completion function for HealthDataLogSnippet()
{
  type metadata accessor for HealthDataLogModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t GenericQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for GenericQuerySnippet() + 20));
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of GenericQueryModel(a1, a2, type metadata accessor for GenericQueryModel);
}

uint64_t type metadata accessor for GenericQuerySnippet()
{
  result = type metadata singleton initialization cache for GenericQuerySnippet;
  if (!type metadata singleton initialization cache for GenericQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v167 = a1;
  Snippet = type metadata accessor for GenericQuerySnippet();
  v152 = *(Snippet - 8);
  v3 = *(v152 + 64);
  MEMORY[0x28223BE20](Snippet - 8);
  v153 = v4;
  v154 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMR);
  v158 = *(v5 - 8);
  v159 = v5;
  v6 = *(v158 + 64);
  MEMORY[0x28223BE20](v5);
  v155 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAA03AnyC0V_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAA03AnyC0V_Qo_tGG_Qo_MR);
  v160 = *(v8 - 8);
  v161 = v8;
  v9 = *(v160 + 64);
  MEMORY[0x28223BE20](v8);
  v156 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v129 - v12;
  v146 = type metadata accessor for SingleDataPointView();
  v13 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v145 = (&v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = type metadata accessor for MultipleDataPointView();
  v15 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v142 = (&v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v143 = &v129 - v18;
  v162 = type metadata accessor for SnippetHeaderView();
  v147 = *(v162 - 8);
  v19 = *(v147 + 64);
  MEMORY[0x28223BE20](v162);
  v149 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v129 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v164 = &v129 - v25;
  v26 = type metadata accessor for AppPunchout();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v150 = v29;
  v151 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v165 = &v129 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v129 - v34;
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for GenericQueryModel();
  outlined init with copy of AppPunchout?(v1 + *(Model + 40), v35, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if ((*(v37 + 48))(v35, 1, v36) != 1)
  {
    (*(v37 + 32))(v40, v35, v36);
    v44 = v1;
    v45 = v164;
    outlined init with copy of AppPunchout?(v1, v164, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    if ((*(v27 + 48))(v45, 1, v26) == 1)
    {
      (*(v37 + 8))(v40, v36);
      v41 = &_s10SnippetKit11AppPunchoutVSgMd;
      v42 = &_s10SnippetKit11AppPunchoutVSgMR;
      v43 = v45;
      goto LABEL_5;
    }

    v47 = v26;
    v48 = v40;
    v140 = v36;
    v141 = v27;
    v50 = v27 + 32;
    v49 = *(v27 + 32);
    v164 = v47;
    v137 = v49;
    (v49)(v165, v45);
    v51 = Model;
    v52 = v44 + *(Model + 72);
    v53 = v44;
    v54 = v166;
    outlined init with copy of AppPunchout?(v52, v166, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v55 = v162;
    v56 = *(v162 + 20);
    *(v54 + v56) = swift_getKeyPath();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v57 = *(v55 + 24);
    *(v54 + v57) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    v58 = v53;
    swift_storeEnumTagMultiPayload();
    v59 = v53 + v51[5];
    v60 = *(v59 + 8);
    v139 = v37;
    v138 = v50;
    v136 = v40;
    if ((v60 & 1) == 0)
    {
      v61 = *v59;
      if (*v59 > 0.0)
      {
        v62 = (v53 + v51[13]);
        v63 = *v62;
        v64 = v62[1];
        if (v64)
        {
          v65 = v51[12];
          v66 = *(v53 + v65 + 8);
          if (v66)
          {
            v162 = *v62;
            v67 = v51[11];
            v68 = *(v58 + v67 + 8);
            v69 = v51[15];
            v70 = *(v58 + v69 + 8);
LABEL_14:
            v130 = v68;
            v133 = *(v58 + v67);
            v134 = *(v58 + v65);
            v145 = *(v58 + v69);
            v71 = (v58 + v51[16]);
            v72 = v71[1];
            v146 = *v71;

            v73 = v58;
            v132 = SpeakableString.print.getter();
            v131 = v74;
            v75 = (v58 + v51[17]);
            v76 = v75[1];
            Model = *v75;
            type metadata accessor for Context();
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);

            v77 = EnvironmentObject.init()();
            v78 = v142;
            *v142 = v77;
            *(v78 + 8) = v79;
            v80 = v66;
            v81 = v144;
            v82 = *(v144 + 20);
            *(v78 + v82) = swift_getKeyPath();
            swift_storeEnumTagMultiPayload();
            v83 = v78 + v81[6];
            *v83 = v61;
            *(v83 + 8) = 0;
            v84 = (v78 + v81[7]);
            v85 = v130;
            *v84 = v133;
            v84[1] = v85;
            v86 = (v78 + v81[8]);
            *v86 = v162;
            v86[1] = v64;
            v87 = (v78 + v81[9]);
            *v87 = v134;
            v87[1] = v80;
            v88 = (v78 + v81[10]);
            *v88 = v145;
            v88[1] = v70;
            v89 = (v78 + v81[11]);
            *v89 = v146;
            v89[1] = v72;
            v90 = (v78 + v81[12]);
            v91 = v131;
            *v90 = v132;
            v90[1] = v91;
            *(v78 + v81[13]) = 1;
            v92 = 0x65676172657641;
            if (v76)
            {
              v92 = Model;
            }

            v93 = 0xE700000000000000;
            if (v76)
            {
              v93 = v76;
            }

            v94 = (v78 + v81[14]);
            *v94 = v92;
            v94[1] = v93;
            outlined init with take of GenericQueryModel(v78, v143, type metadata accessor for MultipleDataPointView);
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MultipleDataPointView and conformance MultipleDataPointView, type metadata accessor for MultipleDataPointView);
LABEL_25:
            v107 = AnyView.init<A>(_:)();
            v108 = v149;
            outlined init with copy of GenericQueryModel(v166, v149, type metadata accessor for SnippetHeaderView);
            v109 = (*(v147 + 80) + 16) & ~*(v147 + 80);
            v110 = (v148 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
            v111 = swift_allocObject();
            outlined init with take of GenericQueryModel(v108, v111 + v109, type metadata accessor for SnippetHeaderView);
            *(v111 + v110) = v107;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMR);
            lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMR);
            v112 = v155;
            ComponentStack.init(content:)();
            v113 = v154;
            outlined init with copy of GenericQueryModel(v73, v154, type metadata accessor for GenericQuerySnippet);
            v114 = v141;
            v115 = v151;
            v117 = v164;
            v116 = v165;
            (*(v141 + 16))(v151, v165, v164);
            v118 = (*(v152 + 80) + 16) & ~*(v152 + 80);
            v119 = (v153 + *(v114 + 80) + v118) & ~*(v114 + 80);
            v120 = swift_allocObject();
            outlined init with take of GenericQueryModel(v113, v120 + v118, type metadata accessor for GenericQuerySnippet);
            v137(v120 + v119, v115, v117);
            v121 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMR);
            v122 = v157;
            v123 = v159;
            View.componentTapped(isNavigation:perform:)();

            (*(v158 + 8))(v112, v123);
            v125 = v160;
            v124 = v161;
            (*(v160 + 16))(v156, v122, v161);
            v168 = v123;
            v169 = v121;
            swift_getOpaqueTypeConformance2();
            v126 = AnyView.init<A>(_:)();

            (*(v125 + 8))(v122, v124);
            outlined destroy of SnippetHeaderView(v166);
            (*(v114 + 8))(v116, v117);
            (*(v139 + 8))(v136, v140);
            result = v126;
            goto LABEL_26;
          }
        }

        v69 = v51[15];
        v70 = *(v58 + v69 + 8);
        if (v70)
        {
          v67 = v51[11];
          v68 = *(v58 + v67 + 8);
          if (v68)
          {
            v162 = v63;
            v65 = v51[12];
            v66 = *(v58 + v65 + 8);
            goto LABEL_14;
          }
        }
      }
    }

    v95 = (v58 + v51[14]);
    if (v95[1])
    {
      v96 = *v95;
      v97 = v95[1];
    }

    else
    {
      v98 = (v58 + v51[15]);
      v97 = v98[1];
      if (!v97)
      {
        v98 = (v58 + v51[11]);
        v97 = v98[1];
        if (!v97)
        {
          v127 = v37;
          v128 = AnyView.init<A>(_:)();
          outlined destroy of SnippetHeaderView(v166);
          (*(v141 + 8))(v165, v164);
          (*(v127 + 8))(v48, v140);
          result = v128;
          goto LABEL_26;
        }
      }

      v96 = *v98;
      swift_bridgeObjectRetain_n();
    }

    swift_bridgeObjectRetain_n();

    v99 = (v58 + v51[16]);
    v101 = *v99;
    v100 = v99[1];

    v73 = v58;
    v102 = SpeakableString.print.getter();
    v104 = v103;
    v105 = v145;
    outlined init with copy of AppPunchout?(v73, v145 + *(v146 + 32), &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    *v105 = EnvironmentObject.init()();
    v105[1] = v106;
    v105[2] = v96;
    v105[3] = v97;
    v105[4] = v101;
    v105[5] = v100;
    v105[6] = v102;
    v105[7] = v104;
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SingleDataPointView and conformance SingleDataPointView, type metadata accessor for SingleDataPointView);
    goto LABEL_25;
  }

  v41 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v42 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v43 = v35;
LABEL_5:
  outlined destroy of AppPunchout?(v43, v41, v42);
  result = AnyView.init<A>(_:)();
LABEL_26:
  *v167 = result;
  return result;
}

uint64_t specialized closure #1 in GenericQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA03AnyC0V_Qo_Md, "4C");
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = (MEMORY[0x28223BE20])(v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  v22[1] = a2;
  View.componentSpacing(top:bottom:)();
  outlined init with copy of GenericQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  v18 = v11[2];
  v18(v15, v17, v10);
  outlined init with copy of GenericQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAD03AnyE0V_Qo_tMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAD03AnyE0V_Qo_tMR);
  v18((a3 + *(v19 + 48)), v15, v10);
  v20 = v11[1];
  v20(v17, v10);
  v20(v15, v10);
  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in GenericQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for GenericQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for specialized closure #1 in GenericQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return specialized closure #1 in GenericQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of GenericQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in GenericQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in GenericQuerySnippet.body.getter(v0 + v2);
}

uint64_t outlined init with take of GenericQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for GenericQuerySnippet()
{
  type metadata accessor for GenericQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t GenericBinaryButtonSnippet.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 GenericBinaryButtonSnippet.init(model:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 48);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *(a2 + 56) = EnvironmentObject.init()();
  *(a2 + 64) = v6;
  result = v8;
  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

uint64_t GenericBinaryButtonSnippet.body.getter()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  outlined init with copy of GenericBinaryButtonSnippet(v8, v7);
  type metadata accessor for BinaryButtonView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40]);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in GenericBinaryButtonSnippet.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonItemButtonStyle.Role();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v17 = *(a1 + 16);
  v41 = *a1;
  v42 = v17;
  v43 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v45[0] = *(a1 + 32);
    *v37 = *(a1 + 32);
    v35 = v13;
    v34 = v14;
    v18 = swift_allocObject();
    v19 = *(a1 + 48);
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = v19;
    *(v18 + 80) = *(a1 + 64);
    v20 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v20;
    outlined init with copy of String(v45, v40);
    outlined init with copy of GenericBinaryButtonSnippet(a1, v40);
    lazy protocol witness table accessor for type String and conformance String();
    Button<>.init<A>(_:action:)();
    (*(v3 + 104))(v6, *MEMORY[0x277D63A98], v2);
    v21 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    View.buttonRole(_:)();
    (*(v3 + 8))(v6, v2);
    v22 = *(v36 + 8);
    v22(v10, v7);
    v40[0] = v7;
    v40[1] = v21;
    swift_getOpaqueTypeConformance2();
    v23 = v35;
    v24 = View.eraseToAnyView()();
    (*(v34 + 8))(v16, v23);
  }

  else
  {
    v45[0] = *(a1 + 32);
    *v37 = *(a1 + 32);
    v25 = swift_allocObject();
    v26 = *(a1 + 48);
    *(v25 + 48) = *(a1 + 32);
    *(v25 + 64) = v26;
    *(v25 + 80) = *(a1 + 64);
    v27 = *(a1 + 16);
    *(v25 + 16) = *a1;
    *(v25 + 32) = v27;
    outlined init with copy of GenericBinaryButtonSnippet(a1, v40);
    outlined init with copy of String(v45, v40);
    lazy protocol witness table accessor for type String and conformance String();
    Button<>.init<A>(_:action:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    v24 = View.eraseToAnyView()();
    v22 = *(v36 + 8);
    v22(v10, v7);
  }

  v44 = v42;
  *v37 = v42;
  v28 = swift_allocObject();
  v29 = *(a1 + 48);
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a1 + 64);
  v30 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v30;
  outlined init with copy of GenericBinaryButtonSnippet(a1, v40);
  outlined init with copy of String(&v44, v40);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v40[3] = MEMORY[0x277CE11D0];
  v40[4] = MEMORY[0x277D63A58];
  v40[0] = v24;
  v38 = v7;
  v39 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(v36 + 16))(boxed_opaque_existential_1, v10, v7);
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  return (v22)(v10, v7);
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in closure #1 in GenericBinaryButtonSnippet.body.getter(uint64_t *a1, char a2)
{
  v2 = a1[7];
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_273EA69E0;
    v7 = v2;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a2;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (AnyHashable, Any)(inited + 32);
    dispatch thunk of Context.perform(directInvocation:payload:)();
  }

  else
  {
    v9 = a1[8];
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance GenericBinaryButtonSnippet()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  outlined init with copy of GenericBinaryButtonSnippet(v8, v7);
  type metadata accessor for BinaryButtonView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40]);
  return ComponentStack.init(content:)();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for GenericBinaryButtonSnippet(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonSnippet(uint64_t result, int a2, int a3)
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

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E0B00](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t BloodPressureLogModel.dateLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for BloodPressureLogModel() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for BloodPressureLogModel()
{
  result = type metadata singleton initialization cache for BloodPressureLogModel;
  if (!type metadata singleton initialization cache for BloodPressureLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureLogModel.dataLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for BloodPressureLogModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BloodPressureLogModel.dataLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureLogModel.loggedLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for BloodPressureLogModel() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BloodPressureLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureLogModel.timeLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for BloodPressureLogModel() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BloodPressureLogModel.timeLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureLogModel.unitLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for BloodPressureLogModel() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BloodPressureLogModel.unitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureLogModel.init(url:date:dateLabel:systolic:diastolic:loggedLabel:snippetHeaderModel:unitLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8@<D0>, uint64_t a9@<D1>, uint64_t a10)
{
  v90 = a6;
  v85 = a3;
  v86 = a4;
  v95 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v75 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v84 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;

  v27 = type metadata accessor for AppPunchout();
  v28 = *(v27 - 8);
  v88 = *(v28 + 56);
  v89 = v27;
  v87 = v28 + 56;
  v88(a7, 1, 1);
  v29 = type metadata accessor for BloodPressureLogModel();
  v30 = (a7 + v29[6]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a7 + v29[7]);
  *v31 = 0;
  v31[1] = 0;
  v32 = v29[8];
  v33 = type metadata accessor for SnippetHeaderModel();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v80 = v33;
  v81 = v32;
  v79 = v35;
  v78 = v34 + 56;
  (v35)(a7 + v32, 1, 1);
  v36 = (a7 + v29[9]);
  *v36 = 0;
  v36[1] = 0;
  v83 = v36;
  v37 = (a7 + v29[10]);
  *v37 = 0;
  v37[1] = 0;
  v82 = v37;
  v92 = a2;
  dispatch thunk of DialogCalendar.dateDescriptive.getter();
  v38 = type metadata accessor for SpeakableString();
  v39 = *(v38 - 8);
  v76 = *(v39 + 48);
  v40 = v76(v26, 1, v38);
  v94 = a5;
  v77 = v39;
  if (v40 == 1)
  {
    outlined destroy of AppPunchout?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = SpeakableString.print.getter();
    v45 = v44;
    (*(v39 + 8))(v26, v38);
    v96 = v43;
    v97 = v45;
    lazy protocol witness table accessor for type String and conformance String();
    v41 = StringProtocol.capitalized.getter();
    v42 = v46;
  }

  v47 = (a7 + v29[5]);
  *v47 = v41;
  v47[1] = v42;
  v48 = HealthDataLogModel.getFormattedValueString(inputValue:)(a8, 0);
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v52 = HealthDataLogModel.getFormattedValueString(inputValue:)(a9, 0);
    if (v53)
    {
      v54 = v52;
      v55 = v53;
      v96 = v50;
      v97 = v51;

      MEMORY[0x2743E0A10](47, 0xE100000000000000);

      MEMORY[0x2743E0A10](v54, v55);

      v56 = v96;
      v57 = v97;
      goto LABEL_9;
    }
  }

  v56 = 0;
  v57 = 0;
LABEL_9:
  *v30 = v56;
  v30[1] = v57;
  v58 = v86;
  *v31 = v85;
  v31[1] = v58;
  v59 = v81;
  outlined destroy of AppPunchout?(a7 + v81, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v60 = v94;
  outlined init with copy of SnippetHeaderModel(v94, a7 + v59, type metadata accessor for SnippetHeaderModel);
  v79(a7 + v59, 0, 1, v80);
  v61 = v84;
  dispatch thunk of DialogCalendar.timeDescriptive.getter();
  v62 = v76(v61, 1, v38);
  v63 = v77;
  if (v62 == 1)
  {
    outlined destroy of AppPunchout?(v61, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v64 = SpeakableString.print.getter();
    v65 = v66;
    (*(v63 + 8))(v61, v38);
  }

  v68 = v82;
  v67 = v83;
  *v83 = v64;
  v67[1] = v65;
  *v68 = v90;
  v68[1] = a10;
  v69 = type metadata accessor for URL();
  v70 = *(v69 - 8);
  v71 = v93;
  v72 = v95;
  (*(v70 + 16))(v93, v95, v69);
  (*(v70 + 56))(v71, 0, 1, v69);
  v73 = v91;
  BloodPressureLogModel.createAppPunchout(url:)(v71);

  _s10WellnessUI18SnippetHeaderModelVWOhTm_0(v60, type metadata accessor for SnippetHeaderModel);
  (*(v70 + 8))(v72, v69);
  outlined destroy of AppPunchout?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v88)(v73, 0, 1, v89);
  return outlined assign with take of AppPunchout?(v73, a7, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
}

uint64_t BloodPressureLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BloodPressureLogModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x68636E7550707061;
  v3 = 0x6562614C656D6974;
  if (v1 != 5)
  {
    v3 = 0x6562614C74696E75;
  }

  v4 = 0x614C646567676F6CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6562614C65746164;
  if (v1 != 1)
  {
    v5 = 0x6562614C61746164;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BloodPressureLogModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized BloodPressureLogModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BloodPressureLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BloodPressureLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloodPressureLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BloodPressureLogModel();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v29[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v29[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v29[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v11[8];
    v29[11] = 4;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = (v3 + v11[9]);
    v23 = *v22;
    v24 = v22[1];
    v29[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = (v3 + v11[10]);
    v26 = *v25;
    v27 = v25[1];
    v29[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

uint64_t BloodPressureLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v50 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMR);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v50 - v10;
  v11 = type metadata accessor for BloodPressureLogModel();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppPunchout();
  v17 = *(*(v16 - 8) + 56);
  v55 = v16;
  v17(v15, 1, 1);
  v18 = &v15[v12[7]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v15[v12[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v15[v12[9]];
  *v20 = 0;
  v20[1] = 0;
  v21 = v12[10];
  v22 = type metadata accessor for SnippetHeaderModel();
  v23 = *(*(v22 - 8) + 56);
  v54 = v21;
  v23(&v15[v21], 1, 1, v22);
  v24 = &v15[v12[11]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = v12[12];
  v61 = v15;
  v26 = &v15[v25];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = a1;
  v28 = a1[3];
  v29 = v27[4];
  v62 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();
  v30 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    v31 = v61;
  }

  else
  {
    v60 = v19;
    v51 = v26;
    v52 = v24;
    v32 = v56;
    v33 = v57;
    v70 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    v34 = v58;
    v35 = v63;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v34;
    v31 = v61;
    outlined assign with take of AppPunchout?(v36, v61, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v69 = 1;
    *v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18[1] = v37;
    v68 = 2;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v60;
    *v60 = v38;
    v39[1] = v40;
    v67 = 3;
    *v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20[1] = v41;
    v66 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v33, v31 + v54, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v65 = 5;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v52;
    *v52 = v42;
    v43[1] = v44;
    v64 = 6;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v47;
    (*(v32 + 8))(v35, v59);
    v49 = v51;
    *v51 = v46;
    v49[1] = v48;
    outlined init with copy of SnippetHeaderModel(v31, v53, type metadata accessor for BloodPressureLogModel);
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  return _s10WellnessUI18SnippetHeaderModelVWOhTm_0(v31, type metadata accessor for BloodPressureLogModel);
}

uint64_t _s10WellnessUI18SnippetHeaderModelVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SnippetHeaderModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for BloodPressureLogModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized BloodPressureLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t CycleTrackingLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CycleTrackingLogSnippet();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t CycleTrackingLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  CycleTrackingLogSnippet.colorScheme.getter(&v11 - v6);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3D8], v0);
  v8 = static ColorScheme.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  if (v8)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t CycleTrackingLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v217 = a1;
  v2 = type metadata accessor for CycleTrackingLogSnippet();
  v193 = *(v2 - 8);
  v3 = *(v193 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v194 = v4;
  v195 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v198 = *(v200 - 8);
  v5 = *(v198 + 64);
  MEMORY[0x28223BE20](v200);
  v196 = &v158 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v201 = *(v7 - 8);
  v202 = v7;
  v8 = *(v201 + 64);
  MEMORY[0x28223BE20](v7);
  v197 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v199 = &v158 - v11;
  v12 = type metadata accessor for SeparatorStyle();
  v191 = *(v12 - 8);
  v192 = v12;
  v13 = *(v191 + 64);
  MEMORY[0x28223BE20](v12);
  v187 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for FactItemHeroNumberView();
  v185 = *(v188 - 8);
  v15 = *(v185 + 64);
  MEMORY[0x28223BE20](v188);
  v182 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v186 = *(v189 - 8);
  v17 = *(v186 + 64);
  MEMORY[0x28223BE20](v189);
  v184 = &v158 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v210 = *(v19 - 8);
  v211 = v19;
  v20 = *(v210 + 64);
  MEMORY[0x28223BE20](v19);
  v204 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v21;
  MEMORY[0x28223BE20](v22);
  v209 = &v158 - v23;
  v24 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v174 = *(v24 - 8);
  v175 = v24;
  v25 = *(v174 + 64);
  MEMORY[0x28223BE20](v24);
  v173 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StatusIndicatorView();
  v207 = *(v27 - 8);
  v208 = v27;
  v28 = *(v207 + 64);
  MEMORY[0x28223BE20](v27);
  v183 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v29;
  MEMORY[0x28223BE20](v30);
  v214 = &v158 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v171 = &v158 - v34;
  v35 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v172 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for SnippetHeaderView();
  v176 = *(v170 - 1);
  v38 = *(v176 + 64);
  MEMORY[0x28223BE20](v170);
  v179 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v39;
  MEMORY[0x28223BE20](v40);
  v213 = &v158 - v41;
  v42 = type metadata accessor for Font.TextStyle();
  v205 = *(v42 - 8);
  v206 = v42;
  v43 = *(v205 + 64);
  MEMORY[0x28223BE20](v42);
  v212 = &v158 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v203 = &v158 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v158 - v50;
  v52 = type metadata accessor for AppPunchout();
  v216 = *(v52 - 8);
  v53 = *(v216 + 64);
  MEMORY[0x28223BE20](v52);
  v180 = &v158 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v54;
  MEMORY[0x28223BE20](v55);
  v215 = &v158 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = &v158 - v59;
  v61 = type metadata accessor for SnippetHeaderModel();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v158 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CycleTrackingLogModel();
  outlined init with copy of AppPunchout?(v1 + v66[8], v60, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v168 = v62;
  v169 = v61;
  if ((*(v62 + 48))(v60, 1, v61) == 1)
  {
    outlined destroy of AppPunchout?(v60, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  else
  {
    outlined init with take of SnippetHeaderModel(v60, v65, type metadata accessor for SnippetHeaderModel);
    v67 = v1;
    outlined init with copy of AppPunchout?(v1, v51, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v68 = v216;
    if ((*(v216 + 48))(v51, 1, v52) == 1)
    {
      outlined destroy of SnippetHeaderModel(v65, type metadata accessor for SnippetHeaderModel);
      outlined destroy of AppPunchout?(v51, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    }

    else
    {
      v69 = v52;
      v70 = v68 + 32;
      v71 = *(v68 + 32);
      v72 = v215;
      v71(v215, v51, v69);
      v73 = (v67 + v66[7]);
      v74 = v73[1];
      if (v74 && (v75 = (v67 + v66[6]), (v76 = v75[1]) != 0) && (v77 = (v67 + v66[5]), v77[1]))
      {
        v167 = v77[1];
        v162 = *v73;
        v163 = v74;
        v78 = *v75;
        v164 = *v77;
        v165 = v78;
        v79 = v67 + v66[9];
        v80 = v203;
        outlined init with copy of AppPunchout?(v79, v203, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v81 = type metadata accessor for URL();
        if ((*(*(v81 - 8) + 48))(v80, 1, v81) != 1)
        {
          v83 = v163;

          outlined destroy of AppPunchout?(v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v205 + 104))(v212, *MEMORY[0x277CE0A78], v206);
          v161 = v76;
          v84 = v213;
          outlined init with copy of CycleTrackingLogModel(v65, v213, type metadata accessor for SnippetHeaderModel);
          (*(v168 + 7))(v84, 0, 1, v169);
          v85 = v170;
          v86 = *(v170 + 5);
          *(v84 + v86) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
          swift_storeEnumTagMultiPayload();
          v166 = v69;
          v87 = *(v85 + 24);
          *(v84 + v87) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
          swift_storeEnumTagMultiPayload();
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v88._countAndFlagsBits = 0;
          v88._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v88);
          v89._countAndFlagsBits = v162;
          v89._object = v83;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v89);

          v90._countAndFlagsBits = 0;
          v90._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v90);
          LocalizedStringKey.init(stringInterpolation:)();
          v91 = Text.init(_:tableName:bundle:comment:)();
          v168 = v71;
          v169 = v70;
          v203 = v91;
          v93 = v92;
          v95 = v94;
          v163 = v67;
          v96 = *MEMORY[0x277CE0998];
          v97 = type metadata accessor for Font.Design();
          v98 = *(v97 - 8);
          v99 = v171;
          (*(v98 + 104))(v171, v96, v97);
          (*(v98 + 56))(v99, 0, 1, v97);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v99, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          LOBYTE(v99) = v95;
          v100 = v203;
          v101 = Text.font(_:)();
          v103 = v102;
          v170 = v65;
          v105 = v104;
          v159 = v106;

          outlined consume of Text.Storage(v100, v93, v99 & 1);

          v107 = Text.bold()();
          v171 = v108;
          v160 = v109;
          v203 = v110;
          outlined consume of Text.Storage(v101, v103, v105 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v111._countAndFlagsBits = 0;
          v111._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v111);
          v112._countAndFlagsBits = v164;
          v112._object = v167;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v112);

          v113._countAndFlagsBits = 0;
          v113._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
          LocalizedStringKey.init(stringInterpolation:)();
          v114 = Text.init(_:tableName:bundle:comment:)();
          v172 = v115;
          LODWORD(v159) = v116;
          v118 = v117;
          v167 = v117;
          v235 = MEMORY[0x277D837D0];
          v236 = MEMORY[0x277D63F88];
          v233 = v165;
          v234 = v161;
          (*(v174 + 104))(v173, *MEMORY[0x277D63D58], v175);
          StatusIndicatorView.init(message:type:showIndicator:)();
          v119 = MEMORY[0x277CE0BD0];
          v120 = MEMORY[0x277D638F0];
          v235 = MEMORY[0x277CE0BD0];
          v236 = MEMORY[0x277D638F0];
          v121 = swift_allocObject();
          v232 = 0;
          v233 = v121;
          v162 = v107;
          v122 = v171;
          *(v121 + 16) = v107;
          *(v121 + 24) = v122;
          LODWORD(v84) = v160 & 1;
          *(v121 + 32) = v160 & 1;
          LODWORD(v175) = v84;
          *(v121 + 40) = v203;
          v230 = 0u;
          v231 = 0u;
          v229 = 0;
          v227 = 0u;
          v228 = 0u;
          v225 = v119;
          v226 = v120;
          v123 = swift_allocObject();
          v224 = v123;
          v164 = v114;
          v124 = v172;
          *(v123 + 16) = v114;
          *(v123 + 24) = v124;
          LODWORD(v93) = v159 & 1;
          *(v123 + 32) = v159 & 1;
          LODWORD(v174) = v93;
          *(v123 + 40) = v118;
          v223 = 0;
          v221 = 0u;
          v222 = 0u;
          v220 = 0;
          v218 = 0u;
          v219 = 0u;
          outlined copy of Text.Storage(v107, v122, v84);

          outlined copy of Text.Storage(v114, v124, v93);

          v125 = v182;
          FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
          v127 = v191;
          v126 = v192;
          v128 = v187;
          (*(v191 + 104))(v187, *MEMORY[0x277D62F40], v192);
          v129 = lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
          v130 = v184;
          v131 = v188;
          View.separators(_:isOverride:)();
          (*(v127 + 8))(v128, v126);
          (*(v185 + 8))(v125, v131);
          v233 = v131;
          v234 = v129;
          swift_getOpaqueTypeConformance2();
          v132 = v209;
          v133 = v189;
          View.componentSpacing(top:bottom:)();
          (*(v186 + 8))(v130, v133);
          v134 = v179;
          outlined init with copy of CycleTrackingLogModel(v213, v179, type metadata accessor for SnippetHeaderView);
          v136 = v210;
          v135 = v211;
          (*(v210 + 16))(v204, v132, v211);
          v137 = v207;
          v138 = v183;
          (*(v207 + 16))(v183, v214, v208);
          v139 = (*(v176 + 80) + 16) & ~*(v176 + 80);
          v140 = (v177 + *(v136 + 80) + v139) & ~*(v136 + 80);
          v141 = (v190 + *(v137 + 80) + v140) & ~*(v137 + 80);
          v142 = swift_allocObject();
          outlined init with take of SnippetHeaderModel(v134, v142 + v139, type metadata accessor for SnippetHeaderView);
          (*(v136 + 32))(v142 + v140, v204, v135);
          v143 = v208;
          (*(v137 + 32))(v142 + v141, v138, v208);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
          lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
          v144 = v196;
          ComponentStack.init(content:)();
          v145 = v195;
          outlined init with copy of CycleTrackingLogModel(v163, v195, type metadata accessor for CycleTrackingLogSnippet);
          v146 = v216;
          v147 = v180;
          v148 = v166;
          (*(v216 + 16))(v180, v215, v166);
          v149 = (*(v193 + 80) + 16) & ~*(v193 + 80);
          v150 = (v194 + *(v146 + 80) + v149) & ~*(v146 + 80);
          v151 = swift_allocObject();
          outlined init with take of SnippetHeaderModel(v145, v151 + v149, type metadata accessor for CycleTrackingLogSnippet);
          v168(v151 + v150, v147, v148);
          v152 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
          v154 = v199;
          v153 = v200;
          View.componentTapped(isNavigation:perform:)();

          (*(v198 + 8))(v144, v153);
          v156 = v201;
          v155 = v202;
          (*(v201 + 16))(v197, v154, v202);
          v233 = v153;
          v234 = v152;
          swift_getOpaqueTypeConformance2();
          v157 = AnyView.init<A>(_:)();
          outlined consume of Text.Storage(v164, v172, v174);

          outlined consume of Text.Storage(v162, v171, v175);

          (*(v156 + 8))(v154, v155);
          (*(v210 + 8))(v209, v211);
          (*(v207 + 8))(v214, v143);
          outlined destroy of SnippetHeaderModel(v213, type metadata accessor for SnippetHeaderView);
          (*(v205 + 8))(v212, v206);
          (*(v146 + 8))(v215, v166);
          outlined destroy of SnippetHeaderModel(v170, type metadata accessor for SnippetHeaderModel);
          result = v157;
          goto LABEL_12;
        }

        (*(v68 + 8))(v72, v69);
        outlined destroy of SnippetHeaderModel(v65, type metadata accessor for SnippetHeaderModel);
        outlined destroy of AppPunchout?(v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        (*(v68 + 8))(v72, v69);
        outlined destroy of SnippetHeaderModel(v65, type metadata accessor for SnippetHeaderModel);
      }
    }
  }

  result = AnyView.init<A>(_:)();
LABEL_12:
  *v217 = result;
  return result;
}

uint64_t type metadata accessor for CycleTrackingLogSnippet()
{
  result = type metadata singleton initialization cache for CycleTrackingLogSnippet;
  if (!type metadata singleton initialization cache for CycleTrackingLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CycleTrackingLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v27 = v5;
  v29 = *(v5 - 8);
  v6 = v29;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v28 = v10;
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for SnippetHeaderView();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CycleTrackingLogModel(a1, v18, type metadata accessor for SnippetHeaderView);
  v19 = *(v11 + 16);
  v19(v14, v31, v10);
  v20 = *(v6 + 16);
  v20(v9, v32, v5);
  v21 = v33;
  outlined init with copy of CycleTrackingLogModel(v18, v33, type metadata accessor for SnippetHeaderView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v23 = v28;
  v19((v21 + *(v22 + 48)), v14, v28);
  v24 = v27;
  v20((v21 + *(v22 + 64)), v9, v27);
  (*(v29 + 8))(v9, v24);
  (*(v30 + 8))(v14, v23);
  return outlined destroy of SnippetHeaderModel(v18, type metadata accessor for SnippetHeaderView);
}

void closure #2 in CycleTrackingLogSnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for CycleTrackingLogSnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t CycleTrackingLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of SnippetHeaderModel(a1, a2, type metadata accessor for CycleTrackingLogModel);
  v3 = type metadata accessor for CycleTrackingLogSnippet();
  v4 = (a2 + *(v3 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  v6 = *(v3 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t partial apply for closure #1 in CycleTrackingLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in CycleTrackingLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of CycleTrackingLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in CycleTrackingLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for CycleTrackingLogSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in CycleTrackingLogSnippet.body.getter(v0 + v2);
}

uint64_t outlined init with take of SnippetHeaderModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for CycleTrackingLogSnippet()
{
  type metadata accessor for CycleTrackingLogModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t BloodPressureQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for BloodPressureQuerySnippet() + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of BloodPressureQueryModel(a1, a2, type metadata accessor for BloodPressureQueryModel);
}

uint64_t type metadata accessor for BloodPressureQuerySnippet()
{
  result = type metadata singleton initialization cache for BloodPressureQuerySnippet;
  if (!type metadata singleton initialization cache for BloodPressureQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v230 = a1;
  Snippet = type metadata accessor for BloodPressureQuerySnippet();
  v214 = *(Snippet - 8);
  v3 = *(v214 + 64);
  MEMORY[0x28223BE20](Snippet - 8);
  v215 = v4;
  v216 = &v179[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v220 = *(v5 - 8);
  v221 = v5;
  v6 = *(v220 + 64);
  MEMORY[0x28223BE20](v5);
  v217 = &v179[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v222 = *(v8 - 8);
  v223 = v8;
  v9 = *(v222 + 64);
  MEMORY[0x28223BE20](v8);
  v218 = &v179[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v219 = &v179[-v12];
  v13 = type metadata accessor for FactItemHeroNumberView();
  v204 = *(v13 - 8);
  v205 = v13;
  v14 = *(v204 + 64);
  MEMORY[0x28223BE20](v13);
  v203 = &v179[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v207 = *(v16 - 8);
  v208 = v16;
  v17 = *(v207 + 64);
  MEMORY[0x28223BE20](v16);
  v206 = &v179[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v224 = &v179[-v21];
  v22 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v225 = type metadata accessor for Font.TextStyle();
  v227 = *(v225 - 8);
  v24 = *(v227 + 64);
  MEMORY[0x28223BE20](v225);
  v26 = &v179[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v226 = &v179[-v28];
  v29 = type metadata accessor for SnippetHeaderView();
  v209 = *(v29 - 8);
  v30 = *(v209 + 64);
  MEMORY[0x28223BE20](v29);
  v210 = v31;
  v211 = &v179[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v228 = &v179[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v179[-v36];
  v38 = type metadata accessor for AppPunchout();
  v229 = *(v38 - 8);
  v39 = *(v229 + 64);
  MEMORY[0x28223BE20](v38);
  v212 = v40;
  v213 = &v179[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41);
  v43 = &v179[-v42];
  Model = type metadata accessor for BloodPressureQueryModel();
  v45 = (v1 + *(Model + 88));
  v46 = v45[1];
  if (!v46)
  {
    goto LABEL_5;
  }

  v47 = Model;
  v48 = v1 + *(Model + 84);
  if (!*(v48 + 8))
  {
    goto LABEL_5;
  }

  v201._object = *(v48 + 8);
  v202 = v43;
  v49 = *v45;
  v50 = *v48;
  v200 = v49;
  v201._countAndFlagsBits = v50;
  outlined init with copy of AppPunchout?(v1, v37, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v51 = v229;
  if ((*(v229 + 48))(v37, 1, v38) != 1)
  {
    v53 = v51 + 32;
    v54 = *(v51 + 32);
    v55 = v202;
    v198 = v53;
    v199 = v38;
    v197 = v54;
    v54(v202, v37, v38);
    v56 = v228;
    outlined init with copy of AppPunchout?(v1 + v47[23], v228, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v57 = *(v29 + 20);
    *&v56[v57] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v58 = *(v29 + 24);
    *&v56[v58] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v59 = (v1 + v47[13]);
    v60 = v59[1];
    if (v60 && (v61 = (v1 + v47[14]), (v62 = v61[1]) != 0) && (v63 = v1 + v47[15], (v64 = *(v63 + 8)) != 0) && (v65 = (v1 + v47[16]), (v66 = v65[1]) != 0))
    {
      v67 = *v59;
      v68 = *v61;
      v226 = *v63;
      v227 = *v65;
      *&v241 = v67;
      *(&v241 + 1) = v60;
      v69 = v1;
      v70 = v64;

      MEMORY[0x2743E0A10](9666786, 0xA300000000000000);
      MEMORY[0x2743E0A10](v68, v62);
      v71 = v241;
      *&v241 = v226;
      *(&v241 + 1) = v70;

      MEMORY[0x2743E0A10](9666786, 0xA300000000000000);
      MEMORY[0x2743E0A10](v227, v66);
      v72 = v47[19];
      v73 = (v1 + v47[18]);
      v74 = *v73;
      v75 = v73[1];
      v194 = v69;
      v76 = v69 + v72;
      v77 = *(v69 + v72);
      v78 = *(v76 + 8);
      *&v231 = v74;
      *(&v231 + 1) = v75;
      v232 = v71;
      v233 = 0u;
      v234 = 0u;
      *&v235 = v77;
      *(&v235 + 1) = v78;
      v236 = v241;
      v237 = 0u;
      v238 = 0u;
      *&v239 = v200;
      *(&v239 + 1) = v46;
      v240 = v201;
      lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView();

      v79 = View.eraseToAnyView()();
      v247 = v237;
      v248 = v238;
      v249 = v239;
      v250 = v240;
      v243 = v233;
      v244 = v234;
      v245 = v235;
      v246 = v236;
      v241 = v231;
      v242 = v232;
      outlined destroy of MultipleDataPointWithSubTypesView(&v241);
    }

    else
    {
      v80 = (v1 + v47[11]);
      v81 = v80[1];
      if (!v81 || (v82 = (v1 + v47[12]), (v83 = v82[1]) == 0))
      {
        v178 = AnyView.init<A>(_:)();
        outlined destroy of SnippetHeaderView(v228);
        (*(v229 + 8))(v55, v199);
        goto LABEL_17;
      }

      v194 = v1;
      v190 = *v80;
      v192 = *v82;
      v191 = v83;
      v189 = v81;
      v84 = v227;
      v85 = *(v227 + 104);
      v86 = v225;
      v85(v226, *MEMORY[0x277CE0A78], v225);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v87._countAndFlagsBits = 0;
      v87._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
      v88._countAndFlagsBits = v200;
      v88._object = v46;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v88);

      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
      LocalizedStringKey.init(stringInterpolation:)();
      v200 = Text.init(_:tableName:bundle:comment:)();
      v196 = v90;
      v92 = v91;
      v85(v26, *MEMORY[0x277CE0A60], v86);
      v186 = *MEMORY[0x277CE0998];
      v93 = v186;
      v94 = type metadata accessor for Font.Design();
      v95 = *(v94 - 8);
      v96 = *(v95 + 104);
      v185 = v95 + 104;
      v187 = v96;
      v97 = v224;
      v98 = v93;
      v99 = v94;
      v183 = v94;
      v96(v224, v98);
      v182 = *(v95 + 56);
      v184 = v95 + 56;
      v182(v97, 0, 1, v99);
      static Font.system(_:design:weight:)();
      outlined destroy of AppPunchout?(v97, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v100 = *(v84 + 8);
      v227 = v84 + 8;
      v193 = v100;
      v100(v26, v86);
      LOBYTE(v84) = v92;
      v101 = v200;
      v102 = v196;
      v103 = Text.font(_:)();
      v195 = v104;
      LOBYTE(v86) = v105;

      outlined consume of Text.Storage(v101, v102, v84 & 1);

      LODWORD(v241) = static HierarchicalShapeStyle.secondary.getter();
      v106 = v103;
      v107 = v195;
      v108 = Text.foregroundStyle<A>(_:)();
      v110 = v109;
      LOBYTE(v102) = v111;
      outlined consume of Text.Storage(v106, v107, v86 & 1);

      v195 = Text.bold()();
      v196 = v112;
      v188 = v113;
      v200 = v114;
      outlined consume of Text.Storage(v108, v110, v102 & 1);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v115);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v201);

      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v116);
      LocalizedStringKey.init(stringInterpolation:)();
      v117 = Text.init(_:tableName:bundle:comment:)();
      v201._countAndFlagsBits = v118;
      v201._object = v117;
      v180 = v119;
      v181 = v120;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v121._countAndFlagsBits = 0;
      v121._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v121);
      v122._object = v189;
      v122._countAndFlagsBits = v190;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v122);
      v123._countAndFlagsBits = 47;
      v123._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v123);
      v124._object = v191;
      v124._countAndFlagsBits = v192;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v124);
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v125);
      LocalizedStringKey.init(stringInterpolation:)();
      v126 = Text.init(_:tableName:bundle:comment:)();
      v128 = v127;
      LOBYTE(v108) = v129;
      v130 = v224;
      v131 = v183;
      v187(v224, v186, v183);
      v182(v130, 0, 1, v131);
      static Font.system(_:design:weight:)();
      outlined destroy of AppPunchout?(v130, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v132 = Text.font(_:)();
      v134 = v133;
      v136 = v135;

      outlined consume of Text.Storage(v126, v128, v108 & 1);

      v137 = Text.bold()();
      v139 = v138;
      v190 = v138;
      LOBYTE(v108) = v140;
      v142 = v141;
      v224 = v141;
      outlined consume of Text.Storage(v132, v134, v136 & 1);

      v143 = MEMORY[0x277CE0BD0];
      v144 = MEMORY[0x277D638F0];
      *(&v242 + 1) = MEMORY[0x277CE0BD0];
      *&v243 = MEMORY[0x277D638F0];
      v145 = swift_allocObject();
      *&v241 = v145;
      *(v145 + 16) = v137;
      *(v145 + 24) = v139;
      v146 = v137;
      v192 = v137;
      LODWORD(v108) = v108 & 1;
      *(v145 + 32) = v108;
      LODWORD(v191) = v108;
      *(v145 + 40) = v142;
      *(&v232 + 1) = v143;
      *&v233 = v144;
      v147 = swift_allocObject();
      *&v231 = v147;
      v149 = v195;
      v148 = v196;
      *(v147 + 16) = v195;
      *(v147 + 24) = v148;
      LODWORD(v189) = v188 & 1;
      *(v147 + 32) = v188 & 1;
      *(v147 + 40) = v200;
      v262 = 0;
      v260 = 0u;
      v261 = 0u;
      v258 = v143;
      v259 = v144;
      v150 = swift_allocObject();
      v256 = 0;
      v257 = v150;
      object = v201._object;
      countAndFlagsBits = v201._countAndFlagsBits;
      *(v150 + 16) = v201._object;
      *(v150 + 24) = countAndFlagsBits;
      LOBYTE(v86) = v180 & 1;
      *(v150 + 32) = v180 & 1;
      *(v150 + 40) = v181;
      v254 = 0u;
      v255 = 0u;
      v253 = 0;
      v251 = 0u;
      v252 = 0u;
      v153 = v146;
      v154 = v190;
      outlined copy of Text.Storage(v153, v190, v108);

      LOBYTE(v108) = v189;
      outlined copy of Text.Storage(v149, v148, v189);

      outlined copy of Text.Storage(object, countAndFlagsBits, v86);

      v155 = v203;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v156 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
      v158 = v205;
      v157 = v206;
      View.componentSpacing(top:bottom:)();
      (*(v204 + 8))(v155, v158);
      *&v241 = v158;
      *(&v241 + 1) = v156;
      swift_getOpaqueTypeConformance2();
      v159 = v208;
      v79 = View.eraseToAnyView()();
      outlined consume of Text.Storage(v201._object, v201._countAndFlagsBits, v86);

      outlined consume of Text.Storage(v195, v196, v108);

      outlined consume of Text.Storage(v192, v154, v191);

      (*(v207 + 8))(v157, v159);
      v193(v226, v225);
    }

    v160 = v199;
    v161 = v211;
    outlined init with copy of BloodPressureQueryModel(v228, v211, type metadata accessor for SnippetHeaderView);
    v162 = (*(v209 + 80) + 16) & ~*(v209 + 80);
    v163 = (v210 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
    v164 = swift_allocObject();
    outlined init with take of BloodPressureQueryModel(v161, v164 + v162, type metadata accessor for SnippetHeaderView);
    v227 = v79;
    *(v164 + v163) = v79;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    v165 = v217;
    ComponentStack.init(content:)();
    v166 = v216;
    outlined init with copy of BloodPressureQueryModel(v194, v216, type metadata accessor for BloodPressureQuerySnippet);
    v167 = v229;
    v168 = v213;
    (*(v229 + 16))(v213, v202, v160);
    v169 = (*(v214 + 80) + 16) & ~*(v214 + 80);
    v170 = (v215 + *(v167 + 80) + v169) & ~*(v167 + 80);
    v171 = swift_allocObject();
    outlined init with take of BloodPressureQueryModel(v166, v171 + v169, type metadata accessor for BloodPressureQuerySnippet);
    v197(v171 + v170, v168, v160);
    v172 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
    v173 = v219;
    v174 = v221;
    View.componentTapped(isNavigation:perform:)();

    (*(v220 + 8))(v165, v174);
    v175 = v160;
    v177 = v222;
    v176 = v223;
    (*(v222 + 16))(v218, v173, v223);
    *&v241 = v174;
    *(&v241 + 1) = v172;
    swift_getOpaqueTypeConformance2();
    v178 = AnyView.init<A>(_:)();

    (*(v177 + 8))(v173, v176);
    outlined destroy of SnippetHeaderView(v228);
    (*(v167 + 8))(v202, v175);
LABEL_17:
    result = v178;
    goto LABEL_6;
  }

  outlined destroy of AppPunchout?(v37, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_5:
  result = AnyView.init<A>(_:)();
LABEL_6:
  *v230 = result;
  return result;
}

uint64_t closure #1 in BloodPressureQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BloodPressureQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  outlined init with copy of BloodPressureQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in BloodPressureQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for BloodPressureQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in BloodPressureQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in BloodPressureQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of BloodPressureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BloodPressureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in BloodPressureQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for BloodPressureQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in BloodPressureQuerySnippet.body.getter(v0 + v2);
}

void type metadata completion function for BloodPressureQuerySnippet()
{
  type metadata accessor for BloodPressureQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall GenericBinaryButtonModel.init(invocationIdentifier:primaryButtonLabel:secondaryButtonLabel:isSmartEnabled:)(WellnessUI::GenericBinaryButtonModel *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String primaryButtonLabel, Swift::String secondaryButtonLabel, Swift::Bool isSmartEnabled)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->primaryButtonLabel = primaryButtonLabel;
  retstr->secondaryButtonLabel = secondaryButtonLabel;
  retstr->isSmartEnabled = isSmartEnabled;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GenericBinaryButtonModel.CodingKeys()
{
  v1 = 0x457472616D537369;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericBinaryButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GenericBinaryButtonModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v16 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v13 = v15[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

uint64_t GenericBinaryButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v12;
  v31 = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v14;
  v25 = v13;
  v30 = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v15;
  v29 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v18 = v17 & 1;
  v20 = v27;
  v19 = v28;
  *a2 = v11;
  *(a2 + 8) = v19;
  v21 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v20;
  v22 = v26;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonModel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GenericBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000273EB1270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB12B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t TemperatureQueryModel.averageValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for TemperatureQueryModel()
{
  result = type metadata singleton initialization cache for TemperatureQueryModel;
  if (!type metadata singleton initialization cache for TemperatureQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.maxValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TemperatureQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.minValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TemperatureQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.averageValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.maxValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.minValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.mostRecentValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.averageLabelString.getter()
{
  v1 = (v0 + *(type metadata accessor for TemperatureQueryModel() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TemperatureQueryModel.averageLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel() + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TemperatureQueryModel.init(averageValue:maxValue:minValue:mostRecentValue:basalTemperatureValue:unitString:dateLabel:url:averageLabelString:headerModel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  LODWORD(v88) = a8;
  v84 = a6;
  v82 = a2;
  LODWORD(v83) = a4;
  v86 = a7;
  v87 = a10;
  v94 = a16;
  v95 = a17;
  v92 = a14;
  v93 = a15;
  v96 = a13;
  v97 = a12;
  LODWORD(v85) = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v75 - v23;
  v90 = type metadata accessor for AppPunchout();
  v25 = *(v90 - 8);
  v89 = *(v25 + 56);
  v91 = v25 + 56;
  v89(a9, 1, 1, v90);
  Model = type metadata accessor for TemperatureQueryModel();
  v27 = Model[10];
  v76 = v27;
  v28 = type metadata accessor for SpeakableString();
  v29 = *(*(v28 - 8) + 56);
  v29(a9 + v27, 1, 1, v28);
  v30 = Model[16];
  v29(a9 + v30, 1, 1, v28);
  v31 = Model[18];
  v81 = v31;
  v32 = type metadata accessor for SnippetHeaderModel();
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v82;
  if (v82)
  {
    v35 = a1;
  }

  else
  {
    v35 = v33;
  }

  v78 = v35;
  v36 = a9 + Model[5];
  *v36 = v35;
  v77 = v34 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v36 + 8) = v77;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = a3;
  }

  else
  {
    v37 = 0;
  }

  v38 = v83;
  if (v83)
  {
    v39 = a3;
  }

  else
  {
    v39 = v37;
  }

  v80 = v39;
  v40 = a9 + Model[6];
  *v40 = v39;
  v79 = v38 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v40 + 8) = v79;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v41 = a5;
  }

  else
  {
    v41 = 0;
  }

  v42 = v84;
  if (v84)
  {
    v43 = a5;
  }

  else
  {
    v43 = v41;
  }

  v83 = v43;
  v44 = a9 + Model[7];
  *v44 = v43;
  v82 = v42 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v44 + 8) = v82;
  v45 = (v86 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v86 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v46 = v86;
  }

  else
  {
    v46 = 0;
  }

  v47 = v86;
  v48 = v88;
  if ((v88 & 1) == 0)
  {
    v47 = v46;
  }

  v86 = v47;
  v49 = a9 + Model[8];
  *v49 = v47;
  v84 = (v48 | v45) & 1;
  *(v49 + 8) = v84;
  v50 = (v87 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v87 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v51 = v87;
  }

  else
  {
    v51 = 0;
  }

  v52 = v85;
  if (v85)
  {
    v53 = v87;
  }

  else
  {
    v53 = v51;
  }

  v54 = a9 + Model[9];
  v55 = (a9 + Model[11]);
  v56 = (a9 + Model[12]);
  v57 = (a9 + Model[13]);
  v85 = (a9 + Model[14]);
  v58 = (a9 + Model[15]);
  v87 = v53;
  v88 = v58;
  v59 = (a9 + Model[17]);
  *v54 = v53;
  v60 = (v52 | v50) & 1;
  *(v54 + 8) = v60;
  outlined assign with copy of SpeakableString?(v97, a9 + v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined assign with copy of SpeakableString?(v96, a9 + v76, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v61 = v92;
  TemperatureQueryModel.createAppPunchout(url:)(v92);
  v89(v24, 0, 1, v90);
  outlined assign with take of AppPunchout?(v24, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v62 = v94;
  *v59 = v93;
  v59[1] = v62;
  v63 = v95;
  outlined assign with copy of SpeakableString?(v95, a9 + v81, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v55 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v78, v77, a9 + v30, 1);
  v55[1] = v64;
  *v56 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v80, v79, a9 + v30, 1);
  v56[1] = v65;
  *v57 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v83, v82, a9 + v30, 0);
  v57[1] = v66;
  v67 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v86, v84, a9 + v30, 1);
  v68 = v85;
  *v85 = v67;
  v68[1] = v69;
  v70 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v87, v60, a9 + v30, 1);
  v72 = v71;
  outlined destroy of AppPunchout?(v63, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v96, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v97, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v74 = v88;
  *v88 = v70;
  v74[1] = v72;
  return result;
}

uint64_t TemperatureQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if (a2)
  {
    return 0;
  }

  v13 = type metadata accessor for DialogPreciseTemperature.Builder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  MEMORY[0x2743E0100]();
  dispatch thunk of DialogConvertibleMeasurement.Builder.withValue(_:)();

  dispatch thunk of DialogConvertibleMeasurement.Builder.withUnits(_:)();

  dispatch thunk of DialogConvertibleMeasurement.Builder.build()();

  if (a4)
  {
    dispatch thunk of DialogPreciseTemperature.longSpokenTwoDigits.getter();
    v16 = type metadata accessor for SpeakableString();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {

      v18 = v12;
LABEL_7:
      outlined destroy of AppPunchout?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return 0;
    }

    v22 = SpeakableString.print.getter();

    (*(v17 + 8))(v12, v16);
  }

  else
  {
    dispatch thunk of DialogPreciseTemperature.mediumSpokenTwoDigits.getter();
    v19 = type metadata accessor for SpeakableString();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) == 1)
    {

      v18 = v9;
      goto LABEL_7;
    }

    v22 = SpeakableString.print.getter();

    (*(v20 + 8))(v9, v19);
  }

  return v22;
}

uint64_t TemperatureQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
    case 10:
      return 0xD000000000000015;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_17;
    case 9:
      v3 = 1450076525;
LABEL_17:
      result = v3 | 0x65756C6100000000;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x6972745374696E75;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TemperatureQueryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TemperatureQueryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TemperatureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TemperatureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49[31] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    Model = type metadata accessor for TemperatureQueryModel();
    v12 = (v3 + Model[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v49[30] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + Model[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v49[29] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + Model[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v49[28] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + Model[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v49[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + Model[9]);
    v25 = *v24;
    v26 = *(v24 + 8);
    v49[26] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = Model[10];
    v49[25] = 6;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = (v3 + Model[11]);
    v29 = *v28;
    v30 = v28[1];
    v49[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + Model[12]);
    v32 = *v31;
    v33 = v31[1];
    v49[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v3 + Model[13]);
    v35 = *v34;
    v36 = v34[1];
    v49[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = (v3 + Model[14]);
    v38 = *v37;
    v39 = v37[1];
    v49[13] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = (v3 + Model[15]);
    v41 = *v40;
    v42 = v40[1];
    v49[12] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = Model[16];
    v49[11] = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v44 = (v3 + Model[17]);
    v45 = *v44;
    v46 = v44[1];
    v49[10] = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = Model[18];
    v49[9] = 14;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

uint64_t TemperatureQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v86 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v87 = v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMR);
  v102 = *(v13 - 8);
  v103 = v13;
  v14 = *(v102 + 64);
  MEMORY[0x28223BE20](v13);
  v106 = v83 - v15;
  Model = type metadata accessor for TemperatureQueryModel();
  v17 = (Model - 8);
  v18 = *(*(Model - 8) + 64);
  MEMORY[0x28223BE20](Model);
  v20 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppPunchout();
  v22 = *(*(v21 - 8) + 56);
  v98 = v21;
  v22(v20, 1, 1);
  v23 = &v20[v17[7]];
  *v23 = 0;
  v97 = v23;
  v23[8] = 1;
  v24 = &v20[v17[8]];
  *v24 = 0;
  v96 = v24;
  v24[8] = 1;
  v25 = &v20[v17[9]];
  *v25 = 0;
  v95 = v25;
  v25[8] = 1;
  v26 = &v20[v17[10]];
  *v26 = 0;
  v94 = v26;
  v26[8] = 1;
  v27 = &v20[v17[11]];
  *v27 = 0;
  v93 = v27;
  v27[8] = 1;
  v28 = v17[12];
  v29 = type metadata accessor for SpeakableString();
  v30 = *(*(v29 - 8) + 56);
  v92 = v28;
  v30(&v20[v28], 1, 1, v29);
  v31 = &v20[v17[13]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v91 = v31;
  v32 = &v20[v17[14]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v90 = v32;
  v33 = &v20[v17[15]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v89 = v33;
  v34 = &v20[v17[16]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v20[v17[17]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v88 = v17[18];
  v30(&v20[v88], 1, 1, v29);
  v36 = &v20[v17[19]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = v17[20];
  v38 = type metadata accessor for SnippetHeaderModel();
  v39 = *(*(v38 - 8) + 56);
  v105 = v20;
  v85 = v37;
  v39(&v20[v37], 1, 1, v38);
  v40 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();
  v41 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    v82 = v105;
  }

  else
  {
    v42 = v96;
    v43 = v97;
    v104 = v34;
    v84 = v35;
    v44 = v99;
    v83[0] = v36;
    v83[1] = v38;
    v45 = v100;
    v46 = v102;
    v122 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    v47 = v101;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v47;
    v50 = v105;
    outlined assign with take of AppPunchout?(v49, v105, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v121 = 1;
    *v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43[8] = v51 & 1;
    v120 = 2;
    *v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42[8] = v52 & 1;
    v119 = 3;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v95;
    *v95 = v53;
    *(v54 + 8) = v55 & 1;
    v118 = 4;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v94;
    *v94 = v56;
    *(v57 + 8) = v58 & 1;
    v117 = 5;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = v93;
    *v93 = v59;
    *(v60 + 8) = v61 & 1;
    v116 = 6;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v44, v50 + v92, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v115 = 7;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v91;
    *v91 = v62;
    v63[1] = v64;
    v114 = 8;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v90;
    *v90 = v65;
    v66[1] = v67;
    v113 = 9;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v89;
    *v89 = v68;
    v69[1] = v70;
    v112 = 10;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v104;
    *v104 = v71;
    v72[1] = v73;
    v111 = 11;
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v75 = v84;
    *v84 = v74;
    v75[1] = v76;
    v110 = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v45, &v105[v88], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v109 = 13;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v83[0];
    *v83[0] = v77;
    *(v78 + 8) = v79;
    v108 = 14;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    v80 = v103;
    v81 = v106;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v46 + 8))(v81, v80);
    v82 = v105;
    outlined assign with take of AppPunchout?(v87, &v105[v85], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of TemperatureQueryModel(v82, v86);
  }

  __swift_destroy_boxed_opaque_existential_1(v107);
  return outlined destroy of TemperatureQueryModel(v82);
}

uint64_t outlined destroy of TemperatureQueryModel(uint64_t a1)
{
  Model = type metadata accessor for TemperatureQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of TemperatureQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for TemperatureQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for TemperatureQueryModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t specialized TemperatureQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB12D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB1090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000273EB12F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB10D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t WatchRingsModel.exerciseGoalValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t WatchRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standGoalValue.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t WatchRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standTotalValue.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t WatchRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void __swiftcall WatchRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:)(WellnessUI::WatchRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  BYTE2(retstr[1].exerciseGoalValue.value) = 0;
  *(&retstr[1].exerciseTotalValue.value + 1) = standGoalValue;
  LOBYTE(retstr[1].moveGoalValue.value) = 0;
  *&retstr[1].moveGoalValue.is_nil = standTotalValue;
  HIBYTE(retstr[1].moveTotalValue.value) = 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WatchRingsModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C616F4765766F6DLL;
  v3 = 0x61746F5465766F6DLL;
  v4 = 0x616F47646E617473;
  if (v1 != 4)
  {
    v4 = 0x746F54646E617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchRingsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WatchRingsModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchRingsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v23 = v1[2];
  v22 = *(v1 + 24);
  v21 = v1[4];
  v20 = *(v1 + 40);
  v19 = v1[6];
  v18 = *(v1 + 56);
  v17 = v1[8];
  v10 = *(v1 + 72);
  v14 = v1[10];
  v15 = *(v1 + 88);
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = 0;
  v12 = v24;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v29 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v28 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v27 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v26 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v25 = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

uint64_t WatchRingsModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v45 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v12 & 1;
    v44 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v14 & 1;
    v43 = 2;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v16 & 1;
    v42 = 3;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v17 & 1;
    v41 = 4;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v19 & 1;
    v40 = 5;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = *(v6 + 8);
    v31 = v20;
    v22 = v9;
    v24 = v23;
    v21(v22, v5);
    v34 = v24 & 1;
    v25 = v39;
    v26 = v38;
    v27 = v37;
    v28 = v36;
    v29 = v35;
    *a2 = v11;
    *(a2 + 8) = v25;
    *(a2 + 16) = v13;
    *(a2 + 24) = v26;
    *(a2 + 32) = v15;
    *(a2 + 40) = v27;
    v30 = v32;
    *(a2 + 48) = v33;
    *(a2 + 56) = v28;
    *(a2 + 64) = v30;
    *(a2 + 72) = v29;
    *(a2 + 80) = v31;
    *(a2 + 88) = v24 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WatchRingsModel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WatchRingsModel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WatchRingsModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchRingsModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized WatchRingsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000273EB1310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t OxygenSaturationQueryModel.averageValue.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for OxygenSaturationQueryModel()
{
  result = type metadata singleton initialization cache for OxygenSaturationQueryModel;
  if (!type metadata singleton initialization cache for OxygenSaturationQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValue.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.minValue.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OxygenSaturationQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValue.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.averageValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.minValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.unit.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.averageLabelString.getter()
{
  v1 = (v0 + *(type metadata accessor for OxygenSaturationQueryModel() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OxygenSaturationQueryModel.averageLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OxygenSaturationQueryModel.init(averageValue:maxValue:minValue:mostRecentValue:unit:dateLabel:url:averageLabelString:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v81) = a8;
  LODWORD(v77) = a6;
  v87 = a15;
  v88 = a16;
  v85 = a13;
  v86 = a14;
  v83 = a11;
  v84 = a12;
  v82 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - v25;
  v79 = type metadata accessor for AppPunchout();
  v27 = *(v79 - 8);
  v78 = *(v27 + 56);
  v80 = v27 + 56;
  v78(a9, 1, 1, v79);
  Model = type metadata accessor for OxygenSaturationQueryModel();
  v29 = Model[9];
  v70 = v29;
  v30 = type metadata accessor for SpeakableString();
  (*(*(v30 - 8) + 56))(a9 + v29, 1, 1, v30);
  v31 = Model[16];
  v76 = v31;
  v32 = type metadata accessor for SnippetHeaderModel();
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = 0;
  }

  if (a2)
  {
    v34 = a1;
  }

  else
  {
    v34 = v33;
  }

  v75 = v34;
  v35 = a9 + Model[5];
  *v35 = v34;
  v73 = a2 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v35 + 8) = v73;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = 0;
  }

  if (a4)
  {
    v37 = a3;
  }

  else
  {
    v37 = v36;
  }

  v74 = v37;
  v38 = a9 + Model[6];
  *v38 = v37;
  v71 = a4 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v38 + 8) = v71;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = a5;
  }

  else
  {
    v39 = 0;
  }

  v40 = v77;
  if (v77)
  {
    v41 = a5;
  }

  else
  {
    v41 = v39;
  }

  v72 = v41;
  v42 = a9 + Model[7];
  *v42 = v41;
  v43 = v40 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v42 + 8) = v43;
  v44 = (a7 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v45 = a7;
  }

  else
  {
    v45 = 0;
  }

  v46 = v81;
  if (v81)
  {
    v47 = a7;
  }

  else
  {
    v47 = v45;
  }

  v77 = v47;
  v48 = a9 + Model[8];
  v49 = Model[14];
  v50 = Model[15];
  v51 = (a9 + Model[10]);
  v52 = (a9 + Model[11]);
  v53 = (a9 + Model[12]);
  v81 = (a9 + Model[13]);
  *v48 = v47;
  v54 = (v46 | v44) & 1;
  *(v48 + 8) = v54;
  v55 = (a9 + v49);
  v56 = (a9 + v50);
  v57 = v83;
  *v55 = v82;
  v55[1] = v57;
  v58 = v84;
  outlined assign with copy of SpeakableString?(v84, a9 + v70, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v59 = v85;
  OxygenSaturationQueryModel.createAppPunchout(url:)(v85);
  v78(v26, 0, 1, v79);
  outlined assign with take of AppPunchout?(v26, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v60 = v87;
  *v56 = v86;
  v56[1] = v60;
  v61 = v88;
  outlined assign with copy of SpeakableString?(v88, a9 + v76, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v51 = GenericQueryModel.roundUp(inputValue:)(v75, v73);
  v51[1] = v62;
  *v52 = GenericQueryModel.roundUp(inputValue:)(v74, v71);
  v52[1] = v63;
  *v53 = GenericQueryModel.roundUp(inputValue:)(v72, v43);
  v53[1] = v64;
  v65 = GenericQueryModel.roundUp(inputValue:)(v77, v54);
  v67 = v66;
  outlined destroy of AppPunchout?(v61, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v59, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = outlined destroy of AppPunchout?(v58, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v69 = v81;
  *v81 = v65;
  v69[1] = v67;
  return result;
}

uint64_t OxygenSaturationQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AppPunchout?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t OxygenSaturationQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_16;
    case 8:
      v4 = 1450076525;
LABEL_16:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 1953066613;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OxygenSaturationQueryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized OxygenSaturationQueryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OxygenSaturationQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OxygenSaturationQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OxygenSaturationQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v45[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    Model = type metadata accessor for OxygenSaturationQueryModel();
    v12 = (v3 + Model[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v45[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + Model[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v45[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + Model[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v45[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + Model[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v45[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = Model[9];
    v45[10] = 5;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = (v3 + Model[10]);
    v26 = *v25;
    v27 = v25[1];
    v45[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = (v3 + Model[11]);
    v29 = *v28;
    v30 = v28[1];
    v45[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + Model[12]);
    v32 = *v31;
    v33 = v31[1];
    v45[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v3 + Model[13]);
    v35 = *v34;
    v36 = v34[1];
    v45[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = (v3 + Model[14]);
    v38 = *v37;
    v39 = v37[1];
    v45[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = (v3 + Model[15]);
    v41 = *v40;
    v42 = v40[1];
    v45[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = Model[16];
    v45[3] = 12;
    type metadata accessor for SnippetHeaderModel();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v78 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v74 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMR);
  v88 = *(v91 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v91);
  v94 = &v74 - v12;
  Model = type metadata accessor for OxygenSaturationQueryModel();
  v14 = (Model - 8);
  v15 = *(*(Model - 8) + 64);
  MEMORY[0x28223BE20](Model);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPunchout();
  v19 = *(*(v18 - 8) + 56);
  v87 = v18;
  v19(v17, 1, 1);
  v20 = &v17[v14[7]];
  *v20 = 0;
  v86 = v20;
  v20[8] = 1;
  v21 = &v17[v14[8]];
  *v21 = 0;
  v85 = v21;
  v21[8] = 1;
  v22 = &v17[v14[9]];
  *v22 = 0;
  v84 = v22;
  v22[8] = 1;
  v23 = &v17[v14[10]];
  *v23 = 0;
  v82 = v23;
  v23[8] = 1;
  v24 = v14[11];
  v25 = type metadata accessor for SpeakableString();
  v26 = *(*(v25 - 8) + 56);
  v81 = v24;
  v83 = v25;
  v26(&v17[v24], 1, 1);
  v27 = &v17[v14[12]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v80 = v27;
  v28 = &v17[v14[13]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v17[v14[14]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v17[v14[15]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v17[v14[16]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v17[v14[17]];
  *v32 = 0;
  v32[1] = 0;
  v33 = v14[18];
  v34 = type metadata accessor for SnippetHeaderModel();
  v35 = *(*(v34 - 8) + 56);
  v93 = v17;
  v77 = v33;
  v35(&v17[v33], 1, 1, v34);
  v36 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();
  v37 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    v73 = v93;
  }

  else
  {
    v38 = v86;
    v92 = v28;
    v76 = v29;
    v75 = v30;
    v74 = v31;
    v39 = v88;
    v40 = v89;
    v108 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880]);
    v41 = v90;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v41;
    v44 = v93;
    outlined assign with take of AppPunchout?(v43, v93, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v107 = 1;
    *v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38[8] = v45 & 1;
    v106 = 2;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v85;
    *v85 = v46;
    *(v47 + 8) = v48 & 1;
    v105 = 3;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v84;
    *v84 = v49;
    *(v50 + 8) = v51 & 1;
    v104 = 4;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v82;
    *v82 = v52;
    *(v53 + 8) = v54 & 1;
    v103 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v40, v44 + v81, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v102 = 6;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v80;
    *v80 = v55;
    v56[1] = v57;
    v101 = 7;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v92;
    *v92 = v58;
    v59[1] = v60;
    v100 = 8;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v76;
    *v76 = v61;
    v62[1] = v63;
    v99 = 9;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v75;
    *v75 = v64;
    v65[1] = v66;
    v98 = 10;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = v74;
    *v74 = v67;
    v68[1] = v69;
    v97 = 11;
    *v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[1] = v70;
    v96 = 12;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel);
    v71 = v91;
    v72 = v94;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v39 + 8))(v72, v71);
    v73 = v93;
    outlined assign with take of AppPunchout?(v79, &v93[v77], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of OxygenSaturationQueryModel(v73, v78);
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
  return outlined destroy of OxygenSaturationQueryModel(v73);
}

uint64_t outlined destroy of OxygenSaturationQueryModel(uint64_t a1)
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for OxygenSaturationQueryModel()
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized OxygenSaturationQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB1090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB10D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
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

uint64_t OxygenSaturationQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for OxygenSaturationQuerySnippet() + 20));
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of OxygenSaturationQueryModel(a1, a2, type metadata accessor for OxygenSaturationQueryModel);
}

uint64_t type metadata accessor for OxygenSaturationQuerySnippet()
{
  result = type metadata singleton initialization cache for OxygenSaturationQuerySnippet;
  if (!type metadata singleton initialization cache for OxygenSaturationQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v166 = a1;
  Snippet = type metadata accessor for OxygenSaturationQuerySnippet();
  v153 = *(Snippet - 8);
  v3 = *(v153 + 64);
  MEMORY[0x28223BE20](Snippet - 8);
  v154 = v4;
  v155 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v159 = *(v5 - 8);
  v160 = v5;
  v6 = *(v159 + 64);
  MEMORY[0x28223BE20](v5);
  v156 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v161 = *(v8 - 8);
  v162 = v8;
  v9 = *(v161 + 64);
  MEMORY[0x28223BE20](v8);
  v157 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v158 = &v130 - v12;
  v145 = type metadata accessor for SingleDataPointView();
  v13 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v144 = (&v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for MultipleDataPointView();
  v15 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v146 = (&v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v147 = &v130 - v18;
  v19 = type metadata accessor for SnippetHeaderView();
  v149 = *(v19 - 8);
  v20 = *(v149 + 64);
  MEMORY[0x28223BE20](v19);
  v150 = v21;
  v151 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v163 = &v130 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v130 - v26;
  v28 = type metadata accessor for AppPunchout();
  v164 = *(v28 - 8);
  v165 = v28;
  v29 = *(v164 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v130 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v130 - v37;
  v39 = type metadata accessor for SpeakableString();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for OxygenSaturationQueryModel();
  v45 = (v1 + *(Model + 56));
  if (!v45[1])
  {
    goto LABEL_7;
  }

  v46 = Model;
  v143 = v45[1];
  v142 = *v45;
  outlined init with copy of AppPunchout?(v1 + *(Model + 36), v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if ((*(v40 + 48))(v38, 1, v39) != 1)
  {
    v141 = v31;
    v50 = v34;
    (*(v40 + 32))(v43, v38, v39);
    outlined init with copy of AppPunchout?(v1, v27, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v52 = v164;
    v51 = v165;
    if ((*(v164 + 48))(v27, 1, v165) == 1)
    {
      (*(v40 + 8))(v43, v39);
      v47 = &_s10SnippetKit11AppPunchoutVSgMd;
      v48 = &_s10SnippetKit11AppPunchoutVSgMR;
      v49 = v27;
      goto LABEL_6;
    }

    v139 = v39;
    v54 = v52 + 32;
    v55 = *(v52 + 32);
    v56 = v50;
    v138 = v54;
    v137 = v55;
    v55(v50, v27, v51);
    v57 = v163;
    outlined init with copy of AppPunchout?(v1 + v46[16], v163, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v58 = *(v19 + 20);
    *(v57 + v58) = swift_getKeyPath();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v60 = *(v19 + 24);
    *(v57 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v61 = v1 + v46[5];
    v62 = *(v61 + 8);
    v63 = v43;
    v140 = v56;
    if ((v62 & 1) == 0)
    {
      v64 = *v61;
      if (*v61 > 0.0)
      {
        v65 = (v1 + v46[12]);
        v66 = *v65;
        v67 = v65[1];
        if (v67)
        {
          v68 = v46[11];
          v69 = *(v1 + v68 + 8);
          if (v69)
          {
            v144 = v66;
            v134 = v59;
            v136 = v40;
            v70 = v46[10];
            v71 = *(v1 + v70 + 8);
LABEL_16:
            v131 = *(v1 + v70);
            v133 = *(v1 + v68);

            v72 = v143;

            v73 = v71;
            v74 = SpeakableString.print.getter();
            v145 = v63;
            v75 = v74;
            v130 = v76;
            v77 = v46[15];
            v135 = v1;
            v78 = (v1 + v77);
            v79 = v78[1];
            v132 = *v78;
            type metadata accessor for Context();
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);

            v80 = EnvironmentObject.init()();
            v81 = v67;
            v82 = v146;
            *v146 = v80;
            *(v82 + 8) = v83;
            v84 = v148;
            v85 = *(v148 + 20);
            *(v82 + v85) = swift_getKeyPath();
            swift_storeEnumTagMultiPayload();
            v86 = v82 + v84[6];
            *v86 = v64;
            *(v86 + 8) = 0;
            v87 = (v82 + v84[7]);
            *v87 = v131;
            v87[1] = v73;
            v88 = (v82 + v84[8]);
            *v88 = v144;
            v88[1] = v81;
            v89 = (v82 + v84[9]);
            *v89 = v133;
            v89[1] = v69;
            v90 = (v82 + v84[10]);
            *v90 = 0;
            v90[1] = 0;
            v91 = (v82 + v84[11]);
            *v91 = v142;
            v91[1] = v72;
            v92 = (v82 + v84[12]);
            v93 = v130;
            *v92 = v75;
            v92[1] = v93;
            *(v82 + v84[13]) = 1;
            v94 = 0x65676172657641;
            if (v79)
            {
              v94 = v132;
            }

            v95 = 0xE700000000000000;
            if (v79)
            {
              v95 = v79;
            }

            v96 = (v82 + v84[14]);
            *v96 = v94;
            v96[1] = v95;
            outlined init with take of OxygenSaturationQueryModel(v82, v147, type metadata accessor for MultipleDataPointView);
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MultipleDataPointView and conformance MultipleDataPointView, type metadata accessor for MultipleDataPointView);
            v97 = AnyView.init<A>(_:)();
            v56 = v140;
LABEL_23:
            v110 = v151;
            outlined init with copy of OxygenSaturationQueryModel(v163, v151, type metadata accessor for SnippetHeaderView);
            v111 = (*(v149 + 80) + 16) & ~*(v149 + 80);
            v112 = (v150 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
            v113 = swift_allocObject();
            outlined init with take of OxygenSaturationQueryModel(v110, v113 + v111, type metadata accessor for SnippetHeaderView);
            *(v113 + v112) = v97;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
            lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
            v114 = v156;
            ComponentStack.init(content:)();
            v115 = v155;
            outlined init with copy of OxygenSaturationQueryModel(v135, v155, type metadata accessor for OxygenSaturationQuerySnippet);
            v116 = v164;
            v117 = v141;
            v118 = v56;
            v119 = v165;
            (*(v164 + 16))(v141, v118, v165);
            v120 = (*(v153 + 80) + 16) & ~*(v153 + 80);
            v121 = (v154 + *(v116 + 80) + v120) & ~*(v116 + 80);
            v122 = swift_allocObject();
            outlined init with take of OxygenSaturationQueryModel(v115, v122 + v120, type metadata accessor for OxygenSaturationQuerySnippet);
            v137(v122 + v121, v117, v119);
            v123 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
            v124 = v158;
            v125 = v160;
            View.componentTapped(isNavigation:perform:)();

            (*(v159 + 8))(v114, v125);
            v127 = v161;
            v126 = v162;
            (*(v161 + 16))(v157, v124, v162);
            v167 = v125;
            v168 = v123;
            swift_getOpaqueTypeConformance2();
            v128 = AnyView.init<A>(_:)();

            (*(v127 + 8))(v124, v126);
            outlined destroy of SnippetHeaderView(v163);
            (*(v116 + 8))(v140, v119);
            (*(v136 + 8))(v145, v139);
            result = v128;
            goto LABEL_8;
          }
        }

        v70 = v46[10];
        v71 = *(v1 + v70 + 8);
        if (v71)
        {
          v144 = v66;
          v134 = v59;
          v136 = v40;
          v68 = v46[11];
          v69 = *(v1 + v68 + 8);
          goto LABEL_16;
        }
      }
    }

    v98 = (v1 + v46[13]);
    v99 = v98[1];
    if (!v99)
    {
      v129 = AnyView.init<A>(_:)();
      outlined destroy of SnippetHeaderView(v163);
      (*(v164 + 8))(v56, v165);
      (*(v40 + 8))(v63, v139);
      result = v129;
      goto LABEL_8;
    }

    v136 = v40;
    v100 = *v98;

    v101 = v143;

    v102 = SpeakableString.print.getter();
    v103 = v1;
    v104 = v102;
    v106 = v105;
    v107 = v144;
    v108 = v144 + *(v145 + 32);
    v135 = v103;
    outlined init with copy of AppPunchout?(v103, v108, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    *v107 = EnvironmentObject.init()();
    v107[1] = v109;
    v107[2] = v100;
    v107[3] = v99;
    v107[4] = v142;
    v107[5] = v101;
    v107[6] = v104;
    v107[7] = v106;
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SingleDataPointView and conformance SingleDataPointView, type metadata accessor for SingleDataPointView);
    v97 = AnyView.init<A>(_:)();
    v145 = v63;
    goto LABEL_23;
  }

  v47 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v48 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v49 = v38;
LABEL_6:
  outlined destroy of AppPunchout?(v49, v47, v48);
LABEL_7:
  result = AnyView.init<A>(_:)();
LABEL_8:
  *v166 = result;
  return result;
}

uint64_t closure #1 in OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OxygenSaturationQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  outlined init with copy of OxygenSaturationQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in OxygenSaturationQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for OxygenSaturationQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in OxygenSaturationQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in OxygenSaturationQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for OxygenSaturationQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in OxygenSaturationQuerySnippet.body.getter(v0 + v2);
}

uint64_t outlined init with take of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for OxygenSaturationQuerySnippet()
{
  type metadata accessor for OxygenSaturationQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 WatchRingsSnippet.model.getter@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  a1[4] = *(v1 + 64);
  *(a1 + 73) = *(v1 + 73);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v4;
  return result;
}

void __swiftcall WatchRingsSnippet.init(model:)(WellnessUI::WatchRingsSnippet *__return_ptr retstr, WellnessUI::WatchRingsModel *model)
{
  v2 = *(&model->standTotalValue.value + 3);
  *(&retstr->model.moveTotalValue.value + 5) = *(&model->moveTotalValue.value + 5);
  *(&retstr->model.standTotalValue.value + 3) = v2;
  *(&retstr[1].model.exerciseTotalValue.value + 1) = *(&model[1].exerciseTotalValue.value + 1);
  *(&retstr[1].model.moveGoalValue.value + 1) = *(&model[1].moveGoalValue.value + 1);
  v3 = *(&model->exerciseTotalValue.value + 7);
  *&retstr->model.exerciseGoalValue.value = *&model->exerciseGoalValue.value;
  *(&retstr->model.exerciseTotalValue.value + 7) = v3;
}

uint64_t WatchRingsSnippet.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();

  return SnippetBody.init(content:)();
}

double closure #1 in WatchRingsSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = KeyPath;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
    lazy protocol witness table accessor for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Circle and conformance Circle();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance WatchRingsSnippet()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();

  return SnippetBody.init(content:)();
}

__n128 MultipleDataPointWithSubTypesView.init(firstRowLabel:firstRowData:firstRowTextData:secondRowLabel:secondRowData:secondRowTextData:unitString:dateLabelString:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15, uint64_t a16)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  return result;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowLabel.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowTextData.getter()
{
  v1 = v0[4];
  outlined copy of Text?(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowData.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowTextData.getter()
{
  v1 = v0[12];
  outlined copy of Text?(v1, v0[13], v0[14], v0[15]);
  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.unitString.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.dateLabelString.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ComponentStackBottomSpacing();
  v327 = *(v3 - 8);
  v4 = *(v327 + 64);
  MEMORY[0x28223BE20](v3);
  v325 = &v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMR);
  v324 = *(v326 - 8);
  v6 = *(v324 + 64);
  MEMORY[0x28223BE20](v326);
  v322 = &v274 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AzcDEAlmNQrAQ_AQtFQOyAX_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AzcDEAlmNQrAQ_AQtFQOyAX_Qo_tGG_Qo_MR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v323 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v274 - v13;
  v328 = type metadata accessor for SeparatorStyle();
  v331 = *(v328 - 8);
  v15 = *(v331 + 64);
  MEMORY[0x28223BE20](v328);
  v316 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SimpleItemRichView();
  v332 = *(v17 - 8);
  v18 = *(v332 + 64);
  MEMORY[0x28223BE20](v17);
  v320 = v19;
  v321 = &v274 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v335 = &v274 - v21;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v329 = *(v336 - 8);
  v22 = v329[8];
  MEMORY[0x28223BE20](v336);
  v319 = &v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v318 = &v274 - v25;
  MEMORY[0x28223BE20](v26);
  v334 = &v274 - v27;
  v317 = v28;
  MEMORY[0x28223BE20](v29);
  v333 = &v274 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v337 = &v274 - v33;
  v338 = type metadata accessor for Font.TextStyle();
  v34 = *(v338 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v338);
  v330 = &v274 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v274 - v38;
  v40 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v1[19];
  if (!v43 || (v44 = v1[1]) == 0 || (v45 = v1[9]) == 0 || (v46 = v1[3], v311 = v1[7], !(v46 | v311)))
  {
    result = AnyView.init<A>(_:)();
LABEL_6:
    *a1 = result;
    return result;
  }

  v304 = v39;
  v305 = v17;
  v287._object = v43;
  v313 = &v274 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v14;
  v282 = v8;
  v283 = a1;
  v302._countAndFlagsBits = *v1;
  v302._object = v44;
  v48 = v1[2];
  v49 = v1[4];
  v306 = v1[5];
  v307 = v49;
  v308 = v1[6];
  v288._countAndFlagsBits = v1[8];
  v288._object = v45;
  v50 = v1[11];
  v274 = v1[10];
  v275 = v48;
  v284 = v50;
  v285 = v46;
  v51 = v1[12];
  v312 = v1[13];
  v52 = v1[15];
  v303 = v1[14];
  v314 = v52;
  v315 = v51;
  v53 = v1[16];
  v54 = v1[17];
  v287._countAndFlagsBits = v1[18];
  v281 = v9;
  v279 = v3;
  v310 = v34;

  if (v54)
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
    v56._countAndFlagsBits = v53;
    v56._object = v54;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v56);

    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
    LocalizedStringKey.init(stringInterpolation:)();
    v58 = Text.init(_:tableName:bundle:comment:)();
    v300 = v59;
    v301 = v58;
    v61 = v60;
    v62 = v34;
    v63 = v304;
    v64 = v338;
    (*(v34 + 104))(v304, *MEMORY[0x277CE0A60], v338);
    v309 = *MEMORY[0x277CE0998];
    v65 = v309;
    v66 = type metadata accessor for Font.Design();
    v67 = *(v66 - 8);
    v68 = v337;
    (*(v67 + 104))(v337, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v68);
    (*(v62 + 8))(v63, v64);
    LOBYTE(v65) = v61;
    v69 = v300;
    v70 = v301;
    v71 = Text.font(_:)();
    v299 = v72;
    LOBYTE(v64) = v73;

    outlined consume of Text.Storage(v70, v69, v65 & 1);

    LODWORD(v363) = static HierarchicalShapeStyle.secondary.getter();
    v74 = v71;
    v75 = v299;
    v76 = Text.foregroundStyle<A>(_:)();
    v78 = v77;
    LOBYTE(v69) = v79;
    v80 = v64 & 1;
    v81 = v309;
    outlined consume of Text.Storage(v74, v75, v80);

    v82 = Text.bold()();
    v297 = v83;
    v298 = v82;
    v295 = v84;
    v296 = v85;
    v86 = v338;
    outlined consume of Text.Storage(v76, v78, v69 & 1);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v87 = Text.init(_:tableName:bundle:comment:)();
    v297 = v88;
    v298 = v87;
    v295 = v89;
    v296 = v90;
    v81 = *MEMORY[0x277CE0998];
    v86 = v338;
    v68 = v337;
  }

  v309 = v81;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v91);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v302);
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v92);
  LocalizedStringKey.init(stringInterpolation:)();
  v93 = Text.init(_:tableName:bundle:comment:)();
  v291 = v94;
  v96 = v95;
  LODWORD(v286) = *MEMORY[0x277CE0AB8];
  v97 = v310;
  v98 = *(v310 + 104);
  v293 = v310 + 104;
  v294 = v98;
  v99 = v304;
  v98(v304);
  v100 = type metadata accessor for Font.Design();
  v101 = v81;
  v102 = v100;
  v302._object = v100;
  v103 = *(v100 - 1);
  v300 = *(v103 + 104);
  v301 = v103 + 104;
  v300(v68, v101, v100);
  v104 = *(v103 + 56);
  v302._countAndFlagsBits = v103 + 56;
  v299 = v104;
  v104(v68, 0, 1, v102);
  static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v68);
  v105 = *(v97 + 8);
  v310 = v97 + 8;
  v292 = v105;
  v105(v99, v86);
  v106 = v93;
  v107 = v291;
  v108 = Text.font(_:)();
  v110 = v109;
  v112 = v111;

  outlined consume of Text.Storage(v106, v107, v96 & 1);

  LODWORD(v363) = static HierarchicalShapeStyle.secondary.getter();
  v113 = Text.foregroundStyle<A>(_:)();
  v115 = v114;
  LOBYTE(v106) = v116;
  outlined consume of Text.Storage(v108, v110, v112 & 1);

  static Font.Weight.semibold.getter();
  v117 = Text.fontWeight(_:)();
  v289 = v118;
  v290 = v117;
  v278 = v119;
  v291 = v120;
  outlined consume of Text.Storage(v113, v115, v106 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v121);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v288);
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v122);
  LocalizedStringKey.init(stringInterpolation:)();
  v123 = Text.init(_:tableName:bundle:comment:)();
  v125 = v124;
  v127 = v126;
  v128 = v304;
  v294(v304, v286, v338);
  v129 = v337;
  object = v302._object;
  v300(v337, v309, v302._object);
  v299(v129, 0, 1, object);
  static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v129);
  v292(v128, v338);
  v131 = Text.font(_:)();
  v133 = v132;
  LOBYTE(v108) = v134;

  outlined consume of Text.Storage(v123, v125, v127 & 1);

  LODWORD(v363) = static HierarchicalShapeStyle.secondary.getter();
  v135 = Text.foregroundStyle<A>(_:)();
  v137 = v136;
  LOBYTE(v125) = v138;
  outlined consume of Text.Storage(v131, v133, v108 & 1);

  static Font.Weight.semibold.getter();
  v139 = Text.fontWeight(_:)();
  v288._countAndFlagsBits = v140;
  v288._object = v139;
  v277 = v141;
  v304 = v142;
  outlined consume of Text.Storage(v135, v137, v125 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v143);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v287);
  v144._countAndFlagsBits = 0;
  v144._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v144);
  LocalizedStringKey.init(stringInterpolation:)();
  v145 = Text.init(_:tableName:bundle:comment:)();
  v147 = v146;
  LOBYTE(v125) = v148;
  static Font.footnote.getter();
  v149 = Text.font(_:)();
  v151 = v150;
  LOBYTE(v108) = v152;

  outlined consume of Text.Storage(v145, v147, v125 & 1);

  LODWORD(v363) = static HierarchicalShapeStyle.secondary.getter();
  v153 = Text.foregroundStyle<A>(_:)();
  v155 = v154;
  LOBYTE(v125) = v156;
  outlined consume of Text.Storage(v149, v151, v108 & 1);

  static Font.Weight.regular.getter();
  v157 = Text.fontWeight(_:)();
  v286 = v158;
  v287._countAndFlagsBits = v157;
  v276 = v159;
  v287._object = v160;
  outlined consume of Text.Storage(v153, v155, v125 & 1);

  result = (v294)(v330, *MEMORY[0x277CE0A78], v338);
  v161 = v285;
  if (v285)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v162._countAndFlagsBits = 0;
    v162._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v162);
    v163._countAndFlagsBits = v275;
    v163._object = v161;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v163);

    v164._countAndFlagsBits = 0;
    v164._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v164);
    LocalizedStringKey.init(stringInterpolation:)();
    v165 = Text.init(_:tableName:bundle:comment:)();
    v167 = v166;
    v169 = v168;
    v170 = v337;
    v171 = v302._object;
    v300(v337, v309, v302._object);
    v299(v170, 0, 1, v171);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v170);
    v172 = Text.font(_:)();
    v174 = v173;
    v176 = v175;

    outlined consume of Text.Storage(v165, v167, v169 & 1);

    static Font.Weight.semibold.getter();
    v177 = Text.fontWeight(_:)();
    v179 = v178;
    v181 = v180;
    outlined consume of Text.Storage(v172, v174, v176 & 1);

    v182 = static Text.+ infix(_:_:)();
    v184 = v183;
    v308 = v185;
    v187 = v186;
    outlined consume of Text.Storage(v177, v179, v181 & 1);
  }

  else
  {
    v187 = v311;
    if (!v311)
    {
      __break(1u);
      goto LABEL_20;
    }

    v182 = v307;
    v184 = v306;
    outlined copy of Text.Storage(v307, v306, v308 & 1);
  }

  v188 = v314;
  v189 = v315;
  v190 = v312;
  v191 = v303;
  v192 = v284;
  v306 = v184;
  v307 = v182;
  v311 = v187;
  if (v284)
  {
    outlined copy of Text.Storage(v182, v184, v308 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v193._countAndFlagsBits = 0;
    v193._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v193);
    v194._countAndFlagsBits = v274;
    v194._object = v192;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v194);

    v195._countAndFlagsBits = 0;
    v195._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v195);
    LocalizedStringKey.init(stringInterpolation:)();
    v196 = Text.init(_:tableName:bundle:comment:)();
    v198 = v197;
    v200 = v199;
    v201 = v337;
    v202 = v302._object;
    v300(v337, v309, v302._object);
    v299(v201, 0, 1, v202);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v201);
    v203 = Text.font(_:)();
    v205 = v204;
    LOBYTE(v201) = v206;

    outlined consume of Text.Storage(v196, v198, v200 & 1);

    static Font.Weight.semibold.getter();
    v207 = Text.fontWeight(_:)();
    v209 = v208;
    v211 = v210;
    v212 = v205;
    v184 = v306;
    v182 = v307;
    outlined consume of Text.Storage(v203, v212, v201 & 1);

    v189 = static Text.+ infix(_:_:)();
    v312 = v213;
    v303 = v214;
    v188 = v215;
    outlined consume of Text.Storage(v207, v209, v211 & 1);

LABEL_18:
    v314 = v188;
    v315 = v189;
    v216 = v182;
    v365 = MEMORY[0x277CE0BD0];
    v366 = MEMORY[0x277D638F0];
    v217 = swift_allocObject();
    v363 = v217;
    v219 = v289;
    v218 = v290;
    *(v217 + 16) = v290;
    *(v217 + 24) = v219;
    v220 = v311;
    v221 = v278 & 1;
    *(v217 + 32) = v221;
    LODWORD(v302._object) = v221;
    *(v217 + 40) = v291;
    *(&v361 + 1) = MEMORY[0x277CE0BD0];
    v362 = MEMORY[0x277D638F0];
    v222 = swift_allocObject();
    *&v360 = v222;
    *(v222 + 16) = v216;
    *(v222 + 24) = v184;
    LODWORD(v308) = v308 & 1;
    *(v222 + 32) = v308;
    *(v222 + 40) = v220;
    v359 = 0;
    v357 = 0u;
    v358 = 0u;
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v353 = 0;
    v351 = 0u;
    v352 = 0u;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    v309 = v303 & 1;
    outlined copy of Text.Storage(v315, v312, v303 & 1);

    outlined copy of Text.Storage(v218, v219, v221);

    v223 = v335;
    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    LODWORD(v302._countAndFlagsBits) = *MEMORY[0x277D62F40];
    v224 = v331;
    v300 = *(v331 + 104);
    v301 = v331 + 104;
    v225 = v316;
    v226 = v328;
    (v300)(v316);
    v299 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView();
    v227 = v305;
    View.separators(_:isOverride:)();
    v228 = *(v224 + 8);
    v331 = v224 + 8;
    v294 = v228;
    (v228)(v225, v226);
    v229 = *(v332 + 8);
    v313 = (v332 + 8);
    v337 = v229;
    (v229)(v223, v227);
    v230 = MEMORY[0x277CE0BD0];
    v365 = MEMORY[0x277CE0BD0];
    v231 = MEMORY[0x277D638F0];
    v366 = MEMORY[0x277D638F0];
    v232 = swift_allocObject();
    v363 = v232;
    countAndFlagsBits = v288._countAndFlagsBits;
    v234 = v288._object;
    *(v232 + 16) = v288._object;
    *(v232 + 24) = countAndFlagsBits;
    LODWORD(v227) = v277 & 1;
    *(v232 + 32) = v277 & 1;
    LODWORD(v303) = v227;
    *(v232 + 40) = v304;
    *(&v361 + 1) = v230;
    v362 = v231;
    v235 = swift_allocObject();
    *&v360 = v235;
    v236 = v312;
    *(v235 + 16) = v315;
    *(v235 + 24) = v236;
    *(v235 + 32) = v309;
    *(v235 + 40) = v314;
    v359 = 0;
    v357 = 0u;
    v358 = 0u;
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v353 = 0;
    v351 = 0u;
    v352 = 0u;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    outlined copy of Text.Storage(v234, countAndFlagsBits, v227);

    v237 = v335;
    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    v238 = v328;
    v300(v225, LODWORD(v302._countAndFlagsBits), v328);
    v239 = v305;
    View.separators(_:isOverride:)();
    (v294)(v225, v238);
    v240 = v237;
    (v337)(v237, v239);
    v365 = v230;
    v366 = v231;
    v241 = swift_allocObject();
    v363 = v241;
    v242 = v286;
    v243 = v287._countAndFlagsBits;
    *(v241 + 16) = v287._countAndFlagsBits;
    *(v241 + 24) = v242;
    v244 = v242;
    LODWORD(v242) = v276 & 1;
    *(v241 + 32) = v242;
    LODWORD(v331) = v242;
    *(v241 + 40) = v287._object;
    v362 = 0;
    v360 = 0u;
    v361 = 0u;
    v359 = 0;
    v357 = 0u;
    v358 = 0u;
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v353 = 0;
    v351 = 0u;
    v352 = 0u;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    outlined copy of Text.Storage(v243, v244, v242);

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    v245 = v329;
    v246 = v329[2];
    v247 = v318;
    v248 = v336;
    v246(v318, v333, v336);
    v249 = v319;
    v246(v319, v334, v248);
    v250 = v332;
    v251 = v321;
    (*(v332 + 16))(v321, v240, v239);
    v252 = v245;
    v253 = *(v245 + 80);
    v254 = (v253 + 16) & ~v253;
    v255 = (v317 + v253 + v254) & ~v253;
    v256 = (v317 + *(v250 + 80) + v255) & ~*(v250 + 80);
    v257 = swift_allocObject();
    v258 = v252[4];
    v259 = v257 + v254;
    v260 = v336;
    v258(v259, v247, v336);
    v258(v257 + v255, v249, v260);
    v261 = v305;
    (*(v332 + 32))(v257 + v256, v251, v305);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMR);
    v262 = v322;
    ComponentStack.init(content:)();
    v263 = v327;
    v264 = v325;
    v265 = v279;
    (*(v327 + 104))(v325, *MEMORY[0x277D63EC8], v279);
    v266 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMR);
    v267 = v280;
    v268 = v326;
    View.lastComponentBottomSpacing(_:)();
    (*(v263 + 8))(v264, v265);
    (*(v324 + 8))(v262, v268);
    v270 = v281;
    v269 = v282;
    (*(v281 + 16))(v323, v267, v282);
    v363 = v268;
    v364 = v266;
    swift_getOpaqueTypeConformance2();
    v271 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v298, v297, v295 & 1);

    outlined consume of Text.Storage(v307, v306, v308);

    outlined consume of Text.Storage(v315, v312, v309);

    outlined consume of Text.Storage(v287._countAndFlagsBits, v286, v331);

    outlined consume of Text.Storage(v288._object, v288._countAndFlagsBits, v303);

    outlined consume of Text.Storage(v290, v289, v302._object);

    (*(v270 + 8))(v267, v269);
    (v337)(v335, v261);
    v272 = v329[1];
    v273 = v336;
    v272(v334, v336);
    v272(v333, v273);
    v292(v330, v338);
    result = v271;
    a1 = v283;
    goto LABEL_6;
  }

  if (v314)
  {
    outlined copy of Text.Storage(v182, v184, v308 & 1);

    outlined copy of Text?(v189, v190, v191, v188);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView()
{
  result = lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView;
  if (!lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView)
  {
    type metadata accessor for SimpleItemRichView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView);
  }

  return result;
}

uint64_t closure #1 in MultipleDataPointWithSubTypesView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a3;
  v41 = a1;
  v42 = a2;
  v46 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v48 = *(v45 - 8);
  v4 = v48[8];
  MEMORY[0x28223BE20](v45);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo_MR);
  v38 = *(v9 - 8);
  v10 = v38;
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = &v35 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v21 = type metadata accessor for SimpleItemRichView();
  v22 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView();
  v49 = v21;
  v50 = v22;
  swift_getOpaqueTypeConformance2();
  v39 = v20;
  View.componentSpacing(top:bottom:)();
  v37 = v17;
  View.componentSpacing(top:bottom:)();
  swift_checkMetadataState();
  v36 = v8;
  View.componentSpacing(top:bottom:)();
  v23 = *(v10 + 16);
  v24 = v47;
  v23(v47, v20, v9);
  v25 = v40;
  v23(v40, v17, v9);
  v26 = v48[2];
  v27 = v43;
  v28 = v8;
  v29 = v45;
  v26(v43, v28, v45);
  v30 = v46;
  v23(v46, v24, v9);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AscDEAefGQrAJ_AJtFQOyAQ_Qo_tMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AscDEAefGQrAJ_AJtFQOyAQ_Qo_tMR);
  v23(&v30[*(v31 + 48)], v25, v9);
  v26(&v30[*(v31 + 64)], v27, v29);
  v32 = v48[1];
  v32(v36, v29);
  v33 = *(v38 + 8);
  v33(v37, v9);
  v33(v39, v9);
  v32(v27, v29);
  v33(v25, v9);
  return (v33)(v47, v9);
}

uint64_t partial apply for closure #1 in MultipleDataPointWithSubTypesView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for SimpleItemRichView() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return closure #1 in MultipleDataPointWithSubTypesView.body.getter(v1 + v5, v1 + v7, v9, a1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for MultipleDataPointWithSubTypesView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for MultipleDataPointWithSubTypesView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t GenericButtonModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenericButtonModel.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericButtonModel.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericButtonModel() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GenericButtonModel()
{
  result = type metadata singleton initialization cache for GenericButtonModel;
  if (!type metadata singleton initialization cache for GenericButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericButtonModel.punchout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenericButtonModel() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenericButtonModel.init(label:punchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GenericButtonModel() + 20);
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GenericButtonModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x74756F68636E7570;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for GenericButtonModel() + 20);
    v15[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

uint64_t GenericButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for URL();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMR);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for GenericButtonModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v25 = 1;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  outlined init with copy of GenericButtonModel(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of GenericButtonModel(v13);
}

uint64_t outlined init with copy of GenericButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenericButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for GenericButtonModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for GenericButtonModel()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenericButtonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SnippetHeaderModel.categoryLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SnippetHeaderModel.categoryListIconName.getter()
{
  v1 = (v0 + *(type metadata accessor for SnippetHeaderModel() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SnippetHeaderModel()
{
  result = type metadata singleton initialization cache for SnippetHeaderModel;
  if (!type metadata singleton initialization cache for SnippetHeaderModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetHeaderModel.categoryIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SnippetHeaderModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SpeakableString();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for SnippetHeaderModel();
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SnippetHeaderModel.CodingKeys()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SnippetHeaderModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SnippetHeaderModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SnippetHeaderModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SnippetHeaderModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnippetHeaderModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19[15] = 0;
  type metadata accessor for SpeakableString();
  lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SnippetHeaderModel();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

uint64_t SnippetHeaderModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for SpeakableString();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMR);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SnippetHeaderModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48]);
  v18 = v34;
  v17 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  outlined init with copy of SnippetHeaderModel(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of SnippetHeaderModel(v25);
}

uint64_t outlined init with copy of SnippetHeaderModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SnippetHeaderModel(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for SnippetHeaderModel()
{
  result = type metadata accessor for SpeakableString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SnippetHeaderModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xED00006C6562614CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB1350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1370 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SingleActivitySummarySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleActivitySummarySnippet();
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = (a2 + *(v4 + 24));
  *v7 = 0;
  v7[1] = 0;
  return outlined init with take of SingleActivitySummaryModel(a1, a2, type metadata accessor for SingleActivitySummaryModel);
}

uint64_t type metadata accessor for SingleActivitySummarySnippet()
{
  result = type metadata singleton initialization cache for SingleActivitySummarySnippet;
  if (!type metadata singleton initialization cache for SingleActivitySummarySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleActivitySummarySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
  v5 = *(v4 - 8);
  v151 = v4;
  v152 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v150 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v155 = &v128 - v9;
  v159 = type metadata accessor for FactItemHeroNumberView();
  v157 = *(v159 - 8);
  v10 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v161 = *(v149 - 8);
  v12 = *(v161 + 64);
  MEMORY[0x28223BE20](v149);
  v160 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v13;
  MEMORY[0x28223BE20](v14);
  v162 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v164 = &v128 - v18;
  v19 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v165 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SnippetHeaderView();
  v153 = *(v22 - 8);
  v23 = *(v153 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v128 - v27;
  v29 = type metadata accessor for Font.TextStyle();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v33);
  v38 = *(v2 + 32);
  if (v38 && (v39 = *(v2 + 48)) != 0)
  {
    v40 = *(v2 + 40);
    v140 = *(v2 + 24);
    v141 = v40;
    v41 = *MEMORY[0x277CE0A78];
    v137 = a1;
    v138 = v38;
    v145 = *(v36 + 104);
    v146 = v35;
    v139 = v39;
    v148 = &v128 - v34;
    v163 = v36;
    v145(&v128 - v34, v41, v35, v37);
    v42 = v2 + *(type metadata accessor for SingleActivitySummaryModel() + 44);
    v136 = v25;
    v147 = v28;
    outlined init with copy of SnippetHeaderModel?(v42, v28);
    v43 = *(v22 + 20);
    *&v28[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v44 = *(v22 + 24);
    *&v28[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    v128 = v2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v2 + 56));
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    LocalizedStringKey.init(stringInterpolation:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v144 = v48;
    v50 = v49;
    v51 = v146;
    (v145)(v32, *MEMORY[0x277CE0A60], v146);
    LODWORD(v133) = *MEMORY[0x277CE0998];
    v52 = v133;
    v53 = type metadata accessor for Font.Design();
    v129 = v53;
    v54 = *(v53 - 8);
    v132 = *(v54 + 104);
    v142 = v54 + 104;
    v55 = v164;
    v132(v164, v52, v53);
    v56 = *(v54 + 56);
    v130 = v54 + 56;
    v131 = v56;
    v56(v55, 0, 1, v53);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v55);
    v57 = *(v163 + 8);
    v163 += 8;
    v135 = v57;
    v57(v32, v51);
    v58 = v47;
    v59 = v144;
    v60 = Text.font(_:)();
    v62 = v61;
    LOBYTE(v55) = v63;

    outlined consume of Text.Storage(v58, v59, v50 & 1);

    LODWORD(v181) = static HierarchicalShapeStyle.secondary.getter();
    v64 = Text.foregroundStyle<A>(_:)();
    v66 = v65;
    LOBYTE(v59) = v67;
    outlined consume of Text.Storage(v60, v62, v55 & 1);

    static Font.Weight.semibold.getter();
    v68 = Text.fontWeight(_:)();
    v143 = v69;
    v144 = v68;
    v134 = v70;
    v145 = v71;
    outlined consume of Text.Storage(v64, v66, v59 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
    v73 = v128;
    v181 = *v128;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v74);

    v75._countAndFlagsBits = 2109216;
    v75._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v75);
    v181 = v73[1];
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v76);

    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v77);
    LocalizedStringKey.init(stringInterpolation:)();
    v78 = Text.init(_:tableName:bundle:comment:)();
    v80 = v79;
    LOBYTE(v66) = v81;
    v82 = v164;
    v83 = v129;
    v132(v164, v133, v129);
    v131(v82, 0, 1, v83);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v82);
    v84 = Text.font(_:)();
    v86 = v85;
    v88 = v87;

    outlined consume of Text.Storage(v78, v80, v66 & 1);

    v89 = Text.bold()();
    v91 = v90;
    LODWORD(v164) = v92;
    v142 = v93;
    outlined consume of Text.Storage(v84, v86, v88 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v94);
    v95._countAndFlagsBits = v140;
    v95._object = v138;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v95);

    v96._countAndFlagsBits = 8236;
    v96._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v96);
    v97._countAndFlagsBits = v141;
    v97._object = v139;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v97);

    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v98);
    LocalizedStringKey.init(stringInterpolation:)();
    v99 = Text.init(_:tableName:bundle:comment:)();
    v138 = v100;
    v139 = v99;
    LODWORD(v141) = v101;
    v140 = v102;
    v103 = MEMORY[0x277CE0BD0];
    v104 = MEMORY[0x277D638F0];
    v182 = MEMORY[0x277CE0BD0];
    v183 = MEMORY[0x277D638F0];
    v105 = swift_allocObject();
    v180 = v104;
    v181 = v105;
    v106 = v89;
    v132 = v91;
    v133 = v89;
    *(v105 + 16) = v89;
    *(v105 + 24) = v91;
    LODWORD(v165) = v164 & 1;
    *(v105 + 32) = v164 & 1;
    *(v105 + 40) = v142;
    v179 = v103;
    v107 = swift_allocObject();
    v177 = 0;
    v178 = v107;
    v109 = v143;
    v108 = v144;
    *(v107 + 16) = v144;
    *(v107 + 24) = v109;
    LODWORD(v164) = v134 & 1;
    *(v107 + 32) = v134 & 1;
    *(v107 + 40) = v145;
    v175 = 0u;
    v176 = 0u;
    v173 = v103;
    v174 = v104;
    v110 = swift_allocObject();
    v171 = 0;
    v172 = v110;
    v112 = v138;
    v111 = v139;
    *(v110 + 16) = v139;
    *(v110 + 24) = v112;
    LODWORD(v141) = v141 & 1;
    *(v110 + 32) = v141;
    *(v110 + 40) = v140;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    outlined copy of Text.Storage(v106, v91, v165);

    outlined copy of Text.Storage(v108, v109, v164);

    outlined copy of Text.Storage(v111, v112, v141);

    v113 = v156;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
    v114 = v162;
    v115 = v159;
    View.componentSpacing(top:bottom:)();
    (*(v157 + 8))(v113, v115);
    v116 = v136;
    outlined init with copy of SingleActivitySummaryModel(v147, v136, type metadata accessor for SnippetHeaderView);
    v118 = v160;
    v117 = v161;
    v119 = v149;
    (*(v161 + 16))(v160, v114, v149);
    v120 = (*(v153 + 80) + 16) & ~*(v153 + 80);
    v121 = (v154 + *(v117 + 80) + v120) & ~*(v117 + 80);
    v122 = swift_allocObject();
    outlined init with take of SingleActivitySummaryModel(v116, v122 + v120, type metadata accessor for SnippetHeaderView);
    (*(v117 + 32))(v122 + v121, v118, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
    v123 = v155;
    a1 = v137;
    ComponentStack.init(content:)();
    v125 = v151;
    v124 = v152;
    (*(v152 + 16))(v150, v123, v151);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
    v126 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v139, v138, v141);

    outlined consume of Text.Storage(v144, v143, v164);

    outlined consume of Text.Storage(v133, v132, v165);

    (*(v124 + 8))(v123, v125);
    (*(v117 + 8))(v114, v119);
    outlined destroy of SnippetHeaderView(v147);
    result = v135(v148, v146);
  }

  else
  {
    result = AnyView.init<A>(_:)();
    v126 = result;
  }

  *a1 = v126;
  return result;
}